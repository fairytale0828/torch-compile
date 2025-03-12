// addmm

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>  
#include <assert.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#define DTYPE float

#define length 10
extern void _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(int64_t arg0, int64_t arg1, int64_t arg2, int64_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int32_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int32_t arg12, int32_t arg13, int32_t arg14);
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
    DTYPE *A = calloc(10, sizeof(DTYPE));
    DTYPE *B = calloc(94, sizeof(DTYPE));
    DTYPE *C = calloc(940, sizeof(DTYPE));
    DTYPE *D = calloc(10, sizeof(DTYPE));
    for (int i = 0; i < 10; i++) {
        A[i] = 1.0f;
    }
    for (int i = 0; i < 94; i++) {
        B[i] = 1.0f;
    }
    for (int i = 0; i < 940; i++) {
        C[i] = 1.0f;
    }
    for (int i = 0; i < 10; i++) {
        D[i] = 0.0f;
    }
  
    DTYPE *memref_a = get_arg(A, 10);
    DTYPE *memref_b = get_arg(B, 94);
    DTYPE *memref_c = get_arg(C, 940);
    DTYPE *memref_d = get_arg(D, 10);


    _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(
        (int64_t)(uintptr_t)memref_a, (int64_t)(uintptr_t)memref_b, (int64_t)(uintptr_t)memref_c, (int64_t)(uintptr_t)memref_d ,1, 10 ,94, 10,1, 94,1, 10,1, 10,1 
    );

    printf("After _mlir_ciface_triton__0d1d2de:\n");
    printf("Array A (first 10 elements):\n");
    for (int i = 0; i < (length < 1000 ? length : 1000); i++) { 
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



