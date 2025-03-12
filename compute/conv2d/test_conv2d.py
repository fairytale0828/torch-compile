import torch
import torch.nn.functional as F

def conv2d_test(input_height, input_width, input_channels,
                kernel_height, kernel_width, kernel_channels,
                stride_h, stride_w, pad_h, pad_w, dilation_h, dilation_w):
    # 初始化输入数据 (全1矩阵)
    input_matrix = torch.ones((1, input_channels, input_height, input_width))

    # 初始化卷积核 (全1矩阵)
    kernel = torch.ones((kernel_channels, input_channels, kernel_height, kernel_width))

    # 使用 PyTorch 的卷积函数进行卷积操作
    output_matrix = F.conv2d(input_matrix, kernel, stride=(stride_h, stride_w), padding=(pad_h, pad_w), dilation=(dilation_h, dilation_w))

    # 打印输出矩阵的结果
    print("Output Matrix ({}x{}):".format(output_matrix.shape[2], output_matrix.shape[3]))
    print(output_matrix.squeeze().detach().numpy())

# 设置测试卷积的参数
input_height = 12
input_width = 12
input_channels = 1

kernel_height = 4
kernel_width = 4
kernel_channels = 1

stride_h = 3
stride_w = 3

pad_h = 2
pad_w = 2

dilation_h = 2
dilation_w = 2

# 调用卷积测试函数
conv2d_test(input_height, input_width, input_channels, 
            kernel_height, kernel_width, kernel_channels, 
            stride_h, stride_w, pad_h, pad_w, dilation_h, dilation_w)
