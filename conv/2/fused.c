#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
#include <stdbool.h>

#define DTYPE float
#define dim 1

#define length 784
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

extern void _mlir_ciface_triton_(ArgDescriptor* arg1, ArgDescriptor* arg2, __int32_t arg3, __int32_t arg4, __int32_t arg5, __int32_t arg6, __int32_t arg7, __int32_t arg8, __int32_t);


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

// MemRefDescriptor get_memref(DTYPE *mem, int l) {
//     MemRefDescriptor descriptor;
//     // descriptor.size = l;
//     descriptor.allocated = mem;
//     // if (descriptor.allocated == NULL) {
//     //     // Handle allocation error.
//     //     exit(EXIT_FAILURE);
//     // }

//     // No specific alignment is done here, so aligned points to the same location.
//     descriptor.aligned = descriptor.allocated;

//     // No additional offset in this case.
//     descriptor.offset = 0;
//     // Set sizes of the matrix.
//     descriptor.sizes[0] = l; // Batch size

//     // Calculate strides following row-major order.
//     descriptor.strides[0] = 1;

//     return descriptor;
// }



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

    ArgDescriptor memref_a = get_arg(A, length);
    ArgDescriptor memref_b = get_arg(B, length);
    _mlir_ciface_triton_(&memref_a, &memref_b, 0, 0, 0, 0, 0, 0, 0);

    free(memref_a.argstruct);
    free(memref_b.argstruct);
    
    printf("After _mlir_ciface_triton_:\n");
    printf("Array A (first 10 elements):\n");
    for (int i = 0; i < (length < 33 ? length : 33); i++) {
        printf("%f ", A[i]);
    }
    printf("\n");

    free(A);
    free(B);
    return 0;
}