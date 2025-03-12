
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
