
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


cpp_fused_reflection_pad2d_0 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       const float* in_ptr6,
                       const float* in_ptr7,
                       const float* in_ptr8,
                       const float* in_ptr9,
                       const float* in_ptr10,
                       const float* in_ptr11,
                       const float* in_ptr12,
                       const float* in_ptr13,
                       const float* in_ptr14,
                       const float* in_ptr15,
                       const float* in_ptr16,
                       const float* in_ptr17,
                       const float* in_ptr18,
                       const float* in_ptr19,
                       const float* in_ptr20,
                       const float* in_ptr21,
                       const float* in_ptr22,
                       const float* in_ptr23,
                       const float* in_ptr24,
                       const float* in_ptr25,
                       const float* in_ptr26,
                       const float* in_ptr27,
                       const float* in_ptr28,
                       const float* in_ptr29,
                       const float* in_ptr30,
                       const float* in_ptr31,
                       const float* in_ptr32,
                       const float* in_ptr33,
                       const float* in_ptr34,
                       const float* in_ptr35,
                       const float* in_ptr36,
                       const float* in_ptr37,
                       const float* in_ptr38,
                       float* out_ptr0,
                       float* out_ptr1,
                       float* out_ptr2,
                       float* out_ptr3,
                       float* out_ptr4,
                       float* out_ptr5,
                       float* out_ptr6,
                       float* out_ptr7,
                       float* out_ptr8,
                       float* out_ptr9,
                       float* out_ptr10,
                       float* out_ptr11,
                       float* out_ptr12,
                       float* out_ptr13,
                       float* out_ptr14,
                       float* out_ptr15,
                       float* out_ptr16,
                       float* out_ptr17,
                       float* out_ptr18,
                       float* out_ptr19,
                       float* out_ptr20,
                       float* out_ptr21,
                       float* out_ptr22,
                       float* out_ptr23,
                       float* out_ptr24,
                       float* out_ptr25,
                       float* out_ptr26,
                       float* out_ptr27,
                       float* out_ptr28,
                       float* out_ptr29,
                       float* out_ptr30,
                       float* out_ptr31,
                       float* out_ptr32,
                       float* out_ptr33,
                       float* out_ptr34,
                       float* out_ptr35,
                       float* out_ptr36,
                       float* out_ptr37,
                       float* out_ptr38)
{
    {
        #pragma GCC ivdep
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
        {
            #pragma GCC ivdep
            for(long i1=static_cast<long>(0L); i1<static_cast<long>(3L); i1+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i2 + (9L*i1) + (27L*i0))];
                    out_ptr0[static_cast<long>(i1 + (3L*i2) + (27L*i0))] = tmp0;
                }
            }
        }
    }
    {
        #pragma GCC ivdep
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
        {
            #pragma GCC ivdep
            for(long i1=static_cast<long>(0L); i1<static_cast<long>(3L); i1+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i2=static_cast<long>(0L); i2<static_cast<long>(25L); i2+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr1[static_cast<long>(i2 + (25L*i1) + (75L*i0))];
                    out_ptr1[static_cast<long>(i1 + (3L*i2) + (75L*i0))] = tmp0;
                }
            }
        }
    }
    {
        #pragma GCC ivdep
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
        {
            #pragma GCC ivdep
            for(long i1=static_cast<long>(0L); i1<static_cast<long>(3L); i1+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i2=static_cast<long>(0L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr2[static_cast<long>(i2 + (49L*i1) + (147L*i0))];
                    out_ptr2[static_cast<long>(i1 + (3L*i2) + (147L*i0))] = tmp0;
                }
            }
        }
    }
    {
        #pragma GCC ivdep
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
        {
            #pragma GCC ivdep
            for(long i1=static_cast<long>(0L); i1<static_cast<long>(3L); i1+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i2=static_cast<long>(0L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr3[static_cast<long>(i2 + (121L*i1) + (363L*i0))];
                    out_ptr3[static_cast<long>(i1 + (3L*i2) + (363L*i0))] = tmp0;
                }
            }
        }
    }
    {
        #pragma GCC ivdep
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
        {
            #pragma GCC ivdep
            for(long i1=static_cast<long>(0L); i1<static_cast<long>(3L); i1+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i2=static_cast<long>(0L); i2<static_cast<long>(225L); i2+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr4[static_cast<long>(i2 + (225L*i1) + (675L*i0))];
                    out_ptr4[static_cast<long>(i1 + (3L*i2) + (675L*i0))] = tmp0;
                }
            }
        }
    }
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(80L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (9680L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr5 + static_cast<long>(i1 + (80L*i2) + (9680L*i0)), static_cast<long>(80L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr5[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (9680L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr5 + static_cast<long>(i1 + (80L*i2) + (9680L*i0)));
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = in_ptr6[static_cast<long>(i2 + (121L*i1) + (968L*i0))];
                            out_ptr6[static_cast<long>(i1 + (8L*i2) + (968L*i0))] = tmp0;
                        }
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr7 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr7 + static_cast<long>(i1 + (16L*i2) + (1936L*i0)), static_cast<long>(16L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr7[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr7 + static_cast<long>(i1 + (16L*i2) + (1936L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr8 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr8 + static_cast<long>(i1 + (32L*i2) + (3872L*i0)), static_cast<long>(32L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr8[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr8 + static_cast<long>(i1 + (32L*i2) + (3872L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(128L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr9 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr9 + static_cast<long>(i1 + (64L*i2) + (7744L*i0)), static_cast<long>(64L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr9[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr9 + static_cast<long>(i1 + (64L*i2) + (7744L*i0)));
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = in_ptr10[static_cast<long>(i2 + (49L*i1) + (392L*i0))];
                            out_ptr10[static_cast<long>(i1 + (8L*i2) + (392L*i0))] = tmp0;
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = in_ptr11[static_cast<long>(i2 + (49L*i1) + (392L*i0))];
                            out_ptr11[static_cast<long>(i1 + (8L*i2) + (392L*i0))] = tmp0;
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = in_ptr12[static_cast<long>(i2 + (49L*i1) + (392L*i0))];
                            out_ptr12[static_cast<long>(i1 + (8L*i2) + (392L*i0))] = tmp0;
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = in_ptr13[static_cast<long>(i2 + (49L*i1) + (392L*i0))];
                            out_ptr13[static_cast<long>(i1 + (8L*i2) + (392L*i0))] = tmp0;
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr14[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (288L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr14 + static_cast<long>(i1 + (32L*i2) + (288L*i0)));
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                        {
                            float tmp1[16*16] __attribute__ ((aligned (16)));
                            for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                            {
                                auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr15 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0)));
                                tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                            }
                            at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr15 + static_cast<long>(i1 + (16L*i2) + (784L*i0)), static_cast<long>(16L));
                        }
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr15[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr15 + static_cast<long>(i1 + (16L*i2) + (784L*i0)));
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                        {
                            float tmp1[16*16] __attribute__ ((aligned (16)));
                            for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                            {
                                auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr16 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0)));
                                tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                            }
                            at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr16 + static_cast<long>(i1 + (16L*i2) + (784L*i0)), static_cast<long>(16L));
                        }
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr16[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr16 + static_cast<long>(i1 + (16L*i2) + (784L*i0)));
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                        {
                            float tmp1[16*16] __attribute__ ((aligned (16)));
                            for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                            {
                                auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr17 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0)));
                                tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                            }
                            at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr17 + static_cast<long>(i1 + (16L*i2) + (784L*i0)), static_cast<long>(16L));
                        }
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr17[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr17 + static_cast<long>(i1 + (16L*i2) + (784L*i0)));
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                        {
                            float tmp1[16*16] __attribute__ ((aligned (16)));
                            for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                            {
                                auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr18 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0)));
                                tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                            }
                            at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr18 + static_cast<long>(i1 + (16L*i2) + (784L*i0)), static_cast<long>(16L));
                        }
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr18[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr18 + static_cast<long>(i1 + (16L*i2) + (784L*i0)));
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr19[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (576L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr19 + static_cast<long>(i1 + (64L*i2) + (576L*i0)));
                        }
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr20 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr20 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)), static_cast<long>(32L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr20[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr20 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr21 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr21 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)), static_cast<long>(32L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr21[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr21 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr22 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr22 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)), static_cast<long>(32L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr22[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr22 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr23 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr23 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)), static_cast<long>(32L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr23[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr23 + static_cast<long>(i1 + (32L*i2) + (1568L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(128L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr24[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (1152L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr24 + static_cast<long>(i1 + (128L*i2) + (1152L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr25 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr25 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)), static_cast<long>(64L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr25[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr25 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr26 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr26 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)), static_cast<long>(64L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr26[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr26 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr27 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr27 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)), static_cast<long>(64L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr27[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr27 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(48L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr28 + static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr28 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)), static_cast<long>(64L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(48L); i2<static_cast<long>(49L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr28[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr28 + static_cast<long>(i1 + (64L*i2) + (3136L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(256L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr29[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (2304L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr29 + static_cast<long>(i1 + (256L*i2) + (2304L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(128L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr30[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (1152L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr30 + static_cast<long>(i1 + (128L*i2) + (1152L*i0)));
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(128L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr31 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (15488L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr31 + static_cast<long>(i1 + (128L*i2) + (15488L*i0)), static_cast<long>(128L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr31[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (15488L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr31 + static_cast<long>(i1 + (128L*i2) + (15488L*i0)));
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr32[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (576L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr32 + static_cast<long>(i1 + (64L*i2) + (576L*i0)));
                        }
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr33 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr33 + static_cast<long>(i1 + (64L*i2) + (7744L*i0)), static_cast<long>(64L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr33[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr33 + static_cast<long>(i1 + (64L*i2) + (7744L*i0)));
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr34[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (288L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr34 + static_cast<long>(i1 + (32L*i2) + (288L*i0)));
                        }
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                    {
                        float tmp1[16*16] __attribute__ ((aligned (16)));
                        for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                        {
                            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr35 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0)));
                            tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                        }
                        at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr35 + static_cast<long>(i1 + (32L*i2) + (3872L*i0)), static_cast<long>(32L));
                    }
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr35[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                        tmp0.store(out_ptr35 + static_cast<long>(i1 + (32L*i2) + (3872L*i0)));
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(9L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr36[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (144L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr36 + static_cast<long>(i1 + (16L*i2) + (144L*i0)));
                        }
                    }
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(112L); i2+=static_cast<long>(16L))
                        {
                            float tmp1[16*16] __attribute__ ((aligned (16)));
                            for (long i1_inner = 0; i1_inner < 16; i1_inner++)
                            {
                                auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr37 + static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0)));
                                tmp0.store(tmp1 + static_cast<long>(16L*i1_inner));
                            }
                            at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr37 + static_cast<long>(i1 + (16L*i2) + (1936L*i0)), static_cast<long>(16L));
                        }
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(112L); i2<static_cast<long>(121L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = ([&]() { __at_align__ float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr37[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
                            tmp0.store(out_ptr37 + static_cast<long>(i1 + (16L*i2) + (1936L*i0)));
                        }
                    }
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(258L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(258L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(3L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-1L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(255);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-1L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr38[static_cast<long>(tmp10 + (256L*tmp5) + (65536L*i2))];
                        out_ptr38[static_cast<long>(i2 + (3L*i1) + (774L*i0))] = tmp11;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_1 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(260L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(260L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(3L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-2L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(255);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-2L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(tmp10 + (256L*tmp5) + (65536L*i2))];
                        out_ptr2[static_cast<long>(i2 + (3L*i1) + (780L*i0))] = tmp11;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_2 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(268L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(268L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(3L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-6L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(255);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-6L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(tmp10 + (256L*tmp5) + (65536L*i2))];
                        out_ptr2[static_cast<long>(i2 + (3L*i1) + (804L*i0))] = tmp11;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_3 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(276L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(276L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(3L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-10L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(255);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-10L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(tmp10 + (256L*tmp5) + (65536L*i2))];
                        out_ptr2[static_cast<long>(i2 + (3L*i1) + (828L*i0))] = tmp11;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_4 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(298L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(298L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(3L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-21L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(255);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-21L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(tmp10 + (256L*tmp5) + (65536L*i2))];
                        out_ptr2[static_cast<long>(i2 + (3L*i1) + (894L*i0))] = tmp11;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_5 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(80L); i0+=static_cast<long>(16L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(16L))
                {
                    float tmp1[16*16] __attribute__ ((aligned (16)));
                    for (long i0_inner = 0; i0_inner < 16; i0_inner++)
                    {
                        auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (65536L*i0) + (65536L*i0_inner)));
                        tmp0.store(tmp1 + static_cast<long>(16L*i0_inner));
                    }
                    at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr2 + static_cast<long>(i0 + (80L*i1)), static_cast<long>(80L));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_6 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1,
                       long* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i1 + (8L*i0))];
                    auto tmp1 = in_ptr1[static_cast<long>(i1)];
                    auto tmp3 = in_ptr2[static_cast<long>(i1)];
                    auto tmp11 = in_ptr3[static_cast<long>(i1)];
                    auto tmp13 = in_ptr4[static_cast<long>(i1)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    out_ptr0[static_cast<long>(i1 + (8L*i0))] = tmp15;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(128L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(128L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(8L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr0[static_cast<long>(i2 + (16L*i1) + (4096L*i0))];
                        auto tmp1 = out_ptr0[static_cast<long>(8L + i2 + (16L*i1) + (4096L*i0))];
                        auto tmp3 = out_ptr0[static_cast<long>(2048L + i2 + (16L*i1) + (4096L*i0))];
                        auto tmp5 = out_ptr0[static_cast<long>(2056L + i2 + (16L*i1) + (4096L*i0))];
                        auto tmp2 = max_propagate_nan(tmp1, tmp0);
                        auto tmp4 = max_propagate_nan(tmp3, tmp2);
                        auto tmp6 = max_propagate_nan(tmp5, tmp4);
                        auto tmp7 = tmp1 > tmp0;
                        auto tmp8 = static_cast<long>(1L + (2L*i1) + (512L*i0));
                        auto tmp9 = static_cast<long>((2L*i1) + (512L*i0));
                        auto tmp10 = tmp7 ? tmp8 : tmp9;
                        auto tmp11 = tmp3 > tmp2;
                        auto tmp12 = static_cast<long>(256L + (2L*i1) + (512L*i0));
                        auto tmp13 = tmp11 ? tmp12 : tmp10;
                        auto tmp14 = tmp5 > tmp4;
                        auto tmp15 = static_cast<long>(257L + (2L*i1) + (512L*i0));
                        auto tmp16 = tmp14 ? tmp15 : tmp13;
                        out_ptr1[static_cast<long>(i2 + (8L*i1) + (1024L*i0))] = tmp6;
                        out_ptr2[static_cast<long>(i2 + (8L*i1) + (1024L*i0))] = tmp16;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_7 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1,
                       long* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (16L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(16L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr0[static_cast<long>(i2 + (32L*i1) + (4096L*i0))];
                        auto tmp1 = out_ptr0[static_cast<long>(16L + i2 + (32L*i1) + (4096L*i0))];
                        auto tmp3 = out_ptr0[static_cast<long>(2048L + i2 + (32L*i1) + (4096L*i0))];
                        auto tmp5 = out_ptr0[static_cast<long>(2064L + i2 + (32L*i1) + (4096L*i0))];
                        auto tmp2 = max_propagate_nan(tmp1, tmp0);
                        auto tmp4 = max_propagate_nan(tmp3, tmp2);
                        auto tmp6 = max_propagate_nan(tmp5, tmp4);
                        auto tmp7 = tmp1 > tmp0;
                        auto tmp8 = static_cast<long>(1L + (2L*i1) + (256L*i0));
                        auto tmp9 = static_cast<long>((2L*i1) + (256L*i0));
                        auto tmp10 = tmp7 ? tmp8 : tmp9;
                        auto tmp11 = tmp3 > tmp2;
                        auto tmp12 = static_cast<long>(128L + (2L*i1) + (256L*i0));
                        auto tmp13 = tmp11 ? tmp12 : tmp10;
                        auto tmp14 = tmp5 > tmp4;
                        auto tmp15 = static_cast<long>(129L + (2L*i1) + (256L*i0));
                        auto tmp16 = tmp14 ? tmp15 : tmp13;
                        out_ptr1[static_cast<long>(i2 + (16L*i1) + (1024L*i0))] = tmp6;
                        out_ptr2[static_cast<long>(i2 + (16L*i1) + (1024L*i0))] = tmp16;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_8 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1,
                       long* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (32L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(32L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr0[static_cast<long>(i2 + (64L*i1) + (4096L*i0))];
                        auto tmp1 = out_ptr0[static_cast<long>(32L + i2 + (64L*i1) + (4096L*i0))];
                        auto tmp3 = out_ptr0[static_cast<long>(2048L + i2 + (64L*i1) + (4096L*i0))];
                        auto tmp5 = out_ptr0[static_cast<long>(2080L + i2 + (64L*i1) + (4096L*i0))];
                        auto tmp2 = max_propagate_nan(tmp1, tmp0);
                        auto tmp4 = max_propagate_nan(tmp3, tmp2);
                        auto tmp6 = max_propagate_nan(tmp5, tmp4);
                        auto tmp7 = tmp1 > tmp0;
                        auto tmp8 = static_cast<long>(1L + (2L*i1) + (128L*i0));
                        auto tmp9 = static_cast<long>((2L*i1) + (128L*i0));
                        auto tmp10 = tmp7 ? tmp8 : tmp9;
                        auto tmp11 = tmp3 > tmp2;
                        auto tmp12 = static_cast<long>(64L + (2L*i1) + (128L*i0));
                        auto tmp13 = tmp11 ? tmp12 : tmp10;
                        auto tmp14 = tmp5 > tmp4;
                        auto tmp15 = static_cast<long>(65L + (2L*i1) + (128L*i0));
                        auto tmp16 = tmp14 ? tmp15 : tmp13;
                        out_ptr1[static_cast<long>(i2 + (32L*i1) + (1024L*i0))] = tmp6;
                        out_ptr2[static_cast<long>(i2 + (32L*i1) + (1024L*i0))] = tmp16;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_9 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1,
                       long* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (64L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (64L*i0)));
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(1L))
                    {
                        #pragma GCC ivdep
                        for(long i2=static_cast<long>(0L); i2<static_cast<long>(64L); i2+=static_cast<long>(1L))
                        {
                            auto tmp0 = out_ptr0[static_cast<long>(i2 + (128L*i1) + (4096L*i0))];
                            auto tmp1 = out_ptr0[static_cast<long>(64L + i2 + (128L*i1) + (4096L*i0))];
                            auto tmp3 = out_ptr0[static_cast<long>(2048L + i2 + (128L*i1) + (4096L*i0))];
                            auto tmp5 = out_ptr0[static_cast<long>(2112L + i2 + (128L*i1) + (4096L*i0))];
                            auto tmp2 = max_propagate_nan(tmp1, tmp0);
                            auto tmp4 = max_propagate_nan(tmp3, tmp2);
                            auto tmp6 = max_propagate_nan(tmp5, tmp4);
                            auto tmp7 = tmp1 > tmp0;
                            auto tmp8 = static_cast<long>(1L + (2L*i1) + (64L*i0));
                            auto tmp9 = static_cast<long>((2L*i1) + (64L*i0));
                            auto tmp10 = tmp7 ? tmp8 : tmp9;
                            auto tmp11 = tmp3 > tmp2;
                            auto tmp12 = static_cast<long>(32L + (2L*i1) + (64L*i0));
                            auto tmp13 = tmp11 ? tmp12 : tmp10;
                            auto tmp14 = tmp5 > tmp4;
                            auto tmp15 = static_cast<long>(33L + (2L*i1) + (64L*i0));
                            auto tmp16 = tmp14 ? tmp15 : tmp13;
                            out_ptr1[static_cast<long>(i2 + (64L*i1) + (1024L*i0))] = tmp6;
                            out_ptr2[static_cast<long>(i2 + (64L*i1) + (1024L*i0))] = tmp16;
                        }
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_10 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1,
                       float* out_ptr2,
                       float* out_ptr3,
                       float* out_ptr4)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(256L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(128L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (128L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (128L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(262L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(262L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(8L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-6L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(255);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-6L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(i2 + (8L*tmp10) + (2048L*tmp5))];
                        auto tmp12 = static_cast<int>(i0);
                        auto tmp13 = std::abs(tmp12);
                        auto tmp14 = tmp2 - tmp13;
                        auto tmp15 = std::abs(tmp14);
                        auto tmp16 = tmp2 - tmp15;
                        auto tmp17 = in_ptr5[static_cast<long>(i2 + (8L*tmp10) + (2048L*tmp16))];
                        auto tmp18 = static_cast<int>(i1);
                        auto tmp19 = std::abs(tmp18);
                        auto tmp20 = tmp2 - tmp19;
                        auto tmp21 = std::abs(tmp20);
                        auto tmp22 = tmp2 - tmp21;
                        auto tmp23 = in_ptr5[static_cast<long>(i2 + (8L*tmp22) + (2048L*tmp5))];
                        auto tmp24 = in_ptr5[static_cast<long>(i2 + (8L*tmp22) + (2048L*tmp16))];
                        out_ptr1[static_cast<long>(i2 + (8L*i1) + (2096L*i0))] = tmp11;
                        out_ptr2[static_cast<long>(i2 + (8L*i1) + (2096L*i0))] = tmp17;
                        out_ptr3[static_cast<long>(i2 + (8L*i1) + (2096L*i0))] = tmp23;
                        out_ptr4[static_cast<long>(i2 + (8L*i1) + (2096L*i0))] = tmp24;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_11 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (8L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (8L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_12 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (8L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (8L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_13 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (8L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (8L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_14 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(8L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (8L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (65536L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (8L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(16L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(65536L); i1+=static_cast<long>(16L))
                {
                    float tmp1[16*16] __attribute__ ((aligned (16)));
                    for (long i0_inner = 0; i0_inner < 16; i0_inner++)
                    {
                        auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (65536L*i0) + (65536L*i0_inner)));
                        tmp0.store(tmp1 + static_cast<long>(16L*i0_inner));
                    }
                    at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr2 + static_cast<long>(i0 + (32L*i1)), static_cast<long>(32L));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_15 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1,
                       float* out_ptr2,
                       float* out_ptr3,
                       float* out_ptr4)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i1 + (8L*i0))];
                    auto tmp1 = in_ptr1[static_cast<long>(i1)];
                    auto tmp3 = in_ptr2[static_cast<long>(i1)];
                    auto tmp11 = in_ptr3[static_cast<long>(i1)];
                    auto tmp13 = in_ptr4[static_cast<long>(i1)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    out_ptr0[static_cast<long>(i1 + (8L*i0))] = tmp15;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(134L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(134L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(16L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-6L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(127);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-6L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(i2 + (16L*tmp10) + (2048L*tmp5))];
                        auto tmp12 = static_cast<int>(i0);
                        auto tmp13 = std::abs(tmp12);
                        auto tmp14 = tmp2 - tmp13;
                        auto tmp15 = std::abs(tmp14);
                        auto tmp16 = tmp2 - tmp15;
                        auto tmp17 = in_ptr5[static_cast<long>(i2 + (16L*tmp10) + (2048L*tmp16))];
                        auto tmp18 = static_cast<int>(i1);
                        auto tmp19 = std::abs(tmp18);
                        auto tmp20 = tmp2 - tmp19;
                        auto tmp21 = std::abs(tmp20);
                        auto tmp22 = tmp2 - tmp21;
                        auto tmp23 = in_ptr5[static_cast<long>(i2 + (16L*tmp22) + (2048L*tmp5))];
                        auto tmp24 = in_ptr5[static_cast<long>(i2 + (16L*tmp22) + (2048L*tmp16))];
                        out_ptr1[static_cast<long>(i2 + (16L*i1) + (2144L*i0))] = tmp11;
                        out_ptr2[static_cast<long>(i2 + (16L*i1) + (2144L*i0))] = tmp17;
                        out_ptr3[static_cast<long>(i2 + (16L*i1) + (2144L*i0))] = tmp23;
                        out_ptr4[static_cast<long>(i2 + (16L*i1) + (2144L*i0))] = tmp24;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_16 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16384L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (16384L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_17 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16384L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (16384L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_18 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16384L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (16384L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_19 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16384L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (16L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (16384L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (16L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(16L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16384L); i1+=static_cast<long>(16L))
                {
                    float tmp1[16*16] __attribute__ ((aligned (16)));
                    for (long i0_inner = 0; i0_inner < 16; i0_inner++)
                    {
                        auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (16384L*i0) + (16384L*i0_inner)));
                        tmp0.store(tmp1 + static_cast<long>(16L*i0_inner));
                    }
                    at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr2 + static_cast<long>(i0 + (64L*i1)), static_cast<long>(64L));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_20 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1,
                       float* out_ptr2,
                       float* out_ptr3,
                       float* out_ptr4)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (16L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(70L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(70L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(32L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-6L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(63);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-6L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(i2 + (32L*tmp10) + (2048L*tmp5))];
                        auto tmp12 = static_cast<int>(i0);
                        auto tmp13 = std::abs(tmp12);
                        auto tmp14 = tmp2 - tmp13;
                        auto tmp15 = std::abs(tmp14);
                        auto tmp16 = tmp2 - tmp15;
                        auto tmp17 = in_ptr5[static_cast<long>(i2 + (32L*tmp10) + (2048L*tmp16))];
                        auto tmp18 = static_cast<int>(i1);
                        auto tmp19 = std::abs(tmp18);
                        auto tmp20 = tmp2 - tmp19;
                        auto tmp21 = std::abs(tmp20);
                        auto tmp22 = tmp2 - tmp21;
                        auto tmp23 = in_ptr5[static_cast<long>(i2 + (32L*tmp22) + (2048L*tmp5))];
                        auto tmp24 = in_ptr5[static_cast<long>(i2 + (32L*tmp22) + (2048L*tmp16))];
                        out_ptr1[static_cast<long>(i2 + (32L*i1) + (2240L*i0))] = tmp11;
                        out_ptr2[static_cast<long>(i2 + (32L*i1) + (2240L*i0))] = tmp17;
                        out_ptr3[static_cast<long>(i2 + (32L*i1) + (2240L*i0))] = tmp23;
                        out_ptr4[static_cast<long>(i2 + (32L*i1) + (2240L*i0))] = tmp24;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_21 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(4096L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (32L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (4096L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (32L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_22 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(4096L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (32L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (4096L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (32L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_23 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(4096L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (32L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (4096L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (32L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_24 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(4096L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (32L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (4096L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (32L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(128L); i0+=static_cast<long>(16L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(4096L); i1+=static_cast<long>(16L))
                {
                    float tmp1[16*16] __attribute__ ((aligned (16)));
                    for (long i0_inner = 0; i0_inner < 16; i0_inner++)
                    {
                        auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (4096L*i0) + (4096L*i0_inner)));
                        tmp0.store(tmp1 + static_cast<long>(16L*i0_inner));
                    }
                    at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr2 + static_cast<long>(i0 + (128L*i1)), static_cast<long>(128L));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_25 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1,
                       float* out_ptr2,
                       float* out_ptr3,
                       float* out_ptr4)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (32L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(38L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(38L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(64L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = static_cast<int>((-6L) + i0);
                        auto tmp1 = std::abs(tmp0);
                        auto tmp2 = static_cast<int>(31);
                        auto tmp3 = tmp2 - tmp1;
                        auto tmp4 = std::abs(tmp3);
                        auto tmp5 = tmp2 - tmp4;
                        auto tmp6 = static_cast<int>((-6L) + i1);
                        auto tmp7 = std::abs(tmp6);
                        auto tmp8 = tmp2 - tmp7;
                        auto tmp9 = std::abs(tmp8);
                        auto tmp10 = tmp2 - tmp9;
                        auto tmp11 = in_ptr5[static_cast<long>(i2 + (64L*tmp10) + (2048L*tmp5))];
                        auto tmp12 = static_cast<int>(i0);
                        auto tmp13 = std::abs(tmp12);
                        auto tmp14 = tmp2 - tmp13;
                        auto tmp15 = std::abs(tmp14);
                        auto tmp16 = tmp2 - tmp15;
                        auto tmp17 = in_ptr5[static_cast<long>(i2 + (64L*tmp10) + (2048L*tmp16))];
                        auto tmp18 = static_cast<int>(i1);
                        auto tmp19 = std::abs(tmp18);
                        auto tmp20 = tmp2 - tmp19;
                        auto tmp21 = std::abs(tmp20);
                        auto tmp22 = tmp2 - tmp21;
                        auto tmp23 = in_ptr5[static_cast<long>(i2 + (64L*tmp22) + (2048L*tmp5))];
                        auto tmp24 = in_ptr5[static_cast<long>(i2 + (64L*tmp22) + (2048L*tmp16))];
                        out_ptr1[static_cast<long>(i2 + (64L*i1) + (2432L*i0))] = tmp11;
                        out_ptr2[static_cast<long>(i2 + (64L*i1) + (2432L*i0))] = tmp17;
                        out_ptr3[static_cast<long>(i2 + (64L*i1) + (2432L*i0))] = tmp23;
                        out_ptr4[static_cast<long>(i2 + (64L*i1) + (2432L*i0))] = tmp24;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_26 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(1024L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (64L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (1024L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (64L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_27 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(1024L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (64L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (1024L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (64L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_28 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       bool* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(1024L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (64L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (1024L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (64L*i1))] = tmp17;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_29 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       bool* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(1024L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i0 + (64L*i1))];
                    auto tmp1 = in_ptr1[static_cast<long>(i0)];
                    auto tmp3 = in_ptr2[static_cast<long>(i0)];
                    auto tmp11 = in_ptr3[static_cast<long>(i0)];
                    auto tmp13 = in_ptr4[static_cast<long>(i0)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    auto tmp16 = static_cast<float>(0.0);
                    auto tmp17 = tmp15 <= tmp16;
                    out_ptr0[static_cast<long>(i1 + (1024L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i0 + (64L*i1))] = tmp17;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(256L); i0+=static_cast<long>(16L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(1024L); i1+=static_cast<long>(16L))
                {
                    float tmp1[16*16] __attribute__ ((aligned (16)));
                    for (long i0_inner = 0; i0_inner < 16; i0_inner++)
                    {
                        auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (1024L*i0) + (1024L*i0_inner)));
                        tmp0.store(tmp1 + static_cast<long>(16L*i0_inner));
                    }
                    at::vec::transpose_mxn<float,16,16>(tmp1, 16, out_ptr2 + static_cast<long>(i0 + (256L*i1)), static_cast<long>(256L));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_30 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       long* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (64L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (64L*i0)));
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
                {
                    auto tmp0 = static_cast<long>(i0);
                    auto tmp1 = static_cast<double>(tmp0);
                    auto tmp2 = static_cast<double>(1.0);
                    auto tmp3 = decltype(tmp1)(tmp1 * tmp2);
                    auto tmp4 = static_cast<double>(0.0);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = static_cast<float>(tmp5);
                    auto tmp7 = static_cast<float>(0.5);
                    auto tmp8 = decltype(tmp6)(tmp6 * tmp7);
                    auto tmp9 = static_cast<long>(tmp8);
                    out_ptr1[static_cast<long>(i0)] = tmp9;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(128L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr1[static_cast<long>(i0)];
                        auto tmp1 = out_ptr1[static_cast<long>(i1)];
                        auto tmp2 = in_ptr5[static_cast<long>(i2 + (128L*tmp1) + (2048L*tmp0))];
                        out_ptr2[static_cast<long>(i2 + (128L*i1) + (4096L*i0))] = tmp2;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_31 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (64L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (64L*i0)));
                    tmp15.store(out_ptr1 + static_cast<long>(i1 + (128L*i0)));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_add_relu_32 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(float* in_out_ptr0,
                       const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       const float* in_ptr6,
                       const float* in_ptr7,
                       const float* in_ptr8,
                       const float* in_ptr9)
{
    auto out_ptr0 = in_out_ptr0;
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp15 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp16 = at::vec::Vectorized<float>::loadu(in_ptr6 + static_cast<long>(i1));
                    auto tmp18 = at::vec::Vectorized<float>::loadu(in_ptr7 + static_cast<long>(i1));
                    auto tmp24 = at::vec::Vectorized<float>::loadu(in_ptr8 + static_cast<long>(i1));
                    auto tmp26 = at::vec::Vectorized<float>::loadu(in_ptr9 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp17 = tmp15 - tmp16;
                    auto tmp19 = tmp18 + tmp4;
                    auto tmp20 = tmp19.sqrt();
                    auto tmp21 = tmp20.reciprocal();
                    auto tmp22 = tmp21 * tmp8;
                    auto tmp23 = tmp17 * tmp22;
                    auto tmp25 = tmp23 * tmp24;
                    auto tmp27 = tmp25 + tmp26;
                    auto tmp28 = tmp14 + tmp27;
                    tmp28.store(out_ptr0 + static_cast<long>(i1 + (32L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32768L); i0+=static_cast<long>(16L))
            {
                auto tmp0 = at::vec::Vectorized<float>::loadu(out_ptr0 + static_cast<long>(i0));
                auto tmp1 = at::vec::clamp_min(tmp0, decltype(tmp0)(0));
                tmp1.store(in_out_ptr0 + static_cast<long>(i0));
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_33 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1)
{
    {
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(16L))
        {
            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i0));
            auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(in_ptr1[static_cast<long>(0L)]));
            auto tmp3 = at::vec::Vectorized<float>(static_cast<float>(in_ptr2[static_cast<long>(0L)]));
            auto tmp11 = at::vec::Vectorized<float>(static_cast<float>(in_ptr3[static_cast<long>(0L)]));
            auto tmp13 = at::vec::Vectorized<float>(static_cast<float>(in_ptr4[static_cast<long>(0L)]));
            auto tmp2 = tmp0 - tmp1;
            auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
            auto tmp5 = tmp3 + tmp4;
            auto tmp6 = tmp5.sqrt();
            auto tmp7 = tmp6.reciprocal();
            auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
            auto tmp9 = tmp7 * tmp8;
            auto tmp10 = tmp2 * tmp9;
            auto tmp12 = tmp10 * tmp11;
            auto tmp14 = tmp12 + tmp13;
            auto tmp15 = decltype(tmp14)(1)/(decltype(tmp14)(1) + tmp14.neg().exp());
            tmp15.store(out_ptr0 + static_cast<long>(i0));
        }
    }
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (64L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(out_ptr0[static_cast<long>(i0)]));
                    auto tmp2 = tmp0 * tmp1;
                    tmp2.store(out_ptr1 + static_cast<long>(i1 + (128L*i0)));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_34 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       long* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(1024L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (64L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (64L*i0)));
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
                {
                    auto tmp0 = static_cast<long>(i0);
                    auto tmp1 = static_cast<double>(tmp0);
                    auto tmp2 = static_cast<double>(1.0);
                    auto tmp3 = decltype(tmp1)(tmp1 * tmp2);
                    auto tmp4 = static_cast<double>(0.0);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = static_cast<float>(tmp5);
                    auto tmp7 = static_cast<float>(0.5);
                    auto tmp8 = decltype(tmp6)(tmp6 * tmp7);
                    auto tmp9 = static_cast<long>(tmp8);
                    out_ptr1[static_cast<long>(i0)] = tmp9;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(64L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(64L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr1[static_cast<long>(i0)];
                        auto tmp1 = out_ptr1[static_cast<long>(i1)];
                        auto tmp2 = out_ptr0[static_cast<long>(i2 + (64L*tmp1) + (2048L*tmp0))];
                        out_ptr2[static_cast<long>(i2 + (64L*i1) + (4096L*i0))] = tmp2;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_35 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (32L*i0)));
                    tmp15.store(out_ptr1 + static_cast<long>(i1 + (64L*i0)));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_add_relu_36 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(float* in_out_ptr0,
                       const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       const float* in_ptr6,
                       const float* in_ptr7,
                       const float* in_ptr8,
                       const float* in_ptr9)
{
    auto out_ptr0 = in_out_ptr0;
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp15 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp16 = at::vec::Vectorized<float>::loadu(in_ptr6 + static_cast<long>(i1));
                    auto tmp18 = at::vec::Vectorized<float>::loadu(in_ptr7 + static_cast<long>(i1));
                    auto tmp24 = at::vec::Vectorized<float>::loadu(in_ptr8 + static_cast<long>(i1));
                    auto tmp26 = at::vec::Vectorized<float>::loadu(in_ptr9 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp17 = tmp15 - tmp16;
                    auto tmp19 = tmp18 + tmp4;
                    auto tmp20 = tmp19.sqrt();
                    auto tmp21 = tmp20.reciprocal();
                    auto tmp22 = tmp21 * tmp8;
                    auto tmp23 = tmp17 * tmp22;
                    auto tmp25 = tmp23 * tmp24;
                    auto tmp27 = tmp25 + tmp26;
                    auto tmp28 = tmp14 + tmp27;
                    tmp28.store(out_ptr0 + static_cast<long>(i1 + (16L*i0)));
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(16L))
            {
                auto tmp0 = at::vec::Vectorized<float>::loadu(out_ptr0 + static_cast<long>(i0));
                auto tmp1 = at::vec::clamp_min(tmp0, decltype(tmp0)(0));
                tmp1.store(in_out_ptr0 + static_cast<long>(i0));
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_37 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1)
{
    {
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(16L))
        {
            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i0));
            auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(in_ptr1[static_cast<long>(0L)]));
            auto tmp3 = at::vec::Vectorized<float>(static_cast<float>(in_ptr2[static_cast<long>(0L)]));
            auto tmp11 = at::vec::Vectorized<float>(static_cast<float>(in_ptr3[static_cast<long>(0L)]));
            auto tmp13 = at::vec::Vectorized<float>(static_cast<float>(in_ptr4[static_cast<long>(0L)]));
            auto tmp2 = tmp0 - tmp1;
            auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
            auto tmp5 = tmp3 + tmp4;
            auto tmp6 = tmp5.sqrt();
            auto tmp7 = tmp6.reciprocal();
            auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
            auto tmp9 = tmp7 * tmp8;
            auto tmp10 = tmp2 * tmp9;
            auto tmp12 = tmp10 * tmp11;
            auto tmp14 = tmp12 + tmp13;
            auto tmp15 = decltype(tmp14)(1)/(decltype(tmp14)(1) + tmp14.neg().exp());
            tmp15.store(out_ptr0 + static_cast<long>(i0));
        }
    }
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(out_ptr0[static_cast<long>(i0)]));
                    auto tmp2 = tmp0 * tmp1;
                    tmp2.store(out_ptr1 + static_cast<long>(i1 + (64L*i0)));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_38 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       long* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(4096L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(32L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (32L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (32L*i0)));
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(128L); i0+=static_cast<long>(1L))
                {
                    auto tmp0 = static_cast<long>(i0);
                    auto tmp1 = static_cast<double>(tmp0);
                    auto tmp2 = static_cast<double>(1.0);
                    auto tmp3 = decltype(tmp1)(tmp1 * tmp2);
                    auto tmp4 = static_cast<double>(0.0);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = static_cast<float>(tmp5);
                    auto tmp7 = static_cast<float>(0.5);
                    auto tmp8 = decltype(tmp6)(tmp6 * tmp7);
                    auto tmp9 = static_cast<long>(tmp8);
                    out_ptr1[static_cast<long>(i0)] = tmp9;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(128L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(128L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(32L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr1[static_cast<long>(i0)];
                        auto tmp1 = out_ptr1[static_cast<long>(i1)];
                        auto tmp2 = out_ptr0[static_cast<long>(i2 + (32L*tmp1) + (2048L*tmp0))];
                        out_ptr2[static_cast<long>(i2 + (32L*i1) + (4096L*i0))] = tmp2;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_39 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (16L*i0)));
                    tmp15.store(out_ptr1 + static_cast<long>(i1 + (32L*i0)));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_add_relu_40 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(float* in_out_ptr0,
                       const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       const float* in_ptr6,
                       const float* in_ptr7,
                       const float* in_ptr8,
                       const float* in_ptr9)
{
    auto out_ptr0 = in_out_ptr0;
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i1 + (8L*i0))];
                    auto tmp1 = in_ptr1[static_cast<long>(i1)];
                    auto tmp3 = in_ptr2[static_cast<long>(i1)];
                    auto tmp11 = in_ptr3[static_cast<long>(i1)];
                    auto tmp13 = in_ptr4[static_cast<long>(i1)];
                    auto tmp15 = in_ptr5[static_cast<long>(i1 + (8L*i0))];
                    auto tmp16 = in_ptr6[static_cast<long>(i1)];
                    auto tmp18 = in_ptr7[static_cast<long>(i1)];
                    auto tmp24 = in_ptr8[static_cast<long>(i1)];
                    auto tmp26 = in_ptr9[static_cast<long>(i1)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp17 = tmp15 - tmp16;
                    auto tmp19 = tmp18 + tmp4;
                    auto tmp20 = std::sqrt(tmp19);
                    auto tmp21 = 1 / tmp20;
                    auto tmp22 = decltype(tmp21)(tmp21 * tmp8);
                    auto tmp23 = decltype(tmp17)(tmp17 * tmp22);
                    auto tmp25 = decltype(tmp23)(tmp23 * tmp24);
                    auto tmp27 = tmp25 + tmp26;
                    auto tmp28 = tmp14 + tmp27;
                    out_ptr0[static_cast<long>(i1 + (8L*i0))] = tmp28;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(131072L); i0+=static_cast<long>(16L))
            {
                auto tmp0 = at::vec::Vectorized<float>::loadu(out_ptr0 + static_cast<long>(i0));
                auto tmp1 = at::vec::clamp_min(tmp0, decltype(tmp0)(0));
                tmp1.store(in_out_ptr0 + static_cast<long>(i0));
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_41 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1)
{
    {
        for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(16L))
        {
            auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i0));
            auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(in_ptr1[static_cast<long>(0L)]));
            auto tmp3 = at::vec::Vectorized<float>(static_cast<float>(in_ptr2[static_cast<long>(0L)]));
            auto tmp11 = at::vec::Vectorized<float>(static_cast<float>(in_ptr3[static_cast<long>(0L)]));
            auto tmp13 = at::vec::Vectorized<float>(static_cast<float>(in_ptr4[static_cast<long>(0L)]));
            auto tmp2 = tmp0 - tmp1;
            auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
            auto tmp5 = tmp3 + tmp4;
            auto tmp6 = tmp5.sqrt();
            auto tmp7 = tmp6.reciprocal();
            auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
            auto tmp9 = tmp7 * tmp8;
            auto tmp10 = tmp2 * tmp9;
            auto tmp12 = tmp10 * tmp11;
            auto tmp14 = tmp12 + tmp13;
            auto tmp15 = decltype(tmp14)(1)/(decltype(tmp14)(1) + tmp14.neg().exp());
            tmp15.store(out_ptr0 + static_cast<long>(i0));
        }
    }
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr5 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(out_ptr0[static_cast<long>(i0)]));
                    auto tmp2 = tmp0 * tmp1;
                    tmp2.store(out_ptr1 + static_cast<long>(i1 + (32L*i0)));
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_42 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       long* out_ptr1,
                       float* out_ptr2)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(16384L); i0+=static_cast<long>(1L))
            {
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(16L); i1+=static_cast<long>(16L))
                {
                    auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i1 + (16L*i0)));
                    auto tmp1 = at::vec::Vectorized<float>::loadu(in_ptr1 + static_cast<long>(i1));
                    auto tmp3 = at::vec::Vectorized<float>::loadu(in_ptr2 + static_cast<long>(i1));
                    auto tmp11 = at::vec::Vectorized<float>::loadu(in_ptr3 + static_cast<long>(i1));
                    auto tmp13 = at::vec::Vectorized<float>::loadu(in_ptr4 + static_cast<long>(i1));
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = tmp5.sqrt();
                    auto tmp7 = tmp6.reciprocal();
                    auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                    auto tmp9 = tmp7 * tmp8;
                    auto tmp10 = tmp2 * tmp9;
                    auto tmp12 = tmp10 * tmp11;
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = at::vec::clamp_min(tmp14, decltype(tmp14)(0));
                    tmp15.store(out_ptr0 + static_cast<long>(i1 + (16L*i0)));
                }
            }
        }
        #pragma omp single
        {
            {
                #pragma GCC ivdep
                for(long i0=static_cast<long>(0L); i0<static_cast<long>(256L); i0+=static_cast<long>(1L))
                {
                    auto tmp0 = static_cast<long>(i0);
                    auto tmp1 = static_cast<double>(tmp0);
                    auto tmp2 = static_cast<double>(1.0);
                    auto tmp3 = decltype(tmp1)(tmp1 * tmp2);
                    auto tmp4 = static_cast<double>(0.0);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = static_cast<float>(tmp5);
                    auto tmp7 = static_cast<float>(0.5);
                    auto tmp8 = decltype(tmp6)(tmp6 * tmp7);
                    auto tmp9 = static_cast<long>(tmp8);
                    out_ptr1[static_cast<long>(i0)] = tmp9;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(256L); i0+=static_cast<long>(1L))
            {
                #pragma GCC ivdep
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(256L); i1+=static_cast<long>(1L))
                {
                    #pragma GCC ivdep
                    for(long i2=static_cast<long>(0L); i2<static_cast<long>(16L); i2+=static_cast<long>(1L))
                    {
                        auto tmp0 = out_ptr1[static_cast<long>(i0)];
                        auto tmp1 = out_ptr1[static_cast<long>(i1)];
                        auto tmp2 = out_ptr0[static_cast<long>(i2 + (16L*tmp1) + (2048L*tmp0))];
                        out_ptr2[static_cast<long>(i2 + (16L*i1) + (4096L*i0))] = tmp2;
                    }
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_cat_relu_43 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0,
                       float* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i1 + (8L*i0))];
                    auto tmp1 = in_ptr1[static_cast<long>(i1)];
                    auto tmp3 = in_ptr2[static_cast<long>(i1)];
                    auto tmp11 = in_ptr3[static_cast<long>(i1)];
                    auto tmp13 = in_ptr4[static_cast<long>(i1)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    out_ptr0[static_cast<long>(i1 + (8L*i0))] = tmp15;
                    out_ptr1[static_cast<long>(i1 + (16L*i0))] = tmp15;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_add_relu_44 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(float* in_out_ptr0,
                       const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       const float* in_ptr6,
                       const float* in_ptr7,
                       const float* in_ptr8,
                       const float* in_ptr9)
{
    auto out_ptr0 = in_out_ptr0;
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(4L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i1 + (4L*i0))];
                    auto tmp1 = in_ptr1[static_cast<long>(i1)];
                    auto tmp3 = in_ptr2[static_cast<long>(i1)];
                    auto tmp11 = in_ptr3[static_cast<long>(i1)];
                    auto tmp13 = in_ptr4[static_cast<long>(i1)];
                    auto tmp15 = in_ptr5[static_cast<long>(i1 + (4L*i0))];
                    auto tmp16 = in_ptr6[static_cast<long>(i1)];
                    auto tmp18 = in_ptr7[static_cast<long>(i1)];
                    auto tmp24 = in_ptr8[static_cast<long>(i1)];
                    auto tmp26 = in_ptr9[static_cast<long>(i1)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp17 = tmp15 - tmp16;
                    auto tmp19 = tmp18 + tmp4;
                    auto tmp20 = std::sqrt(tmp19);
                    auto tmp21 = 1 / tmp20;
                    auto tmp22 = decltype(tmp21)(tmp21 * tmp8);
                    auto tmp23 = decltype(tmp17)(tmp17 * tmp22);
                    auto tmp25 = decltype(tmp23)(tmp23 * tmp24);
                    auto tmp27 = tmp25 + tmp26;
                    auto tmp28 = tmp14 + tmp27;
                    out_ptr0[static_cast<long>(i1 + (4L*i0))] = tmp28;
                }
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(262144L); i0+=static_cast<long>(16L))
            {
                auto tmp0 = at::vec::Vectorized<float>::loadu(out_ptr0 + static_cast<long>(i0));
                auto tmp1 = at::vec::clamp_min(tmp0, decltype(tmp0)(0));
                tmp1.store(in_out_ptr0 + static_cast<long>(i0));
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_45 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       const float* in_ptr5,
                       float* out_ptr0,
                       float* out_ptr1)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(16L))
            {
                auto tmp0 = at::vec::Vectorized<float>::loadu(in_ptr0 + static_cast<long>(i0));
                auto tmp1 = at::vec::Vectorized<float>(static_cast<float>(in_ptr1[static_cast<long>(0L)]));
                auto tmp3 = at::vec::Vectorized<float>(static_cast<float>(in_ptr2[static_cast<long>(0L)]));
                auto tmp11 = at::vec::Vectorized<float>(static_cast<float>(in_ptr3[static_cast<long>(0L)]));
                auto tmp13 = at::vec::Vectorized<float>(static_cast<float>(in_ptr4[static_cast<long>(0L)]));
                auto tmp2 = tmp0 - tmp1;
                auto tmp4 = at::vec::Vectorized<float>(static_cast<float>(1e-05));
                auto tmp5 = tmp3 + tmp4;
                auto tmp6 = tmp5.sqrt();
                auto tmp7 = tmp6.reciprocal();
                auto tmp8 = at::vec::Vectorized<float>(static_cast<float>(1.0));
                auto tmp9 = tmp7 * tmp8;
                auto tmp10 = tmp2 * tmp9;
                auto tmp12 = tmp10 * tmp11;
                auto tmp14 = tmp12 + tmp13;
                auto tmp15 = decltype(tmp14)(1)/(decltype(tmp14)(1) + tmp14.neg().exp());
                tmp15.store(out_ptr0 + static_cast<long>(i0));
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr5[static_cast<long>(i1 + (8L*i0))];
                    auto tmp1 = out_ptr0[static_cast<long>(i0)];
                    auto tmp2 = decltype(tmp0)(tmp0 * tmp1);
                    out_ptr1[static_cast<long>(i1 + (16L*i0))] = tmp2;
                }
            }
        }
    }
}
''')


cpp_fused__native_batch_norm_legit_no_training_relu_46 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       const float* in_ptr4,
                       float* out_ptr0)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                #pragma omp simd simdlen(8) 
                for(long i1=static_cast<long>(0L); i1<static_cast<long>(8L); i1+=static_cast<long>(1L))
                {
                    auto tmp0 = in_ptr0[static_cast<long>(i1 + (8L*i0))];
                    auto tmp1 = in_ptr1[static_cast<long>(i1)];
                    auto tmp3 = in_ptr2[static_cast<long>(i1)];
                    auto tmp11 = in_ptr3[static_cast<long>(i1)];
                    auto tmp13 = in_ptr4[static_cast<long>(i1)];
                    auto tmp2 = tmp0 - tmp1;
                    auto tmp4 = static_cast<float>(1e-05);
                    auto tmp5 = tmp3 + tmp4;
                    auto tmp6 = std::sqrt(tmp5);
                    auto tmp7 = 1 / tmp6;
                    auto tmp8 = static_cast<float>(1.0);
                    auto tmp9 = decltype(tmp7)(tmp7 * tmp8);
                    auto tmp10 = decltype(tmp2)(tmp2 * tmp9);
                    auto tmp12 = decltype(tmp10)(tmp10 * tmp11);
                    auto tmp14 = tmp12 + tmp13;
                    auto tmp15 = tmp14 * (tmp14>0);
                    out_ptr0[static_cast<long>(i1 + (8L*i0))] = tmp15;
                }
            }
        }
    }
}
''')


cpp_fused_sigmoid_threshold_backward_47 = async_compile.cpp('''
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(float* in_out_ptr0,
                       const float* in_ptr0,
                       const float* in_ptr1,
                       const float* in_ptr2,
                       const float* in_ptr3,
                       bool* out_ptr0,
                       bool* out_ptr1,
                       bool* out_ptr2,
                       bool* out_ptr3)
{
    #pragma omp parallel num_threads(8)
    {
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(16L))
            {
                auto tmp0 = at::vec::Vectorized<float>::loadu(in_out_ptr0 + static_cast<long>(i0));
                auto tmp1 = decltype(tmp0)(1)/(decltype(tmp0)(1) + tmp0.neg().exp());
                tmp1.store(in_out_ptr0 + static_cast<long>(i0));
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(262144L); i0+=static_cast<long>(1L))
            {
                auto tmp0 = in_ptr0[static_cast<long>(i0)];
                auto tmp1 = static_cast<float>(0.0);
                auto tmp2 = tmp0 <= tmp1;
                out_ptr0[static_cast<long>(i0)] = tmp2;
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(131072L); i0+=static_cast<long>(1L))
            {
                auto tmp0 = in_ptr1[static_cast<long>(i0)];
                auto tmp1 = static_cast<float>(0.0);
                auto tmp2 = tmp0 <= tmp1;
                out_ptr1[static_cast<long>(i0)] = tmp2;
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(65536L); i0+=static_cast<long>(1L))
            {
                auto tmp0 = in_ptr2[static_cast<long>(i0)];
                auto tmp1 = static_cast<float>(0.0);
                auto tmp2 = tmp0 <= tmp1;
                out_ptr2[static_cast<long>(i0)] = tmp2;
            }
        }
        {
            #pragma omp for 
            for(long i0=static_cast<long>(0L); i0<static_cast<long>(32768L); i0+=static_cast<long>(1L))
            {
                auto tmp0 = in_ptr3[static_cast<long>(i0)];
                auto tmp1 = static_cast<float>(0.0);
                auto tmp2 = tmp0 <= tmp1;
                out_ptr3[static_cast<long>(i0)] = tmp2;
            }
        }
    }
}
''')


async_compile.wait(globals())
del async_compile

def call(args):
    primals_1, primals_2, primals_3, primals_4, primals_5, primals_6, primals_7, primals_8, primals_9, primals_10, primals_11, primals_12, primals_13, primals_14, primals_15, primals_16, primals_17, primals_18, primals_19, primals_20, primals_21, primals_22, primals_23, primals_24, primals_25, primals_26, primals_27, primals_28, primals_29, primals_30, primals_31, primals_32, primals_33, primals_34, primals_35, primals_36, primals_37, primals_38, primals_39, primals_40, primals_41, primals_42, primals_43, primals_44, primals_45, primals_46, primals_47, primals_48, primals_49, primals_50, primals_51, primals_52, primals_53, primals_54, primals_55, primals_56, primals_57, primals_58, primals_59, primals_60, primals_61, primals_62, primals_63, primals_64, primals_65, primals_66, primals_67, primals_68, primals_69, primals_70, primals_71, primals_72, primals_73, primals_74, primals_75, primals_76, primals_77, primals_78, primals_79, primals_80, primals_81, primals_82, primals_83, primals_84, primals_85, primals_86, primals_87, primals_88, primals_89, primals_90, primals_91, primals_92, primals_93, primals_94, primals_95, primals_96, primals_97, primals_98, primals_99, primals_100, primals_101, primals_102, primals_103, primals_104, primals_105, primals_106, primals_107, primals_108, primals_109, primals_110, primals_111, primals_112, primals_113, primals_114, primals_115, primals_116, primals_117, primals_118, primals_119, primals_120, primals_121, primals_122, primals_123, primals_124, primals_125, primals_126, primals_127, primals_128, primals_129, primals_130, primals_131, primals_132, primals_133, primals_134, primals_135, primals_136, primals_137, primals_138, primals_139, primals_140, primals_141, primals_142, primals_143, primals_144, primals_145, primals_146, primals_147, primals_148, primals_149, primals_150, primals_151, primals_152, primals_153, primals_154, primals_155, primals_156, primals_157, primals_158, primals_159, primals_160, primals_161, primals_162, primals_163, primals_164, primals_165, primals_166, primals_167, primals_168, primals_169, primals_170, primals_171, primals_172, primals_173, primals_174, primals_175, primals_176, primals_177, primals_178, primals_179, primals_180, primals_181, primals_182, primals_183, primals_184, primals_185, primals_186, primals_187, primals_188, primals_189, primals_190, primals_191, primals_192, primals_193, primals_194, primals_195, primals_196, primals_197, primals_198, primals_199, primals_200, primals_201, primals_202, primals_203, primals_204, primals_205, primals_206, primals_207, primals_208, primals_209, primals_210, primals_211, primals_212, primals_213, primals_214, primals_215, primals_216, primals_217, primals_218, primals_219, primals_220, primals_221, primals_222, primals_223, primals_224, primals_225, primals_226, primals_227, primals_228, primals_229, primals_230, primals_231, primals_232, primals_233, primals_234, primals_235, primals_236, primals_237, primals_238, primals_239, primals_240, primals_241, primals_242, primals_243, primals_244, primals_245, primals_246, primals_247, primals_248, primals_249, primals_250, primals_251, primals_252, primals_253, primals_254, primals_255, primals_256, primals_257, primals_258, primals_259, primals_260, primals_261, primals_262, primals_263, primals_264, primals_265, primals_266, primals_267, primals_268, primals_269, primals_270, primals_271, primals_272, primals_273, primals_274, primals_275, primals_276, primals_277, primals_278, primals_279, primals_280, primals_281, primals_282, primals_283, primals_284, primals_285, primals_286, primals_287, primals_288, primals_289, primals_290, primals_291, primals_292, primals_293, primals_294, primals_295, primals_296, primals_297, primals_298, primals_299, primals_300, primals_301, primals_302, primals_303, primals_304, primals_305, primals_306, primals_307, primals_308, primals_309, primals_310, primals_311, primals_312, primals_313, primals_314, primals_315, primals_316, primals_317, primals_318, primals_319, primals_320, primals_321, primals_322, primals_323, primals_324, primals_325, primals_326, primals_327, primals_328, primals_329, primals_330, primals_331, primals_332, primals_333, primals_334, primals_335, primals_336, primals_337, primals_338, primals_339, primals_340, primals_341, primals_342, primals_343, primals_344, primals_345, primals_346, primals_347, primals_348, primals_349, primals_350, primals_351, primals_352, primals_353 = args
    args.clear()
    assert_size_stride(primals_1, (16, 3, 3, 3), (27, 9, 3, 1))
    assert_size_stride(primals_2, (16, ), (1, ))
    assert_size_stride(primals_3, (16, ), (1, ))
    assert_size_stride(primals_4, (16, ), (1, ))
    assert_size_stride(primals_5, (16, 3, 5, 5), (75, 25, 5, 1))
    assert_size_stride(primals_6, (16, ), (1, ))
    assert_size_stride(primals_7, (16, ), (1, ))
    assert_size_stride(primals_8, (16, ), (1, ))
    assert_size_stride(primals_9, (16, 3, 7, 7), (147, 49, 7, 1))
    assert_size_stride(primals_10, (16, ), (1, ))
    assert_size_stride(primals_11, (16, ), (1, ))
    assert_size_stride(primals_12, (16, ), (1, ))
    assert_size_stride(primals_13, (16, 3, 11, 11), (363, 121, 11, 1))
    assert_size_stride(primals_14, (16, ), (1, ))
    assert_size_stride(primals_15, (16, ), (1, ))
    assert_size_stride(primals_16, (16, ), (1, ))
    assert_size_stride(primals_17, (16, 3, 15, 15), (675, 225, 15, 1))
    assert_size_stride(primals_18, (16, ), (1, ))
    assert_size_stride(primals_19, (16, ), (1, ))
    assert_size_stride(primals_20, (16, ), (1, ))
    assert_size_stride(primals_21, (8, 80, 11, 11), (9680, 121, 11, 1))
    assert_size_stride(primals_22, (8, ), (1, ))
    assert_size_stride(primals_23, (8, ), (1, ))
    assert_size_stride(primals_24, (8, ), (1, ))
    assert_size_stride(primals_25, (16, 8, 11, 11), (968, 121, 11, 1))
    assert_size_stride(primals_26, (16, ), (1, ))
    assert_size_stride(primals_27, (16, ), (1, ))
    assert_size_stride(primals_28, (16, ), (1, ))
    assert_size_stride(primals_29, (32, 16, 11, 11), (1936, 121, 11, 1))
    assert_size_stride(primals_30, (32, ), (1, ))
    assert_size_stride(primals_31, (32, ), (1, ))
    assert_size_stride(primals_32, (32, ), (1, ))
    assert_size_stride(primals_33, (64, 32, 11, 11), (3872, 121, 11, 1))
    assert_size_stride(primals_34, (64, ), (1, ))
    assert_size_stride(primals_35, (64, ), (1, ))
    assert_size_stride(primals_36, (64, ), (1, ))
    assert_size_stride(primals_37, (128, 64, 11, 11), (7744, 121, 11, 1))
    assert_size_stride(primals_38, (128, ), (1, ))
    assert_size_stride(primals_39, (128, ), (1, ))
    assert_size_stride(primals_40, (128, ), (1, ))
    assert_size_stride(primals_41, (8, 8, 7, 7), (392, 49, 7, 1))
    assert_size_stride(primals_42, (8, ), (1, ))
    assert_size_stride(primals_43, (8, ), (1, ))
    assert_size_stride(primals_44, (8, ), (1, ))
    assert_size_stride(primals_45, (8, 8, 7, 7), (392, 49, 7, 1))
    assert_size_stride(primals_46, (8, ), (1, ))
    assert_size_stride(primals_47, (8, ), (1, ))
    assert_size_stride(primals_48, (8, ), (1, ))
    assert_size_stride(primals_49, (8, 8, 7, 7), (392, 49, 7, 1))
    assert_size_stride(primals_50, (8, ), (1, ))
    assert_size_stride(primals_51, (8, ), (1, ))
    assert_size_stride(primals_52, (8, ), (1, ))
    assert_size_stride(primals_53, (8, 8, 7, 7), (392, 49, 7, 1))
    assert_size_stride(primals_54, (8, ), (1, ))
    assert_size_stride(primals_55, (8, ), (1, ))
    assert_size_stride(primals_56, (8, ), (1, ))
    assert_size_stride(primals_57, (8, 32, 3, 3), (288, 9, 3, 1))
    assert_size_stride(primals_58, (8, ), (1, ))
    assert_size_stride(primals_59, (8, ), (1, ))
    assert_size_stride(primals_60, (8, ), (1, ))
    assert_size_stride(primals_61, (16, 16, 7, 7), (784, 49, 7, 1))
    assert_size_stride(primals_62, (16, ), (1, ))
    assert_size_stride(primals_63, (16, ), (1, ))
    assert_size_stride(primals_64, (16, ), (1, ))
    assert_size_stride(primals_65, (16, 16, 7, 7), (784, 49, 7, 1))
    assert_size_stride(primals_66, (16, ), (1, ))
    assert_size_stride(primals_67, (16, ), (1, ))
    assert_size_stride(primals_68, (16, ), (1, ))
    assert_size_stride(primals_69, (16, 16, 7, 7), (784, 49, 7, 1))
    assert_size_stride(primals_70, (16, ), (1, ))
    assert_size_stride(primals_71, (16, ), (1, ))
    assert_size_stride(primals_72, (16, ), (1, ))
    assert_size_stride(primals_73, (16, 16, 7, 7), (784, 49, 7, 1))
    assert_size_stride(primals_74, (16, ), (1, ))
    assert_size_stride(primals_75, (16, ), (1, ))
    assert_size_stride(primals_76, (16, ), (1, ))
    assert_size_stride(primals_77, (16, 64, 3, 3), (576, 9, 3, 1))
    assert_size_stride(primals_78, (16, ), (1, ))
    assert_size_stride(primals_79, (16, ), (1, ))
    assert_size_stride(primals_80, (16, ), (1, ))
    assert_size_stride(primals_81, (32, 32, 7, 7), (1568, 49, 7, 1))
    assert_size_stride(primals_82, (32, ), (1, ))
    assert_size_stride(primals_83, (32, ), (1, ))
    assert_size_stride(primals_84, (32, ), (1, ))
    assert_size_stride(primals_85, (32, 32, 7, 7), (1568, 49, 7, 1))
    assert_size_stride(primals_86, (32, ), (1, ))
    assert_size_stride(primals_87, (32, ), (1, ))
    assert_size_stride(primals_88, (32, ), (1, ))
    assert_size_stride(primals_89, (32, 32, 7, 7), (1568, 49, 7, 1))
    assert_size_stride(primals_90, (32, ), (1, ))
    assert_size_stride(primals_91, (32, ), (1, ))
    assert_size_stride(primals_92, (32, ), (1, ))
    assert_size_stride(primals_93, (32, 32, 7, 7), (1568, 49, 7, 1))
    assert_size_stride(primals_94, (32, ), (1, ))
    assert_size_stride(primals_95, (32, ), (1, ))
    assert_size_stride(primals_96, (32, ), (1, ))
    assert_size_stride(primals_97, (32, 128, 3, 3), (1152, 9, 3, 1))
    assert_size_stride(primals_98, (32, ), (1, ))
    assert_size_stride(primals_99, (32, ), (1, ))
    assert_size_stride(primals_100, (32, ), (1, ))
    assert_size_stride(primals_101, (64, 64, 7, 7), (3136, 49, 7, 1))
    assert_size_stride(primals_102, (64, ), (1, ))
    assert_size_stride(primals_103, (64, ), (1, ))
    assert_size_stride(primals_104, (64, ), (1, ))
    assert_size_stride(primals_105, (64, 64, 7, 7), (3136, 49, 7, 1))
    assert_size_stride(primals_106, (64, ), (1, ))
    assert_size_stride(primals_107, (64, ), (1, ))
    assert_size_stride(primals_108, (64, ), (1, ))
    assert_size_stride(primals_109, (64, 64, 7, 7), (3136, 49, 7, 1))
    assert_size_stride(primals_110, (64, ), (1, ))
    assert_size_stride(primals_111, (64, ), (1, ))
    assert_size_stride(primals_112, (64, ), (1, ))
    assert_size_stride(primals_113, (64, 64, 7, 7), (3136, 49, 7, 1))
    assert_size_stride(primals_114, (64, ), (1, ))
    assert_size_stride(primals_115, (64, ), (1, ))
    assert_size_stride(primals_116, (64, ), (1, ))
    assert_size_stride(primals_117, (64, 256, 3, 3), (2304, 9, 3, 1))
    assert_size_stride(primals_118, (64, ), (1, ))
    assert_size_stride(primals_119, (64, ), (1, ))
    assert_size_stride(primals_120, (64, ), (1, ))
    assert_size_stride(primals_121, (64, 128, 3, 3), (1152, 9, 3, 1))
    assert_size_stride(primals_122, (64, ), (1, ))
    assert_size_stride(primals_123, (64, ), (1, ))
    assert_size_stride(primals_124, (64, ), (1, ))
    assert_size_stride(primals_125, (32, 64, 1, 1), (64, 1, 1, 1))
    assert_size_stride(primals_126, (32, ), (1, ))
    assert_size_stride(primals_127, (32, ), (1, ))
    assert_size_stride(primals_128, (32, ), (1, ))
    assert_size_stride(primals_129, (32, 64, 1, 1), (64, 1, 1, 1))
    assert_size_stride(primals_130, (32, ), (1, ))
    assert_size_stride(primals_131, (32, ), (1, ))
    assert_size_stride(primals_132, (32, ), (1, ))
    assert_size_stride(primals_133, (1, 32, 1, 1), (32, 1, 1, 1))
    assert_size_stride(primals_134, (1, ), (1, ))
    assert_size_stride(primals_135, (1, ), (1, ))
    assert_size_stride(primals_136, (1, ), (1, ))
    assert_size_stride(primals_137, (64, 128, 11, 11), (15488, 121, 11, 1))
    assert_size_stride(primals_138, (64, ), (1, ))
    assert_size_stride(primals_139, (64, ), (1, ))
    assert_size_stride(primals_140, (64, ), (1, ))
    assert_size_stride(primals_141, (32, 64, 3, 3), (576, 9, 3, 1))
    assert_size_stride(primals_142, (32, ), (1, ))
    assert_size_stride(primals_143, (32, ), (1, ))
    assert_size_stride(primals_144, (32, ), (1, ))
    assert_size_stride(primals_145, (16, 32, 1, 1), (32, 1, 1, 1))
    assert_size_stride(primals_146, (16, ), (1, ))
    assert_size_stride(primals_147, (16, ), (1, ))
    assert_size_stride(primals_148, (16, ), (1, ))
    assert_size_stride(primals_149, (16, 32, 1, 1), (32, 1, 1, 1))
    assert_size_stride(primals_150, (16, ), (1, ))
    assert_size_stride(primals_151, (16, ), (1, ))
    assert_size_stride(primals_152, (16, ), (1, ))
    assert_size_stride(primals_153, (1, 16, 1, 1), (16, 1, 1, 1))
    assert_size_stride(primals_154, (1, ), (1, ))
    assert_size_stride(primals_155, (1, ), (1, ))
    assert_size_stride(primals_156, (1, ), (1, ))
    assert_size_stride(primals_157, (32, 64, 11, 11), (7744, 121, 11, 1))
    assert_size_stride(primals_158, (32, ), (1, ))
    assert_size_stride(primals_159, (32, ), (1, ))
    assert_size_stride(primals_160, (32, ), (1, ))
    assert_size_stride(primals_161, (16, 32, 3, 3), (288, 9, 3, 1))
    assert_size_stride(primals_162, (16, ), (1, ))
    assert_size_stride(primals_163, (16, ), (1, ))
    assert_size_stride(primals_164, (16, ), (1, ))
    assert_size_stride(primals_165, (8, 16, 1, 1), (16, 1, 1, 1))
    assert_size_stride(primals_166, (8, ), (1, ))
    assert_size_stride(primals_167, (8, ), (1, ))
    assert_size_stride(primals_168, (8, ), (1, ))
    assert_size_stride(primals_169, (8, 16, 1, 1), (16, 1, 1, 1))
    assert_size_stride(primals_170, (8, ), (1, ))
    assert_size_stride(primals_171, (8, ), (1, ))
    assert_size_stride(primals_172, (8, ), (1, ))
    assert_size_stride(primals_173, (1, 8, 1, 1), (8, 1, 1, 1))
    assert_size_stride(primals_174, (1, ), (1, ))
    assert_size_stride(primals_175, (1, ), (1, ))
    assert_size_stride(primals_176, (1, ), (1, ))
    assert_size_stride(primals_177, (16, 32, 11, 11), (3872, 121, 11, 1))
    assert_size_stride(primals_178, (16, ), (1, ))
    assert_size_stride(primals_179, (16, ), (1, ))
    assert_size_stride(primals_180, (16, ), (1, ))
    assert_size_stride(primals_181, (8, 16, 3, 3), (144, 9, 3, 1))
    assert_size_stride(primals_182, (8, ), (1, ))
    assert_size_stride(primals_183, (8, ), (1, ))
    assert_size_stride(primals_184, (8, ), (1, ))
    assert_size_stride(primals_185, (4, 8, 1, 1), (8, 1, 1, 1))
    assert_size_stride(primals_186, (4, ), (1, ))
    assert_size_stride(primals_187, (4, ), (1, ))
    assert_size_stride(primals_188, (4, ), (1, ))
    assert_size_stride(primals_189, (4, 8, 1, 1), (8, 1, 1, 1))
    assert_size_stride(primals_190, (4, ), (1, ))
    assert_size_stride(primals_191, (4, ), (1, ))
    assert_size_stride(primals_192, (4, ), (1, ))
    assert_size_stride(primals_193, (1, 4, 1, 1), (4, 1, 1, 1))
    assert_size_stride(primals_194, (1, ), (1, ))
    assert_size_stride(primals_195, (1, ), (1, ))
    assert_size_stride(primals_196, (1, ), (1, ))
    assert_size_stride(primals_197, (8, 16, 11, 11), (1936, 121, 11, 1))
    assert_size_stride(primals_198, (8, ), (1, ))
    assert_size_stride(primals_199, (8, ), (1, ))
    assert_size_stride(primals_200, (8, ), (1, ))
    assert_size_stride(primals_201, (1, 8, 1, 1), (8, 1, 1, 1))
    assert_size_stride(primals_202, (1, ), (1, ))
    assert_size_stride(primals_203, (16, ), (1, ))
    assert_size_stride(primals_204, (16, ), (1, ))
    assert_size_stride(primals_205, (), ())
    assert_size_stride(primals_206, (16, ), (1, ))
    assert_size_stride(primals_207, (16, ), (1, ))
    assert_size_stride(primals_208, (), ())
    assert_size_stride(primals_209, (16, ), (1, ))
    assert_size_stride(primals_210, (16, ), (1, ))
    assert_size_stride(primals_211, (), ())
    assert_size_stride(primals_212, (16, ), (1, ))
    assert_size_stride(primals_213, (16, ), (1, ))
    assert_size_stride(primals_214, (), ())
    assert_size_stride(primals_215, (16, ), (1, ))
    assert_size_stride(primals_216, (16, ), (1, ))
    assert_size_stride(primals_217, (), ())
    assert_size_stride(primals_218, (8, ), (1, ))
    assert_size_stride(primals_219, (8, ), (1, ))
    assert_size_stride(primals_220, (), ())
    assert_size_stride(primals_221, (16, ), (1, ))
    assert_size_stride(primals_222, (16, ), (1, ))
    assert_size_stride(primals_223, (), ())
    assert_size_stride(primals_224, (32, ), (1, ))
    assert_size_stride(primals_225, (32, ), (1, ))
    assert_size_stride(primals_226, (), ())
    assert_size_stride(primals_227, (64, ), (1, ))
    assert_size_stride(primals_228, (64, ), (1, ))
    assert_size_stride(primals_229, (), ())
    assert_size_stride(primals_230, (128, ), (1, ))
    assert_size_stride(primals_231, (128, ), (1, ))
    assert_size_stride(primals_232, (), ())
    assert_size_stride(primals_233, (8, ), (1, ))
    assert_size_stride(primals_234, (8, ), (1, ))
    assert_size_stride(primals_235, (), ())
    assert_size_stride(primals_236, (8, ), (1, ))
    assert_size_stride(primals_237, (8, ), (1, ))
    assert_size_stride(primals_238, (), ())
    assert_size_stride(primals_239, (8, ), (1, ))
    assert_size_stride(primals_240, (8, ), (1, ))
    assert_size_stride(primals_241, (), ())
    assert_size_stride(primals_242, (8, ), (1, ))
    assert_size_stride(primals_243, (8, ), (1, ))
    assert_size_stride(primals_244, (), ())
    assert_size_stride(primals_245, (8, ), (1, ))
    assert_size_stride(primals_246, (8, ), (1, ))
    assert_size_stride(primals_247, (), ())
    assert_size_stride(primals_248, (16, ), (1, ))
    assert_size_stride(primals_249, (16, ), (1, ))
    assert_size_stride(primals_250, (), ())
    assert_size_stride(primals_251, (16, ), (1, ))
    assert_size_stride(primals_252, (16, ), (1, ))
    assert_size_stride(primals_253, (), ())
    assert_size_stride(primals_254, (16, ), (1, ))
    assert_size_stride(primals_255, (16, ), (1, ))
    assert_size_stride(primals_256, (), ())
    assert_size_stride(primals_257, (16, ), (1, ))
    assert_size_stride(primals_258, (16, ), (1, ))
    assert_size_stride(primals_259, (), ())
    assert_size_stride(primals_260, (16, ), (1, ))
    assert_size_stride(primals_261, (16, ), (1, ))
    assert_size_stride(primals_262, (), ())
    assert_size_stride(primals_263, (32, ), (1, ))
    assert_size_stride(primals_264, (32, ), (1, ))
    assert_size_stride(primals_265, (), ())
    assert_size_stride(primals_266, (32, ), (1, ))
    assert_size_stride(primals_267, (32, ), (1, ))
    assert_size_stride(primals_268, (), ())
    assert_size_stride(primals_269, (32, ), (1, ))
    assert_size_stride(primals_270, (32, ), (1, ))
    assert_size_stride(primals_271, (), ())
    assert_size_stride(primals_272, (32, ), (1, ))
    assert_size_stride(primals_273, (32, ), (1, ))
    assert_size_stride(primals_274, (), ())
    assert_size_stride(primals_275, (32, ), (1, ))
    assert_size_stride(primals_276, (32, ), (1, ))
    assert_size_stride(primals_277, (), ())
    assert_size_stride(primals_278, (64, ), (1, ))
    assert_size_stride(primals_279, (64, ), (1, ))
    assert_size_stride(primals_280, (), ())
    assert_size_stride(primals_281, (64, ), (1, ))
    assert_size_stride(primals_282, (64, ), (1, ))
    assert_size_stride(primals_283, (), ())
    assert_size_stride(primals_284, (64, ), (1, ))
    assert_size_stride(primals_285, (64, ), (1, ))
    assert_size_stride(primals_286, (), ())
    assert_size_stride(primals_287, (64, ), (1, ))
    assert_size_stride(primals_288, (64, ), (1, ))
    assert_size_stride(primals_289, (), ())
    assert_size_stride(primals_290, (64, ), (1, ))
    assert_size_stride(primals_291, (64, ), (1, ))
    assert_size_stride(primals_292, (), ())
    assert_size_stride(primals_293, (64, ), (1, ))
    assert_size_stride(primals_294, (64, ), (1, ))
    assert_size_stride(primals_295, (), ())
    assert_size_stride(primals_296, (32, ), (1, ))
    assert_size_stride(primals_297, (32, ), (1, ))
    assert_size_stride(primals_298, (), ())
    assert_size_stride(primals_299, (32, ), (1, ))
    assert_size_stride(primals_300, (32, ), (1, ))
    assert_size_stride(primals_301, (), ())
    assert_size_stride(primals_302, (1, ), (1, ))
    assert_size_stride(primals_303, (1, ), (1, ))
    assert_size_stride(primals_304, (), ())
    assert_size_stride(primals_305, (64, ), (1, ))
    assert_size_stride(primals_306, (64, ), (1, ))
    assert_size_stride(primals_307, (), ())
    assert_size_stride(primals_308, (32, ), (1, ))
    assert_size_stride(primals_309, (32, ), (1, ))
    assert_size_stride(primals_310, (), ())
    assert_size_stride(primals_311, (16, ), (1, ))
    assert_size_stride(primals_312, (16, ), (1, ))
    assert_size_stride(primals_313, (), ())
    assert_size_stride(primals_314, (16, ), (1, ))
    assert_size_stride(primals_315, (16, ), (1, ))
    assert_size_stride(primals_316, (), ())
    assert_size_stride(primals_317, (1, ), (1, ))
    assert_size_stride(primals_318, (1, ), (1, ))
    assert_size_stride(primals_319, (), ())
    assert_size_stride(primals_320, (32, ), (1, ))
    assert_size_stride(primals_321, (32, ), (1, ))
    assert_size_stride(primals_322, (), ())
    assert_size_stride(primals_323, (16, ), (1, ))
    assert_size_stride(primals_324, (16, ), (1, ))
    assert_size_stride(primals_325, (), ())
    assert_size_stride(primals_326, (8, ), (1, ))
    assert_size_stride(primals_327, (8, ), (1, ))
    assert_size_stride(primals_328, (), ())
    assert_size_stride(primals_329, (8, ), (1, ))
    assert_size_stride(primals_330, (8, ), (1, ))
    assert_size_stride(primals_331, (), ())
    assert_size_stride(primals_332, (1, ), (1, ))
    assert_size_stride(primals_333, (1, ), (1, ))
    assert_size_stride(primals_334, (), ())
    assert_size_stride(primals_335, (16, ), (1, ))
    assert_size_stride(primals_336, (16, ), (1, ))
    assert_size_stride(primals_337, (), ())
    assert_size_stride(primals_338, (8, ), (1, ))
    assert_size_stride(primals_339, (8, ), (1, ))
    assert_size_stride(primals_340, (), ())
    assert_size_stride(primals_341, (4, ), (1, ))
    assert_size_stride(primals_342, (4, ), (1, ))
    assert_size_stride(primals_343, (), ())
    assert_size_stride(primals_344, (4, ), (1, ))
    assert_size_stride(primals_345, (4, ), (1, ))
    assert_size_stride(primals_346, (), ())
    assert_size_stride(primals_347, (1, ), (1, ))
    assert_size_stride(primals_348, (1, ), (1, ))
    assert_size_stride(primals_349, (), ())
    assert_size_stride(primals_350, (8, ), (1, ))
    assert_size_stride(primals_351, (8, ), (1, ))
    assert_size_stride(primals_352, (), ())
    assert_size_stride(primals_353, (1, 3, 256, 256), (196608, 65536, 256, 1))
    buf0 = empty_strided((16, 3, 3, 3), (27, 1, 9, 3), device='cpu', dtype=torch.float32)
    buf1 = empty_strided((16, 3, 5, 5), (75, 1, 15, 3), device='cpu', dtype=torch.float32)
    buf2 = empty_strided((16, 3, 7, 7), (147, 1, 21, 3), device='cpu', dtype=torch.float32)
    buf3 = empty_strided((16, 3, 11, 11), (363, 1, 33, 3), device='cpu', dtype=torch.float32)
    buf4 = empty_strided((16, 3, 15, 15), (675, 1, 45, 3), device='cpu', dtype=torch.float32)
    buf5 = empty_strided((8, 80, 11, 11), (9680, 1, 880, 80), device='cpu', dtype=torch.float32)
    buf6 = empty_strided((16, 8, 11, 11), (968, 1, 88, 8), device='cpu', dtype=torch.float32)
    buf7 = empty_strided((32, 16, 11, 11), (1936, 1, 176, 16), device='cpu', dtype=torch.float32)
    buf8 = empty_strided((64, 32, 11, 11), (3872, 1, 352, 32), device='cpu', dtype=torch.float32)
    buf9 = empty_strided((128, 64, 11, 11), (7744, 1, 704, 64), device='cpu', dtype=torch.float32)
    buf10 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=torch.float32)
    buf11 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=torch.float32)
    buf12 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=torch.float32)
    buf13 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=torch.float32)
    buf14 = empty_strided((8, 32, 3, 3), (288, 1, 96, 32), device='cpu', dtype=torch.float32)
    buf15 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=torch.float32)
    buf16 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=torch.float32)
    buf17 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=torch.float32)
    buf18 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=torch.float32)
    buf19 = empty_strided((16, 64, 3, 3), (576, 1, 192, 64), device='cpu', dtype=torch.float32)
    buf20 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=torch.float32)
    buf21 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=torch.float32)
    buf22 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=torch.float32)
    buf23 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=torch.float32)
    buf24 = empty_strided((32, 128, 3, 3), (1152, 1, 384, 128), device='cpu', dtype=torch.float32)
    buf25 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=torch.float32)
    buf26 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=torch.float32)
    buf27 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=torch.float32)
    buf28 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=torch.float32)
    buf29 = empty_strided((64, 256, 3, 3), (2304, 1, 768, 256), device='cpu', dtype=torch.float32)
    buf30 = empty_strided((64, 128, 3, 3), (1152, 1, 384, 128), device='cpu', dtype=torch.float32)
    buf31 = empty_strided((64, 128, 11, 11), (15488, 1, 1408, 128), device='cpu', dtype=torch.float32)
    buf32 = empty_strided((32, 64, 3, 3), (576, 1, 192, 64), device='cpu', dtype=torch.float32)
    buf33 = empty_strided((32, 64, 11, 11), (7744, 1, 704, 64), device='cpu', dtype=torch.float32)
    buf34 = empty_strided((16, 32, 3, 3), (288, 1, 96, 32), device='cpu', dtype=torch.float32)
    buf35 = empty_strided((16, 32, 11, 11), (3872, 1, 352, 32), device='cpu', dtype=torch.float32)
    buf36 = empty_strided((8, 16, 3, 3), (144, 1, 48, 16), device='cpu', dtype=torch.float32)
    buf37 = empty_strided((8, 16, 11, 11), (1936, 1, 176, 16), device='cpu', dtype=torch.float32)
    buf38 = empty_strided((1, 3, 258, 258), (199692, 1, 774, 3), device='cpu', dtype=torch.float32)
    cpp_fused_reflection_pad2d_0(c_void_p(primals_1.data_ptr()), c_void_p(primals_5.data_ptr()), c_void_p(primals_9.data_ptr()), c_void_p(primals_13.data_ptr()), c_void_p(primals_17.data_ptr()), c_void_p(primals_21.data_ptr()), c_void_p(primals_25.data_ptr()), c_void_p(primals_29.data_ptr()), c_void_p(primals_33.data_ptr()), c_void_p(primals_37.data_ptr()), c_void_p(primals_41.data_ptr()), c_void_p(primals_45.data_ptr()), c_void_p(primals_49.data_ptr()), c_void_p(primals_53.data_ptr()), c_void_p(primals_57.data_ptr()), c_void_p(primals_61.data_ptr()), c_void_p(primals_65.data_ptr()), c_void_p(primals_69.data_ptr()), c_void_p(primals_73.data_ptr()), c_void_p(primals_77.data_ptr()), c_void_p(primals_81.data_ptr()), c_void_p(primals_85.data_ptr()), c_void_p(primals_89.data_ptr()), c_void_p(primals_93.data_ptr()), c_void_p(primals_97.data_ptr()), c_void_p(primals_101.data_ptr()), c_void_p(primals_105.data_ptr()), c_void_p(primals_109.data_ptr()), c_void_p(primals_113.data_ptr()), c_void_p(primals_117.data_ptr()), c_void_p(primals_121.data_ptr()), c_void_p(primals_137.data_ptr()), c_void_p(primals_141.data_ptr()), c_void_p(primals_157.data_ptr()), c_void_p(primals_161.data_ptr()), c_void_p(primals_177.data_ptr()), c_void_p(primals_181.data_ptr()), c_void_p(primals_197.data_ptr()), c_void_p(primals_353.data_ptr()), c_void_p(buf0.data_ptr()), c_void_p(buf1.data_ptr()), c_void_p(buf2.data_ptr()), c_void_p(buf3.data_ptr()), c_void_p(buf4.data_ptr()), c_void_p(buf5.data_ptr()), c_void_p(buf6.data_ptr()), c_void_p(buf7.data_ptr()), c_void_p(buf8.data_ptr()), c_void_p(buf9.data_ptr()), c_void_p(buf10.data_ptr()), c_void_p(buf11.data_ptr()), c_void_p(buf12.data_ptr()), c_void_p(buf13.data_ptr()), c_void_p(buf14.data_ptr()), c_void_p(buf15.data_ptr()), c_void_p(buf16.data_ptr()), c_void_p(buf17.data_ptr()), c_void_p(buf18.data_ptr()), c_void_p(buf19.data_ptr()), c_void_p(buf20.data_ptr()), c_void_p(buf21.data_ptr()), c_void_p(buf22.data_ptr()), c_void_p(buf23.data_ptr()), c_void_p(buf24.data_ptr()), c_void_p(buf25.data_ptr()), c_void_p(buf26.data_ptr()), c_void_p(buf27.data_ptr()), c_void_p(buf28.data_ptr()), c_void_p(buf29.data_ptr()), c_void_p(buf30.data_ptr()), c_void_p(buf31.data_ptr()), c_void_p(buf32.data_ptr()), c_void_p(buf33.data_ptr()), c_void_p(buf34.data_ptr()), c_void_p(buf35.data_ptr()), c_void_p(buf36.data_ptr()), c_void_p(buf37.data_ptr()), c_void_p(buf38.data_ptr()))
    del primals_1
    del primals_101
    del primals_105
    del primals_109
    del primals_113
    del primals_117
    del primals_121
    del primals_13
    del primals_137
    del primals_141
    del primals_157
    del primals_161
    del primals_17
    del primals_177
    del primals_181
    del primals_197
    del primals_21
    del primals_25
    del primals_29
    del primals_33
    del primals_37
    del primals_41
    del primals_45
    del primals_49
    del primals_5
    del primals_53
    del primals_57
    del primals_61
    del primals_65
    del primals_69
    del primals_73
    del primals_77
    del primals_81
    del primals_85
    del primals_89
    del primals_9
    del primals_93
    del primals_97
    # Source Nodes: [l__self___multi_scale_1_conv_1], Original ATen: [aten.convolution]
    buf39 = extern_kernels.convolution(buf38, buf0, primals_2, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf39, (1, 16, 256, 256), (1048576, 1, 4096, 16))
    del primals_2
    buf53 = empty_strided((1, 80, 256, 256), (5242880, 65536, 256, 1), device='cpu', dtype=torch.float32)
    buf40 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 0)  # alias
    buf223 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=torch.bool)
    buf41 = empty_strided((1, 3, 260, 260), (202800, 1, 780, 3), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_1(c_void_p(buf39.data_ptr()), c_void_p(primals_203.data_ptr()), c_void_p(primals_204.data_ptr()), c_void_p(primals_3.data_ptr()), c_void_p(primals_4.data_ptr()), c_void_p(primals_353.data_ptr()), c_void_p(buf40.data_ptr()), c_void_p(buf223.data_ptr()), c_void_p(buf41.data_ptr()))
    del primals_4
    # Source Nodes: [l__self___multi_scale_2_conv_1], Original ATen: [aten.convolution]
    buf42 = extern_kernels.convolution(buf41, buf1, primals_6, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf42, (1, 16, 256, 256), (1048576, 1, 4096, 16))
    del primals_6
    buf43 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 1048576)  # alias
    buf222 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=torch.bool)
    buf44 = empty_strided((1, 3, 268, 268), (215472, 1, 804, 3), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_2(c_void_p(buf42.data_ptr()), c_void_p(primals_206.data_ptr()), c_void_p(primals_207.data_ptr()), c_void_p(primals_7.data_ptr()), c_void_p(primals_8.data_ptr()), c_void_p(primals_353.data_ptr()), c_void_p(buf43.data_ptr()), c_void_p(buf222.data_ptr()), c_void_p(buf44.data_ptr()))
    # assert_size_stride(buf43, (1, 16, 256, 256), (1048576, 65536, 256, 1))
    del primals_8
    # Source Nodes: [l__self___multi_scale_3_conv_1], Original ATen: [aten.convolution]
    buf45 = extern_kernels.convolution(buf44, buf2, primals_10, stride=(1, 1), padding=(0, 0), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf45, (1, 16, 256, 256), (1048576, 1, 4096, 16))
    del primals_10
    buf46 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 2097152)  # alias
    buf221 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=torch.bool)
    buf47 = empty_strided((1, 3, 276, 276), (228528, 1, 828, 3), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_3(c_void_p(buf45.data_ptr()), c_void_p(primals_209.data_ptr()), c_void_p(primals_210.data_ptr()), c_void_p(primals_11.data_ptr()), c_void_p(primals_12.data_ptr()), c_void_p(primals_353.data_ptr()), c_void_p(buf46.data_ptr()), c_void_p(buf221.data_ptr()), c_void_p(buf47.data_ptr()))
    del primals_12
    # Source Nodes: [l__self___multi_scale_4_conv_1], Original ATen: [aten.convolution]
    buf48 = extern_kernels.convolution(buf47, buf3, primals_14, stride=(1, 1), padding=(0, 0), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf48, (1, 16, 256, 256), (1048576, 1, 4096, 16))
    del primals_14
    buf49 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 3145728)  # alias
    buf220 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=torch.bool)
    buf50 = empty_strided((1, 3, 298, 298), (266412, 1, 894, 3), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_4(c_void_p(buf48.data_ptr()), c_void_p(primals_212.data_ptr()), c_void_p(primals_213.data_ptr()), c_void_p(primals_15.data_ptr()), c_void_p(primals_16.data_ptr()), c_void_p(primals_353.data_ptr()), c_void_p(buf49.data_ptr()), c_void_p(buf220.data_ptr()), c_void_p(buf50.data_ptr()))
    del primals_16
    del primals_353
    # Source Nodes: [l__self___multi_scale_5_conv_1], Original ATen: [aten.convolution]
    buf51 = extern_kernels.convolution(buf50, buf4, primals_18, stride=(1, 1), padding=(0, 0), dilation=(3, 3), 
    transposed=False, output_padding=(0, 0), groups=1)
    # print(buf51)
    assert_size_stride(buf51, (1, 16, 256, 256), (1048576, 1, 4096, 16))
    del primals_18
    buf52 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 4194304)  # alias
    buf219 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=torch.bool)
    buf54 = empty_strided((1, 80, 256, 256), (5242880, 1, 20480, 80), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_5(c_void_p(buf51.data_ptr()), c_void_p(primals_215.data_ptr()), c_void_p(primals_216.data_ptr()), c_void_p(primals_19.data_ptr()), c_void_p(primals_20.data_ptr()), c_void_p(buf53.data_ptr()), c_void_p(buf52.data_ptr()), c_void_p(buf219.data_ptr()), c_void_p(buf54.data_ptr()))
    del buf40
    del buf43
    del buf46
    del buf49
    del buf52
    del buf53
    del primals_20
    # Source Nodes: [l__self___conv1_conv_0], Original ATen: [aten.convolution]
    buf55 = extern_kernels.convolution(buf54, buf5, primals_22, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf55, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_22
    buf56 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.float32)
    buf57 = empty_strided((1, 8, 128, 128), (131072, 1, 1024, 8), device='cpu', dtype=torch.float32)
    buf58 = empty_strided((1, 8, 128, 128), (131072, 1, 1024, 8), device='cpu', dtype=torch.int64)
    cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_6(c_void_p(buf55.data_ptr()), c_void_p(primals_218.data_ptr()), c_void_p(primals_219.data_ptr()), c_void_p(primals_23.data_ptr()), c_void_p(primals_24.data_ptr()), c_void_p(buf56.data_ptr()), c_void_p(buf57.data_ptr()), c_void_p(buf58.data_ptr()))
    del primals_24
    # Source Nodes: [l__self___conv2_conv_0], Original ATen: [aten.convolution]
    buf59 = extern_kernels.convolution(buf57, buf6, primals_26, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf59, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_26
    buf60 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.float32)
    buf61 = empty_strided((1, 16, 64, 64), (65536, 1, 1024, 16), device='cpu', dtype=torch.float32)
    buf62 = empty_strided((1, 16, 64, 64), (65536, 1, 1024, 16), device='cpu', dtype=torch.int64)
    cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_7(c_void_p(buf59.data_ptr()), c_void_p(primals_221.data_ptr()), c_void_p(primals_222.data_ptr()), c_void_p(primals_27.data_ptr()), c_void_p(primals_28.data_ptr()), c_void_p(buf60.data_ptr()), c_void_p(buf61.data_ptr()), c_void_p(buf62.data_ptr()))
    del primals_28
    # Source Nodes: [l__self___conv3_conv_0], Original ATen: [aten.convolution]
    buf63 = extern_kernels.convolution(buf61, buf7, primals_30, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf63, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_30
    buf64 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.float32)
    buf65 = empty_strided((1, 32, 32, 32), (32768, 1, 1024, 32), device='cpu', dtype=torch.float32)
    buf66 = empty_strided((1, 32, 32, 32), (32768, 1, 1024, 32), device='cpu', dtype=torch.int64)
    cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_8(c_void_p(buf63.data_ptr()), c_void_p(primals_224.data_ptr()), c_void_p(primals_225.data_ptr()), c_void_p(primals_31.data_ptr()), c_void_p(primals_32.data_ptr()), c_void_p(buf64.data_ptr()), c_void_p(buf65.data_ptr()), c_void_p(buf66.data_ptr()))
    del primals_32
    # Source Nodes: [l__self___conv4_conv_0], Original ATen: [aten.convolution]
    buf67 = extern_kernels.convolution(buf65, buf8, primals_34, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf67, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_34
    buf68 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.float32)
    buf69 = empty_strided((1, 64, 16, 16), (16384, 1, 1024, 64), device='cpu', dtype=torch.float32)
    buf70 = empty_strided((1, 64, 16, 16), (16384, 1, 1024, 64), device='cpu', dtype=torch.int64)
    cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_9(c_void_p(buf67.data_ptr()), c_void_p(primals_227.data_ptr()), c_void_p(primals_228.data_ptr()), c_void_p(primals_35.data_ptr()), c_void_p(primals_36.data_ptr()), c_void_p(buf68.data_ptr()), c_void_p(buf69.data_ptr()), c_void_p(buf70.data_ptr()))
    del primals_36
    # Source Nodes: [l__self___conv5_conv_0], Original ATen: [aten.convolution]
    buf71 = extern_kernels.convolution(buf69, buf9, primals_38, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf71, (1, 128, 16, 16), (32768, 1, 2048, 128))
    del primals_38
    buf72 = empty_strided((1, 128, 16, 16), (32768, 1, 2048, 128), device='cpu', dtype=torch.float32)
    buf73 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=torch.float32)
    buf76 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=torch.float32)
    buf79 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=torch.float32)
    buf82 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_10(c_void_p(buf71.data_ptr()), c_void_p(primals_230.data_ptr()), c_void_p(primals_231.data_ptr()), c_void_p(primals_39.data_ptr()), c_void_p(primals_40.data_ptr()), c_void_p(buf56.data_ptr()), c_void_p(buf72.data_ptr()), c_void_p(buf73.data_ptr()), c_void_p(buf76.data_ptr()), c_void_p(buf79.data_ptr()), c_void_p(buf82.data_ptr()))
    del primals_40
    # Source Nodes: [l__self___o1_lu_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf74 = extern_kernels.convolution(buf73, buf10, primals_42, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf74, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_42
    buf85 = empty_strided((1, 32, 256, 256), (2097152, 65536, 256, 1), device='cpu', dtype=torch.float32)
    buf75 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 0)  # alias
    buf217 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_11(c_void_p(buf74.data_ptr()), c_void_p(primals_233.data_ptr()), c_void_p(primals_234.data_ptr()), c_void_p(primals_43.data_ptr()), c_void_p(primals_44.data_ptr()), c_void_p(buf75.data_ptr()), c_void_p(buf217.data_ptr()))
    del primals_44
    # Source Nodes: [l__self___o1_ld_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf77 = extern_kernels.convolution(buf76, buf11, primals_46, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf77, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_46
    buf78 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 524288)  # alias
    buf216 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_12(c_void_p(buf77.data_ptr()), c_void_p(primals_236.data_ptr()), c_void_p(primals_237.data_ptr()), c_void_p(primals_47.data_ptr()), c_void_p(primals_48.data_ptr()), c_void_p(buf78.data_ptr()), c_void_p(buf216.data_ptr()))
    del primals_48
    # Source Nodes: [l__self___o1_ru_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf80 = extern_kernels.convolution(buf79, buf12, primals_50, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf80, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_50
    buf81 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 1048576)  # alias
    buf215 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_13(c_void_p(buf80.data_ptr()), c_void_p(primals_239.data_ptr()), c_void_p(primals_240.data_ptr()), c_void_p(primals_51.data_ptr()), c_void_p(primals_52.data_ptr()), c_void_p(buf81.data_ptr()), c_void_p(buf215.data_ptr()))
    del primals_52
    # Source Nodes: [l__self___o1_rd_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf83 = extern_kernels.convolution(buf82, buf13, primals_54, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf83, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_54
    buf84 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 1572864)  # alias
    buf214 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.bool)
    buf86 = empty_strided((1, 32, 256, 256), (2097152, 1, 8192, 32), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_14(c_void_p(buf83.data_ptr()), c_void_p(primals_242.data_ptr()), c_void_p(primals_243.data_ptr()), c_void_p(primals_55.data_ptr()), c_void_p(primals_56.data_ptr()), c_void_p(buf85.data_ptr()), c_void_p(buf84.data_ptr()), c_void_p(buf214.data_ptr()), c_void_p(buf86.data_ptr()))
    del buf75
    del buf78
    del buf81
    del buf84
    del buf85
    del primals_56
    # Source Nodes: [l__self___o1_final_conv], Original ATen: [aten.convolution]
    buf87 = extern_kernels.convolution(buf86, buf14, primals_58, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf87, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_58
    buf88 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.float32)
    buf89 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=torch.float32)
    buf92 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=torch.float32)
    buf95 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=torch.float32)
    buf98 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_15(c_void_p(buf87.data_ptr()), c_void_p(primals_245.data_ptr()), c_void_p(primals_246.data_ptr()), c_void_p(primals_59.data_ptr()), c_void_p(primals_60.data_ptr()), c_void_p(buf60.data_ptr()), c_void_p(buf88.data_ptr()), c_void_p(buf89.data_ptr()), c_void_p(buf92.data_ptr()), c_void_p(buf95.data_ptr()), c_void_p(buf98.data_ptr()))
    del primals_60
    # Source Nodes: [l__self___o2_lu_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf90 = extern_kernels.convolution(buf89, buf15, primals_62, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf90, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_62
    buf101 = empty_strided((1, 64, 128, 128), (1048576, 16384, 128, 1), device='cpu', dtype=torch.float32)
    buf91 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 0)  # alias
    buf213 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_16(c_void_p(buf90.data_ptr()), c_void_p(primals_248.data_ptr()), c_void_p(primals_249.data_ptr()), c_void_p(primals_63.data_ptr()), c_void_p(primals_64.data_ptr()), c_void_p(buf91.data_ptr()), c_void_p(buf213.data_ptr()))
    del primals_64
    # Source Nodes: [l__self___o2_ld_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf93 = extern_kernels.convolution(buf92, buf16, primals_66, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf93, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_66
    buf94 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 262144)  # alias
    buf212 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_17(c_void_p(buf93.data_ptr()), c_void_p(primals_251.data_ptr()), c_void_p(primals_252.data_ptr()), c_void_p(primals_67.data_ptr()), c_void_p(primals_68.data_ptr()), c_void_p(buf94.data_ptr()), c_void_p(buf212.data_ptr()))
    del primals_68
    # Source Nodes: [l__self___o2_ru_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf96 = extern_kernels.convolution(buf95, buf17, primals_70, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf96, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_70
    buf97 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 524288)  # alias
    buf211 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_18(c_void_p(buf96.data_ptr()), c_void_p(primals_254.data_ptr()), c_void_p(primals_255.data_ptr()), c_void_p(primals_71.data_ptr()), c_void_p(primals_72.data_ptr()), c_void_p(buf97.data_ptr()), c_void_p(buf211.data_ptr()))
    del primals_72
    # Source Nodes: [l__self___o2_rd_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf99 = extern_kernels.convolution(buf98, buf18, primals_74, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf99, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_74
    buf100 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 786432)  # alias
    buf210 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.bool)
    buf102 = empty_strided((1, 64, 128, 128), (1048576, 1, 8192, 64), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_19(c_void_p(buf99.data_ptr()), c_void_p(primals_257.data_ptr()), c_void_p(primals_258.data_ptr()), c_void_p(primals_75.data_ptr()), c_void_p(primals_76.data_ptr()), c_void_p(buf101.data_ptr()), c_void_p(buf100.data_ptr()), c_void_p(buf210.data_ptr()), c_void_p(buf102.data_ptr()))
    del buf100
    del buf91
    del buf94
    del buf97
    del primals_76
    # Source Nodes: [l__self___o2_final_conv], Original ATen: [aten.convolution]
    buf103 = extern_kernels.convolution(buf102, buf19, primals_78, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf103, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_78
    buf104 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.float32)
    buf105 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=torch.float32)
    buf108 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=torch.float32)
    buf111 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=torch.float32)
    buf114 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_20(c_void_p(buf103.data_ptr()), c_void_p(primals_260.data_ptr()), c_void_p(primals_261.data_ptr()), c_void_p(primals_79.data_ptr()), c_void_p(primals_80.data_ptr()), c_void_p(buf64.data_ptr()), c_void_p(buf104.data_ptr()), c_void_p(buf105.data_ptr()), c_void_p(buf108.data_ptr()), c_void_p(buf111.data_ptr()), c_void_p(buf114.data_ptr()))
    del primals_80
    # Source Nodes: [l__self___o3_lu_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf106 = extern_kernels.convolution(buf105, buf20, primals_82, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf106, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_82
    buf117 = empty_strided((1, 128, 64, 64), (524288, 4096, 64, 1), device='cpu', dtype=torch.float32)
    buf107 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 0)  # alias
    buf209 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_21(c_void_p(buf106.data_ptr()), c_void_p(primals_263.data_ptr()), c_void_p(primals_264.data_ptr()), c_void_p(primals_83.data_ptr()), c_void_p(primals_84.data_ptr()), c_void_p(buf107.data_ptr()), c_void_p(buf209.data_ptr()))
    del primals_84
    # Source Nodes: [l__self___o3_ld_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf109 = extern_kernels.convolution(buf108, buf21, primals_86, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf109, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_86
    buf110 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 131072)  # alias
    buf208 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_22(c_void_p(buf109.data_ptr()), c_void_p(primals_266.data_ptr()), c_void_p(primals_267.data_ptr()), c_void_p(primals_87.data_ptr()), c_void_p(primals_88.data_ptr()), c_void_p(buf110.data_ptr()), c_void_p(buf208.data_ptr()))
    del primals_88
    # Source Nodes: [l__self___o3_ru_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf112 = extern_kernels.convolution(buf111, buf22, primals_90, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf112, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_90
    buf113 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 262144)  # alias
    buf207 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_23(c_void_p(buf112.data_ptr()), c_void_p(primals_269.data_ptr()), c_void_p(primals_270.data_ptr()), c_void_p(primals_91.data_ptr()), c_void_p(primals_92.data_ptr()), c_void_p(buf113.data_ptr()), c_void_p(buf207.data_ptr()))
    del primals_92
    # Source Nodes: [l__self___o3_rd_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf115 = extern_kernels.convolution(buf114, buf23, primals_94, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf115, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_94
    buf116 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 393216)  # alias
    buf206 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.bool)
    buf118 = empty_strided((1, 128, 64, 64), (524288, 1, 8192, 128), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_24(c_void_p(buf115.data_ptr()), c_void_p(primals_272.data_ptr()), c_void_p(primals_273.data_ptr()), c_void_p(primals_95.data_ptr()), c_void_p(primals_96.data_ptr()), c_void_p(buf117.data_ptr()), c_void_p(buf116.data_ptr()), c_void_p(buf206.data_ptr()), c_void_p(buf118.data_ptr()))
    del buf107
    del buf110
    del buf113
    del buf116
    del primals_96
    # Source Nodes: [l__self___o3_final_conv], Original ATen: [aten.convolution]
    buf119 = extern_kernels.convolution(buf118, buf24, primals_98, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf119, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_98
    buf120 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.float32)
    buf121 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=torch.float32)
    buf124 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=torch.float32)
    buf127 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=torch.float32)
    buf130 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_25(c_void_p(buf119.data_ptr()), c_void_p(primals_275.data_ptr()), c_void_p(primals_276.data_ptr()), c_void_p(primals_99.data_ptr()), c_void_p(primals_100.data_ptr()), c_void_p(buf68.data_ptr()), c_void_p(buf120.data_ptr()), c_void_p(buf121.data_ptr()), c_void_p(buf124.data_ptr()), c_void_p(buf127.data_ptr()), c_void_p(buf130.data_ptr()))
    del primals_100
    # Source Nodes: [l__self___o4_lu_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf122 = extern_kernels.convolution(buf121, buf25, primals_102, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf122, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_102
    buf133 = empty_strided((1, 256, 32, 32), (262144, 1024, 32, 1), device='cpu', dtype=torch.float32)
    buf123 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 0)  # alias
    buf205 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_26(c_void_p(buf122.data_ptr()), c_void_p(primals_278.data_ptr()), c_void_p(primals_279.data_ptr()), c_void_p(primals_103.data_ptr()), c_void_p(primals_104.data_ptr()), c_void_p(buf123.data_ptr()), c_void_p(buf205.data_ptr()))
    del primals_104
    # Source Nodes: [l__self___o4_ld_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf125 = extern_kernels.convolution(buf124, buf26, primals_106, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf125, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_106
    buf126 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 65536)  # alias
    buf204 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_27(c_void_p(buf125.data_ptr()), c_void_p(primals_281.data_ptr()), c_void_p(primals_282.data_ptr()), c_void_p(primals_107.data_ptr()), c_void_p(primals_108.data_ptr()), c_void_p(buf126.data_ptr()), c_void_p(buf204.data_ptr()))
    del primals_108
    # Source Nodes: [l__self___o4_ru_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf128 = extern_kernels.convolution(buf127, buf27, primals_110, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf128, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_110
    buf129 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 131072)  # alias
    buf203 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.bool)
    cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_28(c_void_p(buf128.data_ptr()), c_void_p(primals_284.data_ptr()), c_void_p(primals_285.data_ptr()), c_void_p(primals_111.data_ptr()), c_void_p(primals_112.data_ptr()), c_void_p(buf129.data_ptr()), c_void_p(buf203.data_ptr()))
    del primals_112
    # Source Nodes: [l__self___o4_rd_bias_convolution_conv_0], Original ATen: [aten.convolution]
    buf131 = extern_kernels.convolution(buf130, buf28, primals_114, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf131, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_114
    buf132 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 196608)  # alias
    buf202 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.bool)
    buf134 = empty_strided((1, 256, 32, 32), (262144, 1, 8192, 256), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_29(c_void_p(buf131.data_ptr()), c_void_p(primals_287.data_ptr()), c_void_p(primals_288.data_ptr()), c_void_p(primals_115.data_ptr()), c_void_p(primals_116.data_ptr()), c_void_p(buf133.data_ptr()), c_void_p(buf132.data_ptr()), c_void_p(buf202.data_ptr()), c_void_p(buf134.data_ptr()))
    del buf123
    del buf126
    del buf129
    del buf132
    del primals_116
    # Source Nodes: [l__self___o4_final_conv], Original ATen: [aten.convolution]
    buf135 = extern_kernels.convolution(buf134, buf29, primals_118, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf135, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_118
    buf136 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.float32)
    buf137 = empty_strided((32, ), (1, ), device='cpu', dtype=torch.int64)
    buf138 = empty_strided((1, 128, 32, 32), (131072, 1, 4096, 128), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_30(c_void_p(buf135.data_ptr()), c_void_p(primals_290.data_ptr()), c_void_p(primals_291.data_ptr()), c_void_p(primals_119.data_ptr()), c_void_p(primals_120.data_ptr()), c_void_p(buf72.data_ptr()), c_void_p(buf136.data_ptr()), c_void_p(buf137.data_ptr()), c_void_p(buf138.data_ptr()))
    del primals_120
    # Source Nodes: [l__self___up5_up_1], Original ATen: [aten.convolution]
    buf139 = extern_kernels.convolution(buf138, buf30, primals_122, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf139, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_122
    buf140 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.float32)
    buf149 = empty_strided((1, 128, 32, 32), (131072, 1, 4096, 128), device='cpu', dtype=torch.float32)
    buf148 = reinterpret_tensor(buf149, (1, 64, 32, 32), (131072, 1, 4096, 128), 64)  # alias
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_31(c_void_p(buf139.data_ptr()), c_void_p(primals_293.data_ptr()), c_void_p(primals_294.data_ptr()), c_void_p(primals_123.data_ptr()), c_void_p(primals_124.data_ptr()), c_void_p(buf140.data_ptr()), c_void_p(buf148.data_ptr()))
    del primals_124
    # Source Nodes: [l__self___att5_w_g_0], Original ATen: [aten.convolution]
    buf141 = extern_kernels.convolution(buf140, primals_125, primals_126, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf141, (1, 32, 32, 32), (32768, 1, 1024, 32))
    del primals_126
    # Source Nodes: [l__self___att5_w_x_0], Original ATen: [aten.convolution]
    buf142 = extern_kernels.convolution(buf136, primals_129, primals_130, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf142, (1, 32, 32, 32), (32768, 1, 1024, 32))
    del primals_130
    buf143 = empty_strided((1, 32, 32, 32), (32768, 1, 1024, 32), device='cpu', dtype=torch.float32)
    buf144 = buf143; del buf143  # reuse
    cpp_fused__native_batch_norm_legit_no_training_add_relu_32(c_void_p(buf144.data_ptr()), c_void_p(buf141.data_ptr()), c_void_p(primals_296.data_ptr()), c_void_p(primals_297.data_ptr()), c_void_p(primals_127.data_ptr()), c_void_p(primals_128.data_ptr()), c_void_p(buf142.data_ptr()), c_void_p(primals_299.data_ptr()), c_void_p(primals_300.data_ptr()), c_void_p(primals_131.data_ptr()), c_void_p(primals_132.data_ptr()))
    del primals_128
    del primals_132
    # Source Nodes: [l__self___att5_psi_0], Original ATen: [aten.convolution]
    buf145 = extern_kernels.convolution(buf144, primals_133, primals_134, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf145, (1, 1, 32, 32), (1024, 1, 32, 1))
    del primals_134
    buf146 = empty_strided((1, 1, 32, 32), (1024, 1, 32, 1), device='cpu', dtype=torch.float32)
    buf147 = reinterpret_tensor(buf149, (1, 64, 32, 32), (131072, 1, 4096, 128), 0)  # alias
    cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_33(c_void_p(buf145.data_ptr()), c_void_p(primals_302.data_ptr()), c_void_p(primals_303.data_ptr()), c_void_p(primals_135.data_ptr()), c_void_p(primals_136.data_ptr()), c_void_p(buf136.data_ptr()), c_void_p(buf146.data_ptr()), c_void_p(buf147.data_ptr()))
    del primals_136
    # Source Nodes: [l__self___up_conv5_conv_0], Original ATen: [aten.convolution]
    buf150 = extern_kernels.convolution(buf149, buf31, primals_138, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf150, (1, 64, 32, 32), (65536, 1, 2048, 64))
    del primals_138
    buf151 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.float32)
    buf152 = empty_strided((64, ), (1, ), device='cpu', dtype=torch.int64)
    buf153 = reinterpret_tensor(buf133, (1, 64, 64, 64), (262144, 1, 4096, 64)); del buf133  # reuse
    cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_34(c_void_p(buf150.data_ptr()), c_void_p(primals_305.data_ptr()), c_void_p(primals_306.data_ptr()), c_void_p(primals_139.data_ptr()), c_void_p(primals_140.data_ptr()), c_void_p(buf151.data_ptr()), c_void_p(buf152.data_ptr()), c_void_p(buf153.data_ptr()))
    del primals_140
    # Source Nodes: [l__self___up4_up_1], Original ATen: [aten.convolution]
    buf154 = extern_kernels.convolution(buf153, buf32, primals_142, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf154, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_142
    buf155 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.float32)
    buf164 = empty_strided((1, 64, 64, 64), (262144, 1, 4096, 64), device='cpu', dtype=torch.float32)
    buf163 = reinterpret_tensor(buf164, (1, 32, 64, 64), (262144, 1, 4096, 64), 32)  # alias
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_35(c_void_p(buf154.data_ptr()), c_void_p(primals_308.data_ptr()), c_void_p(primals_309.data_ptr()), c_void_p(primals_143.data_ptr()), c_void_p(primals_144.data_ptr()), c_void_p(buf155.data_ptr()), c_void_p(buf163.data_ptr()))
    del primals_144
    # Source Nodes: [l__self___att4_w_g_0], Original ATen: [aten.convolution]
    buf156 = extern_kernels.convolution(buf155, primals_145, primals_146, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf156, (1, 16, 64, 64), (65536, 1, 1024, 16))
    del primals_146
    # Source Nodes: [l__self___att4_w_x_0], Original ATen: [aten.convolution]
    buf157 = extern_kernels.convolution(buf120, primals_149, primals_150, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf157, (1, 16, 64, 64), (65536, 1, 1024, 16))
    del primals_150
    buf158 = empty_strided((1, 16, 64, 64), (65536, 1, 1024, 16), device='cpu', dtype=torch.float32)
    buf159 = buf158; del buf158  # reuse
    cpp_fused__native_batch_norm_legit_no_training_add_relu_36(c_void_p(buf159.data_ptr()), c_void_p(buf156.data_ptr()), c_void_p(primals_311.data_ptr()), c_void_p(primals_312.data_ptr()), c_void_p(primals_147.data_ptr()), c_void_p(primals_148.data_ptr()), c_void_p(buf157.data_ptr()), c_void_p(primals_314.data_ptr()), c_void_p(primals_315.data_ptr()), c_void_p(primals_151.data_ptr()), c_void_p(primals_152.data_ptr()))
    del primals_148
    del primals_152
    # Source Nodes: [l__self___att4_psi_0], Original ATen: [aten.convolution]
    buf160 = extern_kernels.convolution(buf159, primals_153, primals_154, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf160, (1, 1, 64, 64), (4096, 1, 64, 1))
    del primals_154
    buf161 = empty_strided((1, 1, 64, 64), (4096, 1, 64, 1), device='cpu', dtype=torch.float32)
    buf162 = reinterpret_tensor(buf164, (1, 32, 64, 64), (262144, 1, 4096, 64), 0)  # alias
    cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_37(c_void_p(buf160.data_ptr()), c_void_p(primals_317.data_ptr()), c_void_p(primals_318.data_ptr()), c_void_p(primals_155.data_ptr()), c_void_p(primals_156.data_ptr()), c_void_p(buf120.data_ptr()), c_void_p(buf161.data_ptr()), c_void_p(buf162.data_ptr()))
    del primals_156
    # Source Nodes: [l__self___up_conv4_conv_0], Original ATen: [aten.convolution]
    buf165 = extern_kernels.convolution(buf164, buf33, primals_158, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf165, (1, 32, 64, 64), (131072, 1, 2048, 32))
    del primals_158
    buf166 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.float32)
    buf167 = empty_strided((128, ), (1, ), device='cpu', dtype=torch.int64)
    buf168 = reinterpret_tensor(buf117, (1, 32, 128, 128), (524288, 1, 4096, 32)); del buf117  # reuse
    cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_38(c_void_p(buf165.data_ptr()), c_void_p(primals_320.data_ptr()), c_void_p(primals_321.data_ptr()), c_void_p(primals_159.data_ptr()), c_void_p(primals_160.data_ptr()), c_void_p(buf166.data_ptr()), c_void_p(buf167.data_ptr()), c_void_p(buf168.data_ptr()))
    del primals_160
    # Source Nodes: [l__self___up3_up_1], Original ATen: [aten.convolution]
    buf169 = extern_kernels.convolution(buf168, buf34, primals_162, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf169, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_162
    buf170 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.float32)
    buf179 = empty_strided((1, 32, 128, 128), (524288, 1, 4096, 32), device='cpu', dtype=torch.float32)
    buf178 = reinterpret_tensor(buf179, (1, 16, 128, 128), (524288, 1, 4096, 32), 16)  # alias
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_39(c_void_p(buf169.data_ptr()), c_void_p(primals_323.data_ptr()), c_void_p(primals_324.data_ptr()), c_void_p(primals_163.data_ptr()), c_void_p(primals_164.data_ptr()), c_void_p(buf170.data_ptr()), c_void_p(buf178.data_ptr()))
    del primals_164
    # Source Nodes: [l__self___att3_w_g_0], Original ATen: [aten.convolution]
    buf171 = extern_kernels.convolution(buf170, primals_165, primals_166, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf171, (1, 8, 128, 128), (131072, 1, 1024, 8))
    del primals_166
    # Source Nodes: [l__self___att3_w_x_0], Original ATen: [aten.convolution]
    buf172 = extern_kernels.convolution(buf104, primals_169, primals_170, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf172, (1, 8, 128, 128), (131072, 1, 1024, 8))
    del primals_170
    buf173 = empty_strided((1, 8, 128, 128), (131072, 1, 1024, 8), device='cpu', dtype=torch.float32)
    buf174 = buf173; del buf173  # reuse
    cpp_fused__native_batch_norm_legit_no_training_add_relu_40(c_void_p(buf174.data_ptr()), c_void_p(buf171.data_ptr()), c_void_p(primals_326.data_ptr()), c_void_p(primals_327.data_ptr()), c_void_p(primals_167.data_ptr()), c_void_p(primals_168.data_ptr()), c_void_p(buf172.data_ptr()), c_void_p(primals_329.data_ptr()), c_void_p(primals_330.data_ptr()), c_void_p(primals_171.data_ptr()), c_void_p(primals_172.data_ptr()))
    del primals_168
    del primals_172
    # Source Nodes: [l__self___att3_psi_0], Original ATen: [aten.convolution]
    buf175 = extern_kernels.convolution(buf174, primals_173, primals_174, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf175, (1, 1, 128, 128), (16384, 1, 128, 1))
    del primals_174
    buf176 = empty_strided((1, 1, 128, 128), (16384, 1, 128, 1), device='cpu', dtype=torch.float32)
    buf177 = reinterpret_tensor(buf179, (1, 16, 128, 128), (524288, 1, 4096, 32), 0)  # alias
    cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_41(c_void_p(buf175.data_ptr()), c_void_p(primals_332.data_ptr()), c_void_p(primals_333.data_ptr()), c_void_p(primals_175.data_ptr()), c_void_p(primals_176.data_ptr()), c_void_p(buf104.data_ptr()), c_void_p(buf176.data_ptr()), c_void_p(buf177.data_ptr()))
    del primals_176
    # Source Nodes: [l__self___up_conv3_conv_0], Original ATen: [aten.convolution]
    buf180 = extern_kernels.convolution(buf179, buf35, primals_178, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf180, (1, 16, 128, 128), (262144, 1, 2048, 16))
    del primals_178
    buf181 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.float32)
    buf182 = empty_strided((256, ), (1, ), device='cpu', dtype=torch.int64)
    buf183 = reinterpret_tensor(buf101, (1, 16, 256, 256), (1048576, 1, 4096, 16)); del buf101  # reuse
    cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_42(c_void_p(buf180.data_ptr()), c_void_p(primals_335.data_ptr()), c_void_p(primals_336.data_ptr()), c_void_p(primals_179.data_ptr()), c_void_p(primals_180.data_ptr()), c_void_p(buf181.data_ptr()), c_void_p(buf182.data_ptr()), c_void_p(buf183.data_ptr()))
    del primals_180
    # Source Nodes: [l__self___up2_up_1], Original ATen: [aten.convolution]
    buf184 = extern_kernels.convolution(buf183, buf36, primals_182, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf184, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_182
    buf185 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.float32)
    buf194 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=torch.float32)
    buf193 = reinterpret_tensor(buf194, (1, 8, 256, 256), (1048576, 1, 4096, 16), 8)  # alias
    cpp_fused__native_batch_norm_legit_no_training_cat_relu_43(c_void_p(buf184.data_ptr()), c_void_p(primals_338.data_ptr()), c_void_p(primals_339.data_ptr()), c_void_p(primals_183.data_ptr()), c_void_p(primals_184.data_ptr()), c_void_p(buf185.data_ptr()), c_void_p(buf193.data_ptr()))
    del primals_184
    # Source Nodes: [l__self___att2_w_g_0], Original ATen: [aten.convolution]
    buf186 = extern_kernels.convolution(buf185, primals_185, primals_186, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf186, (1, 4, 256, 256), (262144, 1, 1024, 4))
    del primals_186
    # Source Nodes: [l__self___att2_w_x_0], Original ATen: [aten.convolution]
    buf187 = extern_kernels.convolution(buf88, primals_189, primals_190, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf187, (1, 4, 256, 256), (262144, 1, 1024, 4))
    del primals_190
    buf188 = empty_strided((1, 4, 256, 256), (262144, 1, 1024, 4), device='cpu', dtype=torch.float32)
    buf189 = buf188; del buf188  # reuse
    cpp_fused__native_batch_norm_legit_no_training_add_relu_44(c_void_p(buf189.data_ptr()), c_void_p(buf186.data_ptr()), c_void_p(primals_341.data_ptr()), c_void_p(primals_342.data_ptr()), c_void_p(primals_187.data_ptr()), c_void_p(primals_188.data_ptr()), c_void_p(buf187.data_ptr()), c_void_p(primals_344.data_ptr()), c_void_p(primals_345.data_ptr()), c_void_p(primals_191.data_ptr()), c_void_p(primals_192.data_ptr()))
    del primals_188
    del primals_192
    # Source Nodes: [l__self___att2_psi_0], Original ATen: [aten.convolution]
    buf190 = extern_kernels.convolution(buf189, primals_193, primals_194, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf190, (1, 1, 256, 256), (65536, 1, 256, 1))
    del primals_194
    buf191 = empty_strided((1, 1, 256, 256), (65536, 1, 256, 1), device='cpu', dtype=torch.float32)
    buf192 = reinterpret_tensor(buf194, (1, 8, 256, 256), (1048576, 1, 4096, 16), 0)  # alias
    cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_45(c_void_p(buf190.data_ptr()), c_void_p(primals_347.data_ptr()), c_void_p(primals_348.data_ptr()), c_void_p(primals_195.data_ptr()), c_void_p(primals_196.data_ptr()), c_void_p(buf88.data_ptr()), c_void_p(buf191.data_ptr()), c_void_p(buf192.data_ptr()))
    del primals_196
    # Source Nodes: [l__self___up_conv2_conv_0], Original ATen: [aten.convolution]
    buf195 = extern_kernels.convolution(buf194, buf37, primals_198, stride=(1, 1), padding=(10, 10), dilation=(2, 2), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf195, (1, 8, 256, 256), (524288, 1, 2048, 8))
    del primals_198
    buf196 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=torch.float32)
    cpp_fused__native_batch_norm_legit_no_training_relu_46(c_void_p(buf195.data_ptr()), c_void_p(primals_350.data_ptr()), c_void_p(primals_351.data_ptr()), c_void_p(primals_199.data_ptr()), c_void_p(primals_200.data_ptr()), c_void_p(buf196.data_ptr()))
    del primals_200
    # Source Nodes: [l__self___conv_1x1], Original ATen: [aten.convolution]
    buf197 = extern_kernels.convolution(buf196, primals_201, primals_202, stride=(1, 1), padding=(0, 0), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1)
    assert_size_stride(buf197, (1, 1, 256, 256), (65536, 1, 256, 1))
    del primals_202
    buf198 = reinterpret_tensor(buf197, (1, 1, 256, 256), (65536, 65536, 256, 1)); del buf197  # reuse
    buf199 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=torch.bool)
    buf200 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=torch.bool)
    buf201 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=torch.bool)
    buf218 = empty_strided((1, 128, 16, 16), (32768, 1, 2048, 128), device='cpu', dtype=torch.bool)
    cpp_fused_sigmoid_threshold_backward_47(c_void_p(buf198.data_ptr()), c_void_p(buf181.data_ptr()), c_void_p(buf166.data_ptr()), c_void_p(buf151.data_ptr()), c_void_p(buf72.data_ptr()), c_void_p(buf199.data_ptr()), c_void_p(buf200.data_ptr()), c_void_p(buf201.data_ptr()), c_void_p(buf218.data_ptr()))
    return (buf198, buf0, primals_3, buf1, primals_7, buf2, primals_11, buf3, primals_15, buf4, primals_19, buf5, primals_23, buf6, primals_27, buf7, primals_31, buf8, primals_35, buf9, primals_39, buf10, primals_43, buf11, primals_47, buf12, primals_51, buf13, primals_55, buf14, primals_59, buf15, primals_63, buf16, primals_67, buf17, primals_71, buf18, primals_75, buf19, primals_79, buf20, primals_83, buf21, primals_87, buf22, primals_91, buf23, primals_95, buf24, primals_99, buf25, primals_103, buf26, primals_107, buf27, primals_111, buf28, primals_115, buf29, primals_119, buf30, primals_123, primals_125, primals_127, primals_129, primals_131, primals_133, primals_135, buf31, primals_139, buf32, primals_143, primals_145, primals_147, primals_149, primals_151, primals_153, primals_155, buf33, primals_159, buf34, primals_163, primals_165, primals_167, primals_169, primals_171, primals_173, primals_175, buf35, primals_179, buf36, primals_183, primals_185, primals_187, primals_189, primals_191, primals_193, primals_195, buf37, primals_199, primals_201, primals_203, primals_204, primals_206, primals_207, primals_209, primals_210, primals_212, primals_213, primals_215, primals_216, primals_218, primals_219, primals_221, primals_222, primals_224, primals_225, primals_227, primals_228, primals_230, primals_231, primals_233, primals_234, primals_236, primals_237, primals_239, primals_240, primals_242, primals_243, primals_245, primals_246, primals_248, primals_249, primals_251, primals_252, primals_254, primals_255, primals_257, primals_258, primals_260, primals_261, primals_263, primals_264, primals_266, primals_267, primals_269, primals_270, primals_272, primals_273, primals_275, primals_276, primals_278, primals_279, primals_281, primals_282, primals_284, primals_285, primals_287, primals_288, primals_290, primals_291, primals_293, primals_294, primals_296, primals_297, primals_299, primals_300, primals_302, primals_303, primals_305, primals_306, primals_308, primals_309, primals_311, primals_312, primals_314, primals_315, primals_317, primals_318, primals_320, primals_321, primals_323, primals_324, primals_326, primals_327, primals_329, primals_330, primals_332, primals_333, primals_335, primals_336, primals_338, primals_339, primals_341, primals_342, primals_344, primals_345, primals_347, primals_348, primals_350, primals_351, buf38, buf39, buf41, buf42, buf44, buf45, buf47, buf48, buf50, buf51, buf54, buf55, buf56, buf57, buf58, buf59, buf60, buf61, buf62, buf63, buf64, buf65, buf66, buf67, buf68, buf69, buf70, buf71, buf73, buf74, buf76, buf77, buf79, buf80, buf82, buf83, buf86, buf87, buf88, buf89, buf90, buf92, buf93, buf95, buf96, buf98, buf99, buf102, buf103, buf104, buf105, buf106, buf108, buf109, buf111, buf112, buf114, buf115, buf118, buf119, buf120, buf121, buf122, buf124, buf125, buf127, buf128, buf130, buf131, buf134, buf135, buf136, buf137, reinterpret_tensor(buf137, (32, 1), (1, 1), 0), buf138, buf139, buf140, buf141, buf142, buf144, buf145, buf146, buf149, buf150, buf152, reinterpret_tensor(buf152, (64, 1), (1, 1), 0), buf153, buf154, buf155, buf156, buf157, buf159, buf160, buf161, buf164, buf165, buf167, reinterpret_tensor(buf167, (128, 1), (1, 1), 0), buf168, buf169, buf170, buf171, buf172, buf174, buf175, buf176, buf179, buf180, buf182, reinterpret_tensor(buf182, (256, 1), (1, 1), 0), buf183, buf184, buf185, buf186, buf187, buf189, buf190, buf191, buf194, buf195, buf196, buf198, buf199, buf200, buf201, buf202, buf203, buf204, buf205, buf206, buf207, buf208, buf209, buf210, buf211, buf212, buf213, buf214, buf215, buf216, buf217, buf218, buf219, buf220, buf221, buf222, buf223, )


def benchmark_compiled_module(times=10, repeat=10):
    from torch._dynamo.testing import rand_strided
    from torch._inductor.utils import print_performance
    primals_1 = rand_strided((16, 3, 3, 3), (27, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_2 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_3 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_4 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_5 = rand_strided((16, 3, 5, 5), (75, 25, 5, 1), device='cpu', dtype=torch.float32)
    primals_6 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_7 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_8 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_9 = rand_strided((16, 3, 7, 7), (147, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_10 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_11 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_12 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_13 = rand_strided((16, 3, 11, 11), (363, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_14 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_15 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_16 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_17 = rand_strided((16, 3, 15, 15), (675, 225, 15, 1), device='cpu', dtype=torch.float32)
    primals_18 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_19 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_20 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_21 = rand_strided((8, 80, 11, 11), (9680, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_22 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_23 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_24 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_25 = rand_strided((16, 8, 11, 11), (968, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_26 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_27 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_28 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_29 = rand_strided((32, 16, 11, 11), (1936, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_30 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_31 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_32 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_33 = rand_strided((64, 32, 11, 11), (3872, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_34 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_35 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_36 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_37 = rand_strided((128, 64, 11, 11), (7744, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_38 = rand_strided((128, ), (1, ), device='cpu', dtype=torch.float32)
    primals_39 = rand_strided((128, ), (1, ), device='cpu', dtype=torch.float32)
    primals_40 = rand_strided((128, ), (1, ), device='cpu', dtype=torch.float32)
    primals_41 = rand_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_42 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_43 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_44 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_45 = rand_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_46 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_47 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_48 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_49 = rand_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_50 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_51 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_52 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_53 = rand_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_54 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_55 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_56 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_57 = rand_strided((8, 32, 3, 3), (288, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_58 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_59 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_60 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_61 = rand_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_62 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_63 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_64 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_65 = rand_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_66 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_67 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_68 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_69 = rand_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_70 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_71 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_72 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_73 = rand_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_74 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_75 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_76 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_77 = rand_strided((16, 64, 3, 3), (576, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_78 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_79 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_80 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_81 = rand_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_82 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_83 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_84 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_85 = rand_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_86 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_87 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_88 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_89 = rand_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_90 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_91 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_92 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_93 = rand_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_94 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_95 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_96 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_97 = rand_strided((32, 128, 3, 3), (1152, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_98 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_99 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_100 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_101 = rand_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_102 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_103 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_104 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_105 = rand_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_106 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_107 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_108 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_109 = rand_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_110 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_111 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_112 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_113 = rand_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=torch.float32)
    primals_114 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_115 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_116 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_117 = rand_strided((64, 256, 3, 3), (2304, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_118 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_119 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_120 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_121 = rand_strided((64, 128, 3, 3), (1152, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_122 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_123 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_124 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_125 = rand_strided((32, 64, 1, 1), (64, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_126 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_127 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_128 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_129 = rand_strided((32, 64, 1, 1), (64, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_130 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_131 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_132 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_133 = rand_strided((1, 32, 1, 1), (32, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_134 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_135 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_136 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_137 = rand_strided((64, 128, 11, 11), (15488, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_138 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_139 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_140 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_141 = rand_strided((32, 64, 3, 3), (576, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_142 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_143 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_144 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_145 = rand_strided((16, 32, 1, 1), (32, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_146 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_147 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_148 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_149 = rand_strided((16, 32, 1, 1), (32, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_150 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_151 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_152 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_153 = rand_strided((1, 16, 1, 1), (16, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_154 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_155 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_156 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_157 = rand_strided((32, 64, 11, 11), (7744, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_158 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_159 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_160 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_161 = rand_strided((16, 32, 3, 3), (288, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_162 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_163 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_164 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_165 = rand_strided((8, 16, 1, 1), (16, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_166 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_167 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_168 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_169 = rand_strided((8, 16, 1, 1), (16, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_170 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_171 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_172 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_173 = rand_strided((1, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_174 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_175 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_176 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_177 = rand_strided((16, 32, 11, 11), (3872, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_178 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_179 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_180 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_181 = rand_strided((8, 16, 3, 3), (144, 9, 3, 1), device='cpu', dtype=torch.float32)
    primals_182 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_183 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_184 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_185 = rand_strided((4, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_186 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_187 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_188 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_189 = rand_strided((4, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_190 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_191 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_192 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_193 = rand_strided((1, 4, 1, 1), (4, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_194 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_195 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_196 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_197 = rand_strided((8, 16, 11, 11), (1936, 121, 11, 1), device='cpu', dtype=torch.float32)
    primals_198 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_199 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_200 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_201 = rand_strided((1, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=torch.float32)
    primals_202 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_203 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_204 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_205 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_206 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_207 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_208 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_209 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_210 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_211 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_212 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_213 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_214 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_215 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_216 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_217 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_218 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_219 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_220 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_221 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_222 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_223 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_224 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_225 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_226 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_227 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_228 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_229 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_230 = rand_strided((128, ), (1, ), device='cpu', dtype=torch.float32)
    primals_231 = rand_strided((128, ), (1, ), device='cpu', dtype=torch.float32)
    primals_232 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_233 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_234 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_235 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_236 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_237 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_238 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_239 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_240 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_241 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_242 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_243 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_244 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_245 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_246 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_247 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_248 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_249 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_250 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_251 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_252 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_253 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_254 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_255 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_256 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_257 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_258 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_259 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_260 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_261 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_262 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_263 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_264 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_265 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_266 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_267 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_268 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_269 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_270 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_271 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_272 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_273 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_274 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_275 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_276 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_277 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_278 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_279 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_280 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_281 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_282 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_283 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_284 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_285 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_286 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_287 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_288 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_289 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_290 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_291 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_292 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_293 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_294 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_295 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_296 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_297 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_298 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_299 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_300 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_301 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_302 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_303 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_304 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_305 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_306 = rand_strided((64, ), (1, ), device='cpu', dtype=torch.float32)
    primals_307 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_308 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_309 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_310 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_311 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_312 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_313 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_314 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_315 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_316 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_317 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_318 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_319 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_320 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_321 = rand_strided((32, ), (1, ), device='cpu', dtype=torch.float32)
    primals_322 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_323 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_324 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_325 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_326 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_327 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_328 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_329 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_330 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_331 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_332 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_333 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_334 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_335 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_336 = rand_strided((16, ), (1, ), device='cpu', dtype=torch.float32)
    primals_337 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_338 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_339 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_340 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_341 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_342 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_343 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_344 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_345 = rand_strided((4, ), (1, ), device='cpu', dtype=torch.float32)
    primals_346 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_347 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_348 = rand_strided((1, ), (1, ), device='cpu', dtype=torch.float32)
    primals_349 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_350 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_351 = rand_strided((8, ), (1, ), device='cpu', dtype=torch.float32)
    primals_352 = rand_strided((), (), device='cpu', dtype=torch.int64)
    primals_353 = rand_strided((1, 3, 256, 256), (196608, 65536, 256, 1), device='cpu', dtype=torch.float32)
    return print_performance(lambda: call([primals_1, primals_2, primals_3, primals_4, primals_5, primals_6, primals_7, primals_8, primals_9, primals_10, primals_11, primals_12, primals_13, primals_14, primals_15, primals_16, primals_17, primals_18, primals_19, primals_20, primals_21, primals_22, primals_23, primals_24, primals_25, primals_26, primals_27, primals_28, primals_29, primals_30, primals_31, primals_32, primals_33, primals_34, primals_35, primals_36, primals_37, primals_38, primals_39, primals_40, primals_41, primals_42, primals_43, primals_44, primals_45, primals_46, primals_47, primals_48, primals_49, primals_50, primals_51, primals_52, primals_53, primals_54, primals_55, primals_56, primals_57, primals_58, primals_59, primals_60, primals_61, primals_62, primals_63, primals_64, primals_65, primals_66, primals_67, primals_68, primals_69, primals_70, primals_71, primals_72, primals_73, primals_74, primals_75, primals_76, primals_77, primals_78, primals_79, primals_80, primals_81, primals_82, primals_83, primals_84, primals_85, primals_86, primals_87, primals_88, primals_89, primals_90, primals_91, primals_92, primals_93, primals_94, primals_95, primals_96, primals_97, primals_98, primals_99, primals_100, primals_101, primals_102, primals_103, primals_104, primals_105, primals_106, primals_107, primals_108, primals_109, primals_110, primals_111, primals_112, primals_113, primals_114, primals_115, primals_116, primals_117, primals_118, primals_119, primals_120, primals_121, primals_122, primals_123, primals_124, primals_125, primals_126, primals_127, primals_128, primals_129, primals_130, primals_131, primals_132, primals_133, primals_134, primals_135, primals_136, primals_137, primals_138, primals_139, primals_140, primals_141, primals_142, primals_143, primals_144, primals_145, primals_146, primals_147, primals_148, primals_149, primals_150, primals_151, primals_152, primals_153, primals_154, primals_155, primals_156, primals_157, primals_158, primals_159, primals_160, primals_161, primals_162, primals_163, primals_164, primals_165, primals_166, primals_167, primals_168, primals_169, primals_170, primals_171, primals_172, primals_173, primals_174, primals_175, primals_176, primals_177, primals_178, primals_179, primals_180, primals_181, primals_182, primals_183, primals_184, primals_185, primals_186, primals_187, primals_188, primals_189, primals_190, primals_191, primals_192, primals_193, primals_194, primals_195, primals_196, primals_197, primals_198, primals_199, primals_200, primals_201, primals_202, primals_203, primals_204, primals_205, primals_206, primals_207, primals_208, primals_209, primals_210, primals_211, primals_212, primals_213, primals_214, primals_215, primals_216, primals_217, primals_218, primals_219, primals_220, primals_221, primals_222, primals_223, primals_224, primals_225, primals_226, primals_227, primals_228, primals_229, primals_230, primals_231, primals_232, primals_233, primals_234, primals_235, primals_236, primals_237, primals_238, primals_239, primals_240, primals_241, primals_242, primals_243, primals_244, primals_245, primals_246, primals_247, primals_248, primals_249, primals_250, primals_251, primals_252, primals_253, primals_254, primals_255, primals_256, primals_257, primals_258, primals_259, primals_260, primals_261, primals_262, primals_263, primals_264, primals_265, primals_266, primals_267, primals_268, primals_269, primals_270, primals_271, primals_272, primals_273, primals_274, primals_275, primals_276, primals_277, primals_278, primals_279, primals_280, primals_281, primals_282, primals_283, primals_284, primals_285, primals_286, primals_287, primals_288, primals_289, primals_290, primals_291, primals_292, primals_293, primals_294, primals_295, primals_296, primals_297, primals_298, primals_299, primals_300, primals_301, primals_302, primals_303, primals_304, primals_305, primals_306, primals_307, primals_308, primals_309, primals_310, primals_311, primals_312, primals_313, primals_314, primals_315, primals_316, primals_317, primals_318, primals_319, primals_320, primals_321, primals_322, primals_323, primals_324, primals_325, primals_326, primals_327, primals_328, primals_329, primals_330, primals_331, primals_332, primals_333, primals_334, primals_335, primals_336, primals_337, primals_338, primals_339, primals_340, primals_341, primals_342, primals_343, primals_344, primals_345, primals_346, primals_347, primals_348, primals_349, primals_350, primals_351, primals_352, primals_353]), times=times, repeat=repeat)


if __name__ == "__main__":
    from torch._inductor.wrapper_benchmark import compiled_module_main
    compiled_module_main('None', benchmark_compiled_module)
