// #pragma once

// #include <algorithm>
// #include <atomic>
// #include <cmath>
// #include <cstdlib>
// #include <limits>
// #include <omp.h>
// #include <iostream>
// #include <riscv_vector.h>
// #include <cstddef>
// #include <vector>


// extern "C" void kernel(const float* in_ptr0,
//     const float* in_ptr1,
//     const float* in_ptr2,
//     const float* in_ptr3,
//     const float* in_ptr4,
//     float* out_ptr0,
//     float* out_ptr1)
// {
//     #pragma omp parallel num_threads(8)
//     {
//         #pragma omp for 
//         for(long i0 = 0L; i0 < 1024L; i0 += 1L)
//         {
//             for(long i1 = 0L; i1 < 64L; i1 += 16L)
//             {
//                 // 设置向量长度为16
//                 int vl = __riscv_vsetvl_e32m8(16);

//                 // 加载向量
//                 __rvv_f32m8_t tmp0 = __rvv_vld_v_f32m8(in_ptr0 + (i1 + (64L * i0)), vl);
//                 __rvv_f32m8_t tmp1 = __rvv_vld_v_f32m8(in_ptr1 + i1, vl);
//                 __rvv_f32m8_t tmp3 = __rvv_vld_v_f32m8(in_ptr2 + i1, vl);
//                 __rvv_f32m8_t tmp11 = __rvv_vld_v_f32m8(in_ptr3 + i1, vl);
//                 __rvv_f32m8_t tmp13 = __rvv_vld_v_f32m8(in_ptr4 + i1, vl);

//                 // 执行向量化的算术运算
//                 __rvv_f32m8_t tmp2 = __rvv_vsub_vv_f32m8(tmp0, tmp1, vl);
//                 __rvv_f32m8_t tmp4 = __rvv_vfmv_f_s_f32m8(1e-05, vl);
//                 __rvv_f32m8_t tmp5 = __rvv_vadd_vv_f32m8(tmp3, tmp4, vl);
//                 __rvv_f32m8_t tmp6 = __rvv_vfsqrt_v_f32m8(tmp5, vl);
//                 __rvv_f32m8_t tmp7 = __rvv_vfrcp_v_f32m8(tmp6, vl);
//                 __rvv_f32m8_t tmp8 = __rvv_vfmv_f_s_f32m8(1.0, vl);
//                 __rvv_f32m8_t tmp9 = __rvv_vfmul_vv_f32m8(tmp7, tmp8, vl);
//                 __rvv_f32m8_t tmp10 = __rvv_vfmul_vv_f32m8(tmp2, tmp9, vl);
//                 __rvv_f32m8_t tmp12 = __rvv_vfmul_vv_f32m8(tmp10, tmp11, vl);
//                 __rvv_f32m8_t tmp14 = __rvv_vadd_vv_f32m8(tmp12, tmp13, vl);

//                 // 执行最小值裁剪操作
//                 __rvv_f32m8_t tmp15 = __rvv_vmax_vv_f32m8(tmp14, __rvv_vfmv_f_s_f32m8(0, vl), vl);

//                 // 存储结果
//                 __rvv_vst_v_f32m8(out_ptr0 + (i1 + (64L * i0)), tmp15, vl);
//                 __rvv_vst_v_f32m8(out_ptr1 + (i1 + (128L * i0)), tmp15, vl);
//             }
//         }
//     }
// }

#include <iostream>
#include <vector>
#include <cmath>
#include <riscv_vector.h>

#define SIMD_WIDTH 8  // RISC-V 向量宽度，假设是 8 个浮点数



