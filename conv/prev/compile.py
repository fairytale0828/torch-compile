
# AOT ID: ['0_forward']
from ctypes import c_void_p, c_long
import torch
import math
import random
import os
import tempfile
from math import inf, nan
from torch._inductor.hooks import run_intermediate_hooks
from torch._inductor.utils import maybe_profile
from torch._inductor.codegen.memory_planning import _align as align

from torch import device, empty_strided
from torch._inductor.async_compile import AsyncCompile
from torch._inductor.select_algorithm import extern_kernels
from torch._inductor.codegen.multi_kernel import MultiKernelCall

aten = torch.ops.aten
inductor_ops = torch.ops.inductor
_quantized = torch.ops._quantized
assert_size_stride = torch._C._dynamo.guards.assert_size_stride
empty_strided_cpu = torch._C._dynamo.guards._empty_strided_cpu
empty_strided_cuda = torch._C._dynamo.guards._empty_strided_cuda
reinterpret_tensor = torch._C._dynamo.guards._reinterpret_tensor
alloc_from_pool = torch.ops.inductor._alloc_from_pool
async_compile = AsyncCompile()


# kernel path: /tmp/torchinductor_meng/iz/ciztavw37pnnldhbe36wvbwxtw2ntzr4krp2sqotzxawqalqufyv.py
# Source Nodes: [x], Original ATen: [aten.convolution]
# x => convolution
triton_poi_fused_convolution_0 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from triton.compiler.compiler import AttrsDescriptor

from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, instance_descriptor, DeviceProperties

# @triton_heuristics.pointwise(
#     size_hints=[1024], 
#     filename=__file__,
#     triton_meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': DeviceProperties(type='cuda', index=0, cc=86, major=8, regs_per_multiprocessor=65536, max_threads_per_multi_processor=1536, multi_processor_count=28), 'constants': {}, 'configs': [AttrsDescriptor(divisible_by_16=(0, 1, 2), equal_to_1=())]},
#     inductor_meta={'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_convolution_0', 'mutated_arg_names': ['in_out_ptr0'], 'no_x_dim': False, 'num_load': 2, 'num_reduction': 0, 'backend_hash': 'BC6597BA54E4F743C62031976D1D3263ABD24F23711C9ECB547CC3E6A0DE34C4', 'are_deterministic_algorithms_enabled': False, 'assert_indirect_indexing': True, 'autotune_local_cache': True, 'autotune_pointwise': True, 'autotune_remote_cache': False, 'force_disable_caches': False, 'dynamic_scale_rblock': True, 'max_autotune': False, 'max_autotune_pointwise': False, 'min_split_scan_rblock': 256, 'spill_threshold': 16, 'store_cubin': False},
#     min_elem_per_thread=0
# )
@triton.jit
def triton_(in_out_ptr0, in_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 784
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex
    tmp0 = tl.load(in_out_ptr0 + (x0), xmask)
    tmp1 = tl.load(in_ptr0 + (0))
    tmp2 = tl.broadcast_to(tmp1, [XBLOCK])
    tmp3 = tmp0 + tmp2
    tl.store(in_out_ptr0 + (x0), tmp3, xmask)
''', device_str='cuda')

import triton
import triton.language as tl
from torch._inductor.runtime.triton_heuristics import grid, split_scan_grid, start_graph, end_graph
from torch._C import _cuda_getCurrentRawStream as get_raw_stream


async_compile.wait(globals())
del async_compile

def call(args):
    primals_1, primals_2, primals_3 = args
    args.clear()
    # assert_size_stride(primals_1, (1, 1, 3, 3), (9, 9, 3, 1))
    # assert_size_stride(primals_2, (1, ), (1, ))
    # assert_size_stride(primals_3, (1, 1, 28, 28), (784, 784, 28, 1))
    # with torch.cuda._DeviceGuard(0):
    #     torch.cuda.set_device(0)
        # Source Nodes: [x], Original ATen: [aten.convolution]
        # buf0 = extern_kernels.convolution(primals_3, primals_1, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1, bias=None)
        # assert_size_stride(buf0, (1, 1, 28, 28), (784, 784, 28, 1))
        # buf1 = buf0; del buf0  # reuse
        # # Source Nodes: [x], Original ATen: [aten.convolution]
        # stream0 = get_raw_stream(0)
        # triton_poi_fused_convolution_0.run(buf1, primals_2, 784, grid=grid(784), stream=stream0)
        # del primals_2
    buf0 = extern_kernels.convolution(primals_3, primals_1, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1, bias=None)
    assert_size_stride(buf0, (1, 1, 28, 28), (784, 784, 28, 1))
    buf1 = buf0; del buf0  # reuse
    # Source Nodes: [x], Original ATen: [aten.convolution]
    stream0 = get_raw_stream(0)
    triton_poi_fused_convolution_0.run(buf1, primals_2, 784, grid=grid(784), stream=stream0)
    del primals_2
    print("Computation result (buf1): ", buf1)
    return (buf1, primals_1, primals_3, )


def benchmark_compiled_module(times=1, repeat=1):
    from torch._dynamo.testing import rand_strided
    from torch._inductor.utils import print_performance
    primals_1 = torch.ones((1, 1, 3, 3), device='cuda:0', dtype=torch.float32).as_strided((1, 1, 3, 3), (9, 9, 3, 1))
    primals_2 = torch.ones((1,), device='cuda:0', dtype=torch.float32).as_strided((1,), (1,))
    primals_3 = torch.ones((1, 1, 28, 28), device='cuda:0', dtype=torch.float32).as_strided((1, 1, 28, 28), (784, 784, 28, 1))
    fn = lambda: call([primals_1, primals_2, primals_3])
    return print_performance(fn, times=1, repeat=1)


if __name__ == "__main__":
    from torch._inductor.wrapper_benchmark import compiled_module_main
    compiled_module_main('None', benchmark_compiled_module)
