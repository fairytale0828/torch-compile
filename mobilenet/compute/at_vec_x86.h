#ifndef AT_VEC_X86_H
#define AT_VEC_X86_H

#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstdlib>
#include <limits>
#include <omp.h>
#include <iostream>
#include <immintrin.h>  
#include <vector>
#include <cassert>
#include <type_traits>


#ifdef CPU_CAPABILITY_AVX512
#if defined(__GNUC__)
#define __at_align__ __attribute__((aligned(64)))
#elif defined(_WIN32)
#define __at_align__ __declspec(align(64))
#else
#define __at_align__
#endif
#define VECTOR_WIDTH 64
#define int_vector __m512i
#elif defined(__aarch64__) && !defined(CPU_CAPABILITY_SVE) // CPU_CAPABILITY_AVX512
// SVE code expects 256-vectors; leave that set for SVE?
#if defined(__GNUC__)
#define __at_align__ __attribute__((aligned(16)))
#elif defined(_WIN32)
#define __at_align__ __declspec(align(16))
#else
#define __at_align__
#endif
#define VECTOR_WIDTH 16
#else // CPU_CAPABILITY_AVX512
#if defined(__GNUC__)
#define __at_align__ __attribute__((aligned(32)))
#elif defined(_WIN32)
#define __at_align__ __declspec(align(32))
#else
#define __at_align__
#endif
#define VECTOR_WIDTH 32
#define int_vector __m256i
#endif // CPU_CAPABILITY_AVX512



template <typename scalar_t>
inline scalar_t max_propagate_nan(scalar_t a, scalar_t b) {
  if (std::isnan(a)) {
    return a;
  }
  return a > b ? a : b;
}


namespace at {
namespace vec {

// template <typename T>
// class Vectorized {
// public:
//     __m256 data;

//     Vectorized() = default;
//     explicit Vectorized(__m256 data) : data(data) {}
//     explicit Vectorized(T value) {
//         data = _mm256_set1_ps(value);
//     }

//     static Vectorized<T> loadu(const T* ptr) {
//         return Vectorized<T>(_mm256_loadu_ps(ptr));
//     }

//     void store(T* ptr) const {
//         _mm256_storeu_ps(ptr, data);
//     }

//     Vectorized<T> operator+(const Vectorized<T>& other) const {
//         return Vectorized<T>(_mm256_add_ps(data, other.data));
//     }

//     Vectorized<T> operator-(const Vectorized<T>& other) const {
//         return Vectorized<T>(_mm256_sub_ps(data, other.data));
//     }

//     Vectorized<T> operator*(const Vectorized<T>& other) const {
//         return Vectorized<T>(_mm256_mul_ps(data, other.data));
//     }

//     Vectorized<T> operator/(const Vectorized<T>& other) const {
//         return Vectorized<T>(_mm256_div_ps(data, other.data));
//     }

//     Vectorized<T> sqrt() const {
//         return Vectorized<T>(_mm256_sqrt_ps(data));
//     }

//     Vectorized<T> reciprocal() const {
//         return Vectorized<T>(_mm256_rcp_ps(data));
//     }

//     Vectorized<T> neg() const {
//         return Vectorized<T>(_mm256_sub_ps(_mm256_setzero_ps(), data));
//     }

//     Vectorized<T> exp() const {
//         // 使用 _mm256_storeu_ps 和 _mm256_loadu_ps 进行并行化操作
//         alignas(16) float tmp[16];
//         _mm256_storeu_ps(tmp, data); // 将数据从寄存器存储到内存
//         for (int i = 0; i < 16; i++) {
//             tmp[i] = std::exp(tmp[i]);  // 对每个元素执行 exp 操作
//         }
//         return Vectorized<T>(_mm256_loadu_ps(tmp)); // 将处理后的结果加载回寄存器
//     }
//     static Vectorized<T> set1(T value) {
//         return Vectorized<T>(_mm256_set1_ps(value));
//     }
// };

// using VecFloat = Vectorized<float>;

// template <typename T>
// Vectorized<T> clamp_min(const Vectorized<T>& vec, const Vectorized<T>& min_val) {
//     return Vectorized<T>(_mm256_max_ps(vec.data, min_val.data));
// }

// template <typename T, size_t M, size_t N>
// void transpose_mxn(const T* input, size_t input_stride, T* output, size_t output_stride) {
//     for (size_t i = 0; i < M; i += 8) {
//         for (size_t j = 0; j < N; j++) {
//             __m256 row = _mm256_loadu_ps(&input[i * input_stride + j]);
//             _mm256_storeu_ps(&output[j * output_stride + i], row);
//         }
//     }
// }

// } // namespace vec
// } // namespace at

// #endif // AT_VEC_x86_H







template <typename T>
class Vectorized {
public:
    __m512 data;

