#pragma once

#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstdlib>
#include <limits>
#include <omp.h>
#include <iostream>
#include "at_vec_x86.h"
#include <vector>

// #include <ATen/ATen.h>
// #include <ATen/AccumulateType.h>
// #include <ATen/Dispatch.h>
// #include <ATen/ExpandUtils.h>
// #include <ATen/Functions.h>
// #include <ATen/InitialTensorOptions.h>
// #include <ATen/MemoryOverlap.h>
// #include <ATen/NumericUtils.h>
// #include <ATen/core/PhiloxRNGEngine.h>
// #include <ATen/native/BinaryOps.h>
// #include <ATen/native/Math.h>

// #include <c10/util/BFloat16.h>
// #include <c10/util/BFloat16-math.h>
// #include <c10/util/Half.h>
// #if defined(CPU_CAPABILITY_AVX512) || defined(CPU_CAPABILITY_AVX2)
// #define INDUCTOR_USE_VECTOR_TYPES() 1
// #else
// #define INDUCTOR_USE_VECTOR_TYPES() 0
// #endif

// #include <ATen/cpu/vec/functional.h>
// #include <ATen/cpu/vec/vec.h>

// #include "/tmp/torchinductor_meng/ib/cibrnuq56cxamjj4krp4zpjvsirbmlolpbnmomodzyd46huzhdw7.h"

extern "C" void kernel(const float* in_ptr0,
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


int main() {
    const int N = 1024;  // 以简化的规模进行测试
    const int M = 64;      // 特征维度，设置为8以便测试
    
    std::vector<float> in_data0(N * M, 1.0f);  // 输入0，全为1.0
    std::vector<float> in_data1(M, 0.0f);      // 输入1，全为0.5
    std::vector<float> in_data2(M, 1.0f);      // 输入2，全为0.1
    std::vector<float> in_data3(M, 0.2f);      // 输入3，全为0.2
    std::vector<float> in_data4(M, 0.3f);      // 输入4，全为0.3

    std::vector<float> out_data0(N * M, 0.0f);  // 输出0，初始化为0
    std::vector<float> out_data1(N * M, 0.0f);  // 输出1，初始化为0

    // 调用 kernel 函数
    kernel(in_data0.data(), in_data1.data(), in_data2.data(),
           in_data3.data(), in_data4.data(), out_data0.data(), out_data1.data());

    // 输出部分结果
    std::cout << "Output data (first 20 elements from out_data0):" << std::endl;
    for (int i = 0; i < 20; ++i) {
        std::cout << out_data0[i] << " ";
    }
    std::cout << std::endl;

    // std::cout << "Output data (first 20 elements from out_data1):" << std::endl;
    // for (int i = 0; i < 100; ++i) {
    //     std::cout << out_data1[i] << " ";
    // }
    // std::cout << std::endl;



    // int max_threads = omp_get_max_threads();
    // std::cout << "Maximum number of threads supported: " << max_threads << std::endl;

    return 0;
}





