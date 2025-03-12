import triton
import triton.language as tl
import torch


@triton.jit
def triton_(in_out_ptr0, in_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 3456
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x2 = xindex
    x1 = (xindex // 576)
    tmp0 = tl.load(in_out_ptr0 + (x2), xmask)
    tmp1 = tl.load(in_ptr0 + (x1), xmask, eviction_policy='evict_last')
    tmp2 = tmp0 + tmp1
    tmp3 = tl.where(tmp2 > 0.0, tmp2, 0.0)
    tl.store(in_out_ptr0 + (x2), tmp3, xmask)


# src = triton.compiler.ASTSource(
# fn=triton_,
# signature="*fp32,*fp32,i32",
# constants={"XBLOCK": 4096}
# )
# ret = triton.compile(
#     src,
# )
# print(ret.asm["ttir"])

def test_triton_kernel():
    # 初始化输入张量
    num_elements = 3456
    # in_out = torch.zeros(num_elements, device='cuda', dtype=torch.float32)
    # scalar = 1.5
    # in_ptr = torch.tensor([scalar], device='cuda', dtype=torch.float32)
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
    expected = torch.relu(in_out + in_ptr)
    if torch.allclose(in_out, expected):
        print("测试通过！")
    else:
        print("测试失败！")
        # print("预期结果:", expected)
        # print("实际结果:", in_out)
        print("预期结果:")
        for element in expected:
            print(element)

        print("实际结果:")
        for element in in_out:
            print(element)



# 运行测试
if __name__ == "__main__":
    test_triton_kernel()