    Vectorized() = default;
    explicit Vectorized(__m512 data) : data(data) {}
    explicit Vectorized(T value) {
        data = _mm512_set1_ps(value);
    }

    static Vectorized<T> loadu(const T* ptr) {
        return Vectorized<T>(_mm512_loadu_ps(ptr));
    }

    void store(T* ptr) const {
        _mm512_storeu_ps(ptr, data);
    }

    Vectorized<T> operator+(const Vectorized<T>& other) const {
        return Vectorized<T>(_mm512_add_ps(data, other.data));
    }

    Vectorized<T> operator-(const Vectorized<T>& other) const {
        return Vectorized<T>(_mm512_sub_ps(data, other.data));
    }

    Vectorized<T> operator*(const Vectorized<T>& other) const {
        return Vectorized<T>(_mm512_mul_ps(data, other.data));
    }

    Vectorized<T> operator/(const Vectorized<T>& other) const {
        return Vectorized<T>(_mm512_div_ps(data, other.data));
    }

    Vectorized<T> sqrt() const {
        return Vectorized<T>(_mm512_sqrt_ps(data));
    }

    Vectorized<T> reciprocal() const {
        return Vectorized<T>(_mm512_rcp14_ps(data));
    }

    Vectorized<T> neg() const {
        return Vectorized<T>(_mm512_sub_ps(_mm512_setzero_ps(), data));
    }

    Vectorized<T> exp() const {
        alignas(64) float tmp[16];
        _mm512_storeu_ps(tmp, data); 
        for (int i = 0; i < 16; i++) {
            tmp[i] = std::exp(tmp[i]);  
        }
        return Vectorized<T>(_mm512_loadu_ps(tmp)); 
    }
    static Vectorized<T> set1(T value) {
        return Vectorized<T>(_mm512_set1_ps(value));
    }
};

// using VecFloat = Vectorized<float>;

template <typename T>
Vectorized<T> clamp_min(const Vectorized<T>& vec, const Vectorized<T>& min_val) {
    return Vectorized<T>(_mm512_max_ps(vec.data, min_val.data));
}


inline void transpose_block(__m512 input[16], int M=16, int N=16) {
    assert(M <= 16 && N <= 16 && "transpose_block expects M, N <= 16.");
    
    __m512 temp[16];
    int i;
    for (i = 0; i < (M + 1) / 2; ++i) {
      temp[2 * i] = _mm512_unpacklo_ps(input[2 * i], input[2 * i + 1]);
      temp[2 * i + 1] = _mm512_unpackhi_ps(input[2 * i], input[2 * i + 1]);
    }
    for (i = i * 2; i < 16; ++i) {
      temp[i] = _mm512_setzero_ps();
    }
  
    for (i = 0; i < (M + 3) / 4; ++i) {
      input[4 * i] = _mm512_castpd_ps(_mm512_unpacklo_pd(
          _mm512_castps_pd(temp[4 * i]), _mm512_castps_pd(temp[4 * i + 2])));
      input[4 * i + 1] = _mm512_castpd_ps(_mm512_unpackhi_pd(
          _mm512_castps_pd(temp[4 * i]), _mm512_castps_pd(temp[4 * i + 2])));
      input[4 * i + 2] = _mm512_castpd_ps(_mm512_unpacklo_pd(
          _mm512_castps_pd(temp[4 * i + 1]), _mm512_castps_pd(temp[4 * i + 3])));
      input[4 * i + 3] = _mm512_castpd_ps(_mm512_unpackhi_pd(
          _mm512_castps_pd(temp[4 * i + 1]), _mm512_castps_pd(temp[4 * i + 3])));
    }
  
    for (i = 0; i < (M + 7) / 8; ++i) {
      temp[8 * i] = _mm512_shuffle_f32x4(input[8 * i], input[8 * i + 4], 0x88);
      temp[8 * i + 1] = _mm512_shuffle_f32x4(input[8 * i + 1], input[8 * i + 5], 0x88);
      temp[8 * i + 2] = _mm512_shuffle_f32x4(input[8 * i + 2], input[8 * i + 6], 0x88);
      temp[8 * i + 3] = _mm512_shuffle_f32x4(input[8 * i + 3], input[8 * i + 7], 0x88);
      temp[8 * i + 4] = _mm512_shuffle_f32x4(input[8 * i], input[8 * i + 4], 0xdd);
      temp[8 * i + 5] = _mm512_shuffle_f32x4(input[8 * i + 1], input[8 * i + 5], 0xdd);
      temp[8 * i + 6] = _mm512_shuffle_f32x4(input[8 * i + 2], input[8 * i + 6], 0xdd);
      temp[8 * i + 7] = _mm512_shuffle_f32x4(input[8 * i + 3], input[8 * i + 7], 0xdd);
    }
  
    for (i = 0; i < N; ++i) {
      if (i < 8) {
        input[i] = _mm512_shuffle_f32x4(temp[i], temp[8 + i], 0x88);
      } else {
        input[i] = _mm512_shuffle_f32x4(temp[i - 8], temp[i], 0xdd);
      }
    }
  }
  
