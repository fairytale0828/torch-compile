#ifndef AT_VEC_RV64_H
#define AT_VEC_RV64_H

#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstdlib>
#include <limits>
#include <omp.h>
#include <iostream>
#include <vector>
#include <riscv_vector.h>
#include <cassert>

template <typename scalar_t>
inline scalar_t max_propagate_nan(scalar_t a, scalar_t b) {
    if (std::isnan(a)) {
        return a;
    }
    return a > b ? a : b;
}

namespace at {
namespace vec {


template <typename T>
class Vectorized {
public:
    std::vector<T> data;  

    // size_t vl = __riscv_vsetvl_e32m2(16);  
    static const size_t vl = 16;
    Vectorized() = default;

    explicit Vectorized(std::vector<T> data) : data(std::move(data)) {}

    explicit Vectorized(T value) {
        data.resize(vl);  
        std::fill(data.begin(), data.end(), value);  
    }

    static Vectorized<T> loadu(const T* ptr) {
        Vectorized<T> vec;
        vec.data.resize(vec.vl);
        for (size_t i = 0; i < vec.vl; ++i) {
            vec.data[i] = ptr[i];  
        }
        return vec;
    }

    void store(T* ptr) const {
        for (size_t i = 0; i < vl; ++i) {
            ptr[i] = data[i];  
        }
    }

    Vectorized<T> operator+(const Vectorized<T>& other) const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);  
        vfloat32m2_t B = __riscv_vle32_v_f32m2(other.data.data(), vl);
        vfloat32m2_t sum = __riscv_vfadd_vv_f32m2(A, B, vl);
        __riscv_vse32_v_f32m2(result.data(), sum, vl);  
        return Vectorized<T>(std::move(result));
    }

    Vectorized<T> operator-(const Vectorized<T>& other) const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);
        vfloat32m2_t B = __riscv_vle32_v_f32m2(other.data.data(), vl);
        vfloat32m2_t diff = __riscv_vfsub_vv_f32m2(A, B, vl);
        __riscv_vse32_v_f32m2(result.data(), diff, vl);
        return Vectorized<T>(std::move(result));
    }

    Vectorized<T> operator*(const Vectorized<T>& other) const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);
        vfloat32m2_t B = __riscv_vle32_v_f32m2(other.data.data(), vl);
        vfloat32m2_t product = __riscv_vfmul_vv_f32m2(A, B, vl);
        __riscv_vse32_v_f32m2(result.data(), product, vl);
        return Vectorized<T>(std::move(result));
    }

    Vectorized<T> operator/(const Vectorized<T>& other) const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);
        vfloat32m2_t B = __riscv_vle32_v_f32m2(other.data.data(), vl);
        vfloat32m2_t quotient = __riscv_vfdiv_vv_f32m2(A, B, vl);
        __riscv_vse32_v_f32m2(result.data(), quotient, vl);
        return Vectorized<T>(std::move(result));
    }

    Vectorized<T> sqrt() const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);
        vfloat32m2_t square_root = __riscv_vfsqrt_v_f32m2(A, vl);
        __riscv_vse32_v_f32m2(result.data(), square_root, vl);
        return Vectorized<T>(std::move(result));
    }

    Vectorized<T> reciprocal() const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);
        vfloat32m2_t recp = __riscv_vfrec7_v_f32m2(A, vl);
        __riscv_vse32_v_f32m2(result.data(), recp, vl);
        return Vectorized<T>(std::move(result));
    }

    // 取负：将所有元素取反
    Vectorized<T> neg() const {
        std::vector<T> result(vl);
        vfloat32m2_t A = __riscv_vle32_v_f32m2(data.data(), vl);
        vfloat32m2_t neg_result = __riscv_vfneg_v_f32m2(A, vl); // 通过 vfneg 执行取反
        __riscv_vse32_v_f32m2(result.data(), neg_result, vl);
        return Vectorized<T>(std::move(result));
    }

    Vectorized<T> exp() const {
        std::vector<T> result(vl);
        // 1. 从内存加载数据到向量寄存器
        vfloat32m2_t vec = __riscv_vle32_v_f32m2(data.data(), vl);
    
        // 2. 将向量寄存器的数据存储到临时数组中
        alignas(64) float tmp[16];
        __riscv_vse32_v_f32m2(tmp, vec, vl);
    
        // 3. 对每个元素调用 std::exp，得到精确结果
        for (int i = 0; i < vl; i++) {
            tmp[i] = std::exp(tmp[i]);
        }
    
        // 4. 将结果从内存加载回向量寄存器，并存储到 result 中
        vfloat32m2_t resVec = __riscv_vle32_v_f32m2(tmp, vl);
        __riscv_vse32_v_f32m2(result.data(), resVec, vl);
    
        return Vectorized<T>(std::move(result));
    }


    static Vectorized<T> set1(T value) {
        std::vector<T> result(vl, value);
        return Vectorized<T>(std::move(result));
    }
};

