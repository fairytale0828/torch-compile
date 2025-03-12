import torch
import torch.nn as nn
import os

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

def save_model(model, path):
    """
    保存模型到指定路径。

    Args:
        model (nn.Module): 要保存的模型。
        path (str): 模型保存的路径。
    """
    torch.save(model.state_dict(), path)
    print(f"模型已保存到 {path}")

def load_model(model, path):
    """
    从指定路径加载模型参数。

    Args:
        model (nn.Module): 模型实例。
        path (str): 模型保存的路径。
    """
    if not os.path.exists(path):
        raise FileNotFoundError(f"模型文件未找到: {path}")
    
    try:
        # 设置 weights_only=True 以提高安全性并消除 FutureWarning
        state_dict = torch.load(path, weights_only=True)
    except TypeError:
        # 对于不支持 weights_only 参数的旧版本 PyTorch
        print("警告: 您的 PyTorch 版本不支持 `weights_only` 参数。请升级到最新版本以提高安全性。")
        state_dict = torch.load(path)
    
    model.load_state_dict(state_dict)
    model.eval()  # 设置为评估模式
    print(f"模型已从 {path} 加载")

# 示例用法
if __name__ == "__main__":
    # 创建模型实例
    model = VecAdd()

    # 定义一个长度为10的输入向量
    input_vector = torch.tensor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], dtype=torch.float32)

    # 使用模型进行两次向量相加
    result = model(input_vector)

    # 保存模型
    save_path = "vecadd.pth"
    save_model(model, save_path)

    # 创建一个新的模型实例用于加载
    loaded_model = VecAdd()
    load_model(loaded_model, save_path)

    # 使用加载的模型进行向量相加
    loaded_result = loaded_model(input_vector)
    print("Loaded Model Result:", loaded_result)

    # 验证加载后的模型输出是否与原模型一致
    assert torch.equal(result, loaded_result), "加载后的模型输出与原模型不一致"
    print("模型加载验证通过！")
