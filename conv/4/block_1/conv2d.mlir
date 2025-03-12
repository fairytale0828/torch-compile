#map = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
module {
  func.func @conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i64, %arg13: i64, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32)attributes {llvm.emit_c_interface} {
    %false = arith.constant false
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c4_i64 = arith.constant 4 : i64
    %true = arith.constant true
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<16x16xf32>
    %1 = tensor.empty() : tensor<1x16xi1>
    %2 = linalg.fill ins(%true : i1) outs(%1 : tensor<1x16xi1>) -> tensor<1x16xi1>
    %3 = tensor.empty() : tensor<16x1xi1>
    %4 = linalg.fill ins(%true : i1) outs(%3 : tensor<16x1xi1>) -> tensor<16x1xi1>
    // %5 = gpu.block_id  x
    %5 = arith.constant 0 : index
    %6 = arith.index_cast %5 : index to i32
    // %7 = gpu.block_id  y
    %7 = arith.constant 0 : index
    %8 = arith.index_cast %7 : index to i32
    %9 = arith.extsi %8 : i32 to i64
    %10 = arith.muli %9, %c4_i64 : i64
    %11 = arith.addi %arg12, %10 : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr
    %view_memref = aux.view %12 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
    %13 = memref.load %view_memref[%c0] : memref<1xf32>
    %14 = arith.muli %6, %arg16 : i32
    %15 = arith.muli %8, %arg17 : i32
    %16 = tensor.empty() : tensor<16xi32>
    %17 = scf.for %arg19 = %c0 to %c16 step %c1 iter_args(%arg20 = %16) -> (tensor<16xi32>) {
      %51 = arith.index_cast %arg19 : index to i32
      %inserted = tensor.insert %51 into %arg20[%arg19] : tensor<16xi32>
      scf.yield %inserted : tensor<16xi32>
    }
    %18 = tensor.empty() : tensor<16x1xi32>
    %19 = linalg.fill ins(%arg3 : i32) outs(%18 : tensor<16x1xi32>) -> tensor<16x1xi32>
    %20 = arith.muli %8, %arg2 : i32
    %21 = arith.muli %8, %arg9 : i32
    %22 = arith.muli %8, %arg10 : i32
    %23 = arith.addi %22, %21 : i32
    %24 = arith.index_cast %arg4 : i32 to index
    %25 = tensor.empty() : tensor<16x16xi1>
    %26 = tensor.empty() : tensor<16x16xi32>
    %27 = arith.index_cast %arg5 : i32 to index
    %28 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<16x16xf32> into tensor<256xf32>
    %expanded = tensor.expand_shape %collapsed [[0, 1]] : tensor<256xf32> into tensor<256x1xf32>
    %29 = arith.index_cast %arg7 : i32 to index
    %30 = arith.maxsi %29, %c0 : index
    %31 = arith.minsi %30, %c16 : index
    %32 = arith.index_cast %arg8 : i32 to index
    %33 = arith.maxsi %32, %c0 : index
    %34 = arith.minsi %33, %c16 : index
    %35 = arith.minsi %31, %c16 : index
    %36 = arith.maxsi %35, %c0 : index
    %37 = arith.minsi %34, %c16 : index
    %38 = arith.maxsi %37, %c0 : index
    %extracted = tensor.extract %17[%c0] : tensor<16xi32>
    %39 = arith.muli %extracted, %arg11 : i32
    %40 = arith.addi %extracted, %39 : i32
    %41 = arith.addi %40, %23 : i32
    %extracted_0 = tensor.extract %17[%c1] : tensor<16xi32>
    %42 = arith.muli %extracted_0, %arg11 : i32
    %43 = arith.addi %extracted, %42 : i32
    %44 = arith.addi %43, %23 : i32
    %45 = arith.subi %44, %41 : i32
    %46 = arith.index_cast %45 : i32 to index
    %47 = arith.index_cast %41 : i32 to index
    %48 = llvm.inttoptr %arg6 : i64 to !llvm.ptr
    %49 = tensor.empty(%36, %38) : tensor<?x?xf32>
    %50 = tensor.empty() : tensor<f32>
    scf.for %arg19 = %c0_i32 to %arg14 step %c1_i32  : i32 {
      %51 = arith.muli %arg19, %arg18 : i32
      %52 = arith.subi %arg19, %c1_i32 : i32
      %53 = linalg.fill ins(%52 : i32) outs(%16 : tensor<16xi32>) -> tensor<16xi32>
      %mapped = linalg.map { arith.addi } ins(%53, %17 : tensor<16xi32>, tensor<16xi32>) outs(%16 : tensor<16xi32>)
      %expanded_1 = tensor.expand_shape %mapped [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
      %54 = arith.index_cast %52 : i32 to index
      %55 = arith.addi %54, %c16 : index
      %56 = arith.maxsi %54, %c0 : index
      %57 = arith.minsi %55, %56 : index
      %58 = arith.subi %57, %54 : index
      %59 = tensor.empty(%58) : tensor<?x1xi1>
      %60 = linalg.fill ins(%true : i1) outs(%59 : tensor<?x1xi1>) -> tensor<?x1xi1>
      %61 = linalg.fill ins(%false : i1) outs(%3 : tensor<16x1xi1>) -> tensor<16x1xi1>
      %inserted_slice = tensor.insert_slice %60 into %61[0, 0] [%58, 1] [1, 1] : tensor<?x1xi1> into tensor<16x1xi1>
      %mapped_2 = linalg.map { arith.xori } ins(%inserted_slice, %4 : tensor<16x1xi1>, tensor<16x1xi1>) outs(%3 : tensor<16x1xi1>)
      %62 = arith.maxsi %24, %54 : index
      %63 = arith.minsi %55, %62 : index
      %64 = arith.subi %63, %54 : index
      %65 = tensor.empty(%64) : tensor<?x1xi1>
      %66 = linalg.fill ins(%true : i1) outs(%65 : tensor<?x1xi1>) -> tensor<?x1xi1>
      %inserted_slice_3 = tensor.insert_slice %66 into %61[0, 0] [%64, 1] [1, 1] : tensor<?x1xi1> into tensor<16x1xi1>
      %mapped_4 = linalg.map { arith.andi } ins(%inserted_slice_3, %mapped_2 : tensor<16x1xi1>, tensor<16x1xi1>) outs(%3 : tensor<16x1xi1>)
      %mapped_5 = linalg.map { arith.muli } ins(%expanded_1, %19 : tensor<16x1xi32>, tensor<16x1xi32>) outs(%18 : tensor<16x1xi32>)
      %collapsed_6 = tensor.collapse_shape %mapped_4 [[0, 1]] : tensor<16x1xi1> into tensor<16xi1>
      %broadcasted = linalg.broadcast ins(%collapsed_6 : tensor<16xi1>) outs(%25 : tensor<16x16xi1>) dimensions = [1] 
      %collapsed_7 = tensor.collapse_shape %mapped_5 [[0, 1]] : tensor<16x1xi32> into tensor<16xi32>
      %broadcasted_8 = linalg.broadcast ins(%collapsed_7 : tensor<16xi32>) outs(%26 : tensor<16x16xi32>) dimensions = [1] 
      scf.for %arg20 = %c0_i32 to %arg15 step %c1_i32  : i32 {
        %67 = arith.subi %arg20, %c1_i32 : i32
        %68 = linalg.fill ins(%67 : i32) outs(%16 : tensor<16xi32>) -> tensor<16xi32>
        %mapped_9 = linalg.map { arith.addi } ins(%68, %17 : tensor<16xi32>, tensor<16xi32>) outs(%16 : tensor<16xi32>)
        %69 = arith.index_cast %67 : i32 to index
        %70 = arith.addi %69, %c16 : index
        %71 = arith.maxsi %69, %c0 : index
        %72 = arith.minsi %70, %71 : index
        %73 = arith.subi %72, %69 : index
        %74 = tensor.empty(%73) : tensor<1x?xi1>
        %75 = linalg.fill ins(%true : i1) outs(%74 : tensor<1x?xi1>) -> tensor<1x?xi1>
        %76 = linalg.fill ins(%false : i1) outs(%1 : tensor<1x16xi1>) -> tensor<1x16xi1>
        %inserted_slice_10 = tensor.insert_slice %75 into %76[0, 0] [1, %73] [1, 1] : tensor<1x?xi1> into tensor<1x16xi1>
        %mapped_11 = linalg.map { arith.xori } ins(%inserted_slice_10, %2 : tensor<1x16xi1>, tensor<1x16xi1>) outs(%1 : tensor<1x16xi1>)
        %77 = arith.maxsi %27, %69 : index
        %78 = arith.minsi %70, %77 : index
        %79 = arith.subi %78, %69 : index
        %80 = tensor.empty(%79) : tensor<1x?xi1>
        %81 = linalg.fill ins(%true : i1) outs(%80 : tensor<1x?xi1>) -> tensor<1x?xi1>
        %inserted_slice_12 = tensor.insert_slice %81 into %76[0, 0] [1, %79] [1, 1] : tensor<1x?xi1> into tensor<1x16xi1>
        %mapped_13 = linalg.map { arith.andi } ins(%inserted_slice_12, %mapped_11 : tensor<1x16xi1>, tensor<1x16xi1>) outs(%1 : tensor<1x16xi1>)
        %collapsed_14 = tensor.collapse_shape %mapped_13 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
        %broadcasted_15 = linalg.broadcast ins(%collapsed_14 : tensor<16xi1>) outs(%25 : tensor<16x16xi1>) dimensions = [0] 
        %mapped_16 = linalg.map { arith.andi } ins(%broadcasted, %broadcasted_15 : tensor<16x16xi1>, tensor<16x16xi1>) outs(%25 : tensor<16x16xi1>)
        %broadcasted_17 = linalg.broadcast ins(%mapped_9 : tensor<16xi32>) outs(%26 : tensor<16x16xi32>) dimensions = [0] 
        %mapped_18 = linalg.map { arith.addi } ins(%broadcasted_17, %broadcasted_8 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%26 : tensor<16x16xi32>)
        %82 = linalg.fill ins(%20 : i32) outs(%26 : tensor<16x16xi32>) -> tensor<16x16xi32>
        %mapped_19 = linalg.map { arith.addi } ins(%mapped_18, %82 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%26 : tensor<16x16xi32>)
        %view_memref_20 = aux.view %28 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
        %83 = bufferization.to_tensor %view_memref_20 restrict writable : memref<9223372036854775807xf32>
        %84 = linalg.fill ins(%cst : f32) outs(%expanded : tensor<256x1xf32>) -> tensor<256x1xf32>
        %collapsed_21 = tensor.collapse_shape %mapped_19 [[0, 1]] : tensor<16x16xi32> into tensor<256xi32>
        %expanded_22 = tensor.expand_shape %collapsed_21 [[0, 1]] : tensor<256xi32> into tensor<256x1xi32>
        %collapsed_23 = tensor.collapse_shape %mapped_16 [[0, 1]] : tensor<16x16xi1> into tensor<256xi1>
        %len = tensor.dim %expanded_22, %c0 :  tensor<256x1xi32>  // index slice
        %85 = scf.for %index = %c0 to %len step %c1 iter_args(%gather = %84) -> (tensor<256x1xf32>) {
          %flag = tensor.extract %collapsed_23[%index] : tensor<256xi1>
          %updated_gather = scf.if %flag -> tensor<256x1xf32> {
            %offset = tensor.extract %expanded_22[%index, %c0] :  tensor<256x1xi32>
            %offset_idx = arith.index_cast %offset : i32 to index
            %value = tensor.extract %83[%offset_idx] : tensor<9223372036854775807xf32>
            %inserted = tensor.insert %value into %gather[%index, %c0] : tensor<256x1xf32>
            scf.yield %inserted : tensor<256x1xf32>
          } else {
            scf.yield %gather : tensor<256x1xf32>
          }
          scf.yield %updated_gather : tensor<256x1xf32>
        }
        %collapsed_24 = tensor.collapse_shape %85 [[0, 1]] : tensor<256x1xf32> into tensor<256xf32>
        %expanded_25 = tensor.expand_shape %collapsed_24 [[0, 1]] : tensor<256xf32> into tensor<16x16xf32>
        %view_memref_26 = aux.view %48 to offset: [%47], sizes: [%36, %38], strides: [%46, 1] : !llvm.ptr to memref<?x?xf32, #map>
        %86 = bufferization.to_tensor %view_memref_26 restrict writable : memref<?x?xf32, #map>
        %87 = linalg.copy ins(%86 : tensor<?x?xf32>) outs(%49 : tensor<?x?xf32>) -> tensor<?x?xf32>
        %88 = linalg.fill ins(%cst : f32) outs(%0 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %inserted_slice_27 = tensor.insert_slice %87 into %88[0, 0] [%36, %38] [1, 1] : tensor<?x?xf32> into tensor<16x16xf32>
        %mapped_28 = linalg.map { arith.mulf } ins(%expanded_25, %inserted_slice_27 : tensor<16x16xf32>, tensor<16x16xf32>) outs(%0 : tensor<16x16xf32>)
        %collapsed_29 = tensor.collapse_shape %mapped_28 [[0, 1]] : tensor<16x16xf32> into tensor<256xf32>
        %89 = linalg.fill ins(%cst : f32) outs(%50 : tensor<f32>) -> tensor<f32>
        %reduced = linalg.reduce ins(%collapsed_29 : tensor<256xf32>) outs(%89 : tensor<f32>) dimensions = [0] 
          (%in: f32, %init: f32) {
            %99 = arith.addf %in, %init : f32
            linalg.yield %99 : f32
          }
        %extracted_30 = tensor.extract %reduced[] : tensor<f32>
        %90 = arith.addf %extracted_30, %cst : f32
        %91 = arith.addi %arg20, %51 : i32
        %92 = arith.addi %91, %15 : i32
        %93 = arith.addi %92, %14 : i32
        %94 = arith.extsi %93 : i32 to i64
        %95 = arith.muli %94, %c4_i64 : i64
        %96 = arith.addi %arg13, %95 : i64
        %97 = arith.addf %90, %13 : f32
        %98 = llvm.inttoptr %96 : i64 to !llvm.ptr
        %view_memref_31 = aux.view %98 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        memref.store %97, %view_memref_31[%c0] : memref<1xf32>
      }
    }
    return
  }
}

