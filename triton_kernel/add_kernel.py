import logging
import torch
import triton
import triton.language as tl


#
# ============ 1) Tensor + Tensor: add_func ============
#
@triton.jit
def add_func_kernel(
    x_ptr,        # float*   -- 指向 x 的指针
    y_ptr,        # float*   -- 指向 y 的指针
    out_ptr,      # float*   -- 指向输出 out 的指针
    alpha,        # float    -- 标量系数
    n_elements,   # int      -- x/y 的元素总数
    BLOCK_SIZE: tl.constexpr
):
    # 计算当前 program 在 1D 网格中的索引
    pid = tl.program_id(0)
    # 当前 block 需要处理的元素范围
    offsets = pid * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)
    mask = offsets < n_elements

    # 加载 x, y
    x = tl.load(x_ptr + offsets, mask=mask)
    y = tl.load(y_ptr + offsets, mask=mask)

    # 计算并写回
    # out = x + y * alpha
    out_val = x + y * alpha
    tl.store(out_ptr + offsets, out_val, mask=mask)


def add_func(x: torch.Tensor, y: torch.Tensor, alpha: float = 1.0):
    """
    x, y 均为 Tensor,返回 x + alpha*y.
    """
    # 假设 x, y 同形状
    assert x.shape == y.shape, "x, y must have the same shape"
    out = torch.empty_like(x)

    n_elements = x.numel()
    # 定义网格大小：让 1D 网格覆盖所有元素
    def grid(meta):
        return ((n_elements + meta['BLOCK_SIZE'] - 1) // meta['BLOCK_SIZE'],)

    # 启动 kernel，BLOCK_SIZE 可以根据需要调整
    add_func_kernel[grid](x, y, out, alpha, n_elements, BLOCK_SIZE=1024)
    return out


#
# ============ 2) Tensor + Scalar: add_func_tensor_scalar ============
#
@triton.jit
def add_func_tensor_scalar_kernel(
    x_ptr,         # float*   -- 指向 x 的指针
    out_ptr,       # float*   -- 指向输出 out 的指针
    scalar_val,    # float    -- 纯 scalar
    alpha,         # float    -- 标量系数
    n_elements,    # int      -- x 的元素总数
    BLOCK_SIZE: tl.constexpr
):
    pid = tl.program_id(0)
    offsets = pid * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)
    mask = offsets < n_elements

    x = tl.load(x_ptr + offsets, mask=mask)

    # y 是一个 scalar，因此 y * alpha 也是一个标量
    out_val = x + scalar_val * alpha
    tl.store(out_ptr + offsets, out_val, mask=mask)


def add_func_tensor_scalar(x: torch.Tensor, scalar_val: float, alpha: float = 1.0):
    """
    x 为 Tensor, B 为 scalar, 返回 x + B*alpha.
    """
    out = torch.empty_like(x)
    n_elements = x.numel()

    def grid(meta):
        return ((n_elements + meta['BLOCK_SIZE'] - 1) // meta['BLOCK_SIZE'],)

    add_func_tensor_scalar_kernel[grid](
        x, out,
        scalar_val, alpha,
        n_elements,
        BLOCK_SIZE=1024
    )
    return out


#
# ============ 3) Scalar + Tensor: add_func_scalar_tensor ============
#
@triton.jit
def add_func_scalar_tensor_kernel(
    y_ptr,         # float*   -- 指向 y 的指针
    out_ptr,       # float*   -- 指向输出 out 的指针
    scalar_val,    # float    -- 纯 scalar
    alpha,         # float    -- 标量系数
    n_elements,    # int      -- y 的元素总数
    BLOCK_SIZE: tl.constexpr
):
    pid = tl.program_id(0)
    offsets = pid * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)
    mask = offsets < n_elements

    y = tl.load(y_ptr + offsets, mask=mask)

    # x 是一个 scalar，因此 x + y*alpha
    out_val = scalar_val + y * alpha
    tl.store(out_ptr + offsets, out_val, mask=mask)


def add_func_scalar_tensor(scalar_val: float, y: torch.Tensor, alpha: float = 1.0):
    """
    A 为 scalar, y 为 Tensor, 返回 A + y*alpha.
    """
    out = torch.empty_like(y)
    n_elements = y.numel()

    def grid(meta):
        return ((n_elements + meta['BLOCK_SIZE'] - 1) // meta['BLOCK_SIZE'],)

    add_func_scalar_tensor_kernel[grid](
        y, out,
        scalar_val, alpha,
        n_elements,
        BLOCK_SIZE=1024
    )
    return out


#
# ============ 4) 总调度函数 add ============
#
def add(A, B, *, alpha=1):
    """
    统一的加法入口：
    - 如果 A, B 都是 Tensor,则执行 add_func
    - 如果 A 是 Tensor, B 是 scalar,则执行 add_func_tensor_scalar
    - 如果 A 是 scalar, B 是 Tensor,则执行 add_func_scalar_tensor
    - 都不是 Tensor,就直接转回 PyTorch 处理
    """
    logging.debug("GEMS ADD")
    if isinstance(A, torch.Tensor) and isinstance(B, torch.Tensor):
        return add_func(A, B, alpha)
    elif isinstance(A, torch.Tensor):
        return add_func_tensor_scalar(A, B, alpha)
    elif isinstance(B, torch.Tensor):
        return add_func_scalar_tensor(A, B, alpha)
    else:
        # 都是标量，直接用 PyTorch 的方式处理
        return torch.tensor(A + B * alpha)
