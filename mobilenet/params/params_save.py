import torch
import torch.nn as nn
import numpy as np


class conv_block(nn.Module):
    def __init__(self, ch_in, ch_out):
        super(conv_block, self).__init__()
        self.conv = nn.Sequential(
            nn.Conv2d(ch_in, ch_out, kernel_size=11, stride=1, padding=10, dilation=2, bias=True),
            nn.BatchNorm2d(ch_out),
            nn.ReLU(inplace=True),
        )

    def forward(self, x):
        x = self.conv(x)
        return x

"""
多尺度特征融合模块(MFB)
Args:
    dilation: 空洞卷积的膨胀率
网络结构:
    ReflectionPad2d: 在输入的边缘进行反射填充，以确保卷积操作后图像的空间维度不变。
                    填充的量是根据卷积核大小和膨胀系数计算得出。
    Conv2d:实际的卷积层，执行对输入特征图的卷积操作，参数包括输入通道、输出通道、卷积核大小、步幅、膨胀以及偏置项.
    BatchNorm2d: 批量归一化层.
    ReLU: 激活函数.
知识点:
    空洞卷积: 最初是解决图像分割问题而提出的. 增加感受野的同时保持特征图的尺寸不变.
    反射填充: 填充边缘的像素值，使得卷积操作后图像的空间维度不变.
论文中解释:
    由于多尺度特征融合块的最大接受域包含43个像素, 因此采用反射填充操作来避免图像边缘出现伪影
"""
class multi_scaled_dilation_conv_block(nn.Module):
    # 多尺度预处理kernel
    def __init__(self, ch_in, ch_out, kernel_size, dilation=1):
        super(multi_scaled_dilation_conv_block, self).__init__()
        self.conv = nn.Sequential(
            nn.ReflectionPad2d(int((kernel_size - 1) / 2 * dilation)),
            nn.Conv2d(ch_in, ch_out, kernel_size=kernel_size, stride=1, dilation=dilation, bias=True),
            nn.BatchNorm2d(ch_out),
            nn.ReLU(inplace=True),
        )

    def forward(self, x):
        x = self.conv(x)
        return x

"""
多方向的空洞卷积: 允许每个像素在不同方向上进行卷积操作。
Args:
    direction: 卷积的方向，包括'LU'、'LD'、'RU'、'RD'。
网络结构:
    padding_size: 卷积核的大小，根据膨胀率计算得出。
    direction_padding: 方向性填充, 根据padding_size进行填充。
                        这这些填充确保了在进行卷积时, 图像的边缘部分不会产生变形或者丢失信息.
    conv: 卷积层，执行对输入特征图的卷积操作，参数包括输入通道、输出通道、卷积核大小、步幅、膨胀以及偏置项.
    BatchNorm2d: 批量归一化层.
    ReLU: 激活函数.
"""
class bias_convolution(nn.Module):
    # 多方向的空洞卷积，提供每个像素不同方向的情况
    def __init__(self, ch_in, ch_out, kernel_size, dilation=1, direction=''):
        # default is normal convolution
        super(bias_convolution, self).__init__()
        self.direction = direction
        self.padding_size = int((kernel_size - 1) * dilation)
        # self.direction_padding = nn.ReflectionPad2d(self.padding_size)
        self.direction_padding_LU = nn.ReflectionPad2d((self.padding_size, 0, self.padding_size, 0))
        self.direction_padding_RU = nn.ReflectionPad2d((0, self.padding_size, self.padding_size, 0))
        self.direction_padding_LD = nn.ReflectionPad2d((self.padding_size, 0, 0, self.padding_size))
        self.direction_padding_RD = nn.ReflectionPad2d((0, self.padding_size, 0, self.padding_size))

        self.conv = nn.Sequential(
            nn.Conv2d(ch_in, ch_out, kernel_size=kernel_size, stride=1, dilation=dilation, bias=True),
            nn.BatchNorm2d(ch_out),
            nn.ReLU(inplace=True),
        )

    def forward(self, x):
        # print(self.padding_size)
        # x = self.direction_padding(x)
        x_LU = self.direction_padding_LU(x)
        x_RU = self.direction_padding_RU(x)
        x_LD = self.direction_padding_LD(x)
        x_RD = self.direction_padding_RD(x)

        if self.direction == 'LU':
            # padding to left up
            return self.conv(x_LU)

        elif self.direction == 'LD':
            # padding to left down
            return self.conv(x_LD)

        elif self.direction == 'RU':
            # padding to right up
            return self.conv(x_RU)

        elif self.direction == 'RD':
            # padding to right down
            return self.conv(x_RD)

        else:
            # normal padding
            return self.conv(x)

