#include "../../at_vec_x86.h"


extern "C" void cpp_fused_reflection_pad2d_0(const float* in_ptr0,
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr5[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (9680L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr7[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr8[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr9[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr14[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (288L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr15[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr16[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr17[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr18[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr19[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (576L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr20[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr21[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr22[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr23[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr24[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (1152L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr25[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr26[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr27[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr28[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr29[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (2304L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr30[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (1152L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr31[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (15488L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr32[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (576L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr33[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr34[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (288L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr35[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr36[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (144L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(16) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr37[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
