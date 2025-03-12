import torch
import torch.nn as nn
import flag_gems as fg
fg.enable()

weight = nn.Parameter(torch.ones(1, 1, 3, 3)).cuda()  # Weight shape should match the kernel size (1 input channel, 1 output channel, 3x3 kernel)
bias = nn.Parameter(torch.ones(1)).cuda() # Bias for the output channel (1)




# Test the model with dummy input
dummy_input = torch.ones((1, 1, 9, 9)).cuda()  # Batch size of 1, single channel, 28x28 image

x = fg.conv2d(dummy_input, weight, bias, stride=(1, 1), padding=(1, 1), dilation=(1, 1), groups=1)



print(x)
print("Output shape:", x.shape)  # Should be [1, 10]
