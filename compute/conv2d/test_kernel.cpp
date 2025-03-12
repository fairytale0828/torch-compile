// #include <iostream>
// #include <vector>
// #include <cstring>
// #include <cstdlib>
// #include <cassert>
// #include <ctime>
// #include <string>

// #define DTYPE float
// #define LENGTH 64

// extern "C" void _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de2021c222324c25c26de27de28de29de30c(
//     int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, 
//     int32_t arg6, int32_t arg7, int64_t arg8, int32_t arg9, int32_t arg10, int32_t arg11,
//     int32_t arg12, int32_t arg13, int32_t arg14, int32_t arg15, int64_t arg16, int64_t arg17, 
//     int32_t arg18, int32_t arg19, int32_t arg20, int32_t arg21, int32_t arg22, int32_t arg23, int32_t arg24, int32_t arg25, int32_t arg26, int32_t arg27, int32_t arg28, int32_t arg29, int32_t arg30);

// template <typename T>
// T* get_arg(T* mem, int l) {
//     T* memref = (T*)malloc(l * sizeof(T));
//     if (memref == nullptr) {
//         std::cerr << "Failed to allocate memory in get_arg." << std::endl;
//         std::exit(EXIT_FAILURE);
//     }
//     std::memcpy(memref, mem, l * sizeof(T));
//     return memref;
// }

// int main() {
//     // 使用 std::vector 代替 C 风格数组
//     std::vector<DTYPE> A(81, 1.0f);
//     std::vector<DTYPE> B(16, 1.0f);
//     std::vector<DTYPE> C(64, 1.0f);
//     std::vector<DTYPE> D(64, 0.0f);

//     // 获取内存引用
//     DTYPE* memref_a = get_arg(A.data(), 81);
//     DTYPE* memref_b = get_arg(B.data(), 16);
//     DTYPE* memref_c = get_arg(C.data(), 64);
//     DTYPE* memref_d = get_arg(D.data(), 64);

//     // 打印数组和内存引用地址
//     // std::cout << "A: " << A.data() << ", B: " << B.data() << ", C: " << C.data() << ", D: " << D.data() << std::endl;
//     // std::cout << "memref_a: " << memref_a << ", memref_b: " << memref_b << ", memref_c: " << memref_c << ", memref_d: " << memref_d << std::endl;

//     // 调用外部函数
//     _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de2021c222324c25c26de27de28de29de30c(
//         reinterpret_cast<int64_t>(memref_a), 81, 81, 9,1, 9, 9,1, 
//         reinterpret_cast<int64_t>(memref_b), 16,16,4,1,4,4,1,
//         reinterpret_cast<int64_t>(memref_c), reinterpret_cast<int64_t>(memref_d),64,64,8,1,8,8,1,1,1,1,1,1,1 
//     );

//     // 打印结果
//     std::cout << "After _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c:" << std::endl;
//     std::cout << "Array D (first " << LENGTH << " elements):" << std::endl;
//     for (int i = 0; i < (LENGTH < 100 ? LENGTH : 100); i++) {
//         std::cout << memref_d[i] << " ";
//     }
//     std::cout << std::endl;

//     // 释放内存
//     free(memref_a);
//     free(memref_b);
//     free(memref_c);
//     free(memref_d);

//     return 0;
// }




#include <iostream>
#include <vector>
#include <cstring>
#include <cstdlib>
#include <cassert>
#include <ctime>
#include <string>

#define DTYPE float
#define LENGTH 16

extern "C" void _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(
    int64_t arg0, int32_t arg1, int32_t arg2, int32_t arg3, int32_t arg4, int32_t arg5, 
    int32_t arg6, int32_t arg7, int64_t arg8, int32_t arg9, int32_t arg10, int32_t arg11,
    int32_t arg12, int32_t arg13, int32_t arg14, int32_t arg15, int64_t arg16, int32_t arg17, 
    int32_t arg18, int32_t arg19, int32_t arg20, int32_t arg21, int32_t arg22, int32_t arg23, int32_t arg24, int32_t arg25, int32_t arg26, int32_t arg27, int32_t arg28, int32_t arg29);

template <typename T>
T* get_arg(T* mem, int l) {
    T* memref = (T*)malloc(l * sizeof(T));
    if (memref == nullptr) {
        std::cerr << "Failed to allocate memory in get_arg." << std::endl;
        std::exit(EXIT_FAILURE);
    }
    std::memcpy(memref, mem, l * sizeof(T));
    return memref;
}

int main() {
    // 使用 std::vector 代替 C 风格数组
    std::vector<DTYPE> A(144, 1.0f);
    std::vector<DTYPE> B(16, 1.0f);
    // std::vector<DTYPE> C(16, 1.0f);
    std::vector<DTYPE> D(16, 0.0f);

    // 获取内存引用
    DTYPE* memref_a = get_arg(A.data(), 144);
    DTYPE* memref_b = get_arg(B.data(), 16);
    // DTYPE* memref_c = get_arg(C.data(), 16);
    DTYPE* memref_d = get_arg(D.data(), 16);

    // 打印数组和内存引用地址
    // std::cout << "A: " << A.data() << ", B: " << B.data() << ", C: " << C.data() << ", D: " << D.data() << std::endl;
    // std::cout << "memref_a: " << memref_a << ", memref_b: " << memref_b << ", memref_c: " << memref_c << ", memref_d: " << memref_d << std::endl;

    // 调用外部函数
    _mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(
        reinterpret_cast<int64_t>(memref_a), 144, 144, 12,1, 12, 12,1, 
        reinterpret_cast<int64_t>(memref_b), 16,16,4,1,4,4,1, 
        reinterpret_cast<int64_t>(memref_d),16,16,4,1,4,4,3,3,2,2,2,2,1 
    );

    // 打印结果
    std::cout << "After _mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c:" << std::endl;
    std::cout << "Array D (first " << LENGTH << " elements):" << std::endl;
    for (int i = 0; i < (LENGTH < 100 ? LENGTH : 100); i++) {
        std::cout << memref_d[i] << " ";
    }
    std::cout << std::endl;

    // 释放内存
    free(memref_a);
    free(memref_b);
    // free(memref_c);
    free(memref_d);

    return 0;
}
