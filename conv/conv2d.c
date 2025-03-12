#include <stdio.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>  
#include <assert.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

// 外部嵌套函数，声明
extern void _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(
    int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int64_t arg6, int32_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int64_t arg12, int64_t arg13, int32_t arg14, int32_t arg15, int32_t arg16, int32_t arg17, int32_t arg18
);

// 包装函数
void call_conv2d_kernel(
    float *primals_3, int *shape_3, int *stride_3,
    float *primals_1, int *shape_1, int *stride_1,
    int stride_h, int stride_w,
    int padding_h, int padding_w,
    int dilation_h, int dilation_w,
    int output_padding_h, int output_padding_w,
    int groups, float *bias, float *output, int *shape_output, int *stride_output
) {
  
    _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(
        (int64_t)(uintptr_t)primals_3, stride_3[0], stride_3[1], stride_3[2], shape_3[2], shape_3[3],
        (int64_t)(uintptr_t)primals_1, shape_1[2], shape_1[3],stride_1[0], stride_1[1], shape_1[2],
        (int64_t)(uintptr_t)bias,(int64_t)(uintptr_t)output, shape_output[2], shape_output[3], stride_output[0], stride_output[1],stride_output[2]
    );
}
