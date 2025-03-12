// #include <immintrin.h>
// #include <cstring>

// void im2col(const float* data_im, const int channels,
//             const int height, const int width,
//             const int kernel_h, const int kernel_w,
//             const int pad_h, const int pad_w,
//             const int stride_h, const int stride_w,
//             const int dilation_h, const int dilation_w,
//             float* data_col)
// {
//     const int output_h = (height + 2 * pad_h - (dilation_h * (kernel_h - 1) + 1)) / stride_h + 1;
//     const int output_w = (width + 2 * pad_w - (dilation_w * (kernel_w - 1) + 1)) / stride_w + 1;

//     const int channel_size = height * width;
//     const int kernel_size = kernel_h * kernel_w;

//     #pragma omp parallel for collapse(2)
//     for (int c = 0; c < channels; ++c)
//     {
//         for (int kh = 0; kh < kernel_h; ++kh)
//         {
//             for (int kw = 0; kw < kernel_w; ++kw)
//             {
//                 int im_row_base = -pad_h + kh * dilation_h;
//                 for (int oh = 0; oh < output_h; ++oh)
//                 {
//                     int im_row = im_row_base + oh * stride_h;
//                     int im_col_base = -pad_w + kw * dilation_w;

//                     if (im_row >= 0 && im_row < height)
//                     {
//                         int col_index = ((c * kernel_size + kh * kernel_w + kw) * output_h + oh) * output_w;
//                         int im_index = c * channel_size + im_row * width;

//                         int ow = 0;
//                         for (; ow <= output_w - 8; ow += 8)
//                         {
//                             __m256i im_cols = _mm256_setr_epi32(
//                                 im_col_base + (ow + 0) * stride_w,
//                                 im_col_base + (ow + 1) * stride_w,
//                                 im_col_base + (ow + 2) * stride_w,
//                                 im_col_base + (ow + 3) * stride_w,
//                                 im_col_base + (ow + 4) * stride_w,
//                                 im_col_base + (ow + 5) * stride_w,
//                                 im_col_base + (ow + 6) * stride_w,
//                                 im_col_base + (ow + 7) * stride_w);

//                             __m256i mask = _mm256_and_si256(
//                                 _mm256_cmpgt_epi32(im_cols, _mm256_set1_epi32(-1)),
//                                 _mm256_cmpgt_epi32(im_cols, _mm256_set1_epi32(width)));

//                             int valid_mask = _mm256_movemask_epi8(mask);
//                             if (valid_mask == -1)
//                             {
//                                 // All columns are valid
//                                 __m256 data = _mm256_i32gather_ps(
//                                     data_im + im_index, im_cols, 4);
//                                 _mm256_storeu_ps(data_col + col_index + ow, data);
//                             }
//                             else
//                             {
//                                 // Handle invalid columns
//                                 float tmp[8];
//                                 for (int i = 0; i < 8; ++i)
//                                 {
//                                     int im_col = im_col_base + (ow + i) * stride_w;
//                                     if (im_col >= 0 && im_col < width)
//                                     {
//                                         tmp[i] = data_im[im_index + im_col];
//                                     }
//                                     else
//                                     {
//                                         tmp[i] = 0.0f;
//                                     }
//                                 }
//                                 _mm256_storeu_ps(data_col + col_index + ow, _mm256_loadu_ps(tmp));
//                             }
//                         }
//                         // Handle remaining columns
//                         for (; ow < output_w; ++ow)
//                         {
//                             int im_col = im_col_base + ow * stride_w;
//                             if (im_col >= 0 && im_col < width)
//                             {
//                                 data_col[col_index + ow] = data_im[im_index + im_col];
//                             }
//                             else
//                             {
//                                 data_col[col_index + ow] = 0.0f;
//                             }
//                         }
//                     }
//                     else
//                     {
//                         // Set entire row to zero if im_row is invalid
//                         int col_index = ((c * kernel_size + kh * kernel_w + kw) * output_h + oh) * output_w;
//                         std::memset(data_col + col_index, 0, sizeof(float) * output_w);
//                     }
//                 }
//             }
//         }
//     }
// }

#include <immintrin.h>
#include <cstring>
#include <omp.h>

// 此 im2col 实现假定输入图片为 NHWC 格式（形状为：height x width x channels）。
// data_col 输出大小为 (kernel_h * kernel_w * channels, output_h * output_w)
// 展平顺序按 (kh, kw, c)，与 kernel 重排时的顺序一致。
void im2col(const float* data_im, const int channels,
    const int height, const int width,
    const int kernel_h, const int kernel_w,
    const int pad_h, const int pad_w,
    const int stride_h, const int stride_w,
    const int dilation_h, const int dilation_w,
    float* data_col) {

    const int output_h = (height + 2 * pad_h - (dilation_h * (kernel_h - 1) + 1)) / stride_h + 1;
    const int output_w = (width + 2 * pad_w - (dilation_w * (kernel_w - 1) + 1)) / stride_w + 1;
    const int n_output = output_h * output_w;

    // 循环顺序：遍历 kernel 的行、列、通道，然后遍历输出的行 (oh) 和列 (ow)
#pragma omp parallel for collapse(3)
    for (int kh = 0; kh < kernel_h; ++kh) {
        for (int kw = 0; kw < kernel_w; ++kw) {
            for (int c = 0; c < channels; ++c) {
                for (int oh = 0; oh < output_h; ++oh) {
                    int im_row = oh * stride_h - pad_h + kh * dilation_h;
                    int col_base = ((kh * kernel_w + kw) * channels + c) * n_output + oh * output_w;
                    // 若 im_row 超出范围，则当前行所有输出位置置零
                    if (im_row < 0 || im_row >= height) {
                        std::memset(data_col + col_base, 0, sizeof(float) * output_w);
                        continue;
                    }
                    // 处理输出列，采用 AVX 加速，每次处理8个
                    int base_val = -pad_w + kw * dilation_w;  // im_col 起始偏移
                    int base = im_row * width * channels + c;    // NHWC 下，当前行、当前通道的基地址
                    int ow = 0;
                    for (; ow <= output_w - 8; ow += 8) {
                        int indices[8];
                        bool all_valid = true;
                        for (int i = 0; i < 8; ++i) {
                            int im_col = base_val + (ow + i) * stride_w;
                            indices[i] = base + (im_col * channels);
                            if (im_col < 0 || im_col >= width)
                                all_valid = false;
                        }
                        if (all_valid) {
                            __m256i idx_vec = _mm256_setr_epi32(
                                indices[0], indices[1], indices[2], indices[3],
                                indices[4], indices[5], indices[6], indices[7]);
                            __m256 gathered = _mm256_i32gather_ps(data_im, idx_vec, 4);
                            _mm256_storeu_ps(data_col + col_base + ow, gathered);
                        } else {
                            float tmp[8];
                            for (int i = 0; i < 8; ++i) {
                                int im_col = base_val + (ow + i) * stride_w;
                                if (im_col >= 0 && im_col < width)
                                    tmp[i] = data_im[base + (im_col * channels)];
                                else
                                    tmp[i] = 0.0f;
                            }
                            __m256 t = _mm256_loadu_ps(tmp);
                            _mm256_storeu_ps(data_col + col_base + ow, t);
                        }
                    }
                    // 处理不足8个的剩余部分
                    for (; ow < output_w; ++ow) {
                        int im_col = base_val + ow * stride_w;
                        int col_index = col_base + ow;
                        if (im_col >= 0 && im_col < width)
                            data_col[col_index] = data_im[base + (im_col * channels)];
                        else
                            data_col[col_index] = 0.0f;
                    }
                }
            }
        }
    }
}
