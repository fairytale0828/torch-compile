#include "../../at_vec_rv64.h"


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
