import triton
import triton.language as tl
import torch
@triton.jit
def triton_(in_ptr0, out_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 256
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex
    tmp0 = tl.load(in_ptr0 + ((2*(x0 % 4)) + (16*(x0 // 4))), xmask)
    tmp1 = tl.load(in_ptr0 + (1 + (2*(x0 % 4)) + (16*(x0 // 4))), xmask)
    tmp3 = tl.load(in_ptr0 + (8 + (2*(x0 % 4)) + (16*(x0 // 4))), xmask)
    tmp5 = tl.load(in_ptr0 + (9 + (2*(x0 % 4)) + (16*(x0 // 4))), xmask)
    tmp2 = tl.where(tmp1 > tmp0, tmp1, tmp0)
    tmp4 = tl.where(tmp3 > tmp2, tmp3, tmp2)
    tmp6 = tl.where(tmp5 > tmp4, tmp5, tmp4)
    tl.store(out_ptr0 + (x0), tmp6, xmask)


def run_triton_kernel(input_tensor):
    """
    封装对 triton_ kernel 的调用。
    input_tensor: shape [1024,], float 或其他支持的 dtype, device='cuda'
    返回值: shape [256,] 的输出张量
    """
    # 为了简化，这里 xnumel 设为 256
    xnumel = 256
    # 输出张量，需要在 GPU 上分配
    out_tensor = torch.empty(xnumel, dtype=input_tensor.dtype, device=input_tensor.device)

    # BLOCK 尺寸；这里直接和 xnumel 相同，让单个线程块覆盖 256 个元素
    XBLOCK = 256

    # 网格大小： ( (xnumel + XBLOCK - 1) // XBLOCK, ) 通常用于覆盖所有元素
    # 如果你确定 256 / 256 = 1，就可以直接 (1,)
    grid = (1,)

    # 调用 Triton 核心
    triton_[
        grid
    ](
        input_tensor,  # in_ptr0
        out_tensor,    # out_ptr0
        xnumel,        # xnumel
        XBLOCK=XBLOCK, # BLOCK 大小 (编译时常量)
    )

    return out_tensor


def main():
    # 构造一个简单的输入: 1024 个递增数
    # 大小 1024 是因为 kernel 中可能访问到最高下标 ~1023
    # 你也可以改为随机数，或者其他想测试的输入
    input_data = torch.arange(1024, dtype=torch.float32, device='cuda')

    # 运行 kernel
    output_data = run_triton_kernel(input_data)

    # 打印结果
    print("Input:", input_data)
    print("Output:", output_data)

    # 如果需要进一步分析，可以打印前几项
    print("First 32 outputs:", output_data[:32])


if __name__ == "__main__":
    main()