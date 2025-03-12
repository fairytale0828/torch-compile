import torch
import flag_gems
import torch.nn as nn

class Matmul(nn.Module):
    def __init__(self, M, N, K):
        super(Matmul, self).__init__()
        self.M = M
        self.N = N
        self.K = K
        self.mm = torch.mm(self.A, self.B)
        self.B = torch.randn((K, N), dtype=torch.float16, device="cuda")
        self.C = torch.mm(self.A, self.B)
        
    def forward(self,x):
        return self.mm(x)
M, N, K = 1024, 1024, 1024
model = Matmul(M,N,K).cpu().eval()
M, N, K = 1024, 1024, 1024

input = torch.randn((M, K), dtype=torch.float16, device="cpu")
compiled_model = torch.compile(model)
output_2 = compiled_model()