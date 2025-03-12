import torch
import torch.nn as nn
import numpy as np


class LeNet(nn.Module):
    def __init__(self):
        super(LeNet, self).__init__()
        self.conv1 = nn.Conv2d(1, 6, 5)
        self.pool = nn.MaxPool2d(2, 2)
        self.conv2 = nn.Conv2d(6, 16, 5)
        self.fc1 = nn.Linear(16 * 4 * 4, 120)
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, 10)

    def forward(self, x):
        x = self.pool(torch.relu(self.conv1(x)))
        x = self.pool(torch.relu(self.conv2(x)))
        x = x.view(-1, 16 * 4 * 4)
        x = torch.relu(self.fc1(x))
        x = torch.relu(self.fc2(x))
        x = self.fc3(x)
        return x

def save_model_parameters_binary(model, binary_path):

    with open(binary_path, 'wb') as f:
        for name, param in model.named_parameters():
            if param.requires_grad:
                print(f"Saving parameter: {name} with shape {param.shape}")
                param.cpu().detach().numpy().tofile(f)
    print(f"模型参数已保存到 {binary_path}")

def load_model_parameters_binary(model, binary_path):

    param_dict = {}
    with open(binary_path, 'rb') as f:
        for name, param in model.named_parameters():
            if param.requires_grad:
                print(f"Loading parameter: {name} with shape {param.shape}, dtype: {param.dtype}")
                param_size = param.numel()
                data = np.frombuffer(f.read(param_size * 4), dtype=np.float32)
                reshaped_data = data.reshape(param.shape)  # 定义 reshaped_data
                
                param_dict[name] = reshaped_data
                # 打印部分参数信息
                print(f"Loaded shape: {reshaped_data.shape}")
                print(f"First 5 values: {reshaped_data.flatten()[:5]}")
    print(f"模型参数已从 {binary_path} 加载")
    return param_dict

if __name__ == "__main__":
    model = LeNet()

    state_dict = torch.load("../lenet.pth", map_location="cpu")
    model.load_state_dict(state_dict, strict=False)
    print("已从 lenet.pth 加载参数。")


    binary_path = "model_parameters.bin"
    save_model_parameters_binary(model, binary_path)
    numpy_params = load_model_parameters_binary(model, binary_path)
    load_model_parameters_binary(model, binary_path)

