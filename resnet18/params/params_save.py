import torch
import torch.nn as nn
import numpy as np
from torchvision import models

class ResNet18Model(nn.Module):
    def __init__(self):
        super(ResNet18Model, self).__init__()
        self.conv1 = nn.Conv2d(3, 64, kernel_size=7, stride=2, padding=3, bias=False)
        self.bn1 = nn.BatchNorm2d(64)
        self.relu = nn.ReLU(inplace=True)
        self.maxpool = nn.MaxPool2d(kernel_size=3, stride=2, padding=1)
        self.layer1 = models.resnet18(pretrained=False).layer1
        self.layer2 = models.resnet18(pretrained=False).layer2
        self.layer3 = models.resnet18(pretrained=False).layer3
        self.layer4 = models.resnet18(pretrained=False).layer4
        self.avgpool = nn.AdaptiveAvgPool2d((1, 1))
        self.fc = nn.Linear(512, 10)

    def forward(self, x):
        x = self.conv1(x)
        x = self.bn1(x)
        x = self.relu(x)
        x = self.maxpool(x)
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x)
        x = torch.flatten(x, 1)
        x = self.fc(x)
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
    model = ResNet18Model()

    state_dict = torch.load("../resnet18.pth", map_location="cpu")
    model.load_state_dict(state_dict, strict=False)
    print("已从 resnet18.pth 加载参数。")


    binary_path = "model_parameters.bin"
    save_model_parameters_binary(model, binary_path)
    numpy_params = load_model_parameters_binary(model, binary_path)
    load_model_parameters_binary(model, binary_path)

