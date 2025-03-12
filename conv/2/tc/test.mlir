#map = affine_map<(d0)[s0] -> (d0 + s0)>
module {
  func.func @triton__0d1d2de(%arg0: i64, %arg1: i64, %arg2: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c784 = arith.constant 784 : index
    %c1 = arith.constant 1 : index
    %c1024 = arith.constant 1024 : index
    %c1024_i32 = arith.constant 1024 : i32
    %cst = arith.constant 0.000000e+00 : f32
    // %0 = gpu.block_id  x
    %0 = arith.constant 0 : index
    %1 = arith.index_cast %0 : index to i32
    %2 = arith.muli %1, %c1024_i32 : i32
    %3 = tensor.empty() : tensor<1024xi32>
    %4 = scf.for %arg3 = %c0 to %c1024 step %c1 iter_args(%arg4 = %3) -> (tensor<1024xi32>) {
      %21 = arith.index_cast %arg3 : index to i32
      %inserted = tensor.insert %21 into %arg4[%arg3] : tensor<1024xi32>
      scf.yield %inserted : tensor<1024xi32>
    }
    %5 = arith.index_cast %2 : i32 to index
    %6 = arith.addi %5, %c1024 : index
    %7 = arith.maxsi %5, %c784 : index
    %8 = arith.minsi %6, %7 : index
    %9 = arith.subi %8, %5 : index
    %extracted = tensor.extract %4[%c0] : tensor<1024xi32>
    %10 = arith.addi %2, %extracted : i32
    %11 = arith.index_cast %10 : i32 to index
    %12 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %view_memref = aux.view %12 to offset: [%11], sizes: [%9], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %13 = bufferization.to_tensor %view_memref restrict writable : memref<?xf32, #map>
    %14 = tensor.empty(%9) : tensor<?xf32>
    %15 = linalg.copy ins(%13 : tensor<?xf32>) outs(%14 : tensor<?xf32>) -> tensor<?xf32>
    %16 = tensor.empty() : tensor<1024xf32>
    %17 = linalg.fill ins(%cst : f32) outs(%16 : tensor<1024xf32>) -> tensor<1024xf32>
    %inserted_slice = tensor.insert_slice %15 into %17[0] [%9] [1] : tensor<?xf32> into tensor<1024xf32>
    %18 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %view_memref_0 = aux.view %18 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
    %19 = memref.load %view_memref_0[%c0] : memref<1xf32>
    %20 = linalg.fill ins(%19 : f32) outs(%16 : tensor<1024xf32>) -> tensor<1024xf32>
    %mapped = linalg.map { arith.addf } ins(%inserted_slice, %20 : tensor<1024xf32>, tensor<1024xf32>) outs(%16 : tensor<1024xf32>)
    %view_memref_1 = aux.view %12 to offset: [%11], sizes: [%9], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %extracted_slice = tensor.extract_slice %mapped[0] [%9] [1] : tensor<1024xf32> to tensor<?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref_1 : (tensor<?xf32>, memref<?xf32, #map>) -> ()
    return
  }
}

