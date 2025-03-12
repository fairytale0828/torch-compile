#include <stdio.h>
#include <stdlib.h>

#define VECTOR_SIZE 10
#define NUM_VECTORS 2

// 函数声明
void read_and_print_bin(const char *binary_path);

int main() {
    const char *binary_path = "vecadd_params.bin"; // 请确保此路径正确
    read_and_print_bin(binary_path);
    return 0;
}

void read_and_print_bin(const char *binary_path) {
    FILE *file = fopen(binary_path, "rb");
    if (file == NULL) {
        perror("错误: 无法打开文件");
        exit(EXIT_FAILURE);
    }

    // 分配内存用于存储两个向量
    float vec1[VECTOR_SIZE];
    float vec2[VECTOR_SIZE];

    // 读取第一个向量
    size_t read_count = fread(vec1, sizeof(float), VECTOR_SIZE, file);
    if (read_count != VECTOR_SIZE) {
        fprintf(stderr, "错误: 读取 vec1 时发生错误或文件不完整。\n");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    // 读取第二个向量
    read_count = fread(vec2, sizeof(float), VECTOR_SIZE, file);
    if (read_count != VECTOR_SIZE) {
        fprintf(stderr, "错误: 读取 vec2 时发生错误或文件不完整。\n");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    // 关闭文件
    fclose(file);

    // 打印结果
    printf("vec1: [");
    for (int i = 0; i < VECTOR_SIZE; i++) {
        printf("%.2f", vec1[i]);
        if (i < VECTOR_SIZE - 1) printf(", ");
    }
    printf("]\n");

    printf("vec2: [");
    for (int i = 0; i < VECTOR_SIZE; i++) {
        printf("%.2f", vec2[i]);
        if (i < VECTOR_SIZE - 1) printf(", ");
    }
    printf("]\n");
}
