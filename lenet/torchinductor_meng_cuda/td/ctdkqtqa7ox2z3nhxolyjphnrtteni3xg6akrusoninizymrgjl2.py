
from ctypes import c_void_p, c_long
import torch
import math
import random
import os
import tempfile
from math import inf, nan
from torch._inductor.hooks import run_intermediate_hooks
from torch._inductor.utils import maybe_profile

from torch import empty_strided, device
from torch._inductor.codecache import AsyncCompile
from torch._inductor.select_algorithm import extern_kernels

aten = torch.ops.aten
assert_size_stride = torch._C._dynamo.guards.assert_size_stride
reinterpret_tensor = torch.ops.inductor._reinterpret_tensor
async_compile = AsyncCompile()


# kernel path: /tmp/torchinductor_meng/g3/cg3ah6oxvnky7d4bztxt6pmxt2oa6g5ltmhk5ptnoquc2aq5k3z5.py
# Source Nodes: [l__self___conv1, relu], Original ATen: [aten.convolution, aten.relu]
# l__self___conv1 => convolution
# relu => relu
triton_poi_fused_convolution_relu_0 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[4096], filename=__file__, meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': ['in_out_ptr0'], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_convolution_relu_0', 'configs': [instance_descriptor(divisible_by_16=(0, 1, 2), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=(2,))]})
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
    tmp3 = triton_helpers.maximum(0, tmp2)
    tl.store(in_out_ptr0 + (x2), tmp3, xmask)
''')

import triton
import triton.language as tl
from torch._inductor.triton_heuristics import grid, start_graph, end_graph
from torch._C import _cuda_getCurrentRawStream as get_cuda_stream


# kernel path: /tmp/torchinductor_meng/im/cimgutipvv5kjgxwf67sbbwqogy56anrg26z6thl24sas4klvg3e.py
# Source Nodes: [l__self___pool], Original ATen: [aten.max_pool2d_with_indices]
# l__self___pool => getitem, getitem_1
triton_poi_fused_max_pool2d_with_indices_1 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[1024], filename=__file__, meta={'signature': {0: '*fp32', 1: '*fp32', 2: '*i64', 3: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': [], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_max_pool2d_with_indices_1', 'configs': [instance_descriptor(divisible_by_16=(0, 1, 2, 3), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=(3,))]})
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
    tmp2 = triton_helpers.maximum(tmp1, tmp0)
    tmp4 = triton_helpers.maximum(tmp3, tmp2)
    tmp6 = triton_helpers.maximum(tmp5, tmp4)
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
''')


