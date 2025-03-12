import torch
import torch.nn as nn
from torchvision import transforms
from PIL import Image

# 预处理图像
def preprocess_image(image_path):
    transform = transforms.Compose([
        transforms.Grayscale(),  # 确保是单通道灰度图
        transforms.Resize((28, 28)),
        transforms.ToTensor(),
        transforms.Normalize((0.5,), (0.5,))
    ])
    image = Image.open(image_path).convert('L')  # 转为灰度图
    tensor_image = transform(image).unsqueeze(0)  # 添加 batch 维度

    # 保存为一维数组到 bin 文件
    tensor_image.numpy().reshape(-1).tofile("preprocessed_image_7.bin")
    print(tensor_image)
    return tensor_image

# 推理

if __name__ == "__main__":
    image_path = "../7.png"  # 手写数字图片路径

    # 加载并预处理图像
    image_tensor = preprocess_image(image_path)
