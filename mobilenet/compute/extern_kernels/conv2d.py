import ctypes
import numpy as np
from numpy.ctypeslib import ndpointer

# 加载共享库
lib = ctypes.CDLL('/home/meng/torch-compiler/models/mobilenet/compute/extern_kernels/libconv.so')

# 定义函数参数类型
lib.conv2d.argtypes = [
    ndpointer(ctypes.c_float),  # input
    ctypes.c_int,               # channels
    ctypes.c_int,               # height
    ctypes.c_int,               # width
    ndpointer(ctypes.c_float),  # kernels
    ndpointer(ctypes.c_float),  # bias
    ctypes.c_int,               # num_kernels
    ctypes.c_int,               # kernel_h
    ctypes.c_int,               # kernel_w
    ctypes.c_int,               # stride_h
    ctypes.c_int,               # stride_w
    ctypes.c_int,               # pad_h
    ctypes.c_int,               # pad_w
    ctypes.c_int,               # dilation_h
    ctypes.c_int,               # dilation_w
    ndpointer(ctypes.c_float)   # output
]
lib.conv2d.restype = None

def python_conv2d(input, kernel, bias=None, stride=(1,1), padding=(0,0), dilation=(1,1)):
    """
    Python接口封装
    参数:
        input:  numpy.ndarray (C, H, W)
        kernel: numpy.ndarray (C_out, C_in, KH, KW)
        bias:   numpy.ndarray (C_out,) 或 None
        stride:  tuple (SH, SW)
        padding: tuple (PH, PW)
        dilation: tuple (DH, DW)
    返回:
        output: numpy.ndarray (C_out, H_out, W_out)
    """
    # 确保内存连续性
    input = np.ascontiguousarray(input, dtype=np.float32)
    kernel = np.ascontiguousarray(kernel, dtype=np.float32)
    bias = np.ascontiguousarray(bias, dtype=np.float32) if bias is not None else None

    # 获取输入维度
    N, C_in, H_in, W_in = input.shape
    C_out, _, KH, KW = kernel.shape

    # 解析超参数
    SH, SW = stride
    PH, PW = padding
    DH, DW = dilation

    # 计算输出维度
    H_out = (H_in + 2*PH - (DH*(KH-1)+1)) // SH + 1
    W_out = (W_in + 2*PW - (DW*(KW-1)+1)) // SW + 1

    # 准备输出数组
    output = np.empty((N, C_out, H_out, W_out), dtype=np.float32)

    # 调用C++函数
    lib.conv2d(
        input, C_in, H_in, W_in,
        kernel,
        bias if bias is not None else np.empty(0, dtype=np.float32),
        C_out, KH, KW,
        SH, SW, PH, PW, DH, DW,
        output
    )

    return output



# 测试用例
if __name__ == "__main__":
    # 生成测试数据
    N, C_in, H, W =10, 3, 258, 258
    C_out = 16
    KH, KW = 3, 3
    
    # input = np.random.randn(N, C_in, H, W).astype(np.float32)
    # kernel = np.random.randn(C_out, C_in, KH, KW).astype(np.float32)
    # bias = np.random.randn(C_out).astype(np.float32)
    input = np.full((N, C_in, H, W), 3.0).astype(np.float32)
    kernel = np.full((C_out, C_in, KH, KW), 5.0).astype(np.float32)
    bias = np.full((C_out), 1.0).astype(np.float32)
    
    # 执行卷积
    output = python_conv2d(
        input=input,
        kernel=kernel,
        bias=bias,
        stride=(1,1),
        padding=(0,0),
        dilation=(1,1)
    )
    print(output)
    # print(f"输入尺寸: {input.shape}")
    print(f"输出尺寸: {output.shape}")  # 预期输出 (64, 16, 16)