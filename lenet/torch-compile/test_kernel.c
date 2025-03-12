// // relu_0

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>  
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 3456
// extern void _mlir_ciface_triton__0d1d2de(int64_t arg0, int64_t arg1, int32_t arg2);

// DTYPE *get_arg(DTYPE *mem, int l) {

//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(3456, sizeof(DTYPE));
//     DTYPE *B = calloc(3456, sizeof(DTYPE));
//     for (int i = 0; i < 81; i++) {
//         A[i] = 1.0f;
//     }
//     for(int i=81; i<3456; i++) {
//         A[i] = -10.0f;
//     }
//     for (int i = 0; i < 3456; i++) {
//         B[i] = 1.0f;
//     }
  
//     DTYPE *memref_a = get_arg(A, length);
//     DTYPE *memref_b = get_arg(B, length);


//     _mlir_ciface_triton__0d1d2de(
//         (int64_t)(uintptr_t)memref_a, (int64_t)(uintptr_t)memref_b, 0
//     );



//     printf("After _mlir_ciface_triton__0d1d2de:\n");
//     printf("Array A (first 10 elements):\n");
//     for (int i = 0; i < (length < 100 ? length : 100); i++) { 
//         printf("%f ", memref_a[i]);
//     }
//     printf("\n");

//     free(memref_a);
//     free(memref_b);

    
//     free(A);
//     free(B);
 
//     return 0;
// }



// // maxpool_1_test

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 3456
// #define len 864

// extern void _mlir_ciface_triton__0d1d2d3de(int64_t arg0, int64_t arg1, int64_t arg2, int32_t arg3);

// DTYPE* get_arg(DTYPE *mem, int l) {
//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(3456, sizeof(DTYPE));
//     DTYPE *B = calloc(864, sizeof(DTYPE));
//     DTYPE *C = calloc(864, sizeof(DTYPE));

//     for (int i = 0; i < 3456; i++) {
//         A[i] = 1.0f;
//     }

//     DTYPE *memref_a = get_arg(A, length);
//     DTYPE *memref_b = get_arg(B, len);
//     DTYPE *memref_c = get_arg(C, len);

//     _mlir_ciface_triton__0d1d2d3de(
//         (int64_t)(uintptr_t)memref_a,
//         (int64_t)(uintptr_t)memref_b,
//         (int64_t)(uintptr_t)memref_c,
//         0
//     );

//     printf("After _mlir_ciface_triton__0d1d2d3de:\n");
//     printf("Array A (first 10 elements):\n");

//     for (int i = 0; i < (length < 100 ? length : 100); i++) {
//         printf("%f ", memref_b[i]);
//     }
//     printf("\n");

//     for (int i = 0; i < (length < 100 ? length : 100); i++) {
//         printf("%f ", memref_c[i]);
//     }
//     printf("\n");

//     free(memref_a);
//     free(memref_b);
//     free(memref_c);
//     free(A);
//     free(B);
//     free(C);
//     return 0;
// }



// // maxpool_3_test

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 1024
// #define len 256

// extern void triton__0d1d2de_3(int64_t arg0, int64_t arg1, int32_t arg2);

// DTYPE* get_arg(DTYPE *mem, int l) {
//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(1024, sizeof(DTYPE));
//     DTYPE *B = calloc(256, sizeof(DTYPE));
// ;

//     for (int i = 0; i < 1024; i++) {
//         A[i] = i;
//     }

//     DTYPE *memref_a = get_arg(A, length);
//     DTYPE *memref_b = get_arg(B, len);


//     triton__0d1d2de_3(
//         (int64_t)(uintptr_t)memref_a,
//         (int64_t)(uintptr_t)memref_b,
//         0
//     );

//     printf("After _mlir_ciface_triton__0d1d2d3de:\n");
//     printf("Array A (first 10 elements):\n");

//     for (int i = 0; i < (length < 100 ? length : 100); i++) {
//         printf("%f ", memref_b[i]);
//     }
//     printf("\n");

