import torch
import torch.nn as nn
import torch.nn.functional as F


class LeNet(nn.Module):
    def __init__(self, num_classes=10):
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

# Instantiate the model
model = LeNet(num_classes=10).cuda().eval()

# Test the model with dummy input
dummy_input = torch.randn(1, 1, 28, 28).cuda()  # Batch size of 1, single channel, 28x28 image
output = model(dummy_input)

# compile the model with torch.compile()
compiled_model = torch.compile(model)
output_2 = compiled_model(dummy_input)

print("Output shape:", output.shape)  # Should be [1, 10]