#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstdlib>
#include <limits>
#include <omp.h>
#include <iostream>
#include <immintrin.h>  
#include <vector>


#define SIMD_WIDTH 8  // AVX2 中每个向量寄存器存储 8 个浮点数


// extern "C" void kernel(const float* in_ptr0,
//                         const float* in_ptr1,
//                         const float* in_ptr2,
//                         const float* in_ptr3,
//                         const float* in_ptr4,
//                         float* out_ptr0,
//                         float* out_ptr1)
// {
//     #pragma omp parallel for num_threads(8)
//     for (long i0 = 0; i0 < 1024L; ++i0) {
//         for (long i1 = 0; i1 < 64L; i1 += SIMD_WIDTH) {

//             // 使用 AVX2 加载数据
//             __m256 tmp0 = _mm256_loadu_ps(in_ptr0 + i1 + (64L * i0));
//             __m256 tmp1 = _mm256_loadu_ps(in_ptr1 + i1);
//             __m256 tmp2 = _mm256_loadu_ps(in_ptr2 + i1);
//             __m256 tmp3 = _mm256_loadu_ps(in_ptr3 + i1);
//             __m256 tmp4 = _mm256_loadu_ps(in_ptr4 + i1);

          
//             __m256 tmp5 = _mm256_sub_ps(tmp0, tmp1);    
//             __m256 tmp6 = _mm256_add_ps(tmp2, _mm256_set1_ps(1e-05f));  
//             __m256 tmp7 = _mm256_sqrt_ps(tmp6);       
//             __m256 tmp8 = _mm256_rcp_ps(tmp7);          
//             __m256 tmp9 = _mm256_set1_ps(1.0f);        
//             __m256 tmp10 = _mm256_mul_ps(tmp8, tmp9);   
//             __m256 tmp11 = _mm256_mul_ps(tmp5, tmp10);  
//             __m256 tmp12 = _mm256_mul_ps(tmp11, tmp3);  
//             __m256 tmp13 = _mm256_add_ps(tmp12, tmp4);  
//             __m256 tmp14 = _mm256_max_ps(tmp13, _mm256_setzero_ps());  

            
//             _mm256_storeu_ps(out_ptr0 + i1 + (64L * i0), tmp14);
//             _mm256_storeu_ps(out_ptr1 + i1 + (128L * i0), tmp14);
//         }
//     }
// }

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
            for(long i1=static_cast<long>(0L); i1<static_cast<long>(64L); i1+=static_cast<long>(8L))
            {
                auto tmp0 = _mm256_loadu_ps(in_ptr0 + static_cast<long>(i1 + (64L*i0)));
                auto tmp1 = _mm256_loadu_ps(in_ptr1 + static_cast<long>(i1));
                auto tmp3 = _mm256_loadu_ps(in_ptr2 + static_cast<long>(i1));
                auto tmp11 = _mm256_loadu_ps(in_ptr3 + static_cast<long>(i1));
                auto tmp13 = _mm256_loadu_ps(in_ptr4 + static_cast<long>(i1));
                auto tmp2 = _mm256_sub_ps(tmp0, tmp1);
                auto tmp4 = _mm256_set1_ps(static_cast<float>(1e-05));
                auto tmp5 = _mm256_add_ps(tmp3, tmp4);
                auto tmp6 = _mm256_sqrt_ps(tmp5);
                auto tmp7 = _mm256_rcp_ps(tmp6);
                auto tmp8 = _mm256_set1_ps(static_cast<float>(1.0));
                auto tmp9 = _mm256_mul_ps(tmp8, tmp7);
                auto tmp10 = _mm256_mul_ps(tmp2, tmp9);
                auto tmp12 = _mm256_mul_ps(tmp10, tmp11);
                auto tmp14 = _mm256_add_ps(tmp12, tmp13);
                auto tmp15 = _mm256_max_ps(tmp14, _mm256_setzero_ps());
                _mm256_storeu_ps(out_ptr0 + static_cast<long>(i1 + (64L*i0)), tmp15);
                _mm256_storeu_ps(out_ptr1 + static_cast<long>(i1 + (128L*i0)), tmp15);
                }
            }
        }
    }
}







int main() {
    const int N = 1024; 
    const int M = 64;      
    
    std::vector<float> in_data0(N * M, 1.0f);  
    std::vector<float> in_data1(M, 0.0f);      
    std::vector<float> in_data2(M, 1.0f);      
    std::vector<float> in_data3(M, 0.2f);     
    std::vector<float> in_data4(M, 0.3f);      

    std::vector<float> out_data0(N * M, 0.0f);  
    std::vector<float> out_data1(N * M, 0.0f);  

   
    kernel(in_data0.data(), in_data1.data(), in_data2.data(),
           in_data3.data(), in_data4.data(), out_data0.data(), out_data1.data());

    std::cout << "Output data (first 20 elements from out_data0):" << std::endl;
    for (int i = 0; i < 200; ++i) {
        std::cout << out_data0[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