//     printf("\n");

//     free(memref_a);
//     free(memref_b);
//     free(A);
//     free(B);
//     return 0;
// }




// // maxpool_4_test

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 1024
// #define len 256

// extern void triton__0d1d2de_4(int64_t arg0, int64_t arg1, int32_t arg2);

// DTYPE* get_arg(DTYPE *mem, int l) {
//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(1024, sizeof(DTYPE));
//     DTYPE *B = calloc(256, sizeof(DTYPE));
// ;

//     for (int i = 0; i < 1024; i++) {
//         A[i] = i;
//     }

//     DTYPE *memref_a = get_arg(A, length);
//     DTYPE *memref_b = get_arg(B, len);


//     triton__0d1d2de_4(
//         (int64_t)(uintptr_t)memref_a,
//         (int64_t)(uintptr_t)memref_b,
//         0
//     );

//     printf("After _mlir_ciface_triton__0d1d2d3de:\n");
//     printf("Array A (first 10 elements):\n");

//     for (int i = 0; i < (length < 100 ? length : 100); i++) {
//         printf("%f ", memref_b[i]);
//     }
//     printf("\n");

//     printf("\n");

//     free(memref_a);
//     free(memref_b);
//     free(A);
//     free(B);
//     return 0;
// }




// // relu_5

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>  
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 120
// extern void _mlir_ciface_triton__0d1d2e_5(int64_t arg0, int64_t arg1, int32_t arg2);

// DTYPE *get_arg(DTYPE *mem, int l) {

//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(120, sizeof(DTYPE));
//     DTYPE *B = calloc(120, sizeof(DTYPE));
//     for (int i = 0; i < 81; i++) {
//         A[i] = 1.0f;
//     }
//     for(int i=81; i<120; i++) {
//         A[i] = -10.0f;
//     }
//     for (int i = 0; i < 120; i++) {
//         B[i] = 1.0f;
//     }
  
//     DTYPE *memref_a = get_arg(A, length);
//     DTYPE *memref_b = get_arg(B, length);


//     _mlir_ciface_triton__0d1d2e_5(
//         (int64_t)(uintptr_t)memref_a, (int64_t)(uintptr_t)memref_b, 0
//     );



//     printf("After _mlir_ciface_triton__0d1d2de:\n");
//     printf("Array A (first 10 elements):\n");
//     for (int i = 0; i < (length < 100 ? length : 100); i++) { 
//         printf("%f ", memref_a[i]);
//     }
//     printf("\n");

//     free(memref_a);
//     free(memref_b);

    
//     free(A);
//     free(B);
 
//     return 0;
// }





// // mm

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>  
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 256
// extern void _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(int64_t arg0, int64_t arg1, int64_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int32_t arg7);

// DTYPE *get_arg(DTYPE *mem, int l) {

//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(256, sizeof(DTYPE));
//     DTYPE *B = calloc(256*120, sizeof(DTYPE));
//     DTYPE *C = calloc(120, sizeof(DTYPE));
//     for (int i = 0; i < 256; i++) {
//         A[i] = 1.0f;
//     }
//     for (int i = 0; i < 256*120; i++) {
//         B[i] = 1.0f;
//     }
  
//     DTYPE *memref_a = get_arg(A, length);
//     DTYPE *memref_b = get_arg(B, length*120);
//     DTYPE *memref_c = get_arg(C, 120);


//     _mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(
//         (int64_t)(uintptr_t)memref_a, (int64_t)(uintptr_t)memref_b, (int64_t)(uintptr_t)memref_c, 120, 256, 256, 120, 120 
//     );



//     printf("After _mlir_ciface_triton__0d1d2de:\n");
//     printf("Array A (first 10 elements):\n");
//     for (int i = 0; i < (length < 1000 ? length : 1000); i++) { 
//         printf("%f ", memref_c[i]);
//     }
//     printf("\n");

//     free(memref_a);
//     free(memref_b);

    
//     free(A);
//     free(B);
 