# kernel path: /tmp/torchinductor_meng/w3/cw3pimvr5b777ctzml37pfc5ll5zgtnipmhniob55brnojj6ok4p.py
# Source Nodes: [l__self___conv2, relu_1], Original ATen: [aten.convolution, aten.relu]
# l__self___conv2 => convolution_1
# relu_1 => relu_1
triton_poi_fused_convolution_relu_2 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[1024], filename=__file__, meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': ['in_out_ptr0'], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_convolution_relu_2', 'configs': [instance_descriptor(divisible_by_16=(0, 1, 2), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=(2,))]})
@triton.jit
def triton_(in_out_ptr0, in_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 1024
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x2 = xindex
    x1 = (xindex // 64)
    tmp0 = tl.load(in_out_ptr0 + (x2), xmask)
    tmp1 = tl.load(in_ptr0 + (x1), xmask, eviction_policy='evict_last')
    tmp2 = tmp0 + tmp1
    tmp3 = triton_helpers.maximum(0, tmp2)
    tl.store(in_out_ptr0 + (x2), tmp3, xmask)
''')


# kernel path: /tmp/torchinductor_meng/qm/cqmkje5uqqmnggyhacxefgcgwh5jb2xqesrr7viplzfufikkj7wx.py
# Source Nodes: [l__self___pool_1], Original ATen: [aten.max_pool2d_with_indices]
# l__self___pool_1 => getitem_3
triton_poi_fused_max_pool2d_with_indices_3 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[256], filename=__file__, meta={'signature': {0: '*fp32', 1: '*i64', 2: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': [], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_max_pool2d_with_indices_3', 'configs': [instance_descriptor(divisible_by_16=(0, 1, 2), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=(2,))]})
@triton.jit
def triton_(in_ptr0, out_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 256
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex % 4
    x3 = (xindex // 4)
    x1 = (xindex // 4) % 4
    x4 = xindex
    tmp0 = tl.load(in_ptr0 + ((2*x0) + (16*x3)), xmask)
    tmp1 = tl.load(in_ptr0 + (1 + (2*x0) + (16*x3)), xmask)
    tmp7 = tl.load(in_ptr0 + (8 + (2*x0) + (16*x3)), xmask)
    tmp12 = tl.load(in_ptr0 + (9 + (2*x0) + (16*x3)), xmask)
    tmp2 = tmp1 > tmp0
    tmp3 = 1 + (2*x0) + (16*x1)
    tmp4 = (2*x0) + (16*x1)
    tmp5 = tl.where(tmp2, tmp3, tmp4)
    tmp6 = triton_helpers.maximum(tmp1, tmp0)
    tmp8 = tmp7 > tmp6
    tmp9 = 8 + (2*x0) + (16*x1)
    tmp10 = tl.where(tmp8, tmp9, tmp5)
    tmp11 = triton_helpers.maximum(tmp7, tmp6)
    tmp13 = tmp12 > tmp11
    tmp14 = 9 + (2*x0) + (16*x1)
    tmp15 = tl.where(tmp13, tmp14, tmp10)
    tmp16 = triton_helpers.maximum(tmp12, tmp11)
    tl.store(out_ptr0 + (x4), tmp15, xmask)
''')


# kernel path: /tmp/torchinductor_meng/dp/cdpx6637y5sz22x3aj7hpvvjg6fbxbca5thrnzk53ddupnl3muuk.py
# Source Nodes: [l__self___pool_1, view], Original ATen: [aten.max_pool2d_with_indices, aten.view]
# l__self___pool_1 => max_pool2d_with_indices_1
# view => view
triton_poi_fused_max_pool2d_with_indices_view_4 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[256], filename=__file__, meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': [], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_max_pool2d_with_indices_view_4', 'configs': [instance_descriptor(divisible_by_16=(0, 1, 2), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=(2,))]})
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
    tmp2 = triton_helpers.maximum(tmp1, tmp0)
    tmp4 = triton_helpers.maximum(tmp3, tmp2)
    tmp6 = triton_helpers.maximum(tmp5, tmp4)
    tl.store(out_ptr0 + (x0), tmp6, xmask)
''')


# kernel path: /tmp/torchinductor_meng/3l/c3l3if5myt6ry4lfer5ye2iah5hjumnczzqigovgskfuggu2dfng.py
# Source Nodes: [relu_2], Original ATen: [aten.relu]
# relu_2 => relu_2
triton_poi_fused_relu_5 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[128], filename=__file__, meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': ['in_out_ptr0'], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_relu_5', 'configs': [instance_descriptor(divisible_by_16=(0, 1), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=(2,))]})
@triton.jit
def triton_(in_out_ptr0, in_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 120
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex
    tmp0 = tl.load(in_ptr0 + (x0), xmask)
    tmp1 = tl.load(in_out_ptr0 + (x0), xmask)
    tmp2 = tmp0 + tmp1
    tmp3 = triton_helpers.maximum(0, tmp2)
    tl.store(in_out_ptr0 + (x0), tmp3, xmask)
''')


