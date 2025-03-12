#include <iostream>
#include <vector>
#include <cstring>
#include <cstdlib>
#include <cassert>
#include <ctime>
#include <string>

#define DTYPE float
#define LENGTH 10

// 外部函数声明
extern "C" void _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(
    int64_t arg0, int64_t arg1, int64_t arg2, int64_t arg3,
    int32_t arg4, int32_t arg5, int32_t arg6, int32_t arg7,
    int32_t arg8, int32_t arg9, int32_t arg10, int32_t arg11,
    int32_t arg12, int32_t arg13, int32_t arg14
);

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

int main(int argc, char* argv[]) {
    // 使用 C++ 的标准容器代替手动内存管理
    std::vector<DTYPE> A(10, 1.0f);
    std::vector<DTYPE> B(94, 1.0f);
    std::vector<DTYPE> C(940, 1.0f);
    std::vector<DTYPE> D(10, 0.0f);

    // 分配内存并获取引用
    DTYPE* memref_a = get_arg(A.data(), 10);
    DTYPE* memref_b = get_arg(B.data(), 94);
    DTYPE* memref_c = get_arg(C.data(), 940);
    DTYPE* memref_d = get_arg(D.data(), 10);

    // 调用外部函数
    _mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(
        reinterpret_cast<int64_t>(memref_a), 
        reinterpret_cast<int64_t>(memref_b),
        reinterpret_cast<int64_t>(memref_c), 
        reinterpret_cast<int64_t>(memref_d),
        1, 10, 94, 10, 
        1, 94, 1, 
        10, 1, 10, 1
    );

    // 打印结果
    std::cout << "After _mlir_ciface_triton__0d1d2de:" << std::endl;
    std::cout << "Array D (first " << LENGTH << " elements):" << std::endl;
    for (int i = 0; i < (LENGTH < 1000 ? LENGTH : 1000); i++) {
        std::cout << memref_d[i] << " ";
    }
    std::cout << std::endl;

    // 释放分配的内存
    free(memref_a);
    free(memref_b);
    free(memref_c);
    free(memref_d);

    return 0;
}
