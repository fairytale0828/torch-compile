
#include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"
extern "C" void kernel(const float* in_ptr0,
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
