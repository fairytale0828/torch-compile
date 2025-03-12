#include "../../at_vec_rv64.h"


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
