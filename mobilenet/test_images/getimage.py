from PIL import Image
import numpy as np
import ctypes
import math
from typing import Tuple
import sys
sys.path.append("..")
from compute.StrideArray import StridedArray, fill_strided_array


def process_and_store_image(img_path, IMG_SIZE=(256, 256)):
    # 读取图像并转换为RGB
    img = Image.open(img_path).convert("RGB")

    # 图像缩放到IMG_SIZE大小
    img = img.resize(IMG_SIZE, Image.Resampling.LANCZOS)

    # 转为NumPy数组并转换格式为 (C, H, W)
    img = np.array(img).astype("float32").transpose((2, 0, 1))

    # 归一化到 [0, 1] 范围
    img = img / 255.0

    # 将图像数据存入StridedArray
    shape = (1, 3, 256, 256)  # (N, C, H, W)
    strides = (196608, 65536, 256, 1)  # 获取对应的步幅
    # strides = (196608, 1, 768, 3)
    # 为StridedArray准备数据，转换为ctypes数组
    dtype = ctypes.c_float
    total_elements = np.prod(shape)
    array_type = dtype * total_elements
    ctypes_array = array_type()

    # 创建StridedArray实例
    strided_array = StridedArray(
        data=ctypes_array,
        shape=shape,
        strides=strides,
        dtype=dtype
    )

    # 填充StridedArray
    # np_data = np.ctypeslib.as_array(strided_array.data)
    # np_data[:] = img.flatten()  # 将图像数据平铺并填充到StridedArray中
    fill_strided_array(strided_array, img.flatten())

    return strided_array



# strided_array = process_and_store_image('/home/meng/torch-compiler/models/mobilenet/test_images/005.png', IMG_SIZE=(256, 256))
# print(strided_array)

