#include <cblas.h>
#include <cstring>
#include "im2col.h"
#include <immintrin.h>
#include <assert.h>
#include <math.h>
#include <algorithm>

// extern "C" void conv2d(const float *data_im, const int batch_size, const int channels,
//                              const int height, const int width,
//                              const float *data_kernels, const float *bias,
//                              const int num_kernels,
//                              const int kernel_h, const int kernel_w,
//                              const int stride_h, const int stride_w,
//                              const int pad_h, const int pad_w,
//                              const int dilation_h, const int dilation_w,
//                              float *data_out){
//     // 计算单张图片的输出尺寸
//     const int output_h = (height + 2 * pad_h - (dilation_h * (kernel_h - 1) + 1)) / stride_h + 1;
//     const int output_w = (width + 2 * pad_w - (dilation_w * (kernel_w - 1) + 1)) / stride_w + 1;
//     const int n_size = output_h * output_w;

//     // 计算每个卷积核展开后的尺寸
//     const int k_size = channels * kernel_h * kernel_w;

//     // 为 im2col 分配临时内存（每次处理一张图片）
//     float *data_col = new float[k_size * n_size];

//     // 将卷积核转换成矩阵形式（大小为 num_kernels x k_size），只需转换一次
//     float *weights_col = new float[num_kernels * k_size];
//     #pragma omp parallel for collapse(4)
//         for (int n = 0; n < num_kernels; ++n){
//             for (int c = 0; c < channels; ++c){
//                 for (int kh = 0; kh < kernel_h; ++kh){
//                     for (int kw = 0; kw < kernel_w; ++kw){
//                         const int k_index = ((n * channels + c) * kernel_h + kh) * kernel_w + kw;
//                         const int col_index = n * k_size + ((c * kernel_h + kh) * kernel_w + kw);
//                         weights_col[col_index] = data_kernels[k_index];
//                     }
//                 }
//             }
//         }
//     #pragma omp parallel for num_threads(8)
//     // 遍历每个批次的图片进行卷积计算
//         for (int b = 0; b < batch_size; ++b){
//             // 当前图片的输入和输出偏移
//             const float *current_im = data_im + b * channels * height * width;
//             float *current_out = data_out + b * num_kernels * n_size;

//             // 对当前图片进行 im2col 变换
//             im2col(current_im, channels, height, width,
//                 kernel_h, kernel_w, pad_h, pad_w,
//                 stride_h, stride_w, dilation_h, dilation_w,
//                 data_col);

//             // 使用 BLAS 进行矩阵乘法
//             // weights_col: (num_kernels x k_size)
//             // data_col:    (k_size x n_size)
//             // current_out: (num_kernels x n_size)
//             cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
//                         num_kernels, n_size, k_size,
//                         1.0f, weights_col, k_size,
//                         data_col, n_size,
//                         0.0f, current_out, n_size);

//             // 添加 bias
//             if (bias != nullptr){
//     #pragma omp parallel for num_threads(8)
//                 for (int n = 0; n < num_kernels; ++n){
//                     const float bias_val = bias[n];
//                     float *channel_start = current_out + n * n_size;

//                     // 利用 AVX 加速 bias 加法，处理 8 个元素一组
//                     const int vec_size = n_size - (n_size % 8);
//                     __m256 bias_vec = _mm256_set1_ps(bias_val);
//                     for (int i = 0; i < vec_size; i += 8){
//                         __m256 data = _mm256_loadu_ps(channel_start + i);
//                         data = _mm256_add_ps(data, bias_vec);
//                         _mm256_storeu_ps(channel_start + i, data);
//                     }
//                     // 处理剩余不足 8 个的尾部数据
//                     for (int i = vec_size; i < n_size; ++i){
//                         channel_start[i] += bias_val;
//                     }
//                 }
//             }
//         }

//         // 释放分配的临时内存
//         delete[] data_col;
//         delete[] weights_col;
// }

