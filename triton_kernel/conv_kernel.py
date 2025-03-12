import torch
import triton
import triton.language as tl
from typing import Tuple

dtype = torch.float32
device = 'cuda:0'

@triton.autotune(
    configs=[
        triton.Config({}, num_warps=4),
        triton.Config({}, num_warps=8),
        triton.Config({}, num_warps=16),
    ],
    key=[],
)
@triton.jit
def conv2d_kernel(
    input_ptr,                # float*  (batch, in_ch, in_h, in_w)
    input_batch_stride,       # int
    input_channel_stride,     # int
    input_row_stride,         # int
    input_col_stride,         # int //
    height,                   # int
    width,                    # int
    in_channels,              # int
    kernel_ptr,               # float*  (out_ch, in_ch, k_h, k_w)
    kernel_outch_stride,      # int
    kernel_inch_stride,       # int
    kernel_row_stride,        # int
    kernel_col_stride,        # int //
    kernel_height,            # int
    kernel_width,             # int
    kernel_batch,
    # bias_ptr,                 # float*  (out_ch,)
    output_ptr,               # float*  (batch, out_ch, out_h, out_w)
    output_batch_stride,      # int
    output_channel_stride,    # int
    output_row_stride,        # int
    output_col_stride,        # int
    out_height,               # int
    out_width,                # int
    stride_h,                 # int
    stride_w,                 # int
    pad_h,                    # int
    pad_w,                    # int
    dil_h,                    # int
    dil_w,                    # int
    groups,                   # int //
):
    # 使用 3D grid
    batch_idx   = tl.program_id(0)
    out_ch_idx  = tl.program_id(1)
    row_col_idx = tl.program_id(2)
    
    for out_ch_idx in range(kernel_batch):
        for row_col_idx in range(out_height * out_width):
 
  
            out_row_idx = row_col_idx // out_width
            out_col_idx = row_col_idx % out_width

            # 越界检查
            # if out_row_idx >= out_height or out_col_idx >= out_width:
            #     return

            # 计算该输出元素对应的输入起始位置
            in_row_start = out_row_idx * stride_h - pad_h
            in_col_start = out_col_idx * stride_w - pad_w

            # 加载 bias
            # bias_val = tl.load(bias_ptr + out_ch_idx)

            accum = 0.0

            # 假设 groups = 1，若需要支持 groups，可扩展此处逻辑
            for in_ch in range(in_channels):
                kernel_base = out_ch_idx * kernel_outch_stride + in_ch * kernel_inch_stride
                input_base  = batch_idx * input_batch_stride + in_ch * input_channel_stride

                for k_r in range(kernel_height):
                    in_r = in_row_start + k_r * dil_h
                    if not ((in_r < 0) or (in_r >= height)):
                        for k_c in range(kernel_width):
                            in_c = in_col_start + k_c * dil_w
                            if not ((in_c < 0) or (in_c >= width)):
                                w = tl.load(kernel_ptr + kernel_base + k_r * kernel_row_stride + k_c * kernel_col_stride)
                                val_in = tl.load(input_ptr + input_base + in_r * input_row_stride + in_c * input_col_stride)
                                accum += val_in * w

            # accum += bias_val

            out_offset = (
                batch_idx * output_batch_stride +
                out_ch_idx * output_channel_stride +
                out_row_idx * output_row_stride +
                out_col_idx * output_col_stride
            )
            tl.store(output_ptr + out_offset, accum)

