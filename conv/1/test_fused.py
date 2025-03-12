import triton
import triton.language as tl
import torch


# @triton_heuristics.pointwise(
#     size_hints=[1024], 
#     filename=__file__,
#     triton_meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': DeviceProperties(type='cuda', index=0, cc=86, major=8, regs_per_multiprocessor=65536, max_threads_per_multi_processor=1536, multi_processor_count=28), 'constants': {}, 'configs': [AttrsDescriptor(divisible_by_16=(0, 1, 2), equal_to_1=())]},
#     inductor_meta={'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_convolution_0', 'mutated_arg_names': ['in_out_ptr0'], 'no_x_dim': False, 'num_load': 2, 'num_reduction': 0, 'backend_hash': 'BC6597BA54E4F743C62031976D1D3263ABD24F23711C9ECB547CC3E6A0DE34C4', 'are_deterministic_algorithms_enabled': False, 'assert_indirect_indexing': True, 'autotune_local_cache': True, 'autotune_pointwise': True, 'autotune_remote_cache': False, 'force_disable_caches': False, 'dynamic_scale_rblock': True, 'max_autotune': False, 'max_autotune_pointwise': False, 'min_split_scan_rblock': 256, 'spill_threshold': 16, 'store_cubin': False},
#     min_elem_per_thread=0
# )
@triton.jit
def triton_(in_out_ptr0, in_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = xnumel
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex
    tmp0 = tl.load(in_out_ptr0 + (x0), xmask)
    tmp1 = tl.load(in_ptr0 + (0))
    tmp2 = tl.broadcast_to(tmp1, [XBLOCK])
    tmp3 = tmp0 + tmp2
    tl.store(in_out_ptr0 + (x0), tmp3, xmask)

# src = triton.compiler.ASTSource(
#     fn=triton_,
#     signature="*fp32,*fp32,i32",
#     constants={"XBLOCK": 256}
# )
# ret = triton.compile(
#     src,
# )
# print(ret.asm["ttir"])

num_elements = 784
in_out = torch.zeros(num_elements, device='cuda', dtype=torch.float32)
scalar = 1.5
in_ptr = torch.tensor([scalar], device='cuda', dtype=torch.float32)
XBLOCK = 256
grid = ( (num_elements + XBLOCK - 1) // XBLOCK, )
compiled_kernel = triton_[grid](in_out, in_ptr, num_elements, XBLOCK=XBLOCK)
print(compiled_kernel.asm["ttir"])


# def test_triton_kernel(num_elements, XBLOCK):
#     # 初始化输入张量
#     num_elements = num_elements
#     in_out = torch.zeros(num_elements, device='cuda', dtype=torch.float32)
#     scalar = 1.5
#     in_ptr = torch.tensor([scalar], device='cuda', dtype=torch.float32)

#     # 定义内核参数
#     XBLOCK = XBLOCK
#     grid = ( (num_elements + XBLOCK - 1) // XBLOCK, )

#     # 调用内核
#     triton_[grid](in_out, in_ptr, num_elements, XBLOCK=XBLOCK)

#     # 同步CUDA
#     torch.cuda.synchronize()

#     # 验证结果
#     expected = torch.full((num_elements,), scalar, device='cuda', dtype=torch.float32)
#     if torch.allclose(in_out, expected):
#         print("测试通过！")
#     else:
#         print("测试失败！")
#         print("预期结果:", expected)
#         print("实际结果:", in_out)



# # 运行测试
# if __name__ == "__main__":
#     num = 784
#     block = 256
#     test_triton_kernel(num, block)
    
