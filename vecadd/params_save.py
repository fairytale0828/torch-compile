# import torch
# import torch.nn as nn
# import os
# import numpy as np

# class VecAdd(nn.Module):
#     def __init__(self):
#         super(VecAdd, self).__init__()
#         vec1 = torch.tensor([10, 9, 8, 7, 6, 5, 4, 3, 2, 1], dtype=torch.float32)
#         self.vec1 = nn.Parameter(vec1, requires_grad=False)

#         vec2 = torch.tensor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], dtype=torch.float32)
#         self.vec2 = nn.Parameter(vec2, requires_grad=False)

#     def forward(self, x):
#         if x.shape != (10,):
#             raise ValueError("输入向量的长度必须为10")
#         temp = x + self.vec1    # 第一次向量相加
#         output = temp + self.vec2  # 第二次向量相加
#         return output

# def save_model(model, path):
#     """
#     保存模型到指定路径。
#     """
#     torch.save(model.state_dict(), path)
#     print(f"模型已保存到 {path}")

# def load_model(model, path):
#     """
#     从指定路径加载模型参数。
#     """
#     if not os.path.exists(path):
#         raise FileNotFoundError(f"模型文件未找到: {path}")
    
#     try:
#         # 设置 weights_only=True 以提高安全性并消除 FutureWarning
#         state_dict = torch.load(path, weights_only=True)
#     except TypeError:
#         # 对于不支持 weights_only 参数的旧版本 PyTorch
#         print("警告: 您的 PyTorch 版本不支持 `weights_only` 参数。请升级到最新版本以提高安全性。")
#         state_dict = torch.load(path)
    
#     model.load_state_dict(state_dict)
#     model.eval()  # 设置为评估模式
#     print(f"模型已从 {path} 加载")

# def save_parameters_binary(model, binary_path):
#     """
#     将模型参数保存为二进制文件。

#     Args:
#         model (nn.Module): 要保存参数的模型。
#         binary_path (str): 二进制文件的保存路径。
#     """
#     # 提取参数并转换为 NumPy 数组
#     vec1 = model.vec1.detach().cpu().numpy()
#     vec2 = model.vec2.detach().cpu().numpy()
    
#     # 将参数保存到一个二进制文件
#     with open(binary_path, 'wb') as f:
#         vec1.tofile(f)
#         vec2.tofile(f)
#     print(f"模型参数已保存到 {binary_path}")

# def load_parameters_binary(model, binary_path):
#     """
#     从二进制文件加载模型参数。

#     Args:
#         model (nn.Module): 要加载参数的模型。
#         binary_path (str): 二进制文件的路径。
#     """
#     # 假设每个向量有10个 float32 元素
#     num_elements = 10
#     with open(binary_path, 'rb') as f:
#         vec1 = np.fromfile(f, dtype=np.float32, count=num_elements)
#         vec2 = np.fromfile(f, dtype=np.float32, count=num_elements)
    
#     # 将加载的参数赋值给模型
#     model.vec1.data = torch.from_numpy(vec1)
#     model.vec2.data = torch.from_numpy(vec2)
#     print(f"模型参数已从 {binary_path} 加载")

# # 示例用法
# if __name__ == "__main__":
#     # 创建模型实例
#     model = VecAdd()

#     # 定义一个长度为10的输入向量
#     input_vector = torch.tensor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], dtype=torch.float32)

#     # 使用模型进行两次向量相加
#     result = model(input_vector)
#     print("Original Model Result:", result)

#     # 保存模型参数到 .pth 文件
#     save_path = "vecadd.pth"
#     save_model(model, save_path)

#     # 保存模型参数到二进制文件
#     binary_path = "vecadd_params.bin"
#     save_parameters_binary(model, binary_path)

#     # 创建一个新的模型实例用于加载
#     loaded_model = VecAdd()
#     load_model(loaded_model, save_path)
    
#     # 使用加载的模型进行向量相加
#     loaded_result = loaded_model(input_vector)
#     print("Loaded Model Result:", loaded_result)

#     # 验证加载后的模型输出是否与原模型一致
#     assert torch.equal(result, loaded_result), "加载后的模型输出与原模型不一致"
#     print("模型加载验证通过！")

#     # 另一个示例：从二进制文件加载参数
#     another_model = VecAdd()
#     load_parameters_binary(another_model, binary_path)
    
#     # 使用从二进制文件加载的模型进行向量相加
#     another_result = another_model(input_vector)
#     print("Another Loaded Model Result:", another_result)
    
#     # 验证从二进制文件加载的模型输出是否与原模型一致
#     assert torch.equal(result, another_result), "从二进制文件加载的模型输出与原模型不一致"
#     print("从二进制文件加载的模型验证通过！")


import torch
import torch.nn as nn
import numpy as np
from torchvision import models

class VecAdd(nn.Module):
    def __init__(self):
        super(VecAdd, self).__init__()
        vec1 = torch.zeros(10, dtype=torch.float32)
        self.vec1 = nn.Parameter(vec1, requires_grad=False)

        vec2 = torch.zeros(10, dtype=torch.float32)
        self.vec2 = nn.Parameter(vec2, requires_grad=False)

    def forward(self, x):
        if x.shape != (10,):
            raise ValueError("输入向量的长度必须为10")
        temp = x + self.vec1    # 第一次向量相加
        output = temp + self.vec2  # 第二次向量相加
        return output

# def save_model_parameters_binary(model, binary_path):

#     with open(binary_path, 'wb') as f:
#         for name, param in model.named_parameters():
#             if param.requires_grad:
#                 print(f"Saving parameter: {name} with shape {param.shape}")
#                 param.cpu().detach().numpy().tofile(f)
#     print(f"模型参数已保存到 {binary_path}")

def save_model_parameters_binary(model, binary_path):
    """
    遍历模型的所有参数并将其保存为二进制文件。
    """
    with open(binary_path, 'wb') as f:
        for name, param in model.named_parameters():
            # 去掉这行判断，以便保存不需要梯度的参数
            print(f"Saving parameter: {name} with shape {param.shape}")
            param.cpu().detach().numpy().tofile(f)
    print(f"模型参数已保存到 {binary_path}")



if __name__ == "__main__":
    model = VecAdd()

    state_dict = torch.load("vecadd.pth", map_location="cpu", weights_only=True)
    model.load_state_dict(state_dict, strict=False)
    print("已从 vecadd.pth 加载参数。")


    binary_path = "vecadd_params.bin"
    save_model_parameters_binary(model, binary_path)

