#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>  // 引入 stdint.h 以使用 int64_t 和 int32_t
#include <assert.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#define DTYPE float
#define dim 1

#define length 784

extern void _mlir_ciface_triton__0d1d2de(int64_t arg0, int64_t arg1, int32_t arg2);

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
    DTYPE *A = calloc(length, sizeof(DTYPE));
    DTYPE *B = calloc(length, sizeof(DTYPE));
    for (int i = 0; i < length; i++) {
        A[i] = 6.0f;
    }
    for (int i = 0; i < length; i++) {
        B[i] = 2.0f;
    }
    DTYPE *memref_a = get_arg(A, length);
    DTYPE *memref_b = get_arg(B, length);

    _mlir_ciface_triton__0d1d2de(
        (int64_t)(uintptr_t)A,
        (int64_t)(uintptr_t)B,
        0  
    );

    free(memref_a);
    free(memref_b);
    

    printf("After _mlir_ciface_triton__0d1d2de:\n");
    printf("Array A (first 10 elements):\n");
    for (int i = 0; i < (length < 10 ? length : 10); i++) { 
        printf("%f ", A[i]);
    }
    printf("\n");

    free(A);
    free(B);
    return 0;
}
