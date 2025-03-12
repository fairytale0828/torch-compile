#include <immintrin.h>
#include <omp.h>
#include <cstddef>

// C++ 版本卷积函数，支持 OpenMP 并行与 AVX2 SIMD 内联
extern "C" void conv2d(const float *data_im, const int batch_size, const int channels,
                       const int height, const int width,
                       const float *data_kernels, const float *bias,
                       const int num_kernels,
                       const int kernel_h, const int kernel_w,
                       const int stride_h, const int stride_w,
                       const int pad_h, const int pad_w,
                       const int dilation_h, const int dilation_w,
                       float *data_out) {
    // 计算输出尺寸，公式： (I + 2P - D*(K-1) - 1) / S + 1
    int output_h = (height + 2 * pad_h - dilation_h * (kernel_h - 1) - 1) / stride_h + 1;
    int output_w = (width  + 2 * pad_w - dilation_w * (kernel_w - 1) - 1) / stride_w + 1;

    // 外层循环并行化：batch 和输出高度同时并行
    #pragma omp parallel for collapse(2) num_threads(8)
    for (int n = 0; n < batch_size; ++n) {
        for (int h_out = 0; h_out < output_h; ++h_out) {
            for (int w_out = 0; w_out < output_w; ++w_out) {
                for (int k_idx = 0; k_idx < num_kernels; ++k_idx) {
                    // 每个输出位置先加上 bias
                    float sum = bias[k_idx];
                    // 对 kernel 对应的区域计算卷积累加
                    // 对于 kernel，数据排列： [num_kernels, channels, kernel_h, kernel_w]
                    // 对于输入，排列： [batch_size, channels, height, width]
                    // 注意：在 NCHW 中，对于固定 n, h, w，不同通道间的偏移步长为 (height*width)
                    int kernel_base = k_idx * channels * kernel_h * kernel_w;
                    int input_base  = n * channels * height * width;
                    // 遍历 kernel 的空间维度
                    for (int kh = 0; kh < kernel_h; ++kh) {
                        int in_h = h_out * stride_h - pad_h + kh * dilation_h;
                        if (in_h < 0 || in_h >= height) continue;
                        for (int kw = 0; kw < kernel_w; ++kw) {
                            int in_w = w_out * stride_w - pad_w + kw * dilation_w;
                            if (in_w < 0 || in_w >= width) continue;
                            // 对于输入，此行在内存中相距 height*width（每个通道的偏移步长）
                            int input_offset  = input_base + in_h * width + in_w;
                            // 对于 kernel，固定 kh, kw 时，通道数据是连续存放的（步长为 1）
                            int kernel_offset = kernel_base + kh * (kernel_w * channels) + kw * channels;
                            
                            int c = 0;
                            __m256 vsum = _mm256_setzero_ps();
                            const int im_stride = height * width;  // 输入每个通道之间的间隔
                            // 利用 SIMD 一次处理 8 个通道
                            for (; c <= channels - 8; c += 8) {
                                // 载入 kernel 数据，由于 kernel 在该维度上是连续的，可以直接加载
                                __m256 vkernel = _mm256_loadu_ps(data_kernels + kernel_offset + c);
                                // 对于输入，由于不同通道间隔为 im_stride，不连续，所以使用 _mm256_set_ps 手动加载8个元素
                                __m256 vinput = _mm256_set_ps(
                                    data_im[input_offset + (c + 7) * im_stride],
                                    data_im[input_offset + (c + 6) * im_stride],
                                    data_im[input_offset + (c + 5) * im_stride],
                                    data_im[input_offset + (c + 4) * im_stride],
                                    data_im[input_offset + (c + 3) * im_stride],
                                    data_im[input_offset + (c + 2) * im_stride],
                                    data_im[input_offset + (c + 1) * im_stride],
                                    data_im[input_offset + (c + 0) * im_stride]
                                );
                                __m256 vprod = _mm256_mul_ps(vinput, vkernel);
                                vsum = _mm256_add_ps(vsum, vprod);
                            }
                            // 将 SIMD 累加结果水平求和
                            float tmp[8];
                            _mm256_storeu_ps(tmp, vsum);
                            for (int i = 0; i < 8; ++i) {
                                sum += tmp[i];
                            }
                            // 处理不足 8 的剩余通道
                            for (; c < channels; ++c) {
                                float in_val = data_im[input_offset + c * im_stride];
                                float ker_val = data_kernels[kernel_offset + c];
                                sum += in_val * ker_val;
                            }
                        }
                    }
                    // 将结果写入输出（NCHW 布局）
                    int out_index = n * num_kernels * output_h * output_w
                                  + k_idx * output_h * output_w
                                  + h_out * output_w + w_out;
                    data_out[out_index] = sum;
                }
            }
        }
    }
}
