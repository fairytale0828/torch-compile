# Makefile 变量
SRC_DIR = x86_src              # 源文件夹
LIB_DIR = x86_lib              # 输出的库文件夹
LIB_NAME = lib$(notdir $(basename $(wildcard $(SRC_DIR)/*.cpp)))  # 生成库名

# 使用的编译器
CXX = g++
CXXFLAGS = -std=c++17 -O2 -fopenmp -mavx2 -fPIC -shared  # 编译选项：警告、生成共享库
LDFLAGS = -shared              # 链接选项：生成共享库

# 查找所有的 .cpp 文件
SRC = $(wildcard $(SRC_DIR)/*.cpp)

# 目标是生成的共享库文件名
TARGET = $(LIB_DIR)/$(LIB_NAME).so

# 默认目标
all: $(LIB_DIR) $(TARGET)

# 创建输出目录
$(LIB_DIR):
	mkdir -p $(LIB_DIR)

# 生成共享库的规则
$(TARGET): $(SRC)
	@echo "Compiling source files and creating shared library..."
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)
	@echo "Library created at: $@"

# 清理目标
clean:
	rm -f $(LIB_DIR)/*.so

# 显示编译的依赖关系
.PHONY: all clean
