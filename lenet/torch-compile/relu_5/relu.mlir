#map = affine_map<(d0)[s0] -> (d0 + s0)>
module {
  func.func @triton__0d1d2e_5(%arg0: i64, %arg1: i64, %arg2: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c120 = arith.constant 120 : index
    %c1 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    %c128_i32 = arith.constant 128 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<128xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<128xf32>) -> tensor<128xf32>
    // %2 = gpu.block_id  x
    %2 = arith.constant 0 : index
    %3 = arith.index_cast %2 : index to i32
    %4 = arith.muli %3, %c128_i32 : i32
    %5 = tensor.empty() : tensor<128xi32>
    %6 = scf.for %arg3 = %c0 to %c128 step %c1 iter_args(%arg4 = %5) -> (tensor<128xi32>) {
      %21 = arith.index_cast %arg3 : index to i32
      %inserted = tensor.insert %21 into %arg4[%arg3] : tensor<128xi32>
      scf.yield %inserted : tensor<128xi32>
    }
    %7 = arith.index_cast %4 : i32 to index
    %8 = arith.addi %7, %c128 : index
    %9 = arith.maxsi %7, %c120 : index
    %10 = arith.minsi %8, %9 : index
    %11 = arith.subi %10, %7 : index
    %extracted = tensor.extract %6[%c0] : tensor<128xi32>
    %12 = arith.addi %4, %extracted : i32
    %13 = arith.index_cast %12 : i32 to index
    %14 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %view_memref = aux.view %14 to offset: [%13], sizes: [%11], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %15 = bufferization.to_tensor %view_memref restrict writable : memref<?xf32, #map>
    %16 = tensor.empty(%11) : tensor<?xf32>
    %17 = linalg.copy ins(%15 : tensor<?xf32>) outs(%16 : tensor<?xf32>) -> tensor<?xf32>
    %inserted_slice = tensor.insert_slice %17 into %1[0] [%11] [1] : tensor<?xf32> into tensor<128xf32>
    %18 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %view_memref_0 = aux.view %18 to offset: [%13], sizes: [%11], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %19 = bufferization.to_tensor %view_memref_0 restrict writable : memref<?xf32, #map>
    %20 = linalg.copy ins(%19 : tensor<?xf32>) outs(%16 : tensor<?xf32>) -> tensor<?xf32>
    %inserted_slice_1 = tensor.insert_slice %20 into %1[0] [%11] [1] : tensor<?xf32> into tensor<128xf32>
    %mapped = linalg.map { arith.addf } ins(%inserted_slice, %inserted_slice_1 : tensor<128xf32>, tensor<128xf32>) outs(%0 : tensor<128xf32>)
    %mapped_2 = linalg.map { arith.maximumf } ins(%mapped, %1 : tensor<128xf32>, tensor<128xf32>) outs(%0 : tensor<128xf32>)
    %view_memref_3 = aux.view %18 to offset: [%13], sizes: [%11], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %extracted_slice = tensor.extract_slice %mapped_2[0] [%11] [1] : tensor<128xf32> to tensor<?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref_3 : (tensor<?xf32>, memref<?xf32, #map>) -> ()
    return
  }
}

