#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>  
#include <assert.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#define DTYPE float

#define length 64
extern void _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int64_t arg6, int32_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int64_t arg12, int64_t arg13, int32_t arg14, int32_t arg15, int32_t arg16, int32_t arg17, int32_t arg18);

DTYPE *get_arg(DTYPE *mem, int l) {

    DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
    if (memref == NULL) {
        fprintf(stderr, "Failed to allocate memory in get_arg.\n");
        exit(EXIT_FAILURE);
    }
    memcpy(memref, mem, l * sizeof(DTYPE));
    return memref;
}

int main(int argc, char *argv[])
{
    DTYPE *A = calloc(81, sizeof(DTYPE));
    DTYPE *B = calloc(16, sizeof(DTYPE));
    DTYPE *C = calloc(64, sizeof(DTYPE));
    DTYPE *D = calloc(64, sizeof(DTYPE));
    for (int i = 0; i < 81; i++) {
        A[i] = 1.0f;
    }
    for (int i = 0; i < 16; i++) {
        B[i] = 1.0f;
    }
    for (int i = 0; i < 64; i++) {
        C[i] = 1.0f;
    }

    DTYPE *memref_a = get_arg(A, 81);
    DTYPE *memref_b = get_arg(B, 16);
    DTYPE *memref_c = get_arg(C, 64);
    DTYPE *memref_d = get_arg(D, 64);

    _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(
        (int64_t)(uintptr_t)memref_a, 81, 81, 9, 9, 9, 
        (int64_t)(uintptr_t)memref_b, 4, 4, 16, 16, 4,
        (int64_t)(uintptr_t)memref_c, (int64_t)(uintptr_t)memref_d, 8, 8, 64, 64, 8
    );



    printf("After _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c:\n");
    printf("Array A (first 10 elements):\n");
    for (int i = 0; i < (length < 100 ? length : 100); i++) { 
        printf("%f ", memref_d[i]);
    }
    printf("\n");

    free(memref_a);
    free(memref_b);
    free(memref_c);
    free(memref_d);
    
    free(A);
    free(B);
    free(C);
    free(D);
    return 0;
}
