#include <iostream>
#include <immintrin.h>  // 包含 AVX-512 指令集支持

int main() {
    // 使用 alignas(64) 确保数据对齐到 64 字节（AVX-512 所需的对齐）
    alignas(128) float data[16] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f,
                                  9.0f, 10.0f, 11.0f, 12.0f, 13.0f, 14.0f, 15.0f, 16.0f};

    // 使用 AVX-512 指令进行加载（512 位寄存器，64 字节对齐）
    __m512 vec = _mm512_load_ps(data);

    // 打印数据以检查加载是否成功
    float* result = (float*)&vec;
    for (int i = 0; i < 16; ++i) {
        std::cout << "result[" << i << "] = " << result[i] << std::endl;
    }

    return 0;
}