import ctypes
import math
import numpy as np
from typing import Tuple, Union, List
from PIL import Image


class StridedArray:
    def __init__(self, data: ctypes.Array, shape: Tuple[int], strides: Tuple[int], dtype, offset: int = 0):
        self._data = data
        self.shape = tuple(shape)
        self.strides = tuple(strides)
        self.dtype = dtype
        self.device = 'cpu'
        self._offset = offset
        self._size = self._calculate_total_elements()

    def _calculate_total_elements(self) -> int:
        return math.prod(self.shape)

    def __setitem__(self, indices, value):
        physical_index = self._resolve_index(indices) + self._offset
        if physical_index >= len(self._data):
            raise IndexError(f"物理索引 {physical_index} 超出存储边界 ({len(self._data)})")
        if isinstance(value, bool) and self.dtype is ctypes.c_bool:
            self._data[physical_index] = value
        elif isinstance(value, int) and self.dtype is ctypes.c_int:
            self._data[physical_index] = value
        elif isinstance(value, float) and self.dtype is ctypes.c_float:
            self._data[physical_index] = value
        else:
            raise ValueError(f"数据类型不兼容：期望 {self.dtype}，实际 {type(value)}")

    def __getitem__(self, indices):
        physical_index = self._resolve_index(indices) 
        return self._data[physical_index]   + self._offset

    def _resolve_index(self, indices) -> int:
        if isinstance(indices, int):
            return indices % self._size  # 支持负索引
        
        if len(indices) != len(self.shape):
            raise IndexError(f"需要 {len(self.shape)} 个索引，但得到 {len(indices)} 个")
        
        linear_index = 0
        for idx, dim, stride in zip(indices, self.shape, self.strides):
            if isinstance(idx, slice):
                start, stop, step = idx.start, idx.stop, idx.step
                if start is None:
                    start = 0
                if stop is None:
                    stop = dim
                if step is None:
                    step = 1
                range_indices = range(start, stop, step)
                linear_index += sum(i * stride for i in range_indices)
            else:
                if not (-dim <= idx < dim):
                    raise IndexError(f"维度索引 {idx} 超出范围 [{-dim}, {dim})")
                linear_index += (idx % dim) * stride
        
        return linear_index 

    def fill(self, value):
        for i in range(len(self._data)):
            self._data[i] = value

    @property
    def data(self):
        return self._data

    @property
    def ptr(self):
        return ctypes.cast(self._data, ctypes.POINTER(self.dtype))

    def is_nchw(self):
        return len(self.strides) == 4 and self.strides[1] == 1

    # def is_nhwc(self):
    #     return len(self.strides) == 4 and self.strides[-1] == 1


    def to_numpy(self) -> np.ndarray:
        # 创建空数组并填充数据
        arr = np.empty(self.shape, dtype=np.float32)
        with np.nditer(arr, flags=['multi_index'], op_flags=['writeonly']) as it:
            for x in it:
                x[...] = self[it.multi_index]
        return arr

    def __repr__(self):
        main_info = f"StridedArray(shape={self.shape}, strides={self.strides}, dtype={self.dtype}"
        
        if self._size <= 10:
            data_str = np.array2string(self.to_numpy(), precision=3, separator=', ')
            return main_info + f", data=\n{data_str})"
        
        summary = f"Showing first/last 6 elements of {self._size} total:"
        samples = []
        for i in range(min(6, self._size)):
            samples.append(f"{self[i]:.5f}")
        if self._size > 12:
            samples.append("...")
            for i in range(max(6, self._size-6), self._size):
                samples.append(f"{self[i]:.5f}")
        
        return main_info + f"\n  {summary}\n  [{', '.join(samples)}])"

    def print_all_data(self, limit=1000):
        # if self._size > limit:
        #     print(f"Array contains {self._size} elements, exceeding print limit ({limit})")
        #     return
        # base = np.asarray(self.data)
        base = np.ctypeslib.as_array(self._data, shape=self.shape)
        # 根据当前数组的 shape 与 strides（注意：这里 strides 应该以字节为单位，需要转换成 numpy 要求的格式）
        # 如果 self.strides 是以元素为单位，则转换为字节需要乘以每个元素的字节数
        element_size = base.dtype.itemsize
        strides_in_bytes = tuple(s * element_size for s in self.strides)
        
        # 利用 np.lib.stride_tricks.as_strided 从偏移位置创建视图
        view = np.lib.stride_tricks.as_strided(
            base[self._offset:],
            shape=self.shape,
            strides=strides_in_bytes
        )
        
        print(np.array2string(view, 
                                precision=5, 
                                separator=', ', 
                                formatter={'float': lambda x: f"{x:.5f}"}))
        

    def check_nan(self) -> bool:
        """
        检查 StridedArray 中是否包含 NaN 值。
        """
        np_data = np.ctypeslib.as_array(self._data, shape=self.shape)
        return np.isnan(np_data).any()  # 如果存在 NaN 值，返回 True

    

def calculate_strides_nchw(shape):
    N, C, H, W = shape
    strides = (C * H * W, 1, C*W, C)  # PyTorch NCHW 格式步幅
    return strides
    
    


def empty_strided(shape, strides, device='cpu', dtype=ctypes.c_float):
    max_offset = sum((dim-1)*stride for dim, stride in zip(shape, strides))
    total_elements = max_offset + 1  # 确保内存足够容纳
    
    array_type = dtype * total_elements
    ctypes_array = array_type()
    
    return StridedArray(
        data=ctypes_array,
        shape=shape,
        strides=strides,
        dtype=dtype
    )



