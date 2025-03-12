#map = affine_map<(d0)[s0] -> (d0 + s0)>
module {
  func.func @triton__0d1d2de_4(%arg0: i64, %arg1: i64, %arg2: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %false = arith.constant false
    %true = arith.constant true
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c8_i32 = arith.constant 8 : i32
    %c9_i32 = arith.constant 9 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<256xf32>
    %1 = tensor.empty() : tensor<256xi32>
    %2 = linalg.fill ins(%c9_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %3 = linalg.fill ins(%c8_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %4 = linalg.fill ins(%c1_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %5 = linalg.fill ins(%c16_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %6 = linalg.fill ins(%c2_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %7 = linalg.fill ins(%c4_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    // %8 = gpu.block_id  x
    %8 = arith.constant 0 : index
    %9 = arith.index_cast %8 : index to i32
    %10 = arith.muli %9, %c256_i32 : i32
    %11 = scf.for %arg3 = %c0 to %c256 step %c1 iter_args(%arg4 = %1) -> (tensor<256xi32>) {
      %36 = arith.index_cast %arg3 : index to i32
      %inserted = tensor.insert %36 into %arg4[%arg3] : tensor<256xi32>
      scf.yield %inserted : tensor<256xi32>
    }
    %12 = linalg.fill ins(%10 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %mapped = linalg.map { arith.addi } ins(%12, %11 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %13 = arith.index_cast %10 : i32 to index
    %14 = arith.addi %13, %c256 : index
    %15 = arith.maxsi %13, %c256 : index
    %16 = arith.minsi %14, %15 : index
    %17 = arith.subi %16, %13 : index
    %18 = tensor.empty(%17) : tensor<?xi1>
    %19 = linalg.fill ins(%true : i1) outs(%18 : tensor<?xi1>) -> tensor<?xi1>
    %20 = tensor.empty() : tensor<256xi1>
    %21 = linalg.fill ins(%false : i1) outs(%20 : tensor<256xi1>) -> tensor<256xi1>
    %inserted_slice = tensor.insert_slice %19 into %21[0] [%17] [1] : tensor<?xi1> into tensor<256xi1>
    %mapped_0 = linalg.map { arith.remsi } ins(%mapped, %7 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_1 = linalg.map { arith.muli } ins(%mapped_0, %6 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_2 = linalg.map { arith.divsi } ins(%mapped, %7 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_3 = linalg.map { arith.muli } ins(%mapped_2, %5 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_4 = linalg.map { arith.addi } ins(%mapped_1, %mapped_3 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %22 = linalg.fill ins(%c0_i32 : i32) outs(%1 : tensor<256xi32>) -> tensor<256xi32>
    %mapped_5 = linalg.map { arith.addi } ins(%mapped_4, %22 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %23 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %view_memref = aux.view %23 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
    %24 = bufferization.to_tensor %view_memref restrict writable : memref<9223372036854775807xf32>
    %expanded = tensor.expand_shape %0 [[0, 1]] : tensor<256xf32> into tensor<256x1xf32>
    %25 = linalg.fill ins(%cst : f32) outs(%expanded : tensor<256x1xf32>) -> tensor<256x1xf32>
    %expanded_6 = tensor.expand_shape %mapped_5 [[0, 1]] : tensor<256xi32> into tensor<256x1xi32>

    %len_1 = tensor.dim %expanded_6, %c0 : tensor<256x1xi32>
    %26 = scf.for %idx_1 = %c0 to %len_1 step %c1 iter_args(%gather_1 = %25) -> tensor<256x1xf32> {
      %flag_1 = tensor.extract %inserted_slice[%idx_1] : tensor<256xi1>
      %updated_gather_1 = scf.if %flag_1 -> tensor<256x1xf32> {
        %offset_1 = tensor.extract %expanded_6[%idx_1, %c0] : tensor<256x1xi32>
        %offset_idx_1 = arith.index_cast %offset_1 : i32 to index
        %value_1 = tensor.extract %24[%offset_idx_1] : tensor<9223372036854775807xf32>
        %inserted_1 = tensor.insert %value_1 into %gather_1[%idx_1, %c0] : tensor<256x1xf32>
        scf.yield %inserted_1 : tensor<256x1xf32>
      } else {
        scf.yield %gather_1 : tensor<256x1xf32>
      }
      scf.yield %updated_gather_1 : tensor<256x1xf32>
    }

    %collapsed = tensor.collapse_shape %26 [[0, 1]] : tensor<256x1xf32> into tensor<256xf32>
    %mapped_7 = linalg.map { arith.addi } ins(%mapped_1, %4 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_8 = linalg.map { arith.addi } ins(%mapped_7, %mapped_3 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_9 = linalg.map { arith.addi } ins(%mapped_8, %22 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %view_memref_10 = aux.view %23 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
    %27 = bufferization.to_tensor %view_memref_10 restrict writable : memref<9223372036854775807xf32>
    %expanded_11 = tensor.expand_shape %mapped_9 [[0, 1]] : tensor<256xi32> into tensor<256x1xi32>

    %len_2 = tensor.dim %expanded_11, %c0 : tensor<256x1xi32>
    %28 = scf.for %idx_2 = %c0 to %len_2 step %c1 iter_args(%gather_2 = %25) -> tensor<256x1xf32> {
      %flag_2 = tensor.extract %inserted_slice[%idx_2] : tensor<256xi1>
      %updated_gather_2 = scf.if %flag_2 -> tensor<256x1xf32> {
        %offset_2 = tensor.extract %expanded_11[%idx_2, %c0] : tensor<256x1xi32>
        %offset_idx_2 = arith.index_cast %offset_2 : i32 to index
        %value_2 = tensor.extract %27[%offset_idx_2] : tensor<9223372036854775807xf32>
        %inserted_2 = tensor.insert %value_2 into %gather_2[%idx_2, %c0] : tensor<256x1xf32>
        scf.yield %inserted_2 : tensor<256x1xf32>
      } else {
        scf.yield %gather_2 : tensor<256x1xf32>
      }
      scf.yield %updated_gather_2 : tensor<256x1xf32>
    }

    %collapsed_12 = tensor.collapse_shape %28 [[0, 1]] : tensor<256x1xf32> into tensor<256xf32>
    %mapped_13 = linalg.map { arith.addi } ins(%mapped_1, %3 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_14 = linalg.map { arith.addi } ins(%mapped_13, %mapped_3 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_15 = linalg.map { arith.addi } ins(%mapped_14, %22 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %view_memref_16 = aux.view %23 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
    %29 = bufferization.to_tensor %view_memref_16 restrict writable : memref<9223372036854775807xf32>
    %expanded_17 = tensor.expand_shape %mapped_15 [[0, 1]] : tensor<256xi32> into tensor<256x1xi32>

    %len_3 = tensor.dim %expanded_17, %c0 : tensor<256x1xi32>
    %30 = scf.for %idx_3 = %c0 to %len_3 step %c1 iter_args(%gather_3 = %25) -> tensor<256x1xf32> {
      %flag_3 = tensor.extract %inserted_slice[%idx_3] : tensor<256xi1>
      %updated_gather_3 = scf.if %flag_3 -> tensor<256x1xf32> {
        %offset_3 = tensor.extract %expanded_17[%idx_3, %c0] : tensor<256x1xi32>
        %offset_idx_3 = arith.index_cast %offset_3 : i32 to index
        %value_3 = tensor.extract %29[%offset_idx_3] : tensor<9223372036854775807xf32>
        %inserted_3 = tensor.insert %value_3 into %gather_3[%idx_3, %c0] : tensor<256x1xf32>
        scf.yield %inserted_3 : tensor<256x1xf32>
      } else {
        scf.yield %gather_3 : tensor<256x1xf32>
      }
      scf.yield %updated_gather_3 : tensor<256x1xf32>
    }

    %collapsed_18 = tensor.collapse_shape %30 [[0, 1]] : tensor<256x1xf32> into tensor<256xf32>
    %mapped_19 = linalg.map { arith.addi } ins(%mapped_1, %2 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_20 = linalg.map { arith.addi } ins(%mapped_19, %mapped_3 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %mapped_21 = linalg.map { arith.addi } ins(%mapped_20, %22 : tensor<256xi32>, tensor<256xi32>) outs(%1 : tensor<256xi32>)
    %view_memref_22 = aux.view %23 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
    %31 = bufferization.to_tensor %view_memref_22 restrict writable : memref<9223372036854775807xf32>
    %expanded_23 = tensor.expand_shape %mapped_21 [[0, 1]] : tensor<256xi32> into tensor<256x1xi32>

    %len_4 = tensor.dim %expanded_23, %c0 : tensor<256x1xi32>
    %32 = scf.for %idx_4 = %c0 to %len_4 step %c1 iter_args(%gather_4 = %25) -> tensor<256x1xf32> {
      %flag_4 = tensor.extract %inserted_slice[%idx_4] : tensor<256xi1>
      %updated_gather_4 = scf.if %flag_4 -> tensor<256x1xf32> {
        %offset_4 = tensor.extract %expanded_23[%idx_4, %c0] : tensor<256x1xi32>
        %offset_idx_4 = arith.index_cast %offset_4 : i32 to index
        %value_4 = tensor.extract %31[%offset_idx_4] : tensor<9223372036854775807xf32>
        %inserted_4 = tensor.insert %value_4 into %gather_4[%idx_4, %c0] : tensor<256x1xf32>
        scf.yield %inserted_4 : tensor<256x1xf32>
      } else {
        scf.yield %gather_4 : tensor<256x1xf32>
      }
      scf.yield %updated_gather_4 : tensor<256x1xf32>
    }

    %collapsed_24 = tensor.collapse_shape %32 [[0, 1]] : tensor<256x1xf32> into tensor<256xf32>
    %mapped_25 = linalg.map { arith.maximumf } ins(%collapsed_12, %collapsed : tensor<256xf32>, tensor<256xf32>) outs(%0 : tensor<256xf32>)
    %mapped_26 = linalg.map { arith.maximumf } ins(%collapsed_18, %mapped_25 : tensor<256xf32>, tensor<256xf32>) outs(%0 : tensor<256xf32>)
    %mapped_27 = linalg.map { arith.maximumf } ins(%collapsed_24, %mapped_26 : tensor<256xf32>, tensor<256xf32>) outs(%0 : tensor<256xf32>)
    %extracted = tensor.extract %11[%c0] : tensor<256xi32>
    %33 = arith.addi %10, %extracted : i32
    %34 = arith.index_cast %33 : i32 to index
    %35 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %view_memref_28 = aux.view %35 to offset: [%34], sizes: [%17], strides: [1] : !llvm.ptr to memref<?xf32, #map>
    %extracted_slice = tensor.extract_slice %mapped_27[0] [%17] [1] : tensor<256xf32> to tensor<?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref_28 : (tensor<?xf32>, memref<?xf32, #map>) -> ()
    return
  }
}

