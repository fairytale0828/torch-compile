import torch
import triton
import triton.language as tl
from typing import Tuple

dtype = torch.float32
device = 'cuda:0'


@triton.autotune(
    configs=[
        triton.Config({}, num_warps=16),
        triton.Config({}, num_warps=8),
        triton.Config({}, num_warps=4)
    ],
    key=[],
)
@triton.jit
def conv2d_kernel(
    input_ptr,
    input_batch_stride,
    input_channel_stride,
    input_row_stride,
    input_col_stride,
    height,
    width,
    channels,
    kernel_ptr,
    kernel_height,
    kernel_width,
    kernel_dim_stride,
    kernel_channel_stride,
    kernel_row_stride,
    kernel_col_stride,
    bias_ptr,
    output_ptr,
    output_width,
    output_batch_stride,
    output_channel_stride,
    output_row_stride,
    output_col_stride,
    BLOCK_SIZE_ROW: tl.constexpr,
    BLOCK_SIZE_COL: tl.constexpr
):
    batch_idx = tl.program_id(0)
    kernel_idx = tl.program_id(1)
    row_idx = tl.program_id(2)

    # Bias offset and data
    bias_offset = kernel_idx
    bias = tl.load(bias_ptr + bias_offset)

    # Input data offsets
    batch_offset = batch_idx * input_batch_stride

    # Output data offsets
    output_batch_offset = batch_idx * output_batch_stride
    output_channel_offset = kernel_idx * output_channel_stride
    output_row_offset = row_idx * output_row_stride

    # Kernel data offsets - nth kernel
    kernel_row_offset = tl.arange(0, BLOCK_SIZE_ROW)
    kernel_row_mask = kernel_row_offset[:, None] < kernel_height
    kernel_row_offset = kernel_row_offset[:, None] * kernel_row_stride
    kernel_col_offset = tl.arange(0, BLOCK_SIZE_COL)
    kernel_col_mask = kernel_col_offset[None, :] < kernel_width
    kernel_col_offset = kernel_col_offset[None, :] * kernel_col_stride
    kernel_mask = kernel_row_mask & kernel_col_mask

    # Iterate over each column of the output
    for col_idx in range(output_width):
        elem = 0.0

        # Input data base
        input_row_offset = row_idx * kernel_height + tl.arange(0, BLOCK_SIZE_ROW)
        input_row_mask = input_row_offset[:, None] < height
     
        input_row_offset = input_row_offset[:, None] * input_row_stride

        input_col_offset = col_idx * kernel_width + tl.arange(0, BLOCK_SIZE_COL)
        input_col_mask = input_col_offset[None, :] < width
        input_col_offset = input_col_offset[None, :] * input_col_stride
        input_mask = input_row_mask & input_col_mask

 
        # Iterate over the channels
        for c in range(channels):
            input_offset = input_ptr + batch_offset + c * input_channel_stride + input_row_offset + input_col_offset
            input_data = tl.load(input_offset, input_mask)  # BLOCK_SIZE_ROW x BLOCK_SIZE_COL

            # Load kernel weights for the current channel
            kernel_offset = kernel_ptr + kernel_idx * kernel_dim_stride + c * kernel_channel_stride + kernel_row_offset + kernel_col_offset
            kernel_data = tl.load(kernel_offset, kernel_mask)
            dot_prdct = input_data * kernel_data
            elem += tl.sum(dot_prdct)

        # Store to output for the current channel
        output_offset = output_ptr + output_batch_offset + output_channel_offset + output_row_offset + col_idx
        tl.store(output_offset, elem + bias)


def conv2d_triton(
    input: torch.Tensor,
    kernel: torch.Tensor,
    bias: torch.Tensor
) -> torch.Tensor:
    assert input.is_cuda and kernel.is_cuda, 'Input or kernel is not on GPU'
    assert len(input.shape) == 4, f'Input needs to be 4 dimensional, provided: {input.shape}'
    assert len(kernel.shape) == 4, f'Kernel size needs to be 4 dimensional, provided: {kernel.shape}'
    assert bias.shape[0] == kernel.shape[0], f'Bias dimension should be same as the kernel 1st dimension'

    batch_size, channels, height, width = input.shape
    num_kernels, kernel_depth, kernel_height, kernel_width = kernel.shape

    assert height % kernel_height == 0 and width % kernel_width == 0, \
        f"Input height and width should be divisible by the kernel height and width"
    assert channels == kernel_depth, \
        f"Kernel channel depth ({kernel_depth}) and input channel depth ({channels}) should be same"

    output = torch.empty((batch_size, num_kernels, height // kernel_height, width // kernel_width),
                        device=device, dtype=dtype)

    BLOCK_SIZE_ROW = triton.next_power_of_2(kernel_height)
    BLOCK_SIZE_COL = triton.next_power_of_2(kernel_width)
    # Each kernel processes a single row of the output matrix
    grid = (batch_size, num_kernels, height // kernel_height)

    conv2d_kernel[grid](
        input_ptr=input,
        input_batch_stride=input.stride(0),
        input_channel_stride=input.stride(1),
        input_row_stride=input.stride(2),
        input_col_stride=input.stride(3),
        height=height,
        width=width,
        channels=channels,
        kernel_ptr=kernel,
        kernel_height=kernel_height,
        kernel_width=kernel_width,
        kernel_dim_stride=kernel.stride(0),
        kernel_channel_stride=kernel.stride(1),
        kernel_row_stride=kernel.stride(2),
        kernel_col_stride=kernel.stride(3),
        bias_ptr=bias,
        output_ptr=output,
        output_width=width // kernel_width,
        output_batch_stride=output.stride(0),
        output_channel_stride=output.stride(1),
        output_row_stride=output.stride(2),
        output_col_stride=output.stride(3),
        BLOCK_SIZE_ROW=BLOCK_SIZE_ROW,
        BLOCK_SIZE_COL=BLOCK_SIZE_COL,
    )

    return output


class Conv2DTriton(torch.nn.Module):
    def __init__(self, in_channels: int, out_channels: int, kernel_size: Tuple):
        super().__init__()

        assert type(kernel_size) == tuple and len(kernel_size) == 2, \
            f'Param kernel size should be a tuple of size 2'

        self.in_channels = in_channels
        self.out_channels = out_channels
        self.kernel_size = kernel_size

        self.weight = torch.nn.Parameter(torch.zeros(self.out_channels, self.in_channels, self.kernel_size[0], self.kernel_size[1]))
        self.bias = torch.nn.Parameter(torch.zeros(self.out_channels))

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return conv2d_triton(x, self.weight, self.bias)


if __name__ == '__main__':

    batch_size = 1
    height = 9
    width = 9
    channels = 1

    kernels = 1
    kernel_height = 3
    kernel_width = 3

    input = torch.ones((batch_size, channels, height, width)).to(device, dtype)
    kernel = torch.ones((kernels, channels, kernel_height, kernel_width)).to(device, dtype)
    bias = torch.ones(kernels).to(device, dtype)

    y_triton = conv2d_triton(input, kernel, bias)

    print(f'Original input:\n{input}')
    print(f'Triton Conv2d output:\n{y_triton}')



