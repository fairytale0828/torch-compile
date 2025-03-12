import torch
import triton
import triton.language as tl

@triton.jit
def addmm_kernel(
    A,
    B,
    C,
    D,
    M,
    N,
    K,
    stride_am,
    stride_an,
    stride_bm,
    stride_bn,
    stride_cm,
    stride_cn,
    stride_dm,
    stride_dn,
    BLOCK_M: tl.constexpr,
    BLOCK_N: tl.constexpr,
    BLOCK_K: tl.constexpr,
):
    # AddMM kernel: D = A + B * C
    pid_m = tl.program_id(0)
    pid_n = tl.program_id(1)

    # Block indices
    rm = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    rn = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)

    # Pointer arithmetic
    A = A + rm[:, None] * stride_am + rn[None, :] * stride_an
    B = B + rm[:, None] * stride_bm + tl.arange(0, BLOCK_K)[None, :] * stride_bn
    C = C + tl.arange(0, BLOCK_K)[:, None] * stride_cm + rn[None, :] * stride_cn
    D = D + rm[:, None] * stride_dm + rn[None, :] * stride_dn

    acc = tl.zeros((BLOCK_M, BLOCK_N), dtype=tl.float32)

    # Matrix multiplication
    for k in range(0, K, BLOCK_K):
        b = tl.load(B, mask=(rm[:, None] < M) & (tl.arange(0, BLOCK_K)[None, :] < K), other=0.0)
        c = tl.load(C, mask=(tl.arange(0, BLOCK_K)[:, None] < K) & (rn[None, :] < N), other=0.0)
        acc += tl.dot(b, c)
        B += BLOCK_K * stride_bn
        C += BLOCK_K * stride_cm

    # Add A
    a = tl.load(A, mask=(rm[:, None] < M) & (rn[None, :] < N), other=0.0)
    acc += a

    # Write back to D
    tl.store(D, acc, mask=(rm[:, None] < M) & (rn[None, :] < N))


def addmm(A, B, C):
    # Validate dimensions
    M, K1 = B.shape
    K2, N = C.shape
    assert K1 == K2, "Incompatible dimensions for B and A"

    # Allocate output
    D = torch.empty_like(A)

    # Grid configuration
    grid = (
        (M + 15) // 16,  # Blocks along M
        (N + 127) // 128,  # Blocks along N
    )

    # Launch kernel
    addmm_kernel[grid] (
        A, B, C, D,
        M, N, K2,
        A.stride(0), A.stride(1),
        B.stride(0), B.stride(1),
        C.stride(0), C.stride(1),
        D.stride(0), D.stride(1),
        BLOCK_M=16, BLOCK_N=128, BLOCK_K=32
    )
    return D


def test_addmm_kernel():
    # Define input matrices
    M, K, N = 1, 84, 10
    A = torch.ones((M, N), device='cuda', dtype=torch.float32)
    B = torch.ones((M, K), device='cuda', dtype=torch.float32)
    C = torch.ones((K, N), device='cuda', dtype=torch.float32)

    # Run Triton-based AddMM
    D = addmm(A, B, C)
    print(D)

    # Compute expected result
    expected = A + torch.matmul(B, C)

    # Validate results
    assert torch.allclose(D, expected, atol=1e-4), "Output does not match expected result"
    print("Test passed! Output matches expected result.")

# Run the test
test_addmm_kernel()