extern "C" void kernel(const float* in_ptr0,
    const float* in_ptr1,
    const float* in_ptr2,
    const float* in_ptr3,
    const float* in_ptr4,
    float* out_ptr0,
    float* out_ptr1)
{
    #pragma omp parallel for num_threads(8)
    for (long i0 = 0; i0 < 1024L; ++i0) {
        for (long i1 = 0; i1 < 64L; i1 += SIMD_WIDTH) {

            // vsetvli(SIMD_WIDTH, RVV_E32, RVV_M1);  
            size_t vl = __riscv_vsetvl_e32m8(8);

            auto tmp0 = __riscv_vle32_v_f32m8(in_ptr0 + i1 + (64L * i0), vl);
            vfloat32m8_t tmp1 = __riscv_vle32_v_f32m8(in_ptr1 + i1, vl);
            vfloat32m8_t tmp2 = __riscv_vle32_v_f32m8(in_ptr2 + i1, vl);
            vfloat32m8_t tmp3 = __riscv_vle32_v_f32m8(in_ptr3 + i1, vl);
            vfloat32m8_t tmp4 = __riscv_vle32_v_f32m8(in_ptr4 + i1, vl);

           
            vfloat32m8_t tmp5 = __riscv_vfsub_vv_f32m8(tmp0, tmp1, vl);
            // vfloat32m8_t tmp6 = __riscv_vfadd_vv_f32m8(tmp2, 1e-05f, vl); 
            vfloat32m8_t tmp6 = __riscv_vfmv_v_f_f32m8(1e-05f, vl);
            vfloat32m8_t tmp7 = __riscv_vfadd_vv_f32m8(tmp2, tmp6, vl);
            // vfloat32m8_t tmp7 = __riscv_vfsqrt_v_f32m8(tmp6, vl); 
            // vfloat32m8_t tmp8 = vreciprocal_v_f32m8(tmp7, vl); 
            vfloat32m8_t tmp8 = __riscv_vfrsqrt7_v_f32m8(tmp7, vl);
            vfloat32m8_t tmp9 = __riscv_vfmv_v_f_f32m8(1.0f, vl); 
            vfloat32m8_t tmp10 = __riscv_vfmul_vv_f32m8(tmp8, tmp9, vl); 
            vfloat32m8_t tmp11 = __riscv_vfmul_vv_f32m8(tmp5, tmp10, vl); 
            vfloat32m8_t tmp12 = __riscv_vfmul_vv_f32m8(tmp11, tmp3, vl); 
            vfloat32m8_t tmp13 = __riscv_vfadd_vv_f32m8(tmp12, tmp4, vl);
            vfloat32m8_t tmp14 = __riscv_vfmax_vv_f32m8(tmp13, __riscv_vfmv_v_f_f32m8(0.0f, vl), vl); 

           
            __riscv_vse32_v_f32m8(out_ptr0 + i1 + (64L * i0), tmp14, vl);
            __riscv_vse32_v_f32m8(out_ptr1 + i1 + (128L * i0), tmp14, vl);
        }
    }
}

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
//             // 设置向量长度
//             vsetvli(SIMD_WIDTH, RVV_E32, RVV_M1);  // RVV_E32: 32-bit 元素（浮点数）

//             // 加载数据
//             vfloat32m8_t tmp0 = vle32_v_f32m8(in_ptr0 + i1 + (64L * i0));
//             vfloat32m8_t tmp1 = vle32_v_f32m8(in_ptr1 + i1);
//             vfloat32m8_t tmp2 = vle32_v_f32m8(in_ptr2 + i1);
//             vfloat32m8_t tmp3 = vle32_v_f32m8(in_ptr3 + i1);
//             vfloat32m8_t tmp4 = vle32_v_f32m8(in_ptr4 + i1);

//             // 执行向量化计算
//             vfloat32m8_t tmp5 = vsub_vv_f32m8(tmp0, tmp1, RVV_M1); // tmp5 = tmp0 - tmp1
//             vfloat32m8_t tmp6 = vadd_vf_f32m8(tmp2, 1e-05f, RVV_M1); // tmp6 = tmp2 + 1e-05
//             vfloat32m8_t tmp7 = vsqrt_v_f32m8(tmp6, RVV_M1); // tmp7 = sqrt(tmp6)
//             vfloat32m8_t tmp8 = vreciprocal_v_f32m8(tmp7, RVV_M1); // tmp8 = 1.0 / tmp7
//             vfloat32m8_t tmp9 = vfmv_v_f_f32m8(1.0f, RVV_M1); // tmp9 = 1.0
//             vfloat32m8_t tmp10 = vmul_vv_f32m8(tmp8, tmp9, RVV_M1); // tmp10 = tmp8 * tmp9
//             vfloat32m8_t tmp11 = vmul_vv_f32m8(tmp5, tmp10, RVV_M1); // tmp11 = tmp5 * tmp10
//             vfloat32m8_t tmp12 = vmul_vv_f32m8(tmp11, tmp3, RVV_M1); // tmp12 = tmp11 * tmp3
//             vfloat32m8_t tmp13 = vadd_vv_f32m8(tmp12, tmp4, RVV_M1); // tmp13 = tmp12 + tmp4
//             vfloat32m8_t tmp14 = vmax_vv_f32m8(tmp13, vfmv_v_f_f32m8(0.0f, RVV_M1), RVV_M1); // tmp14 = max(tmp13, 0)

//             // 存储结果
//             vse32_v_f32m8(out_ptr0 + i1 + (64L * i0), tmp14);
//             vse32_v_f32m8(out_ptr1 + i1 + (128L * i0), tmp14);
//         }
//     }
// }









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