import numpy as np
from StrideArray import fill_strided_array, empty_strided, StridedArray
from typing import Optional, Tuple
import ctypes

# def convolution(input, kernel, bias):

# def convolution1(input: StridedArray,
#         kernel: StridedArray,
#         bias: Optional[StridedArray],
#         stride: Tuple[int, int] = (1, 1),
#         padding: Tuple[int, int] = (0, 0),
#         dilation: Tuple[int, int] = (1, 1)) -> StridedArray:


#     input_nhwc = input.to_numpy().transpose(0, 2, 3, 1)
#     kernel_nhwc = kernel.to_numpy().transpose(2, 3, 1, 0)
#     bias = bias.to_numpy() 
#     N, H, W, C = input_nhwc.shape
#     C_out, C_in, KH, KW = kernel.shape

#     stride_h, stride_w = stride
#     pad_h, pad_w = padding
#     dilation_h, dilation_w = dilation

#     # 计算输出尺寸
#     H_out = (H + 2 * pad_h - dilation_h * (KH - 1) - 1) // stride_h + 1
#     W_out = (W + 2 * pad_w - dilation_w * (KW - 1) - 1) // stride_w + 1

#     s0, s1, s2, s3 = input_nhwc.strides  
#     shape = (N, H_out, W_out, KH, KW, C)
#     # patches = np.lib.stride_tricks.as_strided(input_nhwc, shape=shape, strides=new_strides)
#     new_strides = (s0, s1 * stride_h, s2 * stride_w, s1 * dilation_h, s2 * dilation_w, s3)
#     patches = np.lib.stride_tricks.as_strided(input_nhwc, shape=(N, H_out, W_out, KH, KW, C), strides=new_strides)

#     out = np.tensordot(patches, kernel_nhwc, axes=([3,4,5], [0,1,2]))
#     out += bias
#     out = np.ascontiguousarray(out)
#     out_nchw = out.transpose(0, 3, 1, 2)
#     element_strides = tuple(s // np.dtype(np.float32).itemsize for s in out_nchw.strides)
#     out = empty_strided(out_nchw.shape, element_strides, device='cpu', dtype=ctypes.c_float)
#     fill_strided_array(out, out_nchw)
#     return out




def convolution(input: StridedArray,
                kernel: StridedArray,
                bias: Optional[StridedArray],
                stride: Tuple[int, int] = (1, 1),
                padding: Tuple[int, int] = (0, 0),
                dilation: Tuple[int, int] = (1, 1)) -> StridedArray:

    input_nhwc = input.to_numpy().transpose(0, 2, 3, 1)  # NCHW -> NHWC
    kernel_nhwc = kernel.to_numpy().transpose(2, 3, 1, 0)  # OIHW -> HWIO
    if bias is not None:
        bias = bias.to_numpy()

    N, H, W, C = input_nhwc.shape
    C_out, C_in, KH, KW = kernel.shape
    stride_h, stride_w = stride
    pad_h, pad_w = padding
    dilation_h, dilation_w = dilation

    input_padded = np.pad(input_nhwc,
                          pad_width=((0, 0), (pad_h, pad_h), (pad_w, pad_w), (0, 0)),
                          mode='constant')
    
    H_padded, W_padded = input_padded.shape[1], input_padded.shape[2]
    H_out = (H_padded - (dilation_h * (KH - 1) + 1)) // stride_h + 1
    W_out = (W_padded - (dilation_w * (KW - 1) + 1)) // stride_w + 1


    s = input_padded.strides
    patches = np.lib.stride_tricks.as_strided(
        input_padded,
        shape=(N, H_out, W_out, KH, KW, C),
        strides=(s[0], 
                 s[1] * stride_h, 
                 s[2] * stride_w,
                 s[1] * dilation_h,  
                 s[2] * dilation_w,
                 s[3])
    )

    out = np.tensordot(patches, kernel_nhwc, axes=([3,4,5], [0,1,2]))
    if bias is not None:
        out += bias
    # out = np.ascontiguousarray(out.transpose(0, 3, 1, 2))  # NHWC -> NCHW
    out = np.ascontiguousarray(out)
    out_nchw = out.transpose(0, 3, 1, 2)
    element_strides = tuple(s // np.dtype(np.float32).itemsize for s in out_nchw.strides)

    # 转换回StridedArray
    # element_strides = tuple(s // np.dtype(np.float32).itemsize 
                          # for s in out.strides)
    # result = empty_strided(out.shape, element_strides, device='cpu', dtype=ctypes.c_float)
    # fill_strided_array(result, out)
    # return result
    out = empty_strided(out_nchw.shape, element_strides, device='cpu', dtype=ctypes.c_float)
    fill_strided_array(out, out_nchw)
    return out



