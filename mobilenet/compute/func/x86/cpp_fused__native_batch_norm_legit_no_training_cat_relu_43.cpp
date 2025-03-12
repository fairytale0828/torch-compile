#include "../../at_vec_x86.h"


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
