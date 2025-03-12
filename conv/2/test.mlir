#map = affine_map<(d0) -> (d0)>
module {
  func.func @triton_(%arg0: memref<*xf32>, %arg1: memref<*xf32>, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32)attributes {llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c784 = arith.constant 784 : index
    %c1024 = arith.constant 1024 : index
    %c1024_i32 = arith.constant 1024 : i32
    %0 = arith.muli %arg6, %c1024_i32 : i32
    %1 = arith.index_cast %0 : i32 to index
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%1], sizes: [1024], strides: [1] : memref<*xf32> to memref<1024xf32, strided<[1], offset: ?>>
    %alloc = memref.alloc() : memref<1024xf32>
    %2 = arith.index_cast %0 : i32 to index
    %3 = arith.addi %2, %c1024 : index
    %4 = arith.minsi %3, %c784 : index
    %5 = arith.maxsi %4, %2 : index
    %6 = arith.subi %5, %2 : index
    %subview = memref.subview %reinterpret_cast[0] [%6] [1] : memref<1024xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %subview_0 = memref.subview %alloc[0] [%6] [1] : memref<1024xf32> to memref<?xf32, strided<[1]>>
    memref.copy %subview, %subview_0 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1]>>
    %7 = bufferization.to_tensor %alloc restrict writable : memref<1024xf32>
    %reinterpret_cast_1 = memref.reinterpret_cast %arg1 to offset: [%c0], sizes: [1], strides: [1] : memref<*xf32> to memref<1xf32, strided<[1], offset: ?>>
    %8 = affine.load %reinterpret_cast_1[0] : memref<1xf32, strided<[1], offset: ?>>
    %9 = tensor.empty() : tensor<1024xf32>
    %10 = linalg.fill ins(%8 : f32) outs(%9 : tensor<1024xf32>) -> tensor<1024xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%7, %10 : tensor<1024xf32>, tensor<1024xf32>) outs(%7 : tensor<1024xf32>) {
    ^bb0(%in: f32, %in_3: f32, %out: f32):
      %17 = arith.addf %in, %in_3 : f32
      linalg.yield %17 : f32
    } -> tensor<1024xf32>
    %12 = arith.index_cast %0 : i32 to index
    %13 = arith.addi %12, %c1024 : index
    %14 = arith.minsi %13, %c784 : index
    %15 = arith.maxsi %14, %12 : index
    %16 = arith.subi %15, %12 : index
    %extracted_slice = tensor.extract_slice %11[0] [%16] [1] : tensor<1024xf32> to tensor<?xf32>
    %subview_2 = memref.subview %reinterpret_cast[0] [%16] [1] : memref<1024xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    bufferization.materialize_in_destination %extracted_slice in writable %subview_2 : (tensor<?xf32>, memref<?xf32, strided<[1], offset: ?>>) -> ()
    return
  }
}