# kernel path: /tmp/torchinductor_meng/ju/cju34k4nktgkvmr3iltwc2xzzkn2q3neipulhlbhho3pl2irsvdp.py
# Source Nodes: [relu_3], Original ATen: [aten.relu]
# relu_3 => relu_3
triton_poi_fused_relu_6 = async_compile.triton('triton_', '''
import triton
import triton.language as tl
from torch._inductor.ir import ReductionHint
from torch._inductor.ir import TileHint
from torch._inductor.triton_heuristics import AutotuneHint, pointwise
from torch._inductor.utils import instance_descriptor
from torch._inductor import triton_helpers

@pointwise(size_hints=[128], filename=__file__, meta={'signature': {0: '*fp32', 1: '*fp32', 2: 'i32'}, 'device': 0, 'device_type': 'cuda', 'constants': {}, 'mutated_arg_names': ['in_out_ptr0'], 'autotune_hints': set(), 'kernel_name': 'triton_poi_fused_relu_6', 'configs': [instance_descriptor(divisible_by_16=(0, 1), equal_to_1=(), ids_of_folded_args=(), divisible_by_8=())]})
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
    tmp3 = triton_helpers.maximum(0, tmp2)
    tl.store(in_out_ptr0 + (x0), tmp3, xmask)
''')


async_compile.wait(globals())
del async_compile

def call(args):
    primals_1, primals_2, primals_3, primals_4, primals_5, primals_6, primals_7, primals_8, primals_9, primals_10, primals_11 = args
    args.clear()
    assert_size_stride(primals_1, (6, 1, 5, 5), (25, 25, 5, 1))
    assert_size_stride(primals_2, (6, ), (1, ))
    assert_size_stride(primals_3, (16, 6, 5, 5), (150, 25, 5, 1))
    assert_size_stride(primals_4, (16, ), (1, ))
    assert_size_stride(primals_5, (120, 256), (256, 1))
    assert_size_stride(primals_6, (120, ), (1, ))
    assert_size_stride(primals_7, (84, 120), (120, 1))
    assert_size_stride(primals_8, (84, ), (1, ))
    assert_size_stride(primals_9, (10, 84), (84, 1))
    assert_size_stride(primals_10, (10, ), (1, ))
    assert_size_stride(primals_11, (1, 1, 28, 28), (784, 784, 28, 1))
    with torch.cuda._DeviceGuard(0):
        torch.cuda.set_device(0) # no-op to ensure context
        # Source Nodes: [l__self___conv1], Original ATen: [aten.convolution]
        buf0 = extern_kernels.convolution(primals_11, primals_1, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1, bias=None)
        assert_size_stride(buf0, (1, 6, 24, 24), (3456, 576, 24, 1))
        buf1 = buf0; del buf0  # reuse
        # Source Nodes: [l__self___conv1, relu], Original ATen: [aten.convolution, aten.relu]
        stream0 = get_cuda_stream(0)
        triton_poi_fused_convolution_relu_0.run(buf1, primals_2, 3456, grid=grid(3456), stream=stream0)
        del primals_2
        buf2 = empty_strided((1, 6, 12, 12), (864, 144, 12, 1), device='cuda', dtype=torch.float32)
        buf3 = empty_strided((1, 6, 12, 12), (864, 144, 12, 1), device='cuda', dtype=torch.int64)
        # Source Nodes: [l__self___pool], Original ATen: [aten.max_pool2d_with_indices]
        triton_poi_fused_max_pool2d_with_indices_1.run(buf1, buf2, buf3, 864, grid=grid(864), stream=stream0)
        # Source Nodes: [l__self___conv2], Original ATen: [aten.convolution]
        buf4 = extern_kernels.convolution(buf2, primals_3, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1, bias=None)
        assert_size_stride(buf4, (1, 16, 8, 8), (1024, 64, 8, 1))
        buf5 = buf4; del buf4  # reuse
        # Source Nodes: [l__self___conv2, relu_1], Original ATen: [aten.convolution, aten.relu]
        triton_poi_fused_convolution_relu_2.run(buf5, primals_4, 1024, grid=grid(1024), stream=stream0)
        del primals_4
        buf6 = empty_strided((1, 16, 4, 4), (256, 16, 4, 1), device='cuda', dtype=torch.int64)
        # Source Nodes: [l__self___pool_1], Original ATen: [aten.max_pool2d_with_indices]
        triton_poi_fused_max_pool2d_with_indices_3.run(buf5, buf6, 256, grid=grid(256), stream=stream0)
        buf7 = empty_strided((1, 256), (256, 1), device='cuda', dtype=torch.float32)
        # Source Nodes: [l__self___pool_1, view], Original ATen: [aten.max_pool2d_with_indices, aten.view]
        triton_poi_fused_max_pool2d_with_indices_view_4.run(buf5, buf7, 256, grid=grid(256), stream=stream0)
        buf8 = empty_strided((1, 120), (120, 1), device='cuda', dtype=torch.float32)
        # Source Nodes: [], Original ATen: []
        extern_kernels.mm(buf7, reinterpret_tensor(primals_5, (256, 120), (1, 256), 0), out=buf8)
        buf9 = buf8; del buf8  # reuse
        # Source Nodes: [relu_2], Original ATen: [aten.relu]
        triton_poi_fused_relu_5.run(buf9, primals_6, 120, grid=grid(120), stream=stream0)
        del primals_6
        buf10 = empty_strided((1, 84), (84, 1), device='cuda', dtype=torch.float32)
        # Source Nodes: [], Original ATen: []
        extern_kernels.mm(buf9, reinterpret_tensor(primals_7, (120, 84), (1, 120), 0), out=buf10)
        buf11 = buf10; del buf10  # reuse
        # Source Nodes: [relu_3], Original ATen: [aten.relu]
        triton_poi_fused_relu_6.run(buf11, primals_8, 84, grid=grid(84), stream=stream0)
        del primals_8
        buf12 = empty_strided((1, 10), (10, 1), device='cuda', dtype=torch.float32)
        # Source Nodes: [l__self___fc3], Original ATen: [aten.addmm]
        extern_kernels.addmm(primals_10, buf11, reinterpret_tensor(primals_9, (84, 10), (1, 84), 0), alpha=1, beta=1, out=buf12)
        del primals_10
        return (buf12, primals_1, primals_3, primals_11, buf1, buf2, buf3, buf5, buf6, buf7, buf9, buf11, reinterpret_tensor(primals_9, (10, 84), (84, 1), 0), reinterpret_tensor(primals_7, (84, 120), (120, 1), 0), reinterpret_tensor(primals_5, (120, 256), (256, 1), 0), )


