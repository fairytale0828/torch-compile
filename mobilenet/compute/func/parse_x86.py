# # import re
# # import os

# # def transform_line(line, inside_vec_operation):
# #     # 只有在检测到 vec 操作时才进行替换
# #     if inside_vec_operation:
# #         line = re.sub(r'\bauto\b', '__m256', line)
# #         line = re.sub(r'at::vec::Vectorized<float>::loadu', '_mm256_loadu_ps', line)
# #         line = re.sub(r'at::vec::Vectorized<float>\(([^)]+)\)', r'_mm256_set1_ps(\1)', line)
# #         line = re.sub(r'at::vec::clamp_min\((\b\w+\b),\s*decltype\(\1\)\(0\)\)', r'_mm256_max_ps(\1, _mm256_setzero_ps())', line)
# #         line = re.sub(r'(\b\w+\b)\.store\((.*)\)', r'_mm256_storeu_ps(\2, \1)', line)

# #         line = replace_binary_op(line, r'(\btmp\d*\b)\s*\+\s*(\btmp\d*\b)', '_mm256_add_ps')
# #         line = replace_binary_op(line, r'(\btmp\d*\b)\s*-\s*(\btmp\d*\b)', '_mm256_sub_ps')
# #         line = replace_binary_op(line, r'(\btmp\d*\b)\s*\*\s*(\btmp\d*\b)', '_mm256_mul_ps')

# #         line = replace_unary_op(line, r'(\btmp\d*\b)\.sqrt\(\)', '_mm256_sqrt_ps')
# #         line = replace_unary_op(line, r'(\btmp\d*\b)\.reciprocal\(\)', '_mm256_rcp_ps')
# #     return line

# # def replace_binary_op(line, pattern, op):
# #     return re.sub(pattern, lambda m: f"{op}({m.group(1)}, {m.group(2)})" if m.group(1).startswith('tmp') and m.group(2).startswith('tmp') else m.group(0), line)

# # def replace_unary_op(line, pattern, op):
# #     return re.sub(pattern, lambda m: f"{op}({m.group(1)})" if m.group(1).startswith('tmp') else m.group(0), line)

# # def extract_code_from_async_compile(input_file):
# #     with open(input_file, 'r') as infile:
# #         content = infile.read()
    
# #     pattern = r'(\w+)\s*=\s*async_compile\.cpp\(\'\'\'(.*?)\'\'\'\)'
# #     matches = re.findall(pattern, content, re.DOTALL)

# #     return matches

# # def remove_includes_and_insert_new_headers(code_block):
# #     code_block = re.sub(r'#include\s+[<"].*[">]', '', code_block)

# #     includes = '''#include <algorithm>
# # #include <atomic>
# # #include <cmath>
# # #include <cstdlib>
# # #include <limits>
# # #include <omp.h>
# # #include <iostream>
# # #include <immintrin.h>  
# # #include <vector>
# # '''

# #     return includes + code_block

# # def process_code_block(code_block):
# #     code_with_headers = remove_includes_and_insert_new_headers(code_block)
# #     lines = code_with_headers.split('\n')
    
# #     inside_vec_operation = False
# #     transformed_lines = []
    
# #     for line in lines:
# #         # 检查行中是否包含 `at::vec`，如果包含，则启用替换
# #         if 'at::vec' in line:
# #             inside_vec_operation = True
# #         # 只在包含 `at::vec` 操作的情况下进行替换
# #         transformed_line = transform_line(line, inside_vec_operation)
# #         transformed_lines.append(transformed_line)

# #         # 如果行结束是 `}`，说明当前块结束，重置 `inside_vec_operation`
# #         if '}' in line:
# #             inside_vec_operation = False
    
# #     return '\n'.join(transformed_lines)

# # def save_cpp_file(output_folder, prefix, code):
# #     if not os.path.exists(output_folder):
# #         os.makedirs(output_folder)
# #     output_file = os.path.join(output_folder, f'{prefix}.cpp')
# #     with open(output_file, 'w') as outfile:
# #         outfile.write(code)

# #     return output_file

# # def process_file(input_file, output_folder):
# #     matches = extract_code_from_async_compile(input_file)
    
# #     output_files = []
# #     for match in matches:
# #         prefix, code_block = match
# #         transformed_code = process_code_block(code_block)
# #         output_file = save_cpp_file(output_folder, prefix, transformed_code)
# #         output_files.append(output_file)
    
