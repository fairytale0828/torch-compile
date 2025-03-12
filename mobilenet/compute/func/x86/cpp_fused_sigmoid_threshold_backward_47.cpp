#include "../../at_vec_x86.h"


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
