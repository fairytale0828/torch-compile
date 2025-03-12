#include <immintrin.h>
#include <omp.h>
#include <algorithm>  // 添加std::min

extern "C" {
    void conv2d(
        const float* input, const int* input_shape, const int* input_strides,
        const float* kernel, const int* kernel_shape, const int* kernel_strides,
        const float* bias, 
        int stride_h, int stride_w,
        int padding_h, int padding_w,
        int dilation_h, int dilation_w,
        bool transpose, 
        int output_padding_h, int output_padding_w,
        int groups,
        float* output, const int* output_shape, const int* output_strides
    ) {
        int M = input_shape[0];
        int K = input_shape[1];
        int N = kernel_shape[1];
        
        int input_row_stride = input_strides[0];
        int input_col_stride = input_strides[1];
        int kernel_row_stride = kernel_strides[0];
        int kernel_col_stride = kernel_strides[1];
        int output_row_stride = output_strides[0];
        int output_col_stride = output_strides[1];

        #pragma omp parallel for num_threads(8) schedule(static)
        for (int i = 0; i < M; ++i) {
            float* output_row = output + i * output_row_stride;
            
            for (int j = 0; j < N; j += 8) {
                int valid = std::min(8, N - j);
                
                // 对齐内存和初始化
                alignas(32) float bias_buffer[8] = {0};
                alignas(32) float b_buffer[8] = {0};
                __m256 acc = _mm256_load_ps(bias_buffer);
                
                if (bias) {
                    for (int l = 0; l < valid; ++l) {
                        bias_buffer[l] = bias[j + l];
                    }
                    acc = _mm256_load_ps(bias_buffer);
                }

                for (int k = 0; k < K; ++k) {
                    float a = input[i * input_row_stride + k * input_col_stride];
                    
                    // 带边界检查的kernel访问
                    for (int l = 0; l < valid; ++l) {
                        int kernel_pos = k * kernel_row_stride + (j + l) * kernel_col_stride;
                        if (kernel_pos >= kernel_shape[0] * kernel_shape[1]) {
                            b_buffer[l] = 0.0f;
                        } else {
                            b_buffer[l] = kernel[kernel_pos];
                        }
                    }
                    
                    __m256 b = _mm256_load_ps(b_buffer);
                    __m256 a_vec = _mm256_set1_ps(a);
                    acc = _mm256_fmadd_ps(a_vec, b, acc);
                }

                alignas(32) float out_buffer[8];
                _mm256_store_ps(out_buffer, acc);
                
                // 带边界检查的输出写入
                for (int l = 0; l < valid; ++l) {
                    int output_pos = j + l;
                    if (output_pos < N) {
                        output_row[output_pos * output_col_stride] = out_buffer[l];
                    }
                }
            }
        }
    }
}