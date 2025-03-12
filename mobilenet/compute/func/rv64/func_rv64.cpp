#include "../../at_vec_rv64.h"





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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr5[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (9680L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr7[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr8[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr9[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr14[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (288L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr15[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr16[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr17[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr18[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (784L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr19[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (576L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr20[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr21[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr22[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr23[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (1568L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr24[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (1152L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr25[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr26[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr27[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr28[static_cast<long>(i2 + (49L*i1) + (49L*i1_inner) + (3136L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr29[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (2304L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr30[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (1152L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr31[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (15488L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr32[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (576L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr33[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (7744L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr34[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (288L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                        auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr35[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (3872L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr36[static_cast<long>(i2 + (9L*i1) + (9L*i1_inner) + (144L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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
                            auto tmp0 = ([&]() { alignas(32) float tmpbuf[16]; for (long i1_inner = 0; i1_inner < 16; i1_inner++) tmpbuf[i1_inner] = in_ptr37[static_cast<long>(i2 + (121L*i1) + (121L*i1_inner) + (1936L*i0))]; return at::vec::Vectorized<float>::loadu(tmpbuf); })();
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_1(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_2(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_3(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_4(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_5(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_6(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_7(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_8(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_9(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_10(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_11(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_12(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_13(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_14(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_15(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_16(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_17(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_18(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_19(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_20(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_21(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_22(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_23(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_24(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_25(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_26(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_27(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_28(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_29(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_30(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_31(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_add_relu_32(float* in_out_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_33(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_34(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_35(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_add_relu_36(float* in_out_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_37(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_38(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_39(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_add_relu_40(float* in_out_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_41(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_42(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_cat_relu_43(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_add_relu_44(float* in_out_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_45(const float* in_ptr0,
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




extern "C" void cpp_fused__native_batch_norm_legit_no_training_relu_46(const float* in_ptr0,
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




extern "C" void cpp_fused_sigmoid_threshold_backward_47(float* in_out_ptr0,
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