//     return 0;
// }





// // addmm

// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>  
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 10
// extern void _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(int64_t arg0, int64_t arg1, int64_t arg2, int64_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int32_t arg7, int32_t arg8, int32_t arg9);
// // arg0 bias
// // arg1 inputA
// // arg2 inputB
// // arg3 output
// // arg4 N
// // arg5 K
// // arg6 stride_am
// // arg7 stride_bm
// // arg8 stride_cm
// // arg9 stride_dm
// DTYPE *get_arg(DTYPE *mem, int l) {

//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(10, sizeof(DTYPE));
//     DTYPE *B = calloc(84, sizeof(DTYPE));
//     DTYPE *C = calloc(840, sizeof(DTYPE));
//     DTYPE *D = calloc(10, sizeof(DTYPE));
//     for (int i = 0; i < 10; i++) {
//         A[i] = 1.0f;
//     }
//     for (int i = 0; i < 84; i++) {
//         B[i] = 1.0f;
//     }
//     for (int i = 0; i < 840; i++) {
//         C[i] = 1.0f;
//     }
//     for (int i = 0; i < 10; i++) {
//         D[i] = 0.0f;
//     }
  
//     DTYPE *memref_a = get_arg(A, 10);
//     DTYPE *memref_b = get_arg(B, 84);
//     DTYPE *memref_c = get_arg(C, 840);
//     DTYPE *memref_d = get_arg(D, 10);


//     _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(
//         (int64_t)(uintptr_t)memref_a, (int64_t)(uintptr_t)memref_b, (int64_t)(uintptr_t)memref_c, (int64_t)(uintptr_t)memref_d ,10 ,84, 10, 84, 10, 10 
//     );



//     printf("After _mlir_ciface_triton__0d1d2de:\n");
//     printf("Array A (first 10 elements):\n");
//     for (int i = 0; i < (length < 1000 ? length : 1000); i++) { 
//         printf("%f ", memref_d[i]);
//     }
//     printf("\n");

//     free(memref_a);
//     free(memref_b);
//     free(memref_c);
//     free(memref_d);

    
//     free(A);
//     free(B);
//     free(C);
//     free(D);
 
//     return 0;
// }






// // conv2d
// // arg0:input_ptr
// // arg1:input_batch_stride
// // arg2:input_channel_stride
// // arg3:input_row_stride
// // arg4:input_height
// // arg5:input_width
// // arg6:kernel_ptr
// // arg7:kernel_outch_stride
// // arg8:kernel_inch_stride
// // arg9:kernel_row_stride
// // arg10:kernel_height
// // arg11:kernel_width
// // arg12:kernel_batch
// // arg13:bias_ptr
// // arg14:output_ptr
// // arg15:output_batch_stride
// // arg16:output_channel_stride
// // arg17:output_row_stride
// // arg18:out_height
// // arg19:out_width
// // arg20:pad_h
// // arg21:pad_w
// #include <stdlib.h>
// #include <stdio.h>
// #include <stdint.h>  
// #include <assert.h>
// #include <time.h>
// #include <stdbool.h>
// #include <string.h>

// #define DTYPE float

// #define length 64
// extern void _mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int64_t arg6, int32_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int32_t arg12, int64_t arg13, int64_t arg14, int32_t arg15, int32_t arg16, int32_t arg17, int32_t arg18, int32_t arg19, int32_t arg20, int32_t arg21);

// DTYPE *get_arg(DTYPE *mem, int l) {

//     DTYPE *memref = (DTYPE *)malloc(l * sizeof(DTYPE));
//     if (memref == NULL) {
//         fprintf(stderr, "Failed to allocate memory in get_arg.\n");
//         exit(EXIT_FAILURE);
//     }
//     memcpy(memref, mem, l * sizeof(DTYPE));
//     return memref;
// }

