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