# #     return output_files

# # output_folder = 'x86/'
# # input_file = '../compute_graph.py' 
# # output_files = process_file(input_file, output_folder)




# import os
# import re

# def extract_code_from_async_compile(input_file):
#     with open(input_file, 'r') as infile:
#         content = infile.read()
    
#     # 提取 async_compile 中的代码块
#     pattern = r'(\w+)\s*=\s*async_compile\.cpp\(\'\'\'(.*?)\'\'\'\)'
#     matches = re.findall(pattern, content, re.DOTALL)
#     return matches


# def add_include_to_header(code_block):
#     # 添加 #include "at_vec_x86.h" 到每个代码块的顶部
#     code_block = re.sub(r'#include\s+[<"].*[">]', '', code_block)
#     includes = '#include "../../at_vec_x86.h"\n'
#     return includes + code_block

# def save_cpp_file(output_folder, prefix, code):
#     code = re.sub(r'extern\s+"C"\s*void\s*kernel', f'extern "C" void {prefix}', code)
#     if not os.path.exists(output_folder):
#         os.makedirs(output_folder)
    
#     output_file = os.path.join(output_folder, f'{prefix}.cpp')
#     with open(output_file, 'w') as outfile:
#         outfile.write(code)

#     return output_file

# def process_file(input_file, output_folder):
#     # 处理输入文件，提取代码并保存为 C++ 文件
#     matches = extract_code_from_async_compile(input_file)
    
#     output_files = []
#     for match in matches:
#         prefix, code_block = match
#         # 为每个代码块添加头文件
#         code_with_header = add_include_to_header(code_block)
#         # 保存 C++ 文件
#         output_file = save_cpp_file(output_folder, prefix, code_with_header)
#         output_files.append(output_file)
    
#     return output_files

# # 使用示例
# output_folder = 'x86/'  # 输出目录
# input_file = '../compute_graph.py'  # 输入 Python 文件
# output_files = process_file(input_file, output_folder)

# # 输出生成的文件路径
# print("生成的 C++ 文件:")
# for file in output_files:
#     print(file)






import os
import re

def extract_code_from_async_compile(input_file):
    with open(input_file, 'r') as infile:
        content = infile.read()
    
    # 提取 async_compile 中的代码块
    pattern = r'(\w+)\s*=\s*async_compile\.cpp\(\'\'\'(.*?)\'\'\'\)'
    matches = re.findall(pattern, content, re.DOTALL)
    return matches


def add_include_to_header(code_block):
    # 添加 #include "at_vec_x86.h" 到代码块顶部
    code_block = re.sub(r'#include\s+[<"].*[">]', '', code_block)
    # includes = '#include "../../at_vec_x86.h"\n'
    # return includes + code_block
    return code_block


def save_combined_cpp_file(output_folder, code_blocks):
    # 合并所有代码块，并保存到一个文件 func_x86.cpp
    combined_code = "\n\n".join(code_blocks)

    if not os.path.exists(output_folder):
        os.makedirs(output_folder)
    
    output_file = os.path.join(output_folder, 'func_x86.cpp')
    with open(output_file, 'w') as outfile:
        outfile.write(combined_code)

    return output_file


def process_file(input_file, output_folder):
    # 处理输入文件，提取代码并保存为单个 C++ 文件
    matches = extract_code_from_async_compile(input_file)
    includes = '#include "../../at_vec_x86.h"\n'
    code_blocks = []
    code_blocks.append(includes)
    for match in matches:
        prefix, code_block = match
        # 将函数名替换为 prefix
        code_block = re.sub(r'extern\s+"C"\s*void\s*kernel', f'extern "C" void {prefix}', code_block)
        # 为每个代码块添加头文件
        code_with_header = add_include_to_header(code_block)
        # 将代码块添加到列表中
        code_blocks.append(code_with_header)
    
    # 保存合并后的 C++ 文件
    output_file = save_combined_cpp_file(output_folder, code_blocks)
    
    return output_file




# 使用示例
output_folder = 'x86/'  # 输出目录
input_file = '/home/meng/torch-compiler/models/mobilenet/compute/cnjyxq2xy53furqvudmgaubvfrfe7ftbnykmnlnw67tx4k2nup4e.py'  # 输入 Python 文件
output_file = process_file(input_file, output_folder)

# 输出生成的文件路径
print("生成的 C++ 文件:")
print(output_file)