using VecFloat = Vectorized<float>;

template <typename T>
Vectorized<T> clamp_min(const Vectorized<T>& vec, const Vectorized<T>& min_val) {
    std::vector<T> result(vec.vl);
    vfloat32m2_t A = __riscv_vle32_v_f32m2(vec.data.data(), vec.vl);
    vfloat32m2_t B = __riscv_vle32_v_f32m2(min_val.data.data(), vec.vl);
    vfloat32m2_t min_clamp = __riscv_vfmax_vv_f32m2(A, B, vec.vl);
    __riscv_vse32_v_f32m2(result.data(), min_clamp, vec.vl);
    return Vectorized<T>(std::move(result));
}



inline void transpose_block_naive(float block[16][16], int M = 16, int N = 16) {
    assert(M <= 16 && N <= 16 && "transpose_block_naive expects M, N <= 16.");
    float temp[16][16] = {0}; // 临时缓冲区
  
    for (int i = 0; i < M; i++) {
      for (int j = 0; j < N; j++) {
        temp[j][i] = block[i][j];
      }
    }

    for (int i = 0; i < 16; i++) {
      for (int j = 0; j < 16; j++) {
        block[i][j] = temp[i][j];
      }
    }
  }
  

  inline void transpose_mxn_16x16_naive(const float* src, int64_t ld_src,
                                          float* dst, int64_t ld_dst,
                                          int M, int N) {
    assert(M <= 16 && N <= 16 && "transpose_mxn_16x16_naive expects M, N <= 16.");
  
 
    float block[16][16] = {0};

    for (int i = 0; i < M; i++) {
      for (int j = 0; j < N; j++) {
        block[i][j] = src[i * ld_src + j];
      }
    }

    transpose_block_naive(block, M, N);

    for (int i = 0; i < N; i++) {
      for (int j = 0; j < M; j++) {
        dst[i * ld_dst + j] = block[i][j];
      }
    }
  }
  

  template <typename T, int M, int N>
  inline void transpose_mxn(const float* src, int64_t ld_src,
                                  float* dst, int64_t ld_dst) {

    int64_t i = 0;
    for (; i < (M / 16) * 16; i += 16) {
      int64_t j = 0;
      for (; j < (N / 16) * 16; j += 16) {
        transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
                                  dst + j * ld_dst + i, ld_dst, 16, 16);
      }
  
      int nrem = N - j;
      if (nrem > 0) {
        transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
                                  dst + j * ld_dst + i, ld_dst, 16, nrem);
      }
    } 
   
    int mrem = M - i;
    if (mrem > 0) {
      int j = 0;
      for (; j < (N / 16) * 16; j += 16) {
        transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
                                  dst + j * ld_dst + i, ld_dst, mrem, 16);
      }
     
      int nrem = N - j;
      if (nrem > 0) {
        transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
                                  dst + j * ld_dst + i, ld_dst, mrem, nrem);
      }
    }
  }



} // namespace vec
} // namespace at

#endif // AT_VEC_RV64_H





