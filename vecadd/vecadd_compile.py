import torch
import torch.nn as nn
import torch.nn.functional as F
import flag_gems
# flag_gems.enable()

class VecAdd(nn.Module):
    def __init__(self):
        super(VecAdd, self).__init__()
        vec1 = torch.tensor([10, 9, 8, 7, 6, 5, 4, 3, 2, 1], dtype=torch.float32)
        self.vec1 = nn.Parameter(vec1, requires_grad=False)

        vec2 = torch.tensor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], dtype=torch.float32)
        self.vec2 = nn.Parameter(vec2, requires_grad=False)

    def forward(self, x):
 
        if x.shape != (10,):
            raise ValueError("输入向量的长度必须为10")
        temp = x + self.vec1    # 第一次向量相加
        output = temp + self.vec2  # 第二次向量相加
        return output

# Instantiate the model
model = VecAdd().cuda().eval()

# Test the model with dummy input
dummy_input = torch.ones(10).cuda()  # Batch size of 1, single channel, 28x28 image
output = model(dummy_input)

# compile the model with torch.compile()
compiled_model = torch.compile(model)
output_2 = compiled_model(dummy_input)

print("Output shape:", output.shape)  # Should be [1, 10]