def copy_small_array_to_large(dest: StridedArray, src: StridedArray, dest_offset: int):

    subview = reinterpret_tensor(dest, src.shape, dest.strides, storage_offset=dest_offset)
    
    # 将 src 的数据转换为连续的 numpy 数组
    src_data = src.to_numpy()
    fill_strided_array(subview, src_data)



def assert_size_stride(buf: StridedArray, expected_size, expected_strides):
    """验证形状和步幅"""
    if buf.shape != expected_size:
        raise AssertionError(f"Shape mismatch: expected {expected_size}, got {buf.shape}")
    
    if buf.strides != expected_strides:
        raise AssertionError(f"Strides mismatch: expected {expected_strides}, got {buf.strides}")
    
    # print("Validation passed. Layout:", 
    #       "NCHW" if buf.is_nchw() else "NHWC" if buf.is_nhwc() else "Unknown")


# def reinterpret_tensor(original_buf: StridedArray, new_shape: Tuple[int], new_strides: Tuple[int], storage_offset: int = 0) -> StridedArray:
#     max_physical_index = sum((dim - 1) * stride for dim, stride in zip(new_shape, new_strides)) + storage_offset
    
#     original_length = len(original_buf.data)
#     if max_physical_index >= original_length:
#         raise ValueError(
#             f"内存越界: 新视图需要访问索引 {max_physical_index} "
#             f"但原始缓冲区仅包含 {original_length} 元素"
#         )

#     return StridedArray(
#         data=original_buf.data,
#         shape=new_shape,
#         strides=new_strides,
#         dtype=original_buf.dtype,
#         offset=0 ,
#     )


def reinterpret_tensor(original_buf: StridedArray, new_shape: Tuple[int], new_strides: Tuple[int], storage_offset: int = 0) -> StridedArray:
    """
    创建新的视图，并根据 `storage_offset` 从 `original_buf` 的指定位置开始读取数据。
    """
    # 计算新视图的最大物理索引
    max_physical_index = sum((dim - 1) * stride for dim, stride in zip(new_shape, new_strides)) + storage_offset
    
    original_length = len(original_buf.data)
    if max_physical_index >= original_length:
        raise ValueError(
            f"内存越界: 新视图需要访问索引 {max_physical_index} "
            f"但原始缓冲区仅包含 {original_length} 元素"
        )
    
    # 获取原始数据，并从 storage_offset 开始
    original_data = np.ctypeslib.as_array(original_buf.data)  # 转换为 NumPy 数组
    offset_data = original_data[storage_offset:]  # 从偏移量开始的部分
    
    # 创建新的 StridedArray，确保其指向的 data 从指定偏移量开始
    return StridedArray(
        data=offset_data.ctypes.data_as(ctypes.POINTER(original_buf.dtype)),  # 新的内存视图
        shape=new_shape,
        strides=new_strides,
        dtype=original_buf.dtype,
        offset=0,  
    )



def fill_strided_array(strided_array: StridedArray, data_flat: np.ndarray):
    expected_size = np.prod(strided_array.shape)
    if data_flat.size != expected_size:
        raise ValueError(f"数据大小不匹配：预期 {expected_size}，实际 {data_flat.size}")
    
    np_data = np.ctypeslib.as_array(strided_array._data)
    grids = np.ogrid[tuple(slice(0, dim) for dim in strided_array.shape)]
    
    physical_indices = sum(grid * stride for grid, stride in zip(grids, strided_array.strides))
    physical_indices += strided_array._offset
    
    physical_indices = physical_indices.ravel().astype(int)
    target_dtype = np_data.dtype
    data_flat = data_flat.astype(target_dtype)
    
    np_data.ravel()[physical_indices] = data_flat.ravel()


def load_from_bin(arrays, bin_path):
    with open(bin_path, 'rb') as f:
        for array in arrays:
            if array.shape == ():
                f.seek(4, 1)
                continue
            data = np.fromfile(f, dtype=np.float32, count=np.prod(array.shape))
            fill_strided_array(array, data)




def save_thresholded_image(strided_array: StridedArray, threshold: float = 0.5, output_path: str = 'output.png'):
    """
    将 StridedArray 中的数据进行阈值化（二值化），并保存为 PNG 图片。
    
    参数:
    - strided_array: 要处理的 StridedArray 对象
    - threshold: 用于二值化的阈值，默认 0.5
    - output_path: 保存 PNG 文件的路径
    """
    # 将 StridedArray 转换为 NumPy 数组
    np_data = strided_array.to_numpy()

    # 确保阈值为 float32 类型
    threshold = np.float32(threshold)

    # 进行二值化处理
    binary_data = (np_data >= threshold).astype(np.uint8) * 255  # 二值化并转换为 0 和 255 之间的值

    # 检查 binary_data 的形状，确保它是 (1, 1, H, W) 形状
    if binary_data.shape[0] == 1 and binary_data.shape[1] == 1:
        # 提取 H, W 这两个维度的数据
        binary_data = binary_data[0, 0]  # 取出单通道的二维图像

    # 确保数据是二维图像 (H, W)
    if binary_data.ndim == 2:
        # 将二值化数据转换为 Image 对象
        image = Image.fromarray(binary_data)
    else:
        # 如果不是 2D 数据，抛出异常
        raise ValueError("二值化后的数据不是有效的 2D 图像格式")

    # 保存为 PNG 文件
    image.save(output_path)

    print(f"保存图像为: {output_path}")
