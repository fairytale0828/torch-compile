#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
#include <stdbool.h>


#define DTYPE float
#define dim 1

#define length 10
#define CHUNK_SIZE 32  

typedef struct {
    DTYPE *allocated;
    DTYPE *aligned;
    __intptr_t offset;
    __intptr_t sizes[dim];
    __intptr_t strides[dim];
} MemRefDescriptor;

typedef struct {
    __int64_t size;
    MemRefDescriptor *argstruct;
} ArgDescriptor;

extern void _mlir_ciface_triton_(ArgDescriptor* arg1, ArgDescriptor* arg2, ArgDescriptor* arg3,ArgDescriptor* arg4, __int32_t arg5, __int32_t arg6, __int32_t arg7, __int32_t arg8, __int32_t arg9, __int32_t arg10, __int32_t arg11);


ArgDescriptor get_arg(DTYPE *mem, int l) {
    ArgDescriptor descriptor;
    descriptor.size = l;
    descriptor.argstruct = (MemRefDescriptor*)malloc(sizeof(MemRefDescriptor));
    descriptor.argstruct->allocated = mem;
    descriptor.argstruct->aligned = descriptor.argstruct->allocated;
    descriptor.argstruct->offset = 0;
    descriptor.argstruct->sizes[0] = l;
    descriptor.argstruct->strides[0] = 1;
    return descriptor;
}

void read_bin(const char *binary_path, float *B, float *C) {
    FILE *file = fopen(binary_path, "rb");
    if (file == NULL) {
        perror("错误: 无法打开文件");
        exit(EXIT_FAILURE);
    }
    size_t read_count = fread(B, sizeof(float), length, file);
    if (read_count != length) {
        fprintf(stderr, "错误: 读取 vec1 时发生错误或文件不完整。\n");
        fclose(file);
        exit(EXIT_FAILURE);
    }
    read_count = fread(C, sizeof(float), length, file);
    if (read_count != length) {
        fprintf(stderr, "错误: 读取 vec2 时发生错误或文件不完整。\n");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    // 关闭文件
    fclose(file);

    // 打印读取的内容（可选）
    // printf("Read vec1 into B (first 10 elements):\n");
    // for (int i = 0; i < (length < 10 ? length : 10); i++) {
    //     printf("%f ", B[i]);
    // }
    // printf("\n");

    // printf("Read vec2 into C (first 10 elements):\n");
    // for (int i = 0; i < (length < 10 ? length : 10); i++) {
    //     printf("%f ", C[i]);
    // }
    // printf("\n");
}



int main(int argc, char *argv[])
{
    DTYPE *A = calloc(length, sizeof(DTYPE));
    DTYPE *B = calloc(length, sizeof(DTYPE));
    DTYPE *C = calloc(length, sizeof(DTYPE));
    DTYPE *D = calloc(length, sizeof(DTYPE));

    for (int i = 0; i < length; i++) {
        A[i] = 9.0f;
    }
    for (int i = 0; i < length; i++) {
        D[i] = 2.0f;
    }
    
    read_bin("vecadd_params.bin", B, C);

    ArgDescriptor memref_a = get_arg(A, length);
    ArgDescriptor memref_b = get_arg(B, length);
    ArgDescriptor memref_c = get_arg(C, length);
    ArgDescriptor memref_d = get_arg(D, length);
    _mlir_ciface_triton_(&memref_a, &memref_b, &memref_c, &memref_d, 0, 0, 0, 0, 0, 0, 0);

    free(memref_a.argstruct);
    free(memref_b.argstruct);
    free(memref_c.argstruct);
    free(memref_d.argstruct);
    
    printf("After _mlir_ciface_triton_:\n");
    printf("Array D (first 10 elements):\n");
    for (int i = 0; i < (length < 10 ? length : 10); i++) {
        printf("%f ", D[i]);
    }
    printf("\n");

    free(A);
    free(B);
    free(C);
    free(D);
    return 0;
}