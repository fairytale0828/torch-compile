import torch
import flag_gems
import torch
from torch._inductor import config


A = torch.randn((256), dtype=torch.float16, device="cuda")
B = torch.randn((256), dtype=torch.float16, device="cuda")
C = flag_gems.add(A, B)
print(C)