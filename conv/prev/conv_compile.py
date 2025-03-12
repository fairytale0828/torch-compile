# AOT ID: ['0_forward']
from ctypes import c_void_p, c_long
# import torch
import math
import random
import os
import tempfile
from math import inf, nan
# from torch._inductor.hooks import run_intermediate_hooks
# from torch._inductor.utils import maybe_profile
# from torch._inductor.codegen.memory_planning import _align as align

# from torch import device, empty_strided
# from torch._inductor.async_compile import AsyncCompile
# from torch._inductor.select_algorithm import extern_kernels
# from torch._inductor.codegen.multi_kernel import MultiKernelCall
import numpy as np

# aten = torch.ops.aten
# inductor_ops = torch.ops.inductor
# _quantized = torch.ops._quantized
# assert_size_stride = torch._C._dynamo.guards.assert_size_stride
# empty_strided_cpu = torch._C._dynamo.guards._empty_strided_cpu
# empty_strided_cuda = torch._C._dynamo.guards._empty_strided_cuda
# reinterpret_tensor = torch._C._dynamo.guards._reinterpret_tensor
# alloc_from_pool = torch.ops.inductor._alloc_from_pool
# async_compile = AsyncCompile()


# async_compile.wait(globals())
# del async_compile

# def im2col(input_data, kernel_h, kernel_w, stride, output_h, output_w):
#     batch_size, in_channels, input_h, input_w = input_data.shape
#     col_matrix = np.zeros((in_channels * kernel_h * kernel_w, output_h * output_w * batch_size))

#     col_index = 0
#     for n in range(batch_size):
#         for i in range(0, output_h):
#             for j in range(0, output_w):
#                 region = input_data[n, :, i*stride:i*stride+kernel_h, j*stride:j*stride+kernel_w]
#                 col_matrix[:, col_index] = region.flatten()
#                 col_index += 1

#     return col_matrix
# # def conv_im2col(input_tensor, kernel_tensor, bias_tensor=None, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1):
# def conv2d_im2col(input_data, kernel, stride=1, padding=0):
#     batch_size, in_channels, input_h, input_w = input_data.shape
#     out_channels, _, kernel_h, kernel_w = kernel.shape

#     # 计算输出的尺寸
#     output_h = (input_h - kernel_h + 2 * padding) // stride + 1
#     output_w = (input_w - kernel_w + 2 * padding) // stride + 1

#     # 为输入数据添加填充
#     if padding > 0:
#         input_data = np.pad(input_data, ((0, 0), (0, 0), (padding, padding), (padding, padding)), mode='constant')

#     # 使用im2col将输入转换为2D矩阵
#     col_matrix = im2col(input_data, kernel_h, kernel_w, stride, output_h, output_w)
  
#     # 重新排列卷积核
#     reshaped_kernel = kernel.reshape(out_channels, -1)

#     # 使用矩阵乘法代替卷积运算
#     output_col = reshaped_kernel @ col_matrix

#     # 重新转换为输出维度
#     output = output_col.reshape(out_channels, output_h, output_w, batch_size)
#     return output.transpose(3, 0, 1, 2)
    

def im2col(input_data, kernel_h, kernel_w, stride, output_h, output_w, padding=0, dilation=1):
    batch_size, in_channels, input_h, input_w = input_data.shape
    
    # 计算卷积核扩展后的高度和宽度
    kernel_h_dilated = (kernel_h - 1) * dilation + 1
    kernel_w_dilated = (kernel_w - 1) * dilation + 1

    # 输入张量进行填充
    if padding > 0:
        input_data = np.pad(input_data, ((0, 0), (0, 0), (padding, padding), (padding, padding)), mode='constant')
    
    # 输出矩阵初始化
    col_matrix = np.zeros((in_channels * kernel_h_dilated * kernel_w_dilated, output_h * output_w * batch_size))

    col_index = 0
    for n in range(batch_size):
        for i in range(0, output_h):
            for j in range(0, output_w):
                # 获取卷积区域（考虑步幅和扩张）
                region = input_data[n, :, i*stride:i*stride+kernel_h_dilated:dilation, j*stride:j*stride+kernel_w_dilated:dilation]
                col_matrix[:, col_index] = region.flatten()
                col_index += 1

    return col_matrix

def conv2d_im2col(input_data, kernel, bias=None, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0)):
    batch_size, in_channels, input_h, input_w = input_data.shape
    out_channels, _, kernel_h, kernel_w = kernel.shape
    stride_h, stride_w = stride
    padding_h, padding_w = padding
    dilation_h, dilation_w = dilation
    
    # 计算输出的尺寸
    output_h = (input_h - kernel_h + 2 * padding_h) // stride_h + 1
    output_w = (input_w - kernel_w + 2 * padding_w) // stride_w + 1

    # 使用im2col将输入转换为2D矩阵
    col_matrix = im2col(input_data, kernel_h, kernel_w, stride_h, output_h, output_w, padding_h, dilation_h)

    # 重新排列卷积核
    reshaped_kernel = kernel.reshape(out_channels, -1)
    
    # 使用矩阵乘法代替卷积运算
    output_col = reshaped_kernel @ col_matrix
    
    # 如果有偏置，需要进行广播
    if bias is not None:
        # 偏置广播到输出列的每一列
        output_col += bias.reshape(-1, 1)

    # 重新转换为输出维度
    output = output_col.reshape(out_channels, output_h, output_w, batch_size)
    
    # 转置输出维度顺序为 (batch_size, out_channels, output_h, output_w)
    output = output.transpose(3, 0, 1, 2)

    return output



def call(args):
    primals_1, primals_2, primals_3 = args
    args.clear()
    # assert_size_stride(primals_1, (1, 1, 3, 3), (9, 9, 3, 1))
    # assert_size_stride(primals_2, (1, ), (1, ))
    # assert_size_stride(primals_3, (1, 1, 9, 9), (81, 81, 9, 1))
    # Source Nodes: [x], Original ATen: [aten.convolution]
    #buf0 = conv2d_im2col(primals_3, primals_1, stride=1, padding=1)
    buf0 = conv2d_im2col(primals_3, primals_1, primals_2, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0))
    # assert_size_stride(buf0, (1, 1, 9, 9), (81, 81, 9, 1))
    del primals_2
    print("Convolution Result:")
    print(buf0)
    # return (buf0, primals_1, primals_3, )


if __name__ == "__main__":

    primals_1 = np.ones((1, 1, 3, 3))  # 卷积核
    primals_2 = np.ones((1) )          # 偏置
    primals_3 = np.ones((1, 1, 9, 9))  # 输入图像
    call([primals_1, primals_2, primals_3])




