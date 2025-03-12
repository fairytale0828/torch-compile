SRC_DIR := /home/meng/torch-compiler/models/mobilenet/compute/func/x86
TARGET_DIR := /home/meng/torch-compiler/models/mobilenet/compute/func/x86_lib
CXX := g++
CXXFLAGS := -std=c++17 -O2 -fopenmp -mavx2 -fPIC -shared

# 获取所有cpp文件并生成对应的目标so路径
SRCS := $(wildcard $(SRC_DIR)/*.cpp)
TARGETS := $(patsubst $(SRC_DIR)/%.cpp,$(TARGET_DIR)/lib%.so,$(SRCS))

.PHONY: all clean

all: $(TARGET_DIR) $(TARGETS)

# 静态模式规则：将cpp编译为对应so文件
$(TARGET_DIR)/lib%.so: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

# 创建目标目录（order-only依赖）
$(TARGET_DIR):
	mkdir -p $@

clean:
	rm -f $(TARGET_DIR)/*.so