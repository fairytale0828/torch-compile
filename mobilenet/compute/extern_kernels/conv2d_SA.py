import ctypes
import math
from typing import Optional, Tuple
import sys
sys.path.append("..")
from StrideArray import StridedArray, calculate_strides_nchw, empty_strided, reinterpret_tensor

# 使用用户提供的StridedArray和相关工具函数

def convolution(input: StridedArray,
           kernel: StridedArray,
           bias: Optional[StridedArray],
           stride: Tuple[int, int] = (1, 1),
           padding: Tuple[int, int] = (0, 0),
           dilation: Tuple[int, int] = (1, 1)) -> StridedArray:
    # 参数验证
    assert len(input.shape) == 4, "Input must be 4D (N, C, H, W)"
    N, C, H, W = input.shape
    assert len(kernel.shape) == 4, "Kernel must be 4D (num_kernels, C, kH, kW)"
    num_kernels, kC, kH, kW = kernel.shape
    assert C == kC, f"Input channels {C} != kernel channels {kC}"
    
    if bias is not None:
        assert len(bias.shape) == 1, "Bias must be 1D"
        assert bias.shape[0] == num_kernels, "Bias size mismatch"

    # 解析卷积参数
    stride_h, stride_w = stride
    pad_h, pad_w = padding
    dilation_h, dilation_w = dilation

    # 计算输出尺寸
    output_h = (H + 2 * pad_h - dilation_h * (kH - 1) - 1) // stride_h + 1
    output_w = (W + 2 * pad_w - dilation_w * (kW - 1) - 1) // stride_w + 1
    output_shape = (N, num_kernels, output_h, output_w)

    # 创建输出数组（NCHW布局）
    output_strides = calculate_strides_nchw(output_shape)
    output = empty_strided(output_shape, output_strides, dtype=ctypes.c_float)

    # 加载C++库
    lib = ctypes.CDLL('/home/meng/torch-compiler/models/mobilenet/compute/extern_kernels/libconv.so')  # 根据实际路径调整
    lib.conv2d.argtypes = [
        ctypes.POINTER(ctypes.c_float),  # data_im
        ctypes.c_int,   # batch_sizes
        ctypes.c_int,  # channels
        ctypes.c_int,  # height
        ctypes.c_int,  # width
        ctypes.POINTER(ctypes.c_float),  # data_kernels
        ctypes.POINTER(ctypes.c_float),  # bias
        ctypes.c_int,  # num_kernels
        ctypes.c_int,  # kernel_h
        ctypes.c_int,  # kernel_w
        ctypes.c_int,  # stride_h
        ctypes.c_int,  # stride_w
        ctypes.c_int,  # pad_h
        ctypes.c_int,  # pad_w
        ctypes.c_int,  # dilation_h
        ctypes.c_int,  # dilation_w
        ctypes.POINTER(ctypes.c_float)  # data_out
    ]
    lib.conv2d.restype = None

    # 处理每个样本
    for i in range(N):
        # 获取输入样本的视图
        input_sample = reinterpret_tensor(
            input, 
            (C, H, W),
            input.strides[1:],
            i * input.strides[0]
        )
        
        # 获取输出样本的视图
        output_sample = reinterpret_tensor(
            output,
            (num_kernels, output_h, output_w),
            output.strides[1:],
            i * output.strides[0]
        )

        # 调用C++函数
        lib.conv2d(
            input_sample.ptr,
            ctypes.c_int(1),
            ctypes.c_int(C),
            ctypes.c_int(H),
            ctypes.c_int(W),
            kernel.ptr,
            bias.ptr if bias else None,
            ctypes.c_int(num_kernels),
            ctypes.c_int(kH),
            ctypes.c_int(kW),
            ctypes.c_int(stride_h),
            ctypes.c_int(stride_w),
            ctypes.c_int(pad_h),
            ctypes.c_int(pad_w),
            ctypes.c_int(dilation_h),
            ctypes.c_int(dilation_w),
            output_sample.ptr
        )

    return output














# if __name__ == '__main__':
#     # 测试代码
#     N, C_in, H, W =10, 3, 258, 258
#     C_out = 16
#     KH, KW = 3, 3
#     input = empty_strided((N, C_in, H, W), (199692, 1, 774, 3), device='cpu', dtype=ctypes.c_float)
#     kernel = empty_strided((C_out, C_in, KH, KW), (27, 1, 9, 3), device='cpu', dtype=ctypes.c_float)
#     bias = empty_strided((C_out,), (1,), device='cpu', dtype=ctypes.c_float)
#     input.fill(3.0)
#     kernel.fill(5.0)
#     bias.fill(1.0)
#     output = convolution(input, kernel, bias, stride=(1,1), padding=(0,0), dilation=(1,1))
#     print(output)

