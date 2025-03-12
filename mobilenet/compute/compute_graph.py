import ctypes
lib = ctypes.CDLL("/home/meng/torch-compiler/models/mobilenet/compute/func/libfunc_x86.so")
convlib = ctypes.CDLL("/home/meng/torch-compiler/models/mobilenet/compute/extern_kernels/libconv.so")
from extern_kernel import convolution as extern_kernels_convolution
import sys
sys.path.append("..")
from test_images.getimage import process_and_store_image
from StrideArray import empty_strided, reinterpret_tensor, assert_size_stride, load_from_bin, save_thresholded_image
from extern_kernels.conv2d_SA import convolution 
# import extern_kernels.conv2d_SA as extern_kernels
# from extern_kernel import convolution1 as extern_kernels_convolution1
lib_test = ctypes.CDLL("/home/meng/torch-compiler/models/mobilenet/compute/libtest.so")

import time




primals_1 = empty_strided((16, 3, 3, 3), (27, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_2 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_3 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_4 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_5 = empty_strided((16, 3, 5, 5), (75, 25, 5, 1), device='cpu', dtype=ctypes.c_float)
primals_6 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_7 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_8 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_9 = empty_strided((16, 3, 7, 7), (147, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_10 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_11 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_12 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_13 = empty_strided((16, 3, 11, 11), (363, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_14 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_15 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_16 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_17 = empty_strided((16, 3, 15, 15), (675, 225, 15, 1), device='cpu', dtype=ctypes.c_float)
primals_18 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_19 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_20 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_21 = empty_strided((8, 80, 11, 11), (9680, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_22 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_23 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_24 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_25 = empty_strided((16, 8, 11, 11), (968, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_26 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_27 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_28 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_29 = empty_strided((32, 16, 11, 11), (1936, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_30 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_31 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_32 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_33 = empty_strided((64, 32, 11, 11), (3872, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_34 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_35 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_36 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_37 = empty_strided((128, 64, 11, 11), (7744, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_38 = empty_strided((128, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_39 = empty_strided((128, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_40 = empty_strided((128, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_41 = empty_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_42 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_43 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_44 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_45 = empty_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_46 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_47 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_48 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_49 = empty_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_50 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_51 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_52 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_53 = empty_strided((8, 8, 7, 7), (392, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_54 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_55 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_56 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_57 = empty_strided((8, 32, 3, 3), (288, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_58 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_59 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_60 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_61 = empty_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_62 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_63 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_64 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_65 = empty_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_66 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_67 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_68 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_69 = empty_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_70 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_71 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_72 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_73 = empty_strided((16, 16, 7, 7), (784, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_74 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_75 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_76 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_77 = empty_strided((16, 64, 3, 3), (576, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_78 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_79 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_80 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_81 = empty_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_82 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_83 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_84 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_85 = empty_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_86 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_87 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_88 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_89 = empty_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_90 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_91 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_92 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_93 = empty_strided((32, 32, 7, 7), (1568, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_94 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_95 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_96 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_97 = empty_strided((32, 128, 3, 3), (1152, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_98 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_99 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_100 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_101 = empty_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_102 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_103 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_104 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_105 = empty_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_106 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_107 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_108 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_109 = empty_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_110 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_111 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_112 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_113 = empty_strided((64, 64, 7, 7), (3136, 49, 7, 1), device='cpu', dtype=ctypes.c_float)
primals_114 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_115 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_116 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_117 = empty_strided((64, 256, 3, 3), (2304, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_118 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_119 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_120 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_121 = empty_strided((64, 128, 3, 3), (1152, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_122 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_123 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_124 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_125 = empty_strided((32, 64, 1, 1), (64, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_126 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_127 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_128 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_129 = empty_strided((32, 64, 1, 1), (64, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_130 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_131 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_132 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_133 = empty_strided((1, 32, 1, 1), (32, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_134 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_135 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_136 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_137 = empty_strided((64, 128, 11, 11), (15488, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_138 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_139 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_140 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_141 = empty_strided((32, 64, 3, 3), (576, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_142 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_143 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_144 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_145 = empty_strided((16, 32, 1, 1), (32, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_146 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_147 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_148 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_149 = empty_strided((16, 32, 1, 1), (32, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_150 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_151 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_152 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_153 = empty_strided((1, 16, 1, 1), (16, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_154 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_155 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_156 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_157 = empty_strided((32, 64, 11, 11), (7744, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_158 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_159 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_160 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_161 = empty_strided((16, 32, 3, 3), (288, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_162 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_163 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_164 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_165 = empty_strided((8, 16, 1, 1), (16, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_166 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_167 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_168 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_169 = empty_strided((8, 16, 1, 1), (16, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_170 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_171 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_172 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_173 = empty_strided((1, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_174 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_175 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_176 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_177 = empty_strided((16, 32, 11, 11), (3872, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_178 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_179 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_180 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_181 = empty_strided((8, 16, 3, 3), (144, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
primals_182 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_183 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_184 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_185 = empty_strided((4, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_186 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_187 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_188 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_189 = empty_strided((4, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_190 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_191 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_192 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_193 = empty_strided((1, 4, 1, 1), (4, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_194 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_195 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_196 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_197 = empty_strided((8, 16, 11, 11), (1936, 121, 11, 1), device='cpu', dtype=ctypes.c_float)
primals_198 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_199 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_200 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_201 = empty_strided((1, 8, 1, 1), (8, 1, 1, 1), device='cpu', dtype=ctypes.c_float)
primals_202 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_203 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_204 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_205 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_206 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_207 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_208 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_209 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_210 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_211 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_212 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_213 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_214 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_215 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_216 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_217 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_218 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_219 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_220 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_221 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_222 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_223 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_224 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_225 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_226 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_227 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_228 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_229 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_230 = empty_strided((128, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_231 = empty_strided((128, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_232 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_233 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_234 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_235 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_236 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_237 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_238 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_239 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_240 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_241 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_242 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_243 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_244 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_245 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_246 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_247 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_248 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_249 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_250 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_251 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_252 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_253 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_254 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_255 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_256 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_257 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_258 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_259 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_260 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_261 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_262 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_263 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_264 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_265 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_266 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_267 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_268 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_269 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_270 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_271 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_272 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_273 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_274 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_275 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_276 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_277 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_278 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_279 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_280 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_281 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_282 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_283 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_284 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_285 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_286 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_287 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_288 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_289 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_290 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_291 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_292 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_293 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_294 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_295 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_296 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_297 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_298 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_299 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_300 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_301 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_302 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_303 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_304 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_305 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_306 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_307 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_308 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_309 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_310 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_311 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_312 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_313 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_314 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_315 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_316 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_317 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_318 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_319 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_320 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_321 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_322 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_323 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_324 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_325 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_326 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_327 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_328 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_329 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_330 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_331 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_332 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_333 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_334 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_335 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_336 = empty_strided((16, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_337 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_338 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_339 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_340 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_341 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_342 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_343 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_344 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_345 = empty_strided((4, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_346 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_347 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_348 = empty_strided((1, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_349 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_350 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_351 = empty_strided((8, ), (1, ), device='cpu', dtype=ctypes.c_float)
primals_352 = empty_strided((), (), device='cpu', dtype=ctypes.c_int64)
primals_353 = empty_strided((1, 3, 256, 256), (196608, 65536, 256, 1), device='cpu', dtype=ctypes.c_float)


arrays = [
primals_1, primals_2, primals_3, primals_4, primals_5, primals_6, primals_7, primals_8, primals_9, primals_10, primals_11, primals_12, primals_13, primals_14, primals_15, primals_16, primals_17, primals_18, primals_19, primals_20, primals_21, primals_22, primals_23, primals_24, primals_25, primals_26, primals_27, primals_28, primals_29, primals_30, primals_31, primals_32, primals_33, primals_34, primals_35, primals_36, primals_37, primals_38, primals_39, primals_40, primals_41, primals_42, primals_43, primals_44, primals_45, primals_46, primals_47, primals_48, primals_49, primals_50, primals_51, primals_52, primals_53, primals_54, primals_55, primals_56, primals_57, primals_58, primals_59, primals_60, primals_61, primals_62, primals_63, primals_64, primals_65, primals_66, primals_67, primals_68, primals_69, primals_70, primals_71, primals_72, primals_73, primals_74, primals_75, primals_76, primals_77, primals_78, primals_79, primals_80, primals_81, primals_82, primals_83, primals_84, primals_85, primals_86, primals_87, primals_88, primals_89, primals_90, primals_91, primals_92, primals_93, primals_94, primals_95, primals_96, primals_97, primals_98, primals_99, primals_100, primals_101, primals_102, primals_103, primals_104, primals_105, primals_106, primals_107, primals_108, primals_109, primals_110, primals_111, primals_112, primals_113, primals_114, primals_115, primals_116, primals_117, primals_118, primals_119, primals_120, primals_121, primals_122, primals_123, primals_124, primals_125, primals_126, primals_127, primals_128, primals_129, primals_130, primals_131, primals_132, primals_133, primals_134, primals_135, primals_136, primals_137, primals_138, primals_139, primals_140, primals_141, primals_142, primals_143, primals_144, primals_145, primals_146, primals_147, primals_148, primals_149, primals_150, primals_151, primals_152, primals_153, primals_154, primals_155, primals_156, primals_157, primals_158, primals_159, primals_160, primals_161, primals_162, primals_163, primals_164, primals_165, primals_166, primals_167, primals_168, primals_169, primals_170, primals_171, primals_172, primals_173, primals_174, primals_175, primals_176, primals_177, primals_178, primals_179, primals_180, primals_181, primals_182, primals_183, primals_184, primals_185, primals_186, primals_187, primals_188, primals_189, primals_190, primals_191, primals_192, primals_193, primals_194, primals_195, primals_196, primals_197, primals_198, primals_199, primals_200, primals_201, primals_202, primals_203, primals_204, primals_205, primals_206, primals_207, primals_208, primals_209, primals_210, primals_211, primals_212, primals_213, primals_214, primals_215, primals_216, primals_217, primals_218, primals_219, primals_220, primals_221, primals_222, primals_223, primals_224, primals_225, primals_226, primals_227, primals_228, primals_229, primals_230, primals_231, primals_232, primals_233, primals_234, primals_235, primals_236, primals_237, primals_238, primals_239, primals_240, primals_241, primals_242, primals_243, primals_244, primals_245, primals_246, primals_247, primals_248, primals_249, primals_250, primals_251, primals_252, primals_253, primals_254, primals_255, primals_256, primals_257, primals_258, primals_259, primals_260, primals_261, primals_262, primals_263, primals_264, primals_265, primals_266, primals_267, primals_268, primals_269, primals_270, primals_271, primals_272, primals_273, primals_274, primals_275, primals_276, primals_277, primals_278, primals_279, primals_280, primals_281, primals_282, primals_283, primals_284, primals_285, primals_286, primals_287, primals_288, primals_289, primals_290, primals_291, primals_292, primals_293, primals_294, primals_295, primals_296, primals_297, primals_298, primals_299, primals_300, primals_301, primals_302, primals_303, primals_304, primals_305, primals_306, primals_307, primals_308, primals_309, primals_310, primals_311, primals_312, primals_313, primals_314, primals_315, primals_316, primals_317, primals_318, primals_319, primals_320, primals_321, primals_322, primals_323, primals_324, primals_325, primals_326, primals_327, primals_328, primals_329, primals_330, primals_331, primals_332, primals_333, primals_334, primals_335, primals_336, primals_337, primals_338, primals_339, primals_340, primals_341, primals_342, primals_343, primals_344, primals_345, primals_346, primals_347, primals_348, primals_349, primals_350, primals_351, primals_352
]

# 加载数据
load_from_bin(arrays, '../params/model_parameters.bin')
primals_353 = process_and_store_image('../test_images/006.png', IMG_SIZE=(256, 256))
    
buf0 = empty_strided((16, 3, 3, 3), (27, 1, 9, 3), device='cpu', dtype=ctypes.c_float)
# buf0 = empty_strided((16, 3, 3, 3), (27, 9, 3, 1), device='cpu', dtype=ctypes.c_float)
buf1 = empty_strided((16, 3, 5, 5), (75, 1, 15, 3), device='cpu', dtype=ctypes.c_float)
buf2 = empty_strided((16, 3, 7, 7), (147, 1, 21, 3), device='cpu', dtype=ctypes.c_float)
buf3 = empty_strided((16, 3, 11, 11), (363, 1, 33, 3), device='cpu', dtype=ctypes.c_float)
buf4 = empty_strided((16, 3, 15, 15), (675, 1, 45, 3), device='cpu', dtype=ctypes.c_float)
buf5 = empty_strided((8, 80, 11, 11), (9680, 1, 880, 80), device='cpu', dtype=ctypes.c_float)
buf6 = empty_strided((16, 8, 11, 11), (968, 1, 88, 8), device='cpu', dtype=ctypes.c_float)
buf7 = empty_strided((32, 16, 11, 11), (1936, 1, 176, 16), device='cpu', dtype=ctypes.c_float)
buf8 = empty_strided((64, 32, 11, 11), (3872, 1, 352, 32), device='cpu', dtype=ctypes.c_float)
buf9 = empty_strided((128, 64, 11, 11), (7744, 1, 704, 64), device='cpu', dtype=ctypes.c_float)
buf10 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=ctypes.c_float)
buf11 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=ctypes.c_float)
buf12 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=ctypes.c_float)
buf13 = empty_strided((8, 8, 7, 7), (392, 1, 56, 8), device='cpu', dtype=ctypes.c_float)
buf14 = empty_strided((8, 32, 3, 3), (288, 1, 96, 32), device='cpu', dtype=ctypes.c_float)
buf15 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=ctypes.c_float)
buf16 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=ctypes.c_float)
buf17 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=ctypes.c_float)
buf18 = empty_strided((16, 16, 7, 7), (784, 1, 112, 16), device='cpu', dtype=ctypes.c_float)
buf19 = empty_strided((16, 64, 3, 3), (576, 1, 192, 64), device='cpu', dtype=ctypes.c_float)
buf20 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=ctypes.c_float)
buf21 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=ctypes.c_float)
buf22 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=ctypes.c_float)
buf23 = empty_strided((32, 32, 7, 7), (1568, 1, 224, 32), device='cpu', dtype=ctypes.c_float)
buf24 = empty_strided((32, 128, 3, 3), (1152, 1, 384, 128), device='cpu', dtype=ctypes.c_float)
buf25 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=ctypes.c_float)
buf26 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=ctypes.c_float)
buf27 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=ctypes.c_float)
buf28 = empty_strided((64, 64, 7, 7), (3136, 1, 448, 64), device='cpu', dtype=ctypes.c_float)
buf29 = empty_strided((64, 256, 3, 3), (2304, 1, 768, 256), device='cpu', dtype=ctypes.c_float)
buf30 = empty_strided((64, 128, 3, 3), (1152, 1, 384, 128), device='cpu', dtype=ctypes.c_float)
buf31 = empty_strided((64, 128, 11, 11), (15488, 1, 1408, 128), device='cpu', dtype=ctypes.c_float)
buf32 = empty_strided((32, 64, 3, 3), (576, 1, 192, 64), device='cpu', dtype=ctypes.c_float)
buf33 = empty_strided((32, 64, 11, 11), (7744, 1, 704, 64), device='cpu', dtype=ctypes.c_float)
buf34 = empty_strided((16, 32, 3, 3), (288, 1, 96, 32), device='cpu', dtype=ctypes.c_float)
buf35 = empty_strided((16, 32, 11, 11), (3872, 1, 352, 32), device='cpu', dtype=ctypes.c_float)
buf36 = empty_strided((8, 16, 3, 3), (144, 1, 48, 16), device='cpu', dtype=ctypes.c_float)
buf37 = empty_strided((8, 16, 11, 11), (1936, 1, 176, 16), device='cpu', dtype=ctypes.c_float)
buf38 = empty_strided((1, 3, 258, 258), (199692, 1, 774, 3), device='cpu', dtype=ctypes.c_float)
# buf38 = empty_strided((1, 3, 258, 258), (199692, 66564, 258, 1), device='cpu', dtype=ctypes.c_float)

start_time = time.time()


lib.cpp_fused_reflection_pad2d_0(primals_1.ptr, primals_5.ptr, primals_9.ptr, primals_13.ptr, primals_17.ptr, primals_21.ptr, primals_25.ptr, primals_29.ptr, primals_33.ptr, primals_37.ptr, primals_41.ptr, primals_45.ptr, primals_49.ptr, primals_53.ptr, primals_57.ptr, primals_61.ptr, primals_65.ptr, primals_69.ptr, primals_73.ptr, primals_77.ptr, primals_81.ptr, primals_85.ptr, primals_89.ptr, primals_93.ptr, primals_97.ptr, primals_101.ptr, primals_105.ptr, primals_109.ptr, primals_113.ptr, primals_117.ptr, primals_121.ptr, primals_137.ptr, primals_141.ptr, primals_157.ptr, primals_161.ptr, primals_177.ptr, primals_181.ptr, primals_197.ptr, primals_353.ptr, buf0.ptr, buf1.ptr, buf2.ptr, buf3.ptr, buf4.ptr, buf5.ptr, buf6.ptr, buf7.ptr, buf8.ptr, buf9.ptr, buf10.ptr, buf11.ptr, buf12.ptr, buf13.ptr, buf14.ptr, buf15.ptr, buf16.ptr, buf17.ptr, buf18.ptr, buf19.ptr, buf20.ptr, buf21.ptr, buf22.ptr, buf23.ptr, buf24.ptr, buf25.ptr, buf26.ptr, buf27.ptr, buf28.ptr, buf29.ptr, buf30.ptr, buf31.ptr, buf32.ptr, buf33.ptr, buf34.ptr, buf35.ptr, buf36.ptr, buf37.ptr, buf38.ptr)
# print(primals_1)
# print("------------------------------------")
del primals_1
del primals_101
del primals_105
del primals_109
del primals_113
del primals_117
del primals_121
del primals_13
del primals_137

del primals_141
del primals_157
del primals_161
del primals_17
del primals_177
del primals_181
del primals_197
del primals_21
del primals_25
del primals_29
del primals_33
del primals_37
del primals_41
del primals_45
del primals_49
del primals_5
del primals_53
del primals_57
del primals_61
del primals_65
del primals_69
del primals_73
del primals_77
del primals_81
del primals_85
del primals_89
del primals_9
del primals_93
del primals_97
# # Source Nodes: [l__self___multi_scale_1_conv_1], Original ATen: [aten.convolution]
# buf39 = empty_strided((1,16,256,256), (1048576, 1, 4096, 16), device = 'cpu', dtype=ctypes.c_float)
# convlib.conv2d(buf38.ptr, 3,258,258, buf0.ptr, primals_2.ptr,16,3,3,1,1,0,0,1,1, buf39.ptr)


# import numpy as np
# buf1000 = buf38.to_numpy()
# buf1001 = buf0.to_numpy()
# primals_1000 = primals_2.to_numpy()

# def conv2d(input, kernel, bias):
#     """
#     input  : numpy 数组，形状 (1, 3, 258, 258)，stride = (199692, 1, 774, 3)
#     kernel : numpy 数组，形状 (16, 3, 3, 3)，stride = (27, 1, 9, 3)
#     bias   : numpy 数组，形状 (16,)
    
#     返回：
#       output : numpy 数组，形状 (1, 16, 256, 256)
#                内存 stride 为 (1048576, 1, 4096, 16)
#     """
#     # 1. 将输入从 NCHW 转为 NHWC（方便用 as_strided 提取滑窗）
#     #    input_nhwc.shape = (1, 258, 258, 3)
#     input_nhwc = input.transpose(0, 2, 3, 1)
    
#     N, H, W, C = input_nhwc.shape
#     C_out, C_in, KH, KW = kernel.shape
#     H_out = H - KH + 1  # 258-3+1 = 256
#     W_out = W - KW + 1  # 258-3+1 = 256

#     # 2. 将 kernel 转换到 NHWC 形式：
#     #    原 kernel 形状 (C_out, C_in, KH, KW) 转为 (KH, KW, C_in, C_out)
#     kernel_nhwc = kernel.transpose(2, 3, 1, 0)

#     # 3. 利用 np.lib.stride_tricks.as_strided 提取滑动窗口（patches）
#     #    patches 的形状为 (N, H_out, W_out, KH, KW, C)
#     s0, s1, s2, s3 = input_nhwc.strides  # 注意：这里的 strides 单位为字节，但下面计算出的新 strides 也遵循相同规则
#     shape = (N, H_out, W_out, KH, KW, C)
#     # 对于从位置 (i, j) 提取窗口，移动高度、宽度步长与原数组的 s1, s2 相同；
#     # 同时窗口内相对位置步长同样为 s1, s2（因为在内层维度提取子块时，内存连续即可）。
#     new_strides = (s0, s1, s2, s1, s2, s3)
#     patches = np.lib.stride_tricks.as_strided(input_nhwc, shape=shape, strides=new_strides)

#     # 4. 利用 np.tensordot 完成卷积：对每个位置的 patch 与 kernel_nhwc 作乘加，
#     #    求和轴为 (KH, KW, C)
#     #    得到的 out 形状为 (N, H_out, W_out, C_out)
#     out = np.tensordot(patches, kernel_nhwc, axes=([3,4,5], [0,1,2]))
#     # 5. 加上偏置（利用广播，bias 形状 (C_out,)）
#     out += bias

#     # 6. 为了达到期望的内存布局，我们先保证 out 是 C-contiguous（NHWC 格式）
#     out = np.ascontiguousarray(out)
#     # 在 NHWC 下，out 的 strides 为 (256*256*16, 256*16, 16, 1) = (1048576, 4096, 16, 1)
#     # 7. 最后转置到 NCHW 格式：
#     #    transpose 后，形状变为 (N, C_out, H_out, W_out)，其 strides 变为 (1048576, 1, 4096, 16)
#     out_nchw = out.transpose(0, 3, 1, 2)
#     return out_nchw

# # 示例：输入形状为 (1, 3, 258, 258)，卷积核形状为 (16, 3, 3, 3)，bias 形状为 (16,)
# N, C, H, W = 1, 3, 258, 258
# F, KH, KW = 16, 3, 3
# result = conv2d(buf1000, buf1001, primals_1000)

# # print(result)
# buf10086 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16))
# fill_strided_array(buf10086, result)
# # print(result)
# buf10086.print_all_data()
# print(buf10086)

buf39 = extern_kernels_convolution(buf38, buf0, primals_2, stride=(1, 1), padding=(0, 0), dilation=(1, 1))

assert_size_stride(buf39, (1, 16, 256, 256), (1048576, 1, 4096, 16))
del primals_2
buf53 = empty_strided((1, 80, 256, 256), (5242880, 65536, 256, 1), device='cpu', dtype=ctypes.c_float)

buf40 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 0)  # alias
buf223 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=ctypes.c_bool)
buf41 = empty_strided((1, 3, 260, 260), (202800, 1, 780, 3), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_1(buf39.ptr, primals_203.ptr, primals_204.ptr, primals_3.ptr, primals_4.ptr, primals_353.ptr, buf40.ptr, buf223.ptr, buf41.ptr)

del primals_4

# Source Nodes: [l__self___multi_scale_2_conv_1], Original ATen: [aten.extern_kernels_convolution]
buf42 = extern_kernels_convolution(buf41, buf1, primals_6, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf42, (1, 16, 256, 256), (1048576, 1, 4096, 16))
del primals_6

buf43 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 1048576)  # alias
buf222 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=ctypes.c_bool)
buf44 = empty_strided((1, 3, 268, 268), (215472, 1, 804, 3), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_2(buf42.ptr, primals_206.ptr, primals_207.ptr, primals_7.ptr, primals_8.ptr, primals_353.ptr, buf43.ptr, buf222.ptr, buf44.ptr)
del primals_8
# Source Nodes: [l__self___multi_scale_3_conv_1], Original ATen: [aten.extern_kernels_convolution]
buf45 = extern_kernels_convolution(buf44, buf2, primals_10, stride=(1, 1), padding=(0, 0), dilation=(2, 2))
assert_size_stride(buf45, (1, 16, 256, 256), (1048576, 1, 4096, 16))
del primals_10
buf46 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 2097152)  # alias
buf221 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=ctypes.c_bool)
buf47 = empty_strided((1, 3, 276, 276), (228528, 1, 828, 3), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_3(buf45.ptr, primals_209.ptr, primals_210.ptr, primals_11.ptr, primals_12.ptr, primals_353.ptr, buf46.ptr, buf221.ptr, buf47.ptr)
del primals_12

# Source Nodes: [l__self___multi_scale_4_conv_1], Original ATen: [aten.extern_kernels_convolution]
buf48 = extern_kernels_convolution(buf47, buf3, primals_14, stride=(1, 1), padding=(0, 0), dilation=(2, 2))

assert_size_stride(buf48, (1, 16, 256, 256), (1048576, 1, 4096, 16))
del primals_14
buf49 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 3145728)  # alias
buf220 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=ctypes.c_bool)
buf50 = empty_strided((1, 3, 298, 298), (266412, 1, 894, 3), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_threshold_backward_4(buf48.ptr, primals_212.ptr, primals_213.ptr, primals_15.ptr, primals_16.ptr, primals_353.ptr, buf49.ptr, buf220.ptr, buf50.ptr)
del primals_16
del primals_353
# Source Nodes: [l__self___multi_scale_5_conv_1], Original ATen: [aten.extern_kernels_convolution]
buf51 = extern_kernels_convolution(buf50, buf4, primals_18, stride=(1, 1), padding=(0, 0), dilation=(3, 3))
assert_size_stride(buf51, (1, 16, 256, 256), (1048576, 1, 4096, 16))
del primals_18
buf52 = reinterpret_tensor(buf53, (1, 16, 256, 256), (5242880, 65536, 256, 1), 4194304)  # alias
buf219 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=ctypes.c_bool)
buf54 = empty_strided((1, 80, 256, 256), (5242880, 1, 20480, 80), device='cpu', dtype=ctypes.c_float)

lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_5(buf51.ptr, primals_215.ptr, primals_216.ptr, primals_19.ptr, primals_20.ptr, buf53.ptr, buf52.ptr, buf219.ptr, buf54.ptr)
# buf53.print_all_data()
del buf40
del buf43
del buf46
del buf49
del buf52
del buf53
del primals_20
# Source Nodes: [l__self___conv1_conv_0], Original ATen: [aten.extern_kernels_convolution]


buf55 = extern_kernels_convolution(buf54, buf5, primals_22, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
# print(buf55)
# buf55.print_all_data()
assert_size_stride(buf55, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_22
buf56 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_float)
buf57 = empty_strided((1, 8, 128, 128), (131072, 1, 1024, 8), device='cpu', dtype=ctypes.c_float)
buf58 = empty_strided((1, 8, 128, 128), (131072, 1, 1024, 8), device='cpu', dtype=ctypes.c_int64)
lib.cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_6(buf55.ptr, primals_218.ptr, primals_219.ptr, primals_23.ptr, primals_24.ptr, buf56.ptr, buf57.ptr, buf58.ptr)
# buf57.print_all_data()

del primals_24
# Source Nodes: [l__self___conv2_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf59 = extern_kernels_convolution(buf57, buf6, primals_26, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf59, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_26
buf60 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_float)
buf61 = empty_strided((1, 16, 64, 64), (65536, 1, 1024, 16), device='cpu', dtype=ctypes.c_float)
buf62 = empty_strided((1, 16, 64, 64), (65536, 1, 1024, 16), device='cpu', dtype=ctypes.c_int64)
lib.cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_7(buf59.ptr, primals_221.ptr, primals_222.ptr, primals_27.ptr, primals_28.ptr, buf60.ptr, buf61.ptr, buf62.ptr)
del primals_28
# Source Nodes: [l__self___conv3_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf63 = extern_kernels_convolution(buf61, buf7, primals_30, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf63, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_30
buf64 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_float)
buf65 = empty_strided((1, 32, 32, 32), (32768, 1, 1024, 32), device='cpu', dtype=ctypes.c_float)
buf66 = empty_strided((1, 32, 32, 32), (32768, 1, 1024, 32), device='cpu', dtype=ctypes.c_int64)
lib.cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_8(buf63.ptr, primals_224.ptr, primals_225.ptr, primals_31.ptr, primals_32.ptr, buf64.ptr, buf65.ptr, buf66.ptr)
del primals_32
# Source Nodes: [l__self___conv4_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf67 = extern_kernels_convolution(buf65, buf8, primals_34, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf67, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_34
buf68 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_float)
buf69 = empty_strided((1, 64, 16, 16), (16384, 1, 1024, 64), device='cpu', dtype=ctypes.c_float)
buf70 = empty_strided((1, 64, 16, 16), (16384, 1, 1024, 64), device='cpu', dtype=ctypes.c_int64)
lib.cpp_fused__native_batch_norm_legit_no_training_max_pool2d_with_indices_relu_9(buf67.ptr, primals_227.ptr, primals_228.ptr, primals_35.ptr, primals_36.ptr, buf68.ptr, buf69.ptr, buf70.ptr)
del primals_36
# Source Nodes: [l__self___conv5_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf71 = extern_kernels_convolution(buf69, buf9, primals_38, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf71, (1, 128, 16, 16), (32768, 1, 2048, 128))
del primals_38
buf72 = empty_strided((1, 128, 16, 16), (32768, 1, 2048, 128), device='cpu', dtype=ctypes.c_float)
buf73 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=ctypes.c_float)
buf76 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=ctypes.c_float)
buf79 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=ctypes.c_float)
buf82 = empty_strided((1, 8, 262, 262), (549152, 1, 2096, 8), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_10(buf71.ptr, primals_230.ptr, primals_231.ptr, primals_39.ptr, primals_40.ptr, buf56.ptr, buf72.ptr, buf73.ptr, buf76.ptr, buf79.ptr, buf82.ptr)
del primals_40
# Source Nodes: [l__self___o1_lu_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf74 = extern_kernels_convolution(buf73, buf10, primals_42, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf74, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_42
buf85 = empty_strided((1, 32, 256, 256), (2097152, 65536, 256, 1), device='cpu', dtype=ctypes.c_float)
buf75 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 0)  # alias
buf217 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_11(buf74.ptr, primals_233.ptr, primals_234.ptr, primals_43.ptr, primals_44.ptr, buf75.ptr, buf217.ptr)
del primals_44
# Source Nodes: [l__self___o1_ld_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf77 = extern_kernels_convolution(buf76, buf11, primals_46, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf77, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_46
buf78 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 524288)  # alias
buf216 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_12(buf77.ptr, primals_236.ptr, primals_237.ptr, primals_47.ptr, primals_48.ptr, buf78.ptr, buf216.ptr)
del primals_48
# Source Nodes: [l__self___o1_ru_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf80 = extern_kernels_convolution(buf79, buf12, primals_50, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf80, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_50
buf81 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 1048576)  # alias
buf215 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_13(buf80.ptr, primals_239.ptr, primals_240.ptr, primals_51.ptr, primals_52.ptr, buf81.ptr, buf215.ptr)
del primals_52
# Source Nodes: [l__self___o1_rd_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf83 = extern_kernels_convolution(buf82, buf13, primals_54, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf83, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_54
buf84 = reinterpret_tensor(buf85, (1, 8, 256, 256), (2097152, 65536, 256, 1), 1572864)  # alias
buf214 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_bool)
buf86 = empty_strided((1, 32, 256, 256), (2097152, 1, 8192, 32), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_14(buf83.ptr, primals_242.ptr, primals_243.ptr, primals_55.ptr, primals_56.ptr, buf85.ptr, buf84.ptr, buf214.ptr, buf86.ptr)
del buf75
del buf78
del buf81
del buf84
del buf85
del primals_56
# Source Nodes: [l__self___o1_final_conv], Original ATen: [aten.extern_kernels_convolution]
buf87 = extern_kernels_convolution(buf86, buf14, primals_58, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf87, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_58
buf88 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_float)
buf89 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=ctypes.c_float)
buf92 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=ctypes.c_float)
buf95 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=ctypes.c_float)
buf98 = empty_strided((1, 16, 134, 134), (287296, 1, 2144, 16), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_15(buf87.ptr, primals_245.ptr, primals_246.ptr, primals_59.ptr, primals_60.ptr, buf60.ptr, buf88.ptr, buf89.ptr, buf92.ptr, buf95.ptr, buf98.ptr)
del primals_60
# Source Nodes: [l__self___o2_lu_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf90 = extern_kernels_convolution(buf89, buf15, primals_62, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf90, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_62
buf101 = empty_strided((1, 64, 128, 128), (1048576, 16384, 128, 1), device='cpu', dtype=ctypes.c_float)
buf91 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 0)  # alias
buf213 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_16(buf90.ptr, primals_248.ptr, primals_249.ptr, primals_63.ptr, primals_64.ptr, buf91.ptr, buf213.ptr)
del primals_64
# Source Nodes: [l__self___o2_ld_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf93 = extern_kernels_convolution(buf92, buf16, primals_66, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf93, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_66
buf94 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 262144)  # alias
buf212 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_17(buf93.ptr, primals_251.ptr, primals_252.ptr, primals_67.ptr, primals_68.ptr, buf94.ptr, buf212.ptr)
del primals_68
# Source Nodes: [l__self___o2_ru_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf96 = extern_kernels_convolution(buf95, buf17, primals_70, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf96, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_70
buf97 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 524288)  # alias
buf211 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_18(buf96.ptr, primals_254.ptr, primals_255.ptr, primals_71.ptr, primals_72.ptr, buf97.ptr, buf211.ptr)
del primals_72
# Source Nodes: [l__self___o2_rd_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf99 = extern_kernels_convolution(buf98, buf18, primals_74, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf99, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_74
buf100 = reinterpret_tensor(buf101, (1, 16, 128, 128), (1048576, 16384, 128, 1), 786432)  # alias
buf210 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_bool)
buf102 = empty_strided((1, 64, 128, 128), (1048576, 1, 8192, 64), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_19(buf99.ptr, primals_257.ptr, primals_258.ptr, primals_75.ptr, primals_76.ptr, buf101.ptr, buf100.ptr, buf210.ptr, buf102.ptr)
del buf100
del buf91
del buf94
del buf97
del primals_76
# Source Nodes: [l__self___o2_final_conv], Original ATen: [aten.extern_kernels_convolution]
buf103 = extern_kernels_convolution(buf102, buf19, primals_78, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf103, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_78
buf104 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_float)
buf105 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=ctypes.c_float)
buf108 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=ctypes.c_float)
buf111 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=ctypes.c_float)
buf114 = empty_strided((1, 32, 70, 70), (156800, 1, 2240, 32), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_20(buf103.ptr, primals_260.ptr, primals_261.ptr, primals_79.ptr, primals_80.ptr, buf64.ptr, buf104.ptr, buf105.ptr, buf108.ptr, buf111.ptr, buf114.ptr)
del primals_80
# Source Nodes: [l__self___o3_lu_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf106 = extern_kernels_convolution(buf105, buf20, primals_82, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf106, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_82
buf117 = empty_strided((1, 128, 64, 64), (524288, 4096, 64, 1), device='cpu', dtype=ctypes.c_float)
buf107 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 0)  # alias
buf209 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_21(buf106.ptr, primals_263.ptr, primals_264.ptr, primals_83.ptr, primals_84.ptr, buf107.ptr, buf209.ptr)
del primals_84
# Source Nodes: [l__self___o3_ld_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf109 = extern_kernels_convolution(buf108, buf21, primals_86, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf109, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_86
buf110 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 131072)  # alias
buf208 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_22(buf109.ptr, primals_266.ptr, primals_267.ptr, primals_87.ptr, primals_88.ptr, buf110.ptr, buf208.ptr)
del primals_88
# Source Nodes: [l__self___o3_ru_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf112 = extern_kernels_convolution(buf111, buf22, primals_90, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf112, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_90
buf113 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 262144)  # alias
buf207 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_23(buf112.ptr, primals_269.ptr, primals_270.ptr, primals_91.ptr, primals_92.ptr, buf113.ptr, buf207.ptr)
del primals_92
# Source Nodes: [l__self___o3_rd_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf115 = extern_kernels_convolution(buf114, buf23, primals_94, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf115, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_94
buf116 = reinterpret_tensor(buf117, (1, 32, 64, 64), (524288, 4096, 64, 1), 393216)  # alias
buf206 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_bool)
buf118 = empty_strided((1, 128, 64, 64), (524288, 1, 8192, 128), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_24(buf115.ptr, primals_272.ptr, primals_273.ptr, primals_95.ptr, primals_96.ptr, buf117.ptr, buf116.ptr, buf206.ptr, buf118.ptr)
del buf107
del buf110
del buf113
del buf116
del primals_96
# Source Nodes: [l__self___o3_final_conv], Original ATen: [aten.extern_kernels_convolution]
buf119 = extern_kernels_convolution(buf118, buf24, primals_98, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf119, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_98
buf120 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_float)
buf121 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=ctypes.c_float)
buf124 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=ctypes.c_float)
buf127 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=ctypes.c_float)
buf130 = empty_strided((1, 64, 38, 38), (92416, 1, 2432, 64), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_reflection_pad2d_relu_25(buf119.ptr, primals_275.ptr, primals_276.ptr, primals_99.ptr, primals_100.ptr, buf68.ptr, buf120.ptr, buf121.ptr, buf124.ptr, buf127.ptr, buf130.ptr)
del primals_100
# Source Nodes: [l__self___o4_lu_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf122 = extern_kernels_convolution(buf121, buf25, primals_102, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf122, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_102
buf133 = empty_strided((1, 256, 32, 32), (262144, 1024, 32, 1), device='cpu', dtype=ctypes.c_float)
buf123 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 0)  # alias
buf205 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_26(buf122.ptr, primals_278.ptr, primals_279.ptr, primals_103.ptr, primals_104.ptr, buf123.ptr, buf205.ptr)
del primals_104
# Source Nodes: [l__self___o4_ld_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf125 = extern_kernels_convolution(buf124, buf26, primals_106, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf125, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_106
buf126 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 65536)  # alias
buf204 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_27(buf125.ptr, primals_281.ptr, primals_282.ptr, primals_107.ptr, primals_108.ptr, buf126.ptr, buf204.ptr)
del primals_108
# Source Nodes: [l__self___o4_ru_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf128 = extern_kernels_convolution(buf127, buf27, primals_110, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf128, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_110
buf129 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 131072)  # alias
buf203 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_threshold_backward_28(buf128.ptr, primals_284.ptr, primals_285.ptr, primals_111.ptr, primals_112.ptr, buf129.ptr, buf203.ptr)
del primals_112
# Source Nodes: [l__self___o4_rd_bias_extern_kernels_convolution_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf131 = extern_kernels_convolution(buf130, buf28, primals_114, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf131, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_114
buf132 = reinterpret_tensor(buf133, (1, 64, 32, 32), (262144, 1024, 32, 1), 196608)  # alias
buf202 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_bool)
buf134 = empty_strided((1, 256, 32, 32), (262144, 1, 8192, 256), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_threshold_backward_29(buf131.ptr, primals_287.ptr, primals_288.ptr, primals_115.ptr, primals_116.ptr, buf133.ptr, buf132.ptr, buf202.ptr, buf134.ptr)
del buf123
del buf126
del buf129
del buf132
del primals_116
# Source Nodes: [l__self___o4_final_conv], Original ATen: [aten.extern_kernels_convolution]
buf135 = extern_kernels_convolution(buf134, buf29, primals_118, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf135, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_118
buf136 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_float)
buf137 = empty_strided((32, ), (1, ), device='cpu', dtype=ctypes.c_int64)
buf138 = empty_strided((1, 128, 32, 32), (131072, 1, 4096, 128), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_30(buf135.ptr, primals_290.ptr, primals_291.ptr, primals_119.ptr, primals_120.ptr, buf72.ptr, buf136.ptr, buf137.ptr, buf138.ptr)
del primals_120
# Source Nodes: [l__self___up5_up_1], Original ATen: [aten.extern_kernels_convolution]
buf139 = extern_kernels_convolution(buf138, buf30, primals_122, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf139, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_122
buf140 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_float)
buf149 = empty_strided((1, 128, 32, 32), (131072, 1, 4096, 128), device='cpu', dtype=ctypes.c_float)
buf148 = reinterpret_tensor(buf149, (1, 64, 32, 32), (131072, 1, 4096, 128), 64)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_31(buf139.ptr, primals_293.ptr, primals_294.ptr, primals_123.ptr, primals_124.ptr, buf140.ptr, buf148.ptr)
del primals_124
# Source Nodes: [l__self___att5_w_g_0], Original ATen: [aten.extern_kernels_convolution]
buf141 = extern_kernels_convolution(buf140, primals_125, primals_126, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf141, (1, 32, 32, 32), (32768, 1, 1024, 32))
del primals_126
# Source Nodes: [l__self___att5_w_x_0], Original ATen: [aten.extern_kernels_convolution]
buf142 = extern_kernels_convolution(buf136, primals_129, primals_130, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf142, (1, 32, 32, 32), (32768, 1, 1024, 32))
del primals_130
buf143 = empty_strided((1, 32, 32, 32), (32768, 1, 1024, 32), device='cpu', dtype=ctypes.c_float)
buf144 = buf143; del buf143  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training_add_relu_32(buf144.ptr, buf141.ptr, primals_296.ptr, primals_297.ptr, primals_127.ptr, primals_128.ptr, buf142.ptr, primals_299.ptr, primals_300.ptr, primals_131.ptr, primals_132.ptr)
del primals_128
del primals_132
# Source Nodes: [l__self___att5_psi_0], Original ATen: [aten.extern_kernels_convolution]
buf145 = extern_kernels_convolution(buf144, primals_133, primals_134, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf145, (1, 1, 32, 32), (1024, 1, 32, 1))
del primals_134
buf146 = empty_strided((1, 1, 32, 32), (1024, 1, 32, 1), device='cpu', dtype=ctypes.c_float)
buf147 = reinterpret_tensor(buf149, (1, 64, 32, 32), (131072, 1, 4096, 128), 0)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_33(buf145.ptr, primals_302.ptr, primals_303.ptr, primals_135.ptr, primals_136.ptr, buf136.ptr, buf146.ptr, buf147.ptr)
del primals_136
# Source Nodes: [l__self___up_conv5_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf150 = extern_kernels_convolution(buf149, buf31, primals_138, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf150, (1, 64, 32, 32), (65536, 1, 2048, 64))
del primals_138
buf151 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_float)
buf152 = empty_strided((64, ), (1, ), device='cpu', dtype=ctypes.c_int64)
buf153 = reinterpret_tensor(buf133, (1, 64, 64, 64), (262144, 1, 4096, 64)); del buf133  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_34(buf150.ptr, primals_305.ptr, primals_306.ptr, primals_139.ptr, primals_140.ptr, buf151.ptr, buf152.ptr, buf153.ptr)
del primals_140
# Source Nodes: [l__self___up4_up_1], Original ATen: [aten.extern_kernels_convolution]
buf154 = extern_kernels_convolution(buf153, buf32, primals_142, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf154, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_142
buf155 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_float)
buf164 = empty_strided((1, 64, 64, 64), (262144, 1, 4096, 64), device='cpu', dtype=ctypes.c_float)
buf163 = reinterpret_tensor(buf164, (1, 32, 64, 64), (262144, 1, 4096, 64), 32)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_35(buf154.ptr, primals_308.ptr, primals_309.ptr, primals_143.ptr, primals_144.ptr, buf155.ptr, buf163.ptr)
del primals_144
# Source Nodes: [l__self___att4_w_g_0], Original ATen: [aten.extern_kernels_convolution]
buf156 = extern_kernels_convolution(buf155, primals_145, primals_146, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf156, (1, 16, 64, 64), (65536, 1, 1024, 16))
del primals_146
# Source Nodes: [l__self___att4_w_x_0], Original ATen: [aten.extern_kernels_convolution]
buf157 = extern_kernels_convolution(buf120, primals_149, primals_150, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf157, (1, 16, 64, 64), (65536, 1, 1024, 16))
del primals_150
buf158 = empty_strided((1, 16, 64, 64), (65536, 1, 1024, 16), device='cpu', dtype=ctypes.c_float)
buf159 = buf158; del buf158  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training_add_relu_36(buf159.ptr, buf156.ptr, primals_311.ptr, primals_312.ptr, primals_147.ptr, primals_148.ptr, buf157.ptr, primals_314.ptr, primals_315.ptr, primals_151.ptr, primals_152.ptr)
del primals_148
del primals_152
# Source Nodes: [l__self___att4_psi_0], Original ATen: [aten.extern_kernels_convolution]
buf160 = extern_kernels_convolution(buf159, primals_153, primals_154, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf160, (1, 1, 64, 64), (4096, 1, 64, 1))
del primals_154
buf161 = empty_strided((1, 1, 64, 64), (4096, 1, 64, 1), device='cpu', dtype=ctypes.c_float)
buf162 = reinterpret_tensor(buf164, (1, 32, 64, 64), (262144, 1, 4096, 64), 0)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_37(buf160.ptr, primals_317.ptr, primals_318.ptr, primals_155.ptr, primals_156.ptr, buf120.ptr, buf161.ptr, buf162.ptr)
del primals_156
# Source Nodes: [l__self___up_conv4_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf165 = extern_kernels_convolution(buf164, buf33, primals_158, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf165, (1, 32, 64, 64), (131072, 1, 2048, 32))
del primals_158
buf166 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_float)
buf167 = empty_strided((128, ), (1, ), device='cpu', dtype=ctypes.c_int64)
buf168 = reinterpret_tensor(buf117, (1, 32, 128, 128), (524288, 1, 4096, 32)); del buf117  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_38(buf165.ptr, primals_320.ptr, primals_321.ptr, primals_159.ptr, primals_160.ptr, buf166.ptr, buf167.ptr, buf168.ptr)
del primals_160
# Source Nodes: [l__self___up3_up_1], Original ATen: [aten.extern_kernels_convolution]
buf169 = extern_kernels_convolution(buf168, buf34, primals_162, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf169, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_162
buf170 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_float)
buf179 = empty_strided((1, 32, 128, 128), (524288, 1, 4096, 32), device='cpu', dtype=ctypes.c_float)
buf178 = reinterpret_tensor(buf179, (1, 16, 128, 128), (524288, 1, 4096, 32), 16)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_39(buf169.ptr, primals_323.ptr, primals_324.ptr, primals_163.ptr, primals_164.ptr, buf170.ptr, buf178.ptr)
del primals_164
# Source Nodes: [l__self___att3_w_g_0], Original ATen: [aten.extern_kernels_convolution]
buf171 = extern_kernels_convolution(buf170, primals_165, primals_166, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf171, (1, 8, 128, 128), (131072, 1, 1024, 8))
del primals_166
# Source Nodes: [l__self___att3_w_x_0], Original ATen: [aten.extern_kernels_convolution]
buf172 = extern_kernels_convolution(buf104, primals_169, primals_170, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf172, (1, 8, 128, 128), (131072, 1, 1024, 8))
del primals_170
buf173 = empty_strided((1, 8, 128, 128), (131072, 1, 1024, 8), device='cpu', dtype=ctypes.c_float)
buf174 = buf173; del buf173  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training_add_relu_40(buf174.ptr, buf171.ptr, primals_326.ptr, primals_327.ptr, primals_167.ptr, primals_168.ptr, buf172.ptr, primals_329.ptr, primals_330.ptr, primals_171.ptr, primals_172.ptr)
del primals_168
del primals_172
# Source Nodes: [l__self___att3_psi_0], Original ATen: [aten.extern_kernels_convolution]
buf175 = extern_kernels_convolution(buf174, primals_173, primals_174, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf175, (1, 1, 128, 128), (16384, 1, 128, 1))
del primals_174
buf176 = empty_strided((1, 1, 128, 128), (16384, 1, 128, 1), device='cpu', dtype=ctypes.c_float)
buf177 = reinterpret_tensor(buf179, (1, 16, 128, 128), (524288, 1, 4096, 32), 0)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_41(buf175.ptr, primals_332.ptr, primals_333.ptr, primals_175.ptr, primals_176.ptr, buf104.ptr, buf176.ptr, buf177.ptr)
del primals_176
# Source Nodes: [l__self___up_conv3_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf180 = extern_kernels_convolution(buf179, buf35, primals_178, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf180, (1, 16, 128, 128), (262144, 1, 2048, 16))
del primals_178
buf181 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_float)
buf182 = empty_strided((256, ), (1, ), device='cpu', dtype=ctypes.c_int64)
buf183 = reinterpret_tensor(buf101, (1, 16, 256, 256), (1048576, 1, 4096, 16)); del buf101  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training__to_copy__unsafe_index_arange_mul_relu_42(buf180.ptr, primals_335.ptr, primals_336.ptr, primals_179.ptr, primals_180.ptr, buf181.ptr, buf182.ptr, buf183.ptr)
del primals_180
# Source Nodes: [l__self___up2_up_1], Original ATen: [aten.extern_kernels_convolution]
buf184 = extern_kernels_convolution(buf183, buf36, primals_182, stride=(1, 1), padding=(1, 1), dilation=(1, 1))
assert_size_stride(buf184, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_182
buf185 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_float)
buf194 = empty_strided((1, 16, 256, 256), (1048576, 1, 4096, 16), device='cpu', dtype=ctypes.c_float)
buf193 = reinterpret_tensor(buf194, (1, 8, 256, 256), (1048576, 1, 4096, 16), 8)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_cat_relu_43(buf184.ptr, primals_338.ptr, primals_339.ptr, primals_183.ptr, primals_184.ptr, buf185.ptr, buf193.ptr)
del primals_184
# Source Nodes: [l__self___att2_w_g_0], Original ATen: [aten.extern_kernels_convolution]
buf186 = extern_kernels_convolution(buf185, primals_185, primals_186, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf186, (1, 4, 256, 256), (262144, 1, 1024, 4))
del primals_186
# Source Nodes: [l__self___att2_w_x_0], Original ATen: [aten.extern_kernels_convolution]
buf187 = extern_kernels_convolution(buf88, primals_189, primals_190, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf187, (1, 4, 256, 256), (262144, 1, 1024, 4))
del primals_190
buf188 = empty_strided((1, 4, 256, 256), (262144, 1, 1024, 4), device='cpu', dtype=ctypes.c_float)
buf189 = buf188; del buf188  # reuse
lib.cpp_fused__native_batch_norm_legit_no_training_add_relu_44(buf189.ptr, buf186.ptr, primals_341.ptr, primals_342.ptr, primals_187.ptr, primals_188.ptr, buf187.ptr, primals_344.ptr, primals_345.ptr, primals_191.ptr, primals_192.ptr)
del primals_188
del primals_192
# Source Nodes: [l__self___att2_psi_0], Original ATen: [aten.extern_kernels_convolution]
buf190 = extern_kernels_convolution(buf189, primals_193, primals_194, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf190, (1, 1, 256, 256), (65536, 1, 256, 1))
del primals_194
buf191 = empty_strided((1, 1, 256, 256), (65536, 1, 256, 1), device='cpu', dtype=ctypes.c_float)
buf192 = reinterpret_tensor(buf194, (1, 8, 256, 256), (1048576, 1, 4096, 16), 0)  # alias
lib.cpp_fused__native_batch_norm_legit_no_training_mul_sigmoid_45(buf190.ptr, primals_347.ptr, primals_348.ptr, primals_195.ptr, primals_196.ptr, buf88.ptr, buf191.ptr, buf192.ptr)
del primals_196
# Source Nodes: [l__self___up_conv2_conv_0], Original ATen: [aten.extern_kernels_convolution]
buf195 = extern_kernels_convolution(buf194, buf37, primals_198, stride=(1, 1), padding=(10, 10), dilation=(2, 2))
assert_size_stride(buf195, (1, 8, 256, 256), (524288, 1, 2048, 8))
del primals_198
buf196 = empty_strided((1, 8, 256, 256), (524288, 1, 2048, 8), device='cpu', dtype=ctypes.c_float)
lib.cpp_fused__native_batch_norm_legit_no_training_relu_46(buf195.ptr, primals_350.ptr, primals_351.ptr, primals_199.ptr, primals_200.ptr, buf196.ptr)
del primals_200
# Source Nodes: [l__self___conv_1x1], Original ATen: [aten.convolution]
buf197 = extern_kernels_convolution(buf196, primals_201, primals_202, stride=(1, 1), padding=(0, 0), dilation=(1, 1))
assert_size_stride(buf197, (1, 1, 256, 256), (65536, 1, 256, 1))
del primals_202
buf198 = reinterpret_tensor(buf197, (1, 1, 256, 256), (65536, 65536, 256, 1)); del buf197  # reuse
buf199 = empty_strided((1, 16, 128, 128), (262144, 1, 2048, 16), device='cpu', dtype=ctypes.c_bool)
buf200 = empty_strided((1, 32, 64, 64), (131072, 1, 2048, 32), device='cpu', dtype=ctypes.c_bool)
buf201 = empty_strided((1, 64, 32, 32), (65536, 1, 2048, 64), device='cpu', dtype=ctypes.c_bool)
buf218 = empty_strided((1, 128, 16, 16), (32768, 1, 2048, 128), device='cpu', dtype=ctypes.c_bool)
lib.cpp_fused_sigmoid_threshold_backward_47(buf198.ptr, buf181.ptr, buf166.ptr, buf151.ptr, buf72.ptr, buf199.ptr, buf200.ptr, buf201.ptr, buf218.ptr)

end_time = time.time()
print("Time taken: ", end_time - start_time)

save_thresholded_image(buf198, 0.5, 'output.png')

    


    