"""
偏移卷积模块(OC)
网络结构:
    LU_bias_convolution: 偏移卷积模块的左上角卷积层, 卷积核大小为7x7, 膨胀率为1, 方向为左上角.
    LD_bias_convolution: 偏移卷积模块的左下角卷积层, 卷积核大小为7x7, 膨胀率为1, 方向为左下角.
    RU_bias_convolution: 偏移卷积模块的右上角卷积层, 卷积核大小为7x7, 膨胀率为1, 方向为右上角.
    RD_bias_convolution: 偏移卷积模块的右下角卷积层, 卷积核大小为7x7, 膨胀率为1, 方向为右下角.
    final_conv: 最终的卷积层, 卷积核大小为3x3, 膨胀率为1, 输出通道数为输出通道数.
    BN: 批量归一化层.
    activation: 激活函数.

"""
class offset_convolution(nn.Module):
    def __init__(self, ch_in, ch_out):
        super(offset_convolution, self).__init__()
        self.LU_bias_convolution = bias_convolution(ch_in=ch_in, ch_out=ch_out, kernel_size=7, dilation=1,
                                                    direction='LU')
        self.LD_bias_convolution = bias_convolution(ch_in=ch_in, ch_out=ch_out, kernel_size=7, dilation=1,
                                                    direction='LD')
        self.RU_bias_convolution = bias_convolution(ch_in=ch_in, ch_out=ch_out, kernel_size=7, dilation=1,
                                                    direction='RU')
        self.RD_bias_convolution = bias_convolution(ch_in=ch_in, ch_out=ch_out, kernel_size=7, dilation=1,
                                                    direction='RD')
        self.final_conv = nn.Conv2d(ch_out * 4, ch_out, kernel_size=3, stride=1, padding=1)
        self.BN = nn.BatchNorm2d(ch_out)
        self.activation = nn.ReLU(inplace=True)

    def forward(self, x):
        LU_BC = self.LU_bias_convolution(x)
        LD_BC = self.LD_bias_convolution(x)
        RU_BC = self.RU_bias_convolution(x)
        RD_BC = self.RD_bias_convolution(x)
        d = torch.cat((LU_BC, LD_BC, RU_BC, RD_BC), dim=1)
        d = self.final_conv(d)
        d = self.BN(d)
        d = self.activation(d)
        return d


class up_conv(nn.Module):
    def __init__(self, ch_in, ch_out):
        super(up_conv, self).__init__()
        self.up = nn.Sequential(
            nn.Upsample(scale_factor=2),
            nn.Conv2d(ch_in, ch_out, kernel_size=3, stride=1, padding=1, bias=True),
            nn.BatchNorm2d(ch_out),
            nn.ReLU(inplace=True)
        )

    def forward(self, x):
        x = self.up(x)
        return x

"""
注意力机制模块(AB)
Args:
    F_g: gating signal的通道数(通常是上采样特征图的通道数).
    F_l: 输入特征图的通道数.
    F_int: 中间特征图的通道数.
网络结构:
    W_g: Gating信号的卷积层: 这是一个顺序模块, 用于对gating signal进行卷积操作, 将其通道数从F_g转换到F_int, 并应用批量归一化.
    W_x: 输入特征图的卷积层. 类似于W_g, 该层对输入特征图进行卷积, 并将通道数从F_l映射到F_int, 并同样应用批量归一化.
    psi: 生成权重的卷积层.此层将经过ReLU激活函数处理的特征图映射到一个单通道, 用于计算每个特征通道的重要性权重, 并通过Sigmoid激活函数进行归一化, 确保输出在0到1之间.
    relu: 激活函数.
"""
class Attention_block(nn.Module):
    def __init__(self, F_g, F_l, F_int):
        super(Attention_block, self).__init__()
        self.W_g = nn.Sequential(
            nn.Conv2d(F_g, F_int, kernel_size=1, stride=1, padding=0, bias=True),
            nn.BatchNorm2d(F_int)
        )

        self.W_x = nn.Sequential(
            nn.Conv2d(F_l, F_int, kernel_size=1, stride=1, padding=0, bias=True),
            nn.BatchNorm2d(F_int)
        )

        self.psi = nn.Sequential(
            nn.Conv2d(F_int, 1, kernel_size=1, stride=1, padding=0, bias=True),
            nn.BatchNorm2d(1),
            nn.Sigmoid()
        )

        self.relu = nn.ReLU(inplace=True)

    def forward(self, g, x):
        # 下采样的gating signal 卷积, here gate is query.
        g1 = self.W_g(g)
        # 上采样的 l 卷积
        x1 = self.W_x(x)
        # concat + relu
        psi = self.relu(g1 + x1)
        # channel 减为1,并Sigmoid,得到权重矩阵
        psi = self.psi(psi)
        # 返回加权的 x
        return x * psi


