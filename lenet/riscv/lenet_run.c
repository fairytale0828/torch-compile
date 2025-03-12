#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>  
#include <assert.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#define DTYPE float

// 定义每层的参数形状
#define CONV1_WEIGHT_SIZE (6 * 1 * 5 * 5)
#define CONV1_BIAS_SIZE 6
#define CONV2_WEIGHT_SIZE (16 * 6 * 5 * 5)
#define CONV2_BIAS_SIZE 16
#define FC1_WEIGHT_SIZE (120 * 256)
#define FC1_BIAS_SIZE 120
#define FC2_WEIGHT_SIZE (84 * 120)
#define FC2_BIAS_SIZE 84
#define FC3_WEIGHT_SIZE (10 * 84)
#define FC3_BIAS_SIZE 10
#define INPUT_SIZE (1 * 1 * 28 * 28)

DTYPE *conv1_weight;
DTYPE *conv1_bias;
DTYPE *conv2_weight;
DTYPE *conv2_bias;
DTYPE *fc1_weight;
DTYPE *fc1_bias;
DTYPE *fc2_weight;
DTYPE *fc2_bias;
DTYPE *fc3_weight;
DTYPE *fc3_bias;
DTYPE *input;

extern void _mlir_ciface_triton__0d1d2de(int64_t arg0, int64_t arg1, int32_t arg2); //relu_0

extern void _mlir_ciface_triton__0d1d2d3de(int64_t arg0, int64_t arg1, int64_t arg2, int32_t arg3); //maxpool_1

extern void _mlir_ciface_triton__0d1d2de_2(int64_t arg0, int64_t arg1, int32_t arg2); //relu_2

extern void _mlir_ciface_triton__0d1d2de_3(int64_t arg0, int64_t arg1, int32_t arg2); //maxpool_3

extern void _mlir_ciface_triton__0d1d2de_4(int64_t arg0, int64_t arg1, int32_t arg2); //maxpool_4

extern void _mlir_ciface_triton__0d1d2e_5(int64_t arg0, int64_t arg1, int32_t arg2); //relu_5

extern void _mlir_ciface_triton__0d1d2_6(int64_t arg0, int64_t arg1, int32_t arg2); //relu_6

extern void _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(int64_t arg0, int64_t arg1, int64_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int32_t arg7); //mm

extern void _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(int64_t arg0, int64_t arg1, int64_t arg2, int64_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int32_t arg7, int32_t arg8, int32_t arg9); //addmm

extern void _mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int64_t arg6, int32_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int32_t arg12, int64_t arg13, int64_t arg14, int32_t arg15, int32_t arg16, int32_t arg17, int32_t arg18, int32_t arg19, int32_t arg20, int32_t arg21); //conv2d_1

extern void _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int64_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int32_t arg12, int32_t arg13, int64_t arg14, int64_t arg15, int32_t arg16, int32_t arg17, int32_t arg18, int32_t arg19, int32_t arg20, int32_t arg21, int32_t arg22); //conv2d_2

void transpose_matrix(const int *in_matrix, int *out_matrix, int m, int n) {
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < n; ++j) {
            out_matrix[j * m + i] = in_matrix[i * n + j];
        }
    }
}