def conv2d(
    input: torch.Tensor,
    kernel: torch.Tensor,
    # bias: torch.Tensor,
    stride: Tuple[int, int],
    padding: Tuple[int, int],
    dilation: Tuple[int, int],
    groups: int = 1,
) -> torch.Tensor:
    """
    input:  [N, C_in, H_in, W_in]
    kernel: [C_out, C_in, K_h, K_w]
    bias:   [C_out]
    """
    assert input.is_cuda and kernel.is_cuda, "Input or kernel must be on GPU"
    assert len(input.shape) == 4,  f"Input must be 4D, got {input.shape}"
    assert len(kernel.shape) == 4, f"Kernel must be 4D, got {kernel.shape}"
    # assert bias.shape[0] == kernel.shape[0], "bias dim must match kernel's out_channels"

    N, C_in, H_in, W_in       = input.shape
    C_out, C_in_kernel, K_h, K_w = kernel.shape
    assert C_in == C_in_kernel, "Input channels and kernel channels must match"
    assert C_in % groups == 0 and C_out % groups == 0, "groups must divide in_channels and out_channels"

    # 计算输出形状
    out_h = (H_in + 2*padding[0] - dilation[0]*(K_h - 1) - 1)//stride[0] + 1
    out_w = (W_in + 2*padding[1] - dilation[1]*(K_w - 1) - 1)//stride[1] + 1
    output = torch.empty((N, C_out, out_h, out_w), device=device, dtype=dtype)

    # 使用 3D grid，将输出行和列合并成一个维度
    # grid = (N, C_out, out_h * out_w)
    grid = (N, 1, 1)

    conv2d_kernel[grid](
        input_ptr=input,
        input_batch_stride=input.stride(0),
        input_channel_stride=input.stride(1),
        input_row_stride=input.stride(2),
        input_col_stride=input.stride(3),
        height=H_in,
        width=W_in,
        in_channels=C_in,
        kernel_ptr=kernel,
        kernel_outch_stride=kernel.stride(0),
        kernel_inch_stride=kernel.stride(1),
        kernel_row_stride=kernel.stride(2),
        kernel_col_stride=kernel.stride(3),
        kernel_height=K_h,
        kernel_width=K_w,
        kernel_batch=C_out,
        # bias_ptr=bias,
        output_ptr=output,
        output_batch_stride=output.stride(0),
        output_channel_stride=output.stride(1),
        output_row_stride=output.stride(2),
        output_col_stride=output.stride(3),
        out_height=out_h,
        out_width=out_w,
        stride_h=stride[0],
        stride_w=stride[1],
        pad_h=padding[0],
        pad_w=padding[1],
        dil_h=dilation[0],
        dil_w=dilation[1],
        groups=groups,
    )
    
    return output
    




# @triton.jit
# def conv2d_kernel(
#     input_ptr,                # float*  (batch, in_ch, in_h, in_w)
#     input_batch_stride,       # int
#     input_channel_stride,     # int
#     input_row_stride,         # int
#     input_col_stride,         # int //
#     height,                   # int
#     width,                    # int
#     in_channels,              # int
#     kernel_ptr,               # float*  (out_ch, in_ch, k_h, k_w)
#     kernel_outch_stride,      # int
#     kernel_inch_stride,       # int
#     kernel_row_stride,        # int
#     kernel_col_stride,        # int //
#     kernel_height,            # int
#     kernel_width,             # int
#     kernel_batch,
#     # bias_ptr,                 # float*  (out_ch,)
#     output_ptr,               # float*  (batch, out_ch, out_h, out_w)
#     output_batch_stride,      # int
#     output_channel_stride,    # int
#     output_row_stride,        # int
#     output_col_stride,        # int
#     out_height,               # int
#     out_width,                # int
#     stride_h,                 # int
#     stride_w,                 # int
#     pad_h,                    # int
#     pad_w,                    # int
#     dil_h,                    # int
#     dil_w,                    # int
#     groups,                   # int //
# ):
#     # 使用 3D grid
#     batch_idx   = tl.program_id(0)
#     out_ch_idx  = tl.program_id(1)
#     row_col_idx = tl.program_id(2)
    
#     for out_ch_idx in range(kernel_batch):
#         for row_col_idx in range(out_height * out_width):
 
  
#             out_row_idx = row_col_idx // out_width
#             out_col_idx = row_col_idx % out_width

#             # 越界检查
#             # if out_row_idx >= out_height or out_col_idx >= out_width:
#             #     return

#             # 计算该输出元素对应的输入起始位置
#             in_row_start = out_row_idx * stride_h - pad_h
#             in_col_start = out_col_idx * stride_w - pad_w

#             # 加载 bias
#             # bias_val = tl.load(bias_ptr + out_ch_idx)

#             accum = 0.0