class MDOAU_net(nn.Module):
    # Fused multi-scaled convolution block
    # 后接my_model1作为主题 (减少channel并扩大感受的AttU)
    # 中间使用offest convolution
    def __init__(self, img_ch=3, output_ch=1):
        super(MDOAU_net, self).__init__()
        # offset_convolution()
        self.Maxpool = nn.MaxPool2d(kernel_size=2, stride=2)
        """
        编码部分
        """
        # 多尺度特征融合(MFB)
        self.multi_scale_1 = multi_scaled_dilation_conv_block(img_ch, 16, kernel_size=3, dilation=1)
        self.multi_scale_2 = multi_scaled_dilation_conv_block(img_ch, 16, kernel_size=5, dilation=1)
        self.multi_scale_3 = multi_scaled_dilation_conv_block(img_ch, 16, kernel_size=7, dilation=2)
        self.multi_scale_4 = multi_scaled_dilation_conv_block(img_ch, 16, kernel_size=11, dilation=2)
        self.multi_scale_5 = multi_scaled_dilation_conv_block(img_ch, 16, kernel_size=15, dilation=3)
        # 编码部分
        # 扩张卷积块(DCB)
        self.Conv1 = conv_block(ch_in=16 * 5, ch_out=8)
        self.Conv2 = conv_block(ch_in=8, ch_out=16)
        self.Conv3 = conv_block(ch_in=16, ch_out=32)
        self.Conv4 = conv_block(ch_in=32, ch_out=64)
        self.Conv5 = conv_block(ch_in=64, ch_out=128)
        # 尺度融合部分
        # 偏移卷积模块(OCB)
        self.o1 = offset_convolution(ch_in=8, ch_out=8)
        self.o2 = offset_convolution(ch_in=16, ch_out=16)
        self.o3 = offset_convolution(ch_in=32, ch_out=32)
        self.o4 = offset_convolution(ch_in=64, ch_out=64)
        # 解码部分
        self.Up5 = up_conv(ch_in=128, ch_out=64)
        self.Att5 = Attention_block(F_g=64, F_l=64, F_int=32)
        self.Up_conv5 = conv_block(ch_in=128, ch_out=64)
        
        self.Up4 = up_conv(ch_in=64, ch_out=32)
        self.Att4 = Attention_block(F_g=32, F_l=32, F_int=16)
        self.Up_conv4 = conv_block(ch_in=64, ch_out=32)

        self.Up3 = up_conv(ch_in=32, ch_out=16)
        self.Att3 = Attention_block(F_g=16, F_l=16, F_int=8)
        self.Up_conv3 = conv_block(ch_in=32, ch_out=16)

        self.Up2 = up_conv(ch_in=16, ch_out=8)
        self.Att2 = Attention_block(F_g=8, F_l=8, F_int=4)
        self.Up_conv2 = conv_block(ch_in=16, ch_out=8)

        self.Conv_1x1 = nn.Conv2d(8, output_ch, kernel_size=1, stride=1, padding=0)
        self.sigmoid = nn.Sigmoid()

        # self.Conv_1x1_1 = nn.Conv2d(8, output_ch, kernel_size=1, stride=1, padding=0)

    def forward(self, x, train_flag=False):
        # multi_scale_generator
        x_pre_1 = self.multi_scale_1(x)
        x_pre_2 = self.multi_scale_2(x)
        x_pre_3 = self.multi_scale_3(x)
        x_pre_4 = self.multi_scale_4(x)
        x_pre_5 = self.multi_scale_5(x)
        muti_scale_x = torch.cat((x_pre_1, x_pre_2, x_pre_3, x_pre_4, x_pre_5), dim=1)

        # encoding path
        x1 = self.Conv1(muti_scale_x)

        x2 = self.Maxpool(x1)
        x2 = self.Conv2(x2)

        x3 = self.Maxpool(x2)
        x3 = self.Conv3(x3)

        x4 = self.Maxpool(x3)
        x4 = self.Conv4(x4)

        x5 = self.Maxpool(x4)
        x5 = self.Conv5(x5)

        # offset convolution
        o1 = self.o1(x1)
        o2 = self.o2(x2)
        o3 = self.o3(x3)
        o4 = self.o4(x4)

        # decoding + concat path
        d5 = self.Up5(x5)
        x4 = self.Att5(g=d5, x=o4)
        d5 = torch.cat((x4, d5), dim=1)
        d5 = self.Up_conv5(d5)

        d4 = self.Up4(d5)
        x3 = self.Att4(g=d4, x=o3)
        d4 = torch.cat((x3, d4), dim=1)
        d4 = self.Up_conv4(d4)

        d3 = self.Up3(d4)
        x2 = self.Att3(g=d3, x=o2)
        d3 = torch.cat((x2, d3), dim=1)
        d3 = self.Up_conv3(d3)

        d2 = self.Up2(d3)
        x1 = self.Att2(g=d2, x=o1)
        d2 = torch.cat((x1, d2), dim=1)
        d2 = self.Up_conv2(d2)

        d1 = self.Conv_1x1(d2)
        if train_flag:
            return d1
        else:
            return self.sigmoid(d1)

