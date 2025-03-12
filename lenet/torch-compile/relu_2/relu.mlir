#map = affine_map<(d0)[s0] -> (d0 + s0)>
module {
  func.func @triton__0d1d2de_2(%arg0: i64, %arg1: i64, %arg2: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %false = arith.constant false
    %true = arith.constant true
    %c1 = arith.constant 1 : index
    %c1024 = arith.constant 1024 : index
    %c1024_i32 = arith.constant 1024 : i32
    %c64_i32 = arith.constant 64 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<1024xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<1024xf32>) -> tensor<1024xf32>
    %2 = tensor.empty() : tensor<1024xi32>
    %3 = linalg.fill ins(%c64_i32 : i32) outs(%2 : tensor<1024xi32>) -> tensor<1024xi32>
    // %4 = gpu.block_id  x
    %4 = arith.constant 0 : index
    %5 = arith.index_cast %4 : index to i32
    %6 = arith.muli %5, %c1024_i32 : i32
    %7 = scf.for %arg3 = %c0 to %c1024 step %c1 iter_args(%arg4 = %2) -> (tensor<1024xi32>) {
      %29 = arith.index_cast %arg3 : index to i32
      %inserted = tensor.insert %29 into %arg4[%arg3] : tensor<1024xi32>
      scf.yield %inserted : tensor<1024xi32>
    }
    %8 = linalg.fill ins(%6 : i32) outs(%2 : tensor<1024xi32>) -> tensor<1024xi32>
    %mapped = linalg.map { arith.addi } ins(%8, %7 : tensor<1024xi32>, tensor<1024xi32>) outs(%2 : tensor<1024xi32>)
    %9 = arith.index_cast %6 : i32 to index
    %10 = arith.addi %9, %c1024 : index
    %11 = arith.maxsi %9, %c1024 : index
    %12 = arith.minsi %10, %11 : index
    %13 = arith.subi %12, %9 : index
    %14 = tensor.empty(%13) : tensor<?xi1>
    %15 = linalg.fill ins(%true : i1) outs(%14 : tensor<?xi1>) -> tensor<?xi1>
    %16 = tensor.empty() : tensor<1024xi1>
    %17 = linalg.fill ins(%false : i1) outs(%16 : tensor<1024xi1>) -> tensor<1024xi1>
    %inserted_slice = tensor.insert_slice %15 into %17[0] [%13] [1] : tensor<?xi1> into tensor<1024xi1>
    %mapped_0 = linalg.map { arith.divsi } ins(%mapped, %3 : tensor<1024xi32>, tensor<1024xi32>) outs(%2 : tensor<1024xi32>)
    %extracted = tensor.extract %7[%c0] : tensor<1024xi32>
    %18 = arith.addi %6, %extracted : i32
    %19 = arith.index_cast %18 : i32 to index
    %20 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %view_memref = aux.view %20 to offset: [%19], sizes: [%13], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %21 = bufferization.to_tensor %view_memref restrict writable : memref<?xf32, #map>
    %22 = tensor.empty(%13) : tensor<?xf32>
    %23 = linalg.copy ins(%21 : tensor<?xf32>) outs(%22 : tensor<?xf32>) -> tensor<?xf32>
    %inserted_slice_1 = tensor.insert_slice %23 into %1[0] [%13] [1] : tensor<?xf32> into tensor<1024xf32>
    %24 = linalg.fill ins(%c0_i32 : i32) outs(%2 : tensor<1024xi32>) -> tensor<1024xi32>
    %mapped_2 = linalg.map { arith.addi } ins(%mapped_0, %24 : tensor<1024xi32>, tensor<1024xi32>) outs(%2 : tensor<1024xi32>)
    %25 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %view_memref_3 = aux.view %25 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
    %26 = bufferization.to_tensor %view_memref_3 restrict writable : memref<9223372036854775807xf32>
    %expanded = tensor.expand_shape %0 [[0, 1]] : tensor<1024xf32> into tensor<1024x1xf32>
    %27 = linalg.fill ins(%cst : f32) outs(%expanded : tensor<1024x1xf32>) -> tensor<1024x1xf32>
    %expanded_4 = tensor.expand_shape %mapped_2 [[0, 1]] : tensor<1024xi32> into tensor<1024x1xi32>

    // %28 = linalg_ext.gather dimension_map = [0] ranged_data(false) signed_indice(true) ins(%26, %expanded_4, %inserted_slice : tensor<9223372036854775807xf32>, tensor<1024x1xi32>, tensor<1024xi1>) outs(%27 : tensor<1024x1xf32>) {
    // ^bb0(%arg3: f32, %arg4: f32):
    //   linalg_ext.yield %arg3 : f32
    // } -> tensor<1024x1xf32>

    %len = tensor.dim %expanded_4, %c0 : tensor<1024x1xi32>
    %28 = scf.for %idx = %c0 to %len step %c1 iter_args(%gather = %27) -> tensor<1024x1xf32> {
      %flag = tensor.extract %inserted_slice[%idx] : tensor<1024xi1>
      %updated_gather = scf.if %flag -> tensor<1024x1xf32> {
        %offset = tensor.extract %expanded_4[%idx, %c0] : tensor<1024x1xi32>
        %offset_idx = arith.index_cast %offset : i32 to index
        %value = tensor.extract %26[%offset_idx] : tensor<9223372036854775807xf32>
        %inserted = tensor.insert %value into %gather[%idx, %c0] : tensor<1024x1xf32>
        scf.yield %inserted : tensor<1024x1xf32>
      } else {
        scf.yield %gather : tensor<1024x1xf32>
      }
      scf.yield %updated_gather : tensor<1024x1xf32>
    }
    %collapsed = tensor.collapse_shape %28 [[0, 1]] : tensor<1024x1xf32> into tensor<1024xf32>
    %mapped_5 = linalg.map { arith.addf } ins(%inserted_slice_1, %collapsed : tensor<1024xf32>, tensor<1024xf32>) outs(%0 : tensor<1024xf32>)
    %mapped_6 = linalg.map { arith.maximumf } ins(%mapped_5, %1 : tensor<1024xf32>, tensor<1024xf32>) outs(%0 : tensor<1024xf32>)
    %view_memref_7 = aux.view %20 to offset: [%19], sizes: [%13], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %extracted_slice = tensor.extract_slice %mapped_6[0] [%13] [1] : tensor<1024xf32> to tensor<?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref_7 : (tensor<?xf32>, memref<?xf32, #map>) -> ()
    return
  }
}

