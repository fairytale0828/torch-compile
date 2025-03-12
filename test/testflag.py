# import torch
# import flag_gems

# M, N = 256, 256
# A = torch.randn((M), dtype=torch.float16, device="cpu")
# with flag_gems.use_gems():
#     C = torch.abs(A)
#     print(C)

import torch
import flag_gems
import torch
from torch._inductor import config

# 启用 Block Pointers
config.triton.use_block_ptr = True

# 继续执行你的代码


A = torch.randn((10), dtype=torch.float16, device="cuda")
B = torch.randn((10), dtype=torch.float16, device="cuda")
C = flag_gems.add(A, B)
print(C)


# import triton
# import triton.language as tl

# @triton.jit
# def triton_(out_ptr0, xnumel, XBLOCK : tl.constexpr):
#     xnumel = 2688
#     xoffset = tl.program_id(0) * XBLOCK
#     xindex = xoffset + tl.arange(0, XBLOCK)[:]
#     xmask = xindex < xnumel
#     x0 = xindex % 7
#     x1 = (xindex // 7)
#     tmp0 = 0.0
#     tl.store(out_ptr0 + (x0 + (72*x1)), tmp0, xmask)

# src = triton.compiler.ASTSource(
#     fn=triton_,
#     signature="*fp32,i32",
#     constants={"XBLOCK": 32}
# )
# ret = triton.compile(
#     src,
# )
# print(ret.asm["ttir"])