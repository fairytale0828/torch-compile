import numpy as np

def read_and_print_bin(binary_path):
    """
    读取二进制文件并打印模型参数 vec1 和 vec2。

    Args:
        binary_path (str): 二进制文件的路径。
    """
    num_vectors = 2      # 假设有两个向量
    num_elements = 10    # 每个向量的元素数量
    dtype = np.float32   # 数据类型

    try:
        # 使用 NumPy 读取整个文件
        data = np.fromfile(binary_path, dtype=dtype)
        
        # 检查数据大小是否符合预期
        expected_size = num_vectors * num_elements
        if data.size != expected_size:
            print(f"警告: 预期 {expected_size} 个元素，但读取了 {data.size} 个元素。")
        
        # 分割数据为 vec1 和 vec2
        vec1 = data[:num_elements]
        vec2 = data[num_elements:num_vectors*num_elements]
        
        # 打印结果
        print("vec1:", vec1)
        print("vec2:", vec2)
    except FileNotFoundError:
        print(f"错误: 文件未找到 - {binary_path}")
    except Exception as e:
        print(f"读取文件时出错: {e}")

if __name__ == "__main__":
    binary_path = "vecadd_params.bin"  # 请确保此路径正确
    read_and_print_bin(binary_path)
