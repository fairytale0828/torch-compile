
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
