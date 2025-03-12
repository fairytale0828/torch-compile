
import torch
# import conv2d_kernel
import conv_kernel
import torch
s = 1
p = 0
d = 0
batch_size = 1
in_channels = 6
height = 12
width = 12
input_tensor = torch.ones(batch_size, in_channels, height, width, dtype=torch.float32, device='cuda')


out_channels = 16
kernel_height = 5
kernel_width = 5
groups = 1  
weight_tensor = torch.ones(out_channels, in_channels // groups, kernel_height, kernel_width, dtype=torch.float32, device='cuda')

  
bias_tensor = torch.ones(out_channels, dtype=torch.float32, device='cuda')


stride = (s, s)           
padding = (p, p)          
dilation = (d, d)        


output_tensor = conv_kernel.conv2d(
# output_tensor = conv2d_kernel.conv2d(
    input=input_tensor,
    kernel=weight_tensor,
    # bias=bias_tensor,
    stride=stride,
    padding=padding,
    dilation=dilation,
    groups=groups
)

# print(f"输出张量形状: {output_tensor.shape}")

# print("输出张量的部分内容:")
# print(output_tensor)