  inline void transpose_mxn_16x16(const float* src, int64_t ld_src, float* dst, int64_t ld_dst, int M, int N) {
    assert(M <= 16 && N <= 16 && "transpose_mxn<float> expects M, N <= 16.");
    
    __m512 input[16];
    int i;
  
    if (N == 16) {
      for (i = 0; i < M; ++i) {
        input[i] = _mm512_loadu_ps(&src[i * ld_src]);
      }
    } else {
      __mmask16 src_mask = (1 << N) - 1;
      for (i = 0; i < M; ++i) {
        input[i] = _mm512_maskz_loadu_ps(src_mask, &src[i * ld_src]);
      }
    }
  
    for (; i < 16; ++i) {
      input[i] = _mm512_setzero_ps();
    }
  
    transpose_block(input, M, N);
  
    if (M == 16) {
      for (i = 0; i < N; ++i) {
        _mm512_storeu_ps(&dst[i * ld_dst], input[i]);
      }
    } else {
      __mmask16 dst_mask = (1 << M) - 1;
      for (i = 0; i < N; ++i) {
        _mm512_mask_storeu_ps(&dst[i * ld_dst], dst_mask, input[i]);
      }
    }
  }
  
template <typename T, int M, int N>
  inline void transpose_mxn(const float* src, int64_t ld_src, float* dst, int64_t ld_dst) {
    assert(M <= 16 && N <= 16 && "transpose_mxn<float> expects M, N <= 16.");
  
    int64_t i = 0;
    for (; i < M / 16 * 16; i += 16) {
      int64_t j = 0;
      for (; j < N / 16 * 16; j += 16) {
        transpose_mxn_16x16(
            src + i * ld_src + j, ld_src, dst + j * ld_dst + i, ld_dst, 16, 16);
      }
      int nrem = N - j;
      if (nrem > 0) {
        transpose_mxn_16x16(
            src + i * ld_src + j, ld_src, dst + j * ld_dst + i, ld_dst, 16, nrem);
      }
    }
    int mrem = M - i;
    if (mrem > 0) {
      int j = 0;
      for (; j < N / 16 * 16; j += 16) {
        transpose_mxn_16x16(
            src + i * ld_src + j, ld_src, dst + j * ld_dst + i, ld_dst, mrem, 16);
      }
      int nrem = N - j;
      transpose_mxn_16x16(
          src + i * ld_src + j, ld_src, dst + j * ld_dst + i, ld_dst, mrem, nrem);
    }
  }






// inline void transpose_block_naive(float block[16][16], int M = 16, int N = 16) {
//     assert(M <= 16 && N <= 16 && "transpose_block_naive expects M, N <= 16.");
//     float temp[16][16] = {0}; // 临时缓冲区
  
//     // 对有效区域执行转置：temp[j][i] = block[i][j]
//     for (int i = 0; i < M; i++) {
//       for (int j = 0; j < N; j++) {
//         temp[j][i] = block[i][j];
//       }
//     }
//     // 将结果复制回 block（整个 16×16 块）
//     for (int i = 0; i < 16; i++) {
//       for (int j = 0; j < 16; j++) {
//         block[i][j] = temp[i][j];
//       }
//     }
//   }
  
//   // 朴素实现 16×16（或更小有效区域）矩阵的转置。
//   // src：指向原始矩阵数据，按 ld_src 布局；
//   // dst：指向目标矩阵数据，按 ld_dst 布局；
//   // 有效区域为 M 行 × N 列，不足部分补零；
//   // 转置后有效区域为 N 行 × M 列。
//   inline void transpose_mxn_16x16_naive(const float* src, int64_t ld_src,
//                                           float* dst, int64_t ld_dst,
//                                           int M, int N) {
//     assert(M <= 16 && N <= 16 && "transpose_mxn_16x16_naive expects M, N <= 16.");
  
//     // 定义一个 16×16 的临时块，并初始化为零
//     float block[16][16] = {0};
//     // 将 src 中有效区域加载到 block 中
//     for (int i = 0; i < M; i++) {
//       for (int j = 0; j < N; j++) {
//         block[i][j] = src[i * ld_src + j];
//       }
//     }
//     // 对 block 进行转置
//     transpose_block_naive(block, M, N);
//     // 将转置后的数据存回 dst；转置后有效区域大小为 N×M
//     for (int i = 0; i < N; i++) {
//       for (int j = 0; j < M; j++) {
//         dst[i * ld_dst + j] = block[i][j];
//       }
//     }
//   }
  
//   // 模板函数：对任意 M×N 的矩阵（可以大于 16×16）按 16×16 block 进行转置，
//   // 朴素实现，不使用任何向量化指令。
//   template <typename T, int M, int N>
//   inline void transpose_mxn(const float* src, int64_t ld_src,
//                                   float* dst, int64_t ld_dst) {
//     // 对整个矩阵按 16×16 block 进行处理
//     int64_t i = 0;
//     for (; i < (M / 16) * 16; i += 16) {
//       int64_t j = 0;
//       for (; j < (N / 16) * 16; j += 16) {
//         transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
//                                   dst + j * ld_dst + i, ld_dst, 16, 16);
//       }
//       // 处理当前 block 行剩余的列
//       int nrem = N - j;
//       if (nrem > 0) {
//         transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
//                                   dst + j * ld_dst + i, ld_dst, 16, nrem);
//       }
//     }
//     // 处理剩余的行
//     int mrem = M - i;
//     if (mrem > 0) {
//       int j = 0;
//       for (; j < (N / 16) * 16; j += 16) {
//         transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
//                                   dst + j * ld_dst + i, ld_dst, mrem, 16);
//       }
//       // 处理剩余的列
//       int nrem = N - j;
//       if (nrem > 0) {
//         transpose_mxn_16x16_naive(src + i * ld_src + j, ld_src,
//                                   dst + j * ld_dst + i, ld_dst, mrem, nrem);
//       }
//     }
//   }






} // namespace vec
} // namespace at

#endif // AT_VEC_x86_H





// template <typename T, size_t M, size_t N>
// void transpose_mxn(const T* input, size_t input_stride, T* output, size_t output_stride) {
//     for (size_t i = 0; i < M; i += 16) {
//         for (size_t j = 0; j < N; j++) {
//             __m512 row = _mm512_loadu_ps(&input[i * input_stride + j]);
//             _mm512_storeu_ps(&output[j * output_stride + i], row);
//         }
//     }
// }