// int main(int argc, char *argv[])
// {
//     DTYPE *A = calloc(28*28, sizeof(DTYPE));
//     DTYPE *B = calloc(150, sizeof(DTYPE));
//     DTYPE *C = calloc(6*24*24, sizeof(DTYPE));
//     DTYPE *D = calloc(6*24*24, sizeof(DTYPE));
//     for (int i = 0; i < 28*28; i++) {
//         A[i] = 1.0f;
//     }
//     for (int i = 0; i < 150; i++) {
//         B[i] = 1.0f;
//     }
//     for (int i = 0; i < 6*24*24; i++) {
//         C[i] = 1.0f;
//     }
//     for (int i = 0; i < 6*24*24; i++) {
//         D[i] = 0.0f;
//     }

//     DTYPE *memref_a = get_arg(A, 28*28);
//     DTYPE *memref_b = get_arg(B, 150);
//     DTYPE *memref_c = get_arg(C, 6*24*24);
//     DTYPE *memref_d = get_arg(D, 6*24*24);




//     _mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(
//         (int64_t)(uintptr_t)memref_a, 784, 784, 28, 28, 28, 
//         (int64_t)(uintptr_t)memref_b, 25, 25, 5, 5, 5, 6,
//         (int64_t)(uintptr_t)memref_c, (int64_t)(uintptr_t)memref_d, 3456, 576, 24, 24, 24, 0, 0
//     );

//     printf("After _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c:\n");
//     printf("Array A (first 10 elements):\n");
//     for (int i = 0; i < (length < 100 ? length : 100); i++) { 
//         printf("%f ", memref_d[i]);
//     }
//     printf("\n");
//     free(memref_a);
//     free(memref_b);
//     free(memref_c);
//     free(memref_d);
//     free(A);
//     free(B);
//     free(C);
//     free(D);
//     return 0;
// }








// conv2d_2
// arg0:input_ptr
// arg1:input_batch_stride
// arg2:input_channel_stride
// arg3:input_row_stride
// arg4:input_height
// arg5:input_width
// arg6:in_channels
// arg7:kernel_ptr
// arg8:kernel_outch_stride
// arg9:kernel_inch_stride
// arg10:kernel_row_stride
// arg11:kernel_height
// arg12:kernel_width
// arg13:kernel_batch
// arg14:bias_ptr
// arg15:output_ptr
// arg16:output_batch_stride
// arg17:output_channel_stride
// arg18:output_row_stride
// arg19:out_height
// arg20:out_width
// arg21:pad_h
// arg22:pad_w
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>  
#include <assert.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#define DTYPE float

#define length 1000
extern void _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, int32_t arg6, int64_t arg7, int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11, int32_t arg12, int32_t arg13, int64_t arg14, int64_t arg15, int32_t arg16, int32_t arg17, int32_t arg18, int32_t arg19, int32_t arg20, int32_t arg21, int32_t arg22);

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
    DTYPE *A = calloc(864, sizeof(DTYPE));
    DTYPE *B = calloc(2400, sizeof(DTYPE));
    DTYPE *C = calloc(1024, sizeof(DTYPE));
    DTYPE *D = calloc(1024, sizeof(DTYPE));
    for (int i = 0; i < 864; i++) {
        A[i] = 1.0f;
    }
    for (int i = 0; i < 2400; i++) {
        B[i] = 1.0f;
    }
    for (int i = 0; i < 1024; i++) {
        C[i] = 1.0f;
    }
    for (int i = 0; i < 1024; i++) {
        D[i] = 0.0f;
    }

    DTYPE *memref_a = get_arg(A, 864);
    DTYPE *memref_b = get_arg(B, 2400);
    DTYPE *memref_c = get_arg(C, 1024);
    DTYPE *memref_d = get_arg(D, 1024);




    _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(
        (int64_t)(uintptr_t)memref_a, 854,144,12,12,12, 6,
        (int64_t)(uintptr_t)memref_b, 150,25,5,5,5,16,
        (int64_t)(uintptr_t)memref_c, (int64_t)(uintptr_t)memref_d, 1024,64,8,8,8,0,0
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