def save_model_parameters_binary(model, binary_path):
    saved_lines = 0
    with open(binary_path, 'wb') as f:
        for name, param in model.named_parameters():
            if param.requires_grad:
                # print(f"Saving parameter: {name} with shape {param.shape}")
                param.cpu().detach().numpy().tofile(f)
                saved_lines += 1  # 增加已保存的参数数量
        for name, module in model.named_modules():
            if isinstance(module, nn.BatchNorm2d):
                # 保存 running_mean 和 running_var
                running_mean = module.running_mean
                running_var = module.running_var
                running_mean.cpu().detach().numpy().tofile(f)
                saved_lines += 1  # 增加已保存的参数数量
                running_var.cpu().detach().numpy().tofile(f)
                saved_lines += 1 # 增加已保存的参数数量
                # print(f"Saving {name}.running_mean with shape {running_mean.shape}")
                # print(f"Saving {name}.running_var with shape {running_var.shape}")
                empty_array = np.empty(1, dtype=np.float32)  # 空数组
                empty_array.tofile(f) 
                saved_lines += 1  # 增加已保存的参数数量
    print(f"模型参数已保存到 {binary_path}")
    print(f"总共保存了 {saved_lines} 行参数数据")

# def load_model_parameters_binary(model, binary_path):

#     param_dict = {}
#     i = 0
#     with open(binary_path, 'rb') as f:
#         for name, param in model.named_parameters():
#             if param.requires_grad:
#                 # print(f"Loading parameter: {name} with shape {param.shape}, dtype: {param.dtype}")
#                 param_size = param.numel()
#                 data = np.frombuffer(f.read(param_size * 4), dtype=np.float32)
#                 reshaped_data = data.reshape(param.shape)  # 定义 reshaped_data
                
#                 param_dict[name] = reshaped_data
#                 # 打印部分参数信息
#                 # print(f"Loaded shape: {reshaped_data.shape}")
#                 # print(f"{reshaped_data.shape} ,")
#                 # print(f"First 5 values: {reshaped_data.flatten()[:5]}")
#                 # i = i+1
#         for name, module in model.named_modules():
#             if isinstance(module, nn.BatchNorm2d):
#                 running_mean_size = module.running_mean.numel()
#                 running_var_size = module.running_var.numel()

#                 # 读取 running_mean
#                 running_mean_data = np.frombuffer(f.read(running_mean_size * 4), dtype=np.float32)
#                 module.running_mean = torch.tensor(running_mean_data).view(module.running_mean.shape)
#                 # print(f"Loaded shape: {running_mean_data.shape}")
#                 # print(f"First 5 values: {running_mean_data.flatten()[:5]}")
#                 # print(f"{running_mean_data.shape} ,")
#                 # 读取 running_var
#                 running_var_data = np.frombuffer(f.read(running_var_size * 4), dtype=np.float32)
#                 module.running_var = torch.tensor(running_var_data).view(module.running_var.shape)
#                 # print(f"Loaded shape: {running_var_data.shape}")
#                 # print(f"First 5 values: {running_var_data.flatten()[:5]}")
#                 # print(f"{running_var_data.shape} ,")
#                 # print(f"Loaded {name}.running_mean with shape {module.running_mean.shape}")
#                 # print(f"Loaded {name}.running_var with shape {module.running_var.shape}")
#                 empty_array_data = np.frombuffer(f.read(4), dtype=np.float32)  # 空数组为4字节
#                 # print(f"Loaded shape: {empty_array_data.shape}")
#                 # print(f"{empty_array_data.shape} ,")
#                 # print(f"Loaded empty array with values: {empty_array_data}")
#                 # i = i+3
        
#     print(f"模型参数已从 {binary_path} 加载")
#     # print(i)
#     return param_dict

if __name__ == "__main__":
    model = MDOAU_net()

    state_dict = torch.load("../compute/BCE_best_loss.pth", map_location="cpu")
    model.load_state_dict(state_dict, strict=False)
    print("已从 lenet.pth 加载参数。")


    binary_path = "model_parameters.bin"
    save_model_parameters_binary(model, binary_path)
    # numpy_params = load_model_parameters_binary(model, binary_path)
    # load_model_parameters_binary(model, binary_path)



