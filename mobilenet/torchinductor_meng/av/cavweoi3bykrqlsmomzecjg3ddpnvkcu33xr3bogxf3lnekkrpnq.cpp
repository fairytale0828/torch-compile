
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