#             # 假设 groups = 1，若需要支持 groups，可扩展此处逻辑
#             for in_ch in range(in_channels):
#                 kernel_base = out_ch_idx * kernel_outch_stride + in_ch * kernel_inch_stride
#                 input_base  = batch_idx * input_batch_stride + in_ch * input_channel_stride

#                 for k_r in range(kernel_height):
#                     in_r = in_row_start + k_r * dil_h
#                     if not ((in_r < 0) or (in_r >= height)):
#                         for k_c in range(kernel_width):
#                             in_c = in_col_start + k_c * dil_w
#                             if not ((in_c < 0) or (in_c >= width)):
#                                 w = tl.load(kernel_ptr + kernel_base + k_r * kernel_row_stride + k_c * kernel_col_stride)
#                                 val_in = tl.load(input_ptr + input_base + in_r * input_row_stride + in_c * input_col_stride)
#                                 accum += val_in * w

#             # accum += bias_val

#             out_offset = (
#                 batch_idx * output_batch_stride +
#                 out_ch_idx * output_channel_stride +
#                 out_row_idx * output_row_stride +
#                 out_col_idx * output_col_stride
#             )
#             tl.store(output_ptr + out_offset, accum)

# def conv2d(
#     input: torch.Tensor,
#     kernel: torch.Tensor,
#     # bias: torch.Tensor,
#     stride: Tuple[int, int],
#     padding: Tuple[int, int],
#     dilation: Tuple[int, int],
#     groups: int = 1,
# ) -> torch.Tensor:
#     """
#     input:  [N, C_in, H_in, W_in]
#     kernel: [C_out, C_in, K_h, K_w]
#     bias:   [C_out]
#     """
#     assert input.is_cuda and kernel.is_cuda, "Input or kernel must be on GPU"
#     assert len(input.shape) == 4,  f"Input must be 4D, got {input.shape}"
#     assert len(kernel.shape) == 4, f"Kernel must be 4D, got {kernel.shape}"
#     # assert bias.shape[0] == kernel.shape[0], "bias dim must match kernel's out_channels"

#     N, C_in, H_in, W_in       = input.shape
#     C_out, C_in_kernel, K_h, K_w = kernel.shape
#     assert C_in == C_in_kernel, "Input channels and kernel channels must match"
#     assert C_in % groups == 0 and C_out % groups == 0, "groups must divide in_channels and out_channels"

#     # 计算输出形状
#     out_h = (H_in + 2*padding[0] - dilation[0]*(K_h - 1) - 1)//stride[0] + 1
#     out_w = (W_in + 2*padding[1] - dilation[1]*(K_w - 1) - 1)//stride[1] + 1
#     output = torch.empty((N, C_out, out_h, out_w), device=device, dtype=dtype)

#     # 使用 3D grid，将输出行和列合并成一个维度
#     # grid = (N, C_out, out_h * out_w)
#     grid = (N, 1, 1)

#     conv2d_kernel[grid](
#         input_ptr=input,
#         input_batch_stride=input.stride(0),
#         input_channel_stride=input.stride(1),
#         input_row_stride=input.stride(2),
#         input_col_stride=input.stride(3),
#         height=H_in,
#         width=W_in,
#         in_channels=C_in,
#         kernel_ptr=kernel,
#         kernel_outch_stride=kernel.stride(0),
#         kernel_inch_stride=kernel.stride(1),
#         kernel_row_stride=kernel.stride(2),
#         kernel_col_stride=kernel.stride(3),
#         kernel_height=K_h,
#         kernel_width=K_w,
#         kernel_batch=C_out,
#         # bias_ptr=bias,
#         output_ptr=output,
#         output_batch_stride=output.stride(0),
#         output_channel_stride=output.stride(1),
#         output_row_stride=output.stride(2),
#         output_col_stride=output.stride(3),
#         out_height=out_h,
#         out_width=out_w,
#         stride_h=stride[0],
#         stride_w=stride[1],
#         pad_h=padding[0],
#         pad_w=padding[1],
#         dil_h=dilation[0],
#         dil_w=dilation[1],
#         groups=groups,
#     )
    
#     return output