extern "C" void conv2d(const float *data_im, const int batch_size, const int channels,
                       const int height, const int width,
                       const float *data_kernels, const float *bias,
                       const int num_kernels,
                       const int kernel_h, const int kernel_w,
                       const int stride_h, const int stride_w,
                       const int pad_h, const int pad_w,
                       const int dilation_h, const int dilation_w,
                       float *data_out)
{
    // 计算输出尺寸（与标准实现一致：对于 pad=0,dilation=1,stride=1 则 output = H - KH + 1）
    const int output_h = (height + 2 * pad_h - (dilation_h * (kernel_h - 1) + 1)) / stride_h + 1;
    const int output_w = (width + 2 * pad_w - (dilation_w * (kernel_w - 1) + 1)) / stride_w + 1;
    const int n_size = output_h * output_w;
    const int k_size = kernel_h * kernel_w * channels; // 展开后每个卷积核的长度

    // 为 im2col 分配临时内存（所有图片共用，同一大小）
    float *data_col = new float[k_size * n_size];

    // 将卷积核转换到 NHWC 形式并展开为矩阵形式：
    // 原 kernel: (num_kernels, channels, kernel_h, kernel_w)
    // 转为： (kernel_h, kernel_w, channels, num_kernels) 并 reshape 成 (num_kernels, k_size)
    float *weights_col = new float[num_kernels * k_size];
#pragma omp parallel for collapse(4)
    for (int n = 0; n < num_kernels; ++n)
    {
        for (int kh = 0; kh < kernel_h; ++kh)
        {
            for (int kw = 0; kw < kernel_w; ++kw)
            {
                for (int c = 0; c < channels; ++c)
                {
                    // 原始索引： (n, c, kh, kw)
                    int src_index = ((n * channels + c) * kernel_h + kh) * kernel_w + kw;
                    // 新顺序： (kh, kw, c) 对应展开后在第 n 行的列索引为：
                    int dst_index = n * k_size + ((kh * kernel_w + kw) * channels + c);
                    weights_col[dst_index] = data_kernels[src_index];
                }
            }
        }
    }

// 遍历每个批次的图片进行卷积计算
#pragma omp parallel for num_threads(8)
    for (int b = 0; b < batch_size; ++b)
    {
        // 当前图片的输入（NCHW 格式）
        const float *current_im = data_im + b * channels * height * width;
        // 申请临时内存，将当前图片转换为 NHWC 格式，大小为 (height * width * channels)
        float *im_nhwc = new float[height * width * channels];
        for (int h = 0; h < height; ++h)
        {
            for (int w = 0; w < width; ++w)
            {
                for (int c = 0; c < channels; ++c)
                {
                    // NCHW -> NHWC：目标索引 = h * (width*channels) + w * channels + c
                    // 原始索引 = c * (height*width) + h * width + w
                    im_nhwc[h * width * channels + w * channels + c] =
                        current_im[c * height * width + h * width + w];
                }
            }
        }

        // 对当前 NHWC 格式图片进行 im2col 变换（展开出所有滑窗，排列顺序与标准 as_strided 保持一致）
        im2col(im_nhwc, channels, height, width,
               kernel_h, kernel_w, pad_h, pad_w,
               stride_h, stride_w, dilation_h, dilation_w,
               data_col);

        // 使用 BLAS 进行矩阵乘法
        // weights_col: (num_kernels x k_size)
        // data_col:    (k_size x n_size)
        // current_out: (num_kernels x n_size)
        float *current_out = data_out + b * num_kernels * n_size;
        cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
                    num_kernels, n_size, k_size,
                    1.0f, weights_col, k_size,
                    data_col, n_size,
                    0.0f, current_out, n_size);

        // 添加 bias（利用 AVX 加速）
        if (bias != nullptr)
        {
#pragma omp parallel for num_threads(8)
            for (int n = 0; n < num_kernels; ++n)
            {
                const float bias_val = bias[n];
                float *channel_start = current_out + n * n_size;
                const int vec_size = n_size - (n_size % 8);
                __m256 bias_vec = _mm256_set1_ps(bias_val);
                for (int i = 0; i < vec_size; i += 8)
                {
                    __m256 data = _mm256_loadu_ps(channel_start + i);
                    data = _mm256_add_ps(data, bias_vec);
                    _mm256_storeu_ps(channel_start + i, data);
                }
                for (int i = vec_size; i < n_size; ++i)
                {
                    channel_start[i] += bias_val;
                }
            }
        }
        delete[] im_nhwc;
    }

    delete[] data_col;
    delete[] weights_col;
}

// 测试用例
// void test_conv_with_bias() {
//     const int N = 10, C = 3, H = 258, W = 258;
//     const int K = 16, R = 3, S = 3;

//     // 初始化全1数据
//     float* input = new float[N*C*H*W];
//     std::fill_n(input, N*C*H*W, 3.0f);  // 全1输入

//     float* weights = new float[K*C*R*S];
//     std::fill_n(weights, K*C*R*S, 5.0f); // 全1权重

//     float* bias = new float[K];
//     std::fill_n(bias, K, 1.0f);
//     float* output = new float[N*K*H*W]{0};

//     // 执行卷积
//     conv2d(input, N, C, H, W, weights, bias, K,
//            R, S, 1, 1, 0, 0, 1, 1, output);
//     printf("Convolution with bias result:\n");
//     for (int i = 10*16*256*256-100; i < 10*16*256*256; ++i) {
//         printf("%f ", output[i]);
//     }
//     printf("\n");

//     delete[] input; delete[] weights;
//     delete[] bias; delete[] output;
// }

// int main(){
//     test_conv_with_bias();
//     return 0;
// }