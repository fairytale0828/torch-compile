#map = affine_map<(d0) -> (d0)>
module {
  func.func @triton_(%arg0: memref<*xf32> {tt.divisibility = 16 : i32}, %arg1: memref<*xf32> {tt.divisibility = 16 : i32}, %arg2: memref<*xf32> {tt.divisibility = 16 : i32}, %arg3: memref<*xf32> {tt.divisibility = 16 : i32}, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32)attributes {llvm.emit_c_interface} {
    %c10 = arith.constant 10 : index
    %c16 = arith.constant 16 : index
    %c16_i32 = arith.constant 16 : i32
    %0 = arith.muli %arg8, %c16_i32 : i32
    %1 = arith.index_cast %0 : i32 to index
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%1], sizes: [16], strides: [1] : memref<*xf32> to memref<16xf32, strided<[1], offset: ?>>
    %alloc = memref.alloc() : memref<16xf32>
    %2 = arith.index_cast %0 : i32 to index
    %3 = arith.addi %2, %c16 : index
    %4 = arith.minsi %3, %c10 : index
    %5 = arith.maxsi %4, %2 : index
    %6 = arith.subi %5, %2 : index
    %subview = memref.subview %reinterpret_cast[0] [%6] [1] : memref<16xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %subview_0 = memref.subview %alloc[0] [%6] [1] : memref<16xf32> to memref<?xf32, strided<[1]>>
    memref.copy %subview, %subview_0 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1]>>
    %7 = bufferization.to_tensor %alloc restrict writable : memref<16xf32>
    %8 = arith.index_cast %0 : i32 to index
    %reinterpret_cast_1 = memref.reinterpret_cast %arg1 to offset: [%8], sizes: [16], strides: [1] : memref<*xf32> to memref<16xf32, strided<[1], offset: ?>>
    %alloc_2 = memref.alloc() : memref<16xf32>
    %9 = arith.index_cast %0 : i32 to index
    %10 = arith.addi %9, %c16 : index
    %11 = arith.minsi %10, %c10 : index
    %12 = arith.maxsi %11, %9 : index
    %13 = arith.subi %12, %9 : index
    %subview_3 = memref.subview %reinterpret_cast_1[0] [%13] [1] : memref<16xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %subview_4 = memref.subview %alloc_2[0] [%13] [1] : memref<16xf32> to memref<?xf32, strided<[1]>>
    memref.copy %subview_3, %subview_4 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1]>>
    %14 = bufferization.to_tensor %alloc_2 restrict writable : memref<16xf32>
    %15 = arith.index_cast %0 : i32 to index
    %reinterpret_cast_5 = memref.reinterpret_cast %arg2 to offset: [%15], sizes: [16], strides: [1] : memref<*xf32> to memref<16xf32, strided<[1], offset: ?>>
    %alloc_6 = memref.alloc() : memref<16xf32>
    %16 = arith.index_cast %0 : i32 to index
    %17 = arith.addi %16, %c16 : index
    %18 = arith.minsi %17, %c10 : index
    %19 = arith.maxsi %18, %16 : index
    %20 = arith.subi %19, %16 : index
    %subview_7 = memref.subview %reinterpret_cast_5[0] [%20] [1] : memref<16xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %subview_8 = memref.subview %alloc_6[0] [%20] [1] : memref<16xf32> to memref<?xf32, strided<[1]>>
    memref.copy %subview_7, %subview_8 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1]>>
    %21 = bufferization.to_tensor %alloc_6 restrict writable : memref<16xf32>
    %22 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%7, %14 : tensor<16xf32>, tensor<16xf32>) outs(%7 : tensor<16xf32>) {
    ^bb0(%in: f32, %in_11: f32, %out: f32):
      %30 = arith.addf %in, %in_11 : f32
      linalg.yield %30 : f32
    } -> tensor<16xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%22, %21 : tensor<16xf32>, tensor<16xf32>) outs(%22 : tensor<16xf32>) {
    ^bb0(%in: f32, %in_11: f32, %out: f32):
      %30 = arith.addf %in, %in_11 : f32
      linalg.yield %30 : f32
    } -> tensor<16xf32>
    %24 = arith.index_cast %0 : i32 to index
    %reinterpret_cast_9 = memref.reinterpret_cast %arg3 to offset: [%24], sizes: [16], strides: [1] : memref<*xf32> to memref<16xf32, strided<[1], offset: ?>>
    %25 = arith.index_cast %0 : i32 to index
    %26 = arith.addi %25, %c16 : index
    %27 = arith.minsi %26, %c10 : index
    %28 = arith.maxsi %27, %25 : index
    %29 = arith.subi %28, %25 : index
    %extracted_slice = tensor.extract_slice %23[0] [%29] [1] : tensor<16xf32> to tensor<?xf32>
    %subview_10 = memref.subview %reinterpret_cast_9[0] [%29] [1] : memref<16xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    bufferization.materialize_in_destination %extracted_slice in writable %subview_10 : (tensor<?xf32>, memref<?xf32, strided<[1], offset: ?>>) -> ()
    return
  }
}

