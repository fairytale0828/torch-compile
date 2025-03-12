import triton
import triton.language as tl
import torch

@triton.jit
def triton_(in_ptr0, out_ptr0, out_ptr1, xnumel, XBLOCK : tl.constexpr):
    xnumel = 864
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex % 12
    x1 = (xindex // 12)
    x2 = xindex
    x3 = (xindex // 12) % 12
    tmp0 = tl.load(in_ptr0 + ((2*x0) + (48*x1)), xmask)
    tmp1 = tl.load(in_ptr0 + (1 + (2*x0) + (48*x1)), xmask)
    tmp3 = tl.load(in_ptr0 + (24 + (2*x0) + (48*x1)), xmask)
    tmp5 = tl.load(in_ptr0 + (25 + (2*x0) + (48*x1)), xmask)
    tmp2 = tl.where(tmp1 > tmp0, tmp1, tmp0)
    tmp4 = tl.where(tmp3 > tmp2, tmp3, tmp2)
    tmp6 = tl.where(tmp5 > tmp4, tmp5, tmp4)
    # tmp2 = tl.max(tmp1, tmp0)
    # tmp4 = tl.max(tmp3, tmp2)
    # tmp6 = tl.max(tmp5, tmp4)
    tmp7 = tmp1 > tmp0
    tmp8 = 1 + (2*x0) + (48*x3)
    tmp9 = (2*x0) + (48*x3)
    tmp10 = tl.where(tmp7, tmp8, tmp9)
    tmp11 = tmp3 > tmp2
    tmp12 = 24 + (2*x0) + (48*x3)
    tmp13 = tl.where(tmp11, tmp12, tmp10)
    tmp14 = tmp5 > tmp4
    tmp15 = 25 + (2*x0) + (48*x3)
    tmp16 = tl.where(tmp14, tmp15, tmp13)
    tl.store(out_ptr0 + (x2), tmp6, xmask)
    tl.store(out_ptr1 + (x2), tmp16, xmask)



def main():
    # 1. 准备输入/输出数据
    # - in_data: 大小为 3456 (或更大)，本例演示用 3456
    # - out_data0, out_data1: 大小为 864
    in_size = 3456
    out_size = 864

    # 随机初始化输入数据 (范围 0~1)
    in_data = torch.ones(in_size, device='cuda', dtype=torch.float32)

    # 准备输出数据 (空张量)
    out_data0 = torch.empty(out_size, device='cuda', dtype=torch.float32)
    out_data1 = torch.empty(out_size, device='cuda', dtype=torch.float32)

    # 2. 定义 block size，并计算 grid 大小
    BLOCK_SIZE = 1024
    grid = ((out_size + BLOCK_SIZE - 1) // BLOCK_SIZE,)

    # 3. 调用 Triton 内核
    triton_[grid](
        in_data,
        out_data0,
        out_data1,
        out_size,        # xnumel
        XBLOCK=BLOCK_SIZE
    )
    torch.cuda.synchronize()

    # 4. 打印或简单检查结果
    #   out_data0: 每个 xindex 位置上的 4 个数 (tmp0, tmp1, tmp3, tmp5) 中的最大值
    #   out_data1: 对应的最大值在 in_data 中的地址偏移 (相对 in_data起始地址)
    print("== 完成计算，输出结果 ==")
    print("out_data0 (最大值) 前10个:", out_data0[:100].cpu().numpy())
    print("out_data1 (最大值地址偏移) 前10个:", out_data1[:100].cpu().numpy())

    # 如果需要进一步验证，可手动解析各 xindex
    # 并与 python 端的参考逻辑对比。

if __name__ == "__main__":
    main()