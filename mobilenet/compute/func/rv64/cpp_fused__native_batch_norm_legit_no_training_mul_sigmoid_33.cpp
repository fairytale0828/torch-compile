#include "../../at_vec_rv64.h"


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