void read_parameters(const char *file_path) {
    FILE *file = fopen(file_path, "rb");
    if (!file) {
        perror("无法打开文件");
        exit(EXIT_FAILURE);
    }

    // 分配内存存储每层的参数
    conv1_weight = malloc(CONV1_WEIGHT_SIZE * sizeof(DTYPE));
    conv1_bias = malloc(CONV1_BIAS_SIZE * sizeof(DTYPE));
    conv2_weight = malloc(CONV2_WEIGHT_SIZE * sizeof(DTYPE));
    conv2_bias = malloc(CONV2_BIAS_SIZE * sizeof(DTYPE));
    fc1_weight = malloc(FC1_WEIGHT_SIZE * sizeof(DTYPE));
    fc1_bias = malloc(FC1_BIAS_SIZE * sizeof(DTYPE));
    fc2_weight = malloc(FC2_WEIGHT_SIZE * sizeof(DTYPE));
    fc2_bias = malloc(FC2_BIAS_SIZE * sizeof(DTYPE));
    fc3_weight = malloc(FC3_WEIGHT_SIZE * sizeof(DTYPE));
    fc3_bias = malloc(FC3_BIAS_SIZE * sizeof(DTYPE));

    if (!conv1_weight || !conv1_bias || !conv2_weight || !conv2_bias ||
        !fc1_weight || !fc1_bias || !fc2_weight || !fc2_bias ||
        !fc3_weight || !fc3_bias) {
        perror("参数内存分配失败");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    // 按顺序读取每层的参数
    fread(conv1_weight, sizeof(DTYPE), CONV1_WEIGHT_SIZE, file);
    fread(conv1_bias, sizeof(DTYPE), CONV1_BIAS_SIZE, file);
    fread(conv2_weight, sizeof(DTYPE), CONV2_WEIGHT_SIZE, file);
    fread(conv2_bias, sizeof(DTYPE), CONV2_BIAS_SIZE, file);
    fread(fc1_weight, sizeof(DTYPE), FC1_WEIGHT_SIZE, file);
    fread(fc1_bias, sizeof(DTYPE), FC1_BIAS_SIZE, file);
    fread(fc2_weight, sizeof(DTYPE), FC2_WEIGHT_SIZE, file);
    fread(fc2_bias, sizeof(DTYPE), FC2_BIAS_SIZE, file);
    fread(fc3_weight, sizeof(DTYPE), FC3_WEIGHT_SIZE, file);
    fread(fc3_bias, sizeof(DTYPE), FC3_BIAS_SIZE, file);

    fclose(file);
    // printf("conv1_weight[0]: %f\n", conv1_weight[0]);
}

void free_parameters() {
    free(conv1_weight);
    free(conv1_bias);
    free(conv2_weight);
    free(conv2_bias);
    free(fc1_weight);
    free(fc1_bias);
    free(fc2_weight);
    free(fc2_bias);
    free(fc3_weight);
    free(fc3_bias);
}

void read_input(const char *file_path) {
    FILE *file = fopen(file_path, "rb");
    if (!file) {
        perror("无法打开文件");
        exit(EXIT_FAILURE);
    }

    // 分配内存存储每层的参数
    input = malloc(INPUT_SIZE * sizeof(DTYPE));

    if (!input) {
        perror("输入数据内存分配失败");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    // 按顺序读取每层的参数
    fread(input, sizeof(DTYPE), INPUT_SIZE, file);

    fclose(file);
    // printf("INPUT[0]: %f\n", input[28]);
}


void expand_array(const int *input, int input_size, int depth, int height, int width, int *output) {
    int output_index = 0;

    for (int i = 0; i < input_size; ++i) {
        for (int d = 0; d < depth; ++d) {
            for (int h = 0; h < height; ++h) {
                for (int w = 0; w < width; ++w) {
                    output[output_index++] = input[i];
                }
            }
        }
    }
}

int main() {

    // const char *binary_path = "../params/model_parameters.bin";
    read_parameters("../params/model_parameters.bin");
    read_input("preprocessed_image_3.bin");

    DTYPE* fc1_transposed = malloc(256 * 120 * sizeof(DTYPE)); // 256 * 120
    DTYPE* fc2_transposed = malloc(120 * 84 * sizeof(DTYPE)); // 120 * 84
    DTYPE* fc3_transposed = malloc(84 * 10 * sizeof(DTYPE)); // 84 * 10
    transpose_matrix(fc1_weight, fc1_transposed, 120, 256); // 256 * 120
    transpose_matrix(fc2_weight, fc2_transposed, 84, 120); // 120 * 84
    transpose_matrix(fc3_weight, fc3_transposed, 10, 84); // 84 * 10

    // printf("使用参数示例: conv1_weight[1] = %f\n", conv1_weight[1]);
    DTYPE* conv1_output = malloc(1 * 6 * 24 * 24 * sizeof(DTYPE));
    _mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c((int64_t)(uintptr_t)input, 784, 784, 28, 28, 28, (int64_t)(uintptr_t)conv1_weight, 25, 25, 5, 5, 5, 6, (int64_t)(uintptr_t)conv1_bias, (int64_t)(uintptr_t)conv1_output, 3456, 576, 24, 24, 24, 0, 0);
    // for (int c = 0; c < 6; c++) {
    //     printf("Channel %d:\n", c);
    //     for (int h = 0; h < 24; h++) {
    //         for (int w = 0; w < 24; w++) {
    //             int index = c * (24 * 24) + h * 24 + w;
    //             printf("%f ", conv1_output[index]);
    //         }
    //         printf("\n"); 
    //     }
    //     printf("\n");     
    // }
    DTYPE* relu0_output = malloc(1 * 6 * 24 * 24 * sizeof(DTYPE));
    _mlir_ciface_triton__0d1d2de((int64_t)(uintptr_t)conv1_output, (int64_t)(uintptr_t)relu0_output, 0);
    // for (int c = 0; c < 6; c++) {
    //     printf("Channel %d:\n", c);
    //     for (int h = 0; h < 24; h++) {
    //         for (int w = 0; w < 24; w++) {
    //             int index = c * (24 * 24) + h * 24 + w;
    //             printf("%f ", conv1_output[index]);
    //         }
    //         printf("\n");  
    //     }
    //     printf("\n");      
    // }
    DTYPE* pool1_output_1 = malloc(1 * 6 * 12 * 12 * sizeof(DTYPE));
    DTYPE* pool1_output_2 = malloc(1 * 6 * 12 * 12 * sizeof(DTYPE));
    _mlir_ciface_triton__0d1d2d3de((int64_t)(uintptr_t)conv1_output, (int64_t)(uintptr_t)pool1_output_1, (int64_t)(uintptr_t)pool1_output_2, 0);
    DTYPE* conv2_output = malloc(1 * 16 * 8 * 8 * sizeof(DTYPE));
    _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c((int64_t)(uintptr_t)pool1_output_1, 854, 144, 12, 12, 12, 6, (int64_t)(uintptr_t)conv2_weight, 150, 25, 5, 5, 5, 16, (int64_t)(uintptr_t)conv2_bias, (int64_t)(uintptr_t)conv2_output, 1024, 64, 8 ,8, 8, 0, 0);
    // for (int c = 0; c < 16; c++) {
    //     printf("Channel %d:\n", c);
    //     for (int h = 0; h < 8; h++) {
    //         for (int w = 0; w < 8; w++) {
    //             int index = c * (8 * 8) + h * 8 + w;
    //             printf("%f ", conv2_output[index]);
    //         }
    //         printf("\n");  
    //     }
    //     printf("\n");      
    // }
    DTYPE* relu2_output = malloc(1 * 16 * 8 * 8 * sizeof(DTYPE));
    _mlir_ciface_triton__0d1d2de_2((int64_t)(uintptr_t)conv2_output, (int64_t)(uintptr_t)relu2_output, 0);
    DTYPE* pool3_output = malloc(1 * 16 * 4 * 4 * sizeof(DTYPE));
    _mlir_ciface_triton__0d1d2de_3((int64_t)(uintptr_t)conv2_output, (int64_t)(uintptr_t)pool3_output, 0);
    DTYPE* pool4_output = malloc(1 * 16 * 4 * 4 * sizeof(DTYPE));
    _mlir_ciface_triton__0d1d2de_4((int64_t)(uintptr_t)conv2_output, (int64_t)(uintptr_t)pool4_output, 0);
    DTYPE* mm_output_1 = malloc(1 * 120 * sizeof(DTYPE));
    _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c((int64_t)(uintptr_t)pool4_output, (int64_t)(uintptr_t)fc1_transposed, (int64_t)(uintptr_t)mm_output_1, 120, 256, 256, 120, 120);
    // for(int i = 0; i < 120; i++){    
    //     printf("%f ", mm_output_1[i]);
    // }
    _mlir_ciface_triton__0d1d2e_5((int64_t)(uintptr_t)mm_output_1, (int64_t)(uintptr_t)fc1_bias, 0);
    DTYPE* mm_output_2 = malloc(1 * 84 * sizeof(DTYPE));
    _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c((int64_t)(uintptr_t)mm_output_1, (int64_t)(uintptr_t)fc2_transposed, (int64_t)(uintptr_t)mm_output_2, 84, 120, 120, 84, 84);
    // for(int i = 0; i < 84; i++){    
    //     printf("%f ", mm_output_2[i]);
    // }
    _mlir_ciface_triton__0d1d2_6((int64_t)(uintptr_t)mm_output_2, (int64_t)(uintptr_t)fc2_bias, 0);
    DTYPE* mm_output_3 = malloc(1 * 10 * sizeof(DTYPE));
    _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c((int64_t)(uintptr_t)fc3_bias, (int64_t)(uintptr_t)mm_output_2, (int64_t)(uintptr_t)fc3_transposed, (int64_t)(uintptr_t)mm_output_3, 10 ,84, 10, 84, 10, 10);
    for(int i = 0; i < 10; i++) {
        printf("%f ", mm_output_3[i]);
    }
    printf("\n"); 
    free_parameters();
    return 0;





    // clock_t start, end;
    // double cpu_time_used;
    // start = clock();

    // for (int i = 0; i < 10000; i++) {


    //     // const char *binary_path = "../params/model_parameters.bin";
    //     read_parameters("../params/model_parameters.bin");
    //     read_input("preprocessed_image_7.bin");

    //     DTYPE* fc1_transposed = malloc(256 * 120 * sizeof(DTYPE)); // 256 * 120
    //     DTYPE* fc2_transposed = malloc(120 * 84 * sizeof(DTYPE)); // 120 * 84
    //     DTYPE* fc3_transposed = malloc(84 * 10 * sizeof(DTYPE)); // 84 * 10
    //     transpose_matrix(fc1_weight, fc1_transposed, 120, 256); // 256 * 120
    //     transpose_matrix(fc2_weight, fc2_transposed, 84, 120); // 120 * 84
    //     transpose_matrix(fc3_weight, fc3_transposed, 10, 84); // 84 * 10

    //     // printf("使用参数示例: conv1_weight[1] = %f\n", conv1_weight[1]);
    //     DTYPE* conv1_output = malloc(1 * 6 * 24 * 24 * sizeof(DTYPE));
    //     _mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c((int64_t)(uintptr_t)input, 784, 784, 28, 28, 28, (int64_t)(uintptr_t)conv1_weight, 25, 25, 5, 5, 5, 6, (int64_t)(uintptr_t)conv1_bias, (int64_t)(uintptr_t)conv1_output, 3456, 576, 24, 24, 24, 0, 0);
    //     // for (int c = 0; c < 6; c++) {
    //     //     printf("Channel %d:\n", c);
    //     //     for (int h = 0; h < 24; h++) {
    //     //         for (int w = 0; w < 24; w++) {
    //     //             int index = c * (24 * 24) + h * 24 + w;
    //     //             printf("%f ", conv1_output[index]);
    //     //         }
    //     //         printf("\n"); 
    //     //     }
    //     //     printf("\n");     
    //     // }
    //     DTYPE* relu0_output = malloc(1 * 6 * 24 * 24 * sizeof(DTYPE));
    //     _mlir_ciface_triton__0d1d2de((int64_t)(uintptr_t)conv1_output, (int64_t)(uintptr_t)relu0_output, 0);
    //     // for (int c = 0; c < 6; c++) {
    //     //     printf("Channel %d:\n", c);
    //     //     for (int h = 0; h < 24; h++) {
    //     //         for (int w = 0; w < 24; w++) {
    //     //             int index = c * (24 * 24) + h * 24 + w;
    //     //             printf("%f ", conv1_output[index]);
    //     //         }
    //     //         printf("\n");  
    //     //     }
    //     //     printf("\n");      
    //     // }
    //     DTYPE* pool1_output_1 = malloc(1 * 6 * 12 * 12 * sizeof(DTYPE));
    //     DTYPE* pool1_output_2 = malloc(1 * 6 * 12 * 12 * sizeof(DTYPE));
    //     _mlir_ciface_triton__0d1d2d3de((int64_t)(uintptr_t)conv1_output, (int64_t)(uintptr_t)pool1_output_1, (int64_t)(uintptr_t)pool1_output_2, 0);
    //     DTYPE* conv2_output = malloc(1 * 16 * 8 * 8 * sizeof(DTYPE));
    //     _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c((int64_t)(uintptr_t)pool1_output_1, 854, 144, 12, 12, 12, 6, (int64_t)(uintptr_t)conv2_weight, 150, 25, 5, 5, 5, 16, (int64_t)(uintptr_t)conv2_bias, (int64_t)(uintptr_t)conv2_output, 1024, 64, 8 ,8, 8, 0, 0);
    //     // for (int c = 0; c < 16; c++) {
    //     //     printf("Channel %d:\n", c);
    //     //     for (int h = 0; h < 8; h++) {
    //     //         for (int w = 0; w < 8; w++) {
    //     //             int index = c * (8 * 8) + h * 8 + w;
    //     //             printf("%f ", conv2_output[index]);
    //     //         }
    //     //         printf("\n");  
    //     //     }
    //     //     printf("\n");      
    //     // }
    //     DTYPE* relu2_output = malloc(1 * 16 * 8 * 8 * sizeof(DTYPE));
    //     _mlir_ciface_triton__0d1d2de_2((int64_t)(uintptr_t)conv2_output, (int64_t)(uintptr_t)relu2_output, 0);
    //     DTYPE* pool3_output = malloc(1 * 16 * 4 * 4 * sizeof(DTYPE));
    //     _mlir_ciface_triton__0d1d2de_3((int64_t)(uintptr_t)conv2_output, (int64_t)(uintptr_t)pool3_output, 0);
    //     DTYPE* pool4_output = malloc(1 * 16 * 4 * 4 * sizeof(DTYPE));
    //     _mlir_ciface_triton__0d1d2de_4((int64_t)(uintptr_t)conv2_output, (int64_t)(uintptr_t)pool4_output, 0);
    //     DTYPE* mm_output_1 = malloc(1 * 120 * sizeof(DTYPE));
    //     _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c((int64_t)(uintptr_t)pool4_output, (int64_t)(uintptr_t)fc1_transposed, (int64_t)(uintptr_t)mm_output_1, 120, 256, 256, 120, 120);
    //     _mlir_ciface_triton__0d1d2e_5((int64_t)(uintptr_t)mm_output_1, (int64_t)(uintptr_t)fc1_bias, 0);
    //     DTYPE* mm_output_2 = malloc(1 * 84 * sizeof(DTYPE));
    //     _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c((int64_t)(uintptr_t)mm_output_1, (int64_t)(uintptr_t)fc2_transposed, (int64_t)(uintptr_t)mm_output_2, 84, 120, 120, 84, 84);
    //     _mlir_ciface_triton__0d1d2_6((int64_t)(uintptr_t)mm_output_2, (int64_t)(uintptr_t)fc2_bias, 0);
    //     DTYPE* mm_output_3 = malloc(1 * 10 * sizeof(DTYPE));
    //     _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c((int64_t)(uintptr_t)fc3_bias, (int64_t)(uintptr_t)mm_output_2, (int64_t)(uintptr_t)fc3_transposed, (int64_t)(uintptr_t)mm_output_3, 10 ,84, 10, 84, 10, 10);
    //     // for(int i = 0; i < 10; i++) {
    //     //     printf("%f ", mm_output_3[i]);
    //     // }
    //     // printf("\n"); 
    //     free_parameters();
        
    // }

    // end = clock();
    // cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

    // // 输出结果
    // printf("Total time for 1000 runs: %f seconds\n", cpu_time_used);
    // return 0;

    



}