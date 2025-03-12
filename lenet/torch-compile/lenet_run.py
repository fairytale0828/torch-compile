import torch
import torch.nn as nn
from torchvision import transforms
from PIL import Image
import time

class LeNet(nn.Module):
    def __init__(self, num_classes=10):
        super(LeNet, self).__init__()
        self.conv1 = nn.Conv2d(1, 6, 5)
        self.pool = nn.MaxPool2d(2, 2)
        self.conv2 = nn.Conv2d(6, 16, 5)
        self.fc1 = nn.Linear(16 * 4 * 4, 120)
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, num_classes)

    def forward(self, x):
        x = self.pool(torch.relu(self.conv1(x)))
        x = self.pool(torch.relu(self.conv2(x)))
        x = x.view(-1, 16 * 4 * 4)
        x = torch.relu(self.fc1(x))
        x = torch.relu(self.fc2(x))
        x = self.fc3(x)
        return x

# 加载模型
def load_model(model_path):
    model = LeNet()
    model.load_state_dict(torch.load(model_path, map_location=torch.device('cpu')))
    model.eval()
    return model

# 预处理图像
def preprocess_image(image_path):
    transform = transforms.Compose([
        transforms.Grayscale(),  # 确保是单通道灰度图
        transforms.Resize((28, 28)),
        transforms.ToTensor(),
        transforms.Normalize((0.5,), (0.5,))
    ])
    image = Image.open(image_path).convert('L')  # 转为灰度图
    return transform(image).unsqueeze(0)  # 添加 batch 维度

# 推理
def infer(model, image_tensor):
    with torch.no_grad():
        outputs = model(image_tensor)
        _, predicted = torch.max(outputs, 1)
        one_hot = torch.zeros_like(outputs)
        one_hot[0, predicted] = 1
        return predicted.item(), one_hot.squeeze().numpy()

if __name__ == "__main__":
    model_path = "../lenet.pth"  # 模型路径
    image_path = "../3.png"  # 手写数字图片路径

    start_time = time.time()

    for _ in range(10000):


        # 加载模型
        model = load_model(model_path)

        # 加载并预处理图像
        image_tensor = preprocess_image(image_path)

        # 推理
        predicted_label, one_hot_matrix = infer(model, image_tensor)

    # 结束计时
    end_time = time.time()

    # 计算并打印运行时间
    total_time = end_time - start_time
    print(f"运行 1000 次推理的总时间: {total_time:.4f} 秒")
    # print(f"预测的数字是: {predicted_label}")
    # print("结果矩阵: ")
    # print(one_hot_matrix)



# import torch
# import torch.nn as nn
# from torchvision import transforms
# from PIL import Image

# class LeNet(nn.Module):
#     def __init__(self, num_classes=10):
#         super(LeNet, self).__init__()
#         self.conv1 = nn.Conv2d(1, 6, 5)
#         self.pool = nn.MaxPool2d(2, 2)
#         self.conv2 = nn.Conv2d(6, 16, 5)
#         self.fc1 = nn.Linear(16 * 4 * 4, 120)
#         self.fc2 = nn.Linear(120, 84)
#         self.fc3 = nn.Linear(84, num_classes)

#     def forward(self, x):
#         x = self.pool(torch.relu(self.conv1(x)))
#         x = self.pool(torch.relu(self.conv2(x)))
#         x = x.view(-1, 16 * 4 * 4)
#         x = torch.relu(self.fc1(x))
#         x = torch.relu(self.fc2(x))
#         x = self.fc3(x)
#         return x

# def load_model(model_path):
#     model = LeNet()
#     model.load_state_dict(torch.load(model_path, map_location=torch.device('cpu')))
#     model.eval()
#     return model

# def preprocess_image(image_path):
#     transform = transforms.Compose([
#         transforms.Grayscale(),  
#         transforms.Resize((28, 28)),
#         transforms.ToTensor(),
#         transforms.Normalize((0.5,), (0.5,))
#     ])
#     image = Image.open(image_path).convert('L')
#     return transform(image).unsqueeze(0)

# # 定义前向钩子函数，用于打印每层的输出值
# def get_hook(name):
#     def hook(module, input, output):
#         print(f"Layer {name} output:")
#         print(output)
#         print("-" * 50)  # 分隔线
#     return hook

# def register_hooks(model):
#     # 为每个感兴趣的层注册钩子
#     hooks = []
#     hooks.append(model.conv1.register_forward_hook(get_hook('conv1')))
#     hooks.append(model.conv2.register_forward_hook(get_hook('conv2')))
#     hooks.append(model.fc1.register_forward_hook(get_hook('fc1')))
#     hooks.append(model.fc2.register_forward_hook(get_hook('fc2')))
#     hooks.append(model.fc3.register_forward_hook(get_hook('fc3')))
#     return hooks

# def infer(model, image_tensor):
#     with torch.no_grad():
#         outputs = model(image_tensor)
#         _, predicted = torch.max(outputs, 1)
#         one_hot = torch.zeros_like(outputs)
#         one_hot[0, predicted] = 1
#         return predicted.item(), one_hot.squeeze().numpy()

# if __name__ == "__main__":
#     model_path = "../lenet.pth"  
#     image_path = "../3.png"      

#     model = load_model(model_path)

#     # 注册钩子，捕获每层输出并打印
#     hooks = register_hooks(model)

#     image_tensor = preprocess_image(image_path)

#     # 执行前向传播，钩子将打印每层的计算结果
#     predicted_label, one_hot_matrix = infer(model, image_tensor)
#     print(f"预测的数字是: {predicted_label}")
#     print("结果矩阵: ")
#     print(one_hot_matrix)

#     # 可选：移除钩子以释放资源
#     for h in hooks:
#         h.remove()
