import triton
import triton.language as tl
import torch


@triton.jit
def triton_(in_out_ptr0, in_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 84
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex
    tmp0 = tl.load(in_ptr0 + (x0), xmask)
    tmp1 = tl.load(in_out_ptr0 + (x0), xmask)
    tmp2 = tmp0 + tmp1
    tmp3 = tl.where(tmp2 > 0, tmp2, 0)
    tl.store(in_out_ptr0 + (x0), tmp3, xmask)


def test_triton_kernel():
    # 初始化输入张量
    num_elements = 84
    in_out = torch.linspace(-59, 60, num_elements, device='cuda', dtype=torch.float32)
    in_ptr = torch.linspace(-59, 60, num_elements, device='cuda', dtype=torch.float32)

    # 定义内核参数
    XBLOCK = 128
    grid = ( (num_elements + XBLOCK - 1) // XBLOCK, )

    # 调用内核
    triton_[grid](in_out, in_ptr, num_elements, XBLOCK=XBLOCK)

    # 同步CUDA
    torch.cuda.synchronize()

    # 验证结果
    print("实际结果:", in_out)



# 运行测试
if __name__ == "__main__":
    test_triton_kernel()