def benchmark_compiled_module(times=10, repeat=10):
    from torch._dynamo.testing import rand_strided
    from torch._inductor.utils import print_performance
    primals_1 = rand_strided((6, 1, 5, 5), (25, 25, 5, 1), device='cuda:0', dtype=torch.float32)
    primals_2 = rand_strided((6, ), (1, ), device='cuda:0', dtype=torch.float32)
    primals_3 = rand_strided((16, 6, 5, 5), (150, 25, 5, 1), device='cuda:0', dtype=torch.float32)
    primals_4 = rand_strided((16, ), (1, ), device='cuda:0', dtype=torch.float32)
    primals_5 = rand_strided((120, 256), (256, 1), device='cuda:0', dtype=torch.float32)
    primals_6 = rand_strided((120, ), (1, ), device='cuda:0', dtype=torch.float32)
    primals_7 = rand_strided((84, 120), (120, 1), device='cuda:0', dtype=torch.float32)
    primals_8 = rand_strided((84, ), (1, ), device='cuda:0', dtype=torch.float32)
    primals_9 = rand_strided((10, 84), (84, 1), device='cuda:0', dtype=torch.float32)
    primals_10 = rand_strided((10, ), (1, ), device='cuda:0', dtype=torch.float32)
    primals_11 = rand_strided((1, 1, 28, 28), (784, 784, 28, 1), device='cuda:0', dtype=torch.float32)
    return print_performance(lambda: call([primals_1, primals_2, primals_3, primals_4, primals_5, primals_6, primals_7, primals_8, primals_9, primals_10, primals_11]), times=times, repeat=repeat)


if __name__ == "__main__":
    from torch._inductor.wrapper_benchmark import compiled_module_main
    compiled_module_main('None', benchmark_compiled_module)
