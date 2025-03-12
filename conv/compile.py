import numpy as np

def triton_poi_fused_convolution_0():
    pass
def conv2d():
    pass
def call(args):
    primals_1, primals_2, primals_3 = args
    args.clear()
    # assert_size_stride(primals_1, (1, 1, 3, 3), (9, 9, 3, 1))
    # assert_size_stride(primals_2, (1, ), (1, ))
    # assert_size_stride(primals_3, (1, 1, 28, 28), (784, 784, 28, 1))
    # with torch.cuda._DeviceGuard(0):
    #     torch.cuda.set_device(0)
        # Source Nodes: [x], Original ATen: [aten.convolution]
        # buf0 = extern_kernels.convolution(primals_3, primals_1, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1, bias=None)
        # assert_size_stride(buf0, (1, 1, 28, 28), (784, 784, 28, 1))
        # buf1 = buf0; del buf0  # reuse
        # # Source Nodes: [x], Original ATen: [aten.convolution]
        # stream0 = get_raw_stream(0)
        # triton_poi_fused_convolution_0.run(buf1, primals_2, 784, grid=grid(784), stream=stream0)
        # del primals_2
    buf0 = extern_kernels.convolution(primals_3, primals_1, stride=(1, 1), padding=(1, 1), dilation=(1, 1), transposed=False, output_padding=(0, 0), groups=1, bias=None)
    assert_size_stride(buf0, (1, 1, 28, 28), (784, 784, 28, 1))
    buf1 = buf0; del buf0  # reuse
    # Source Nodes: [x], Original ATen: [aten.convolution]
    stream0 = get_raw_stream(0)
    triton_poi_fused_convolution_0.run(buf1, primals_2, 784, grid=grid(784), stream=stream0)
    del primals_2
    print("Computation result (buf1): ", buf1)
    return (buf1, primals_1, primals_3, )


def benchmark_compiled_module(times=1, repeat=1):
    pass


if __name__ == "__main__":
    from torch._inductor.wrapper_benchmark import compiled_module_main
    compiled_module_main('None', benchmark_compiled_module)
