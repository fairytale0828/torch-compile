import triton
import triton.language as tl

@triton.jit
def triton_(in_ptr0, in_ptr1, in_ptr2, out_ptr0, xnumel, XBLOCK : tl.constexpr):
    xnumel = 10
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x0 = xindex
    tmp0 = tl.load(in_ptr0 + (x0), xmask)
    tmp1 = tl.load(in_ptr1 + (x0), xmask)
    tmp3 = tl.load(in_ptr2 + (x0), xmask)
    tmp2 = tmp0 + tmp1
    tmp4 = tmp2 + tmp3
    tl.store(out_ptr0 + (x0), tmp4, xmask)


src = triton.compiler.ASTSource(
    fn=triton_,
    signature="*fp32,*fp32,*fp32,*fp32,i32",
    constants={"XBLOCK": 16}
)
ret = triton.compile(
    src,
)
print(ret.asm["ttir"])
