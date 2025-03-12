#map = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
module {
  func.func @conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i64, %arg13: i64, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32) attributes{llvm.emit_c_interface} {
    %false = arith.constant false
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c4_i64 = arith.constant 4 : i64
    %true = arith.constant true
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<4x4xf32>
    %1 = tensor.empty() : tensor<1x4xi1>
    %2 = linalg.fill ins(%true : i1) outs(%1 : tensor<1x4xi1>) -> tensor<1x4xi1>
    %3 = tensor.empty() : tensor<4x1xi1>
    %4 = linalg.fill ins(%true : i1) outs(%3 : tensor<4x1xi1>) -> tensor<4x1xi1>
    // %5 = gpu.block_id  x
    %5 = arith.constant 8 : index
    scf.for %arg25 = %c0 to %5 step %c1  : index {
      %6 = arith.index_cast %arg25 : index to i32
      %7 = arith.extsi %6 : i32 to i64
      %8 = arith.muli %7, %c4_i64 : i64
      %9 = arith.addi %arg12, %8 : i64
      %10 = llvm.inttoptr %9 : i64 to !llvm.ptr
      %view_memref = aux.view %10 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
      %11 = memref.load %view_memref[%c0] : memref<1xf32>
      %12 = arith.muli %6, %arg16 : i32
      %13 = arith.muli %6, %arg17 : i32
      %14 = arith.muli %6, %arg18 : i32
      %15 = tensor.empty() : tensor<4xi32>
      %16 = scf.for %arg19 = %c0 to %c4 step %c1 iter_args(%arg20 = %15) -> (tensor<4xi32>) {
        %65 = arith.index_cast %arg19 : index to i32
        %inserted = tensor.insert %65 into %arg20[%arg19] : tensor<4xi32>
        scf.yield %inserted : tensor<4xi32>
      }
      %17 = arith.subi %6, %c1_i32 : i32
      %18 = linalg.fill ins(%17 : i32) outs(%15 : tensor<4xi32>) -> tensor<4xi32>
      %mapped = linalg.map { arith.addi } ins(%18, %16 : tensor<4xi32>, tensor<4xi32>) outs(%15 : tensor<4xi32>)
      %expanded = tensor.expand_shape %mapped [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
      %19 = arith.index_cast %17 : i32 to index
      %20 = arith.addi %19, %c4 : index
      %21 = arith.maxsi %19, %c0 : index
      %22 = arith.minsi %20, %21 : index
      %23 = arith.subi %22, %19 : index
      %24 = tensor.empty(%23) : tensor<?x1xi1>
      %25 = linalg.fill ins(%true : i1) outs(%24 : tensor<?x1xi1>) -> tensor<?x1xi1>
      %26 = linalg.fill ins(%false : i1) outs(%3 : tensor<4x1xi1>) -> tensor<4x1xi1>
      %inserted_slice = tensor.insert_slice %25 into %26[0, 0] [%23, 1] [1, 1] : tensor<?x1xi1> into tensor<4x1xi1>
      %mapped_0 = linalg.map { arith.xori } ins(%inserted_slice, %4 : tensor<4x1xi1>, tensor<4x1xi1>) outs(%3 : tensor<4x1xi1>)
      %27 = arith.index_cast %arg4 : i32 to index
      %28 = arith.maxsi %27, %19 : index
      %29 = arith.minsi %20, %28 : index
      %30 = arith.subi %29, %19 : index
      %31 = tensor.empty(%30) : tensor<?x1xi1>
      %32 = linalg.fill ins(%true : i1) outs(%31 : tensor<?x1xi1>) -> tensor<?x1xi1>
      %inserted_slice_1 = tensor.insert_slice %32 into %26[0, 0] [%30, 1] [1, 1] : tensor<?x1xi1> into tensor<4x1xi1>
      %mapped_2 = linalg.map { arith.andi } ins(%inserted_slice_1, %mapped_0 : tensor<4x1xi1>, tensor<4x1xi1>) outs(%3 : tensor<4x1xi1>)
      %33 = tensor.empty() : tensor<4x1xi32>
      %34 = linalg.fill ins(%arg3 : i32) outs(%33 : tensor<4x1xi32>) -> tensor<4x1xi32>
      %mapped_3 = linalg.map { arith.muli } ins(%expanded, %34 : tensor<4x1xi32>, tensor<4x1xi32>) outs(%33 : tensor<4x1xi32>)
      %collapsed = tensor.collapse_shape %mapped_2 [[0, 1]] : tensor<4x1xi1> into tensor<4xi1>
      %35 = tensor.empty() : tensor<4x4xi1>
      %broadcasted = linalg.broadcast ins(%collapsed : tensor<4xi1>) outs(%35 : tensor<4x4xi1>) dimensions = [1] 
      %36 = arith.muli %6, %arg2 : i32
      %collapsed_4 = tensor.collapse_shape %mapped_3 [[0, 1]] : tensor<4x1xi32> into tensor<4xi32>
      %37 = tensor.empty() : tensor<4x4xi32>
      %broadcasted_5 = linalg.broadcast ins(%collapsed_4 : tensor<4xi32>) outs(%37 : tensor<4x4xi32>) dimensions = [1] 
      %38 = arith.muli %6, %arg9 : i32
      %39 = arith.muli %6, %arg10 : i32
      %40 = arith.addi %39, %38 : i32
      %41 = arith.index_cast %arg5 : i32 to index
      %42 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
      %collapsed_6 = tensor.collapse_shape %0 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
      %expanded_7 = tensor.expand_shape %collapsed_6 [[0, 1]] : tensor<16xf32> into tensor<16x1xf32>
      %43 = arith.index_cast %arg7 : i32 to index
      %44 = arith.maxsi %43, %c0 : index
      %45 = arith.minsi %44, %c4 : index
      %46 = arith.index_cast %arg8 : i32 to index
      %47 = arith.maxsi %46, %c0 : index
      %48 = arith.minsi %47, %c4 : index
      %49 = arith.minsi %45, %c4 : index
      %50 = arith.maxsi %49, %c0 : index
      %51 = arith.minsi %48, %c4 : index
      %52 = arith.maxsi %51, %c0 : index
      %extracted = tensor.extract %16[%c0] : tensor<4xi32>
      %53 = arith.muli %extracted, %arg11 : i32
      %54 = arith.addi %extracted, %53 : i32
      %55 = arith.addi %54, %40 : i32
      %extracted_8 = tensor.extract %16[%c1] : tensor<4xi32>
      %56 = arith.muli %extracted_8, %arg11 : i32
      %57 = arith.addi %extracted, %56 : i32
      %58 = arith.addi %57, %40 : i32
      %59 = arith.subi %58, %55 : i32
      %60 = arith.index_cast %59 : i32 to index
      %61 = arith.index_cast %55 : i32 to index
      %62 = llvm.inttoptr %arg6 : i64 to !llvm.ptr
      %63 = tensor.empty(%50, %52) : tensor<?x?xf32>
      %64 = tensor.empty() : tensor<f32>
      scf.for %arg19 = %c0_i32 to %arg15 step %c1_i32  : i32 {
        %65 = arith.subi %arg19, %c1_i32 : i32
        %66 = linalg.fill ins(%65 : i32) outs(%15 : tensor<4xi32>) -> tensor<4xi32>
        %mapped_9 = linalg.map { arith.addi } ins(%66, %16 : tensor<4xi32>, tensor<4xi32>) outs(%15 : tensor<4xi32>)
        %67 = arith.index_cast %65 : i32 to index
        %68 = arith.addi %67, %c4 : index
        %69 = arith.maxsi %67, %c0 : index
        %70 = arith.minsi %68, %69 : index
        %71 = arith.subi %70, %67 : index
        %72 = tensor.empty(%71) : tensor<1x?xi1>
        %73 = linalg.fill ins(%true : i1) outs(%72 : tensor<1x?xi1>) -> tensor<1x?xi1>
        %74 = linalg.fill ins(%false : i1) outs(%1 : tensor<1x4xi1>) -> tensor<1x4xi1>
        %inserted_slice_10 = tensor.insert_slice %73 into %74[0, 0] [1, %71] [1, 1] : tensor<1x?xi1> into tensor<1x4xi1>
        %mapped_11 = linalg.map { arith.xori } ins(%inserted_slice_10, %2 : tensor<1x4xi1>, tensor<1x4xi1>) outs(%1 : tensor<1x4xi1>)
        %75 = arith.maxsi %41, %67 : index
        %76 = arith.minsi %68, %75 : index
        %77 = arith.subi %76, %67 : index
        %78 = tensor.empty(%77) : tensor<1x?xi1>
        %79 = linalg.fill ins(%true : i1) outs(%78 : tensor<1x?xi1>) -> tensor<1x?xi1>
        %inserted_slice_12 = tensor.insert_slice %79 into %74[0, 0] [1, %77] [1, 1] : tensor<1x?xi1> into tensor<1x4xi1>
        %mapped_13 = linalg.map { arith.andi } ins(%inserted_slice_12, %mapped_11 : tensor<1x4xi1>, tensor<1x4xi1>) outs(%1 : tensor<1x4xi1>)
        %collapsed_14 = tensor.collapse_shape %mapped_13 [[0, 1]] : tensor<1x4xi1> into tensor<4xi1>
        %broadcasted_15 = linalg.broadcast ins(%collapsed_14 : tensor<4xi1>) outs(%35 : tensor<4x4xi1>) dimensions = [0] 
        %mapped_16 = linalg.map { arith.andi } ins(%broadcasted, %broadcasted_15 : tensor<4x4xi1>, tensor<4x4xi1>) outs(%35 : tensor<4x4xi1>)
        %broadcasted_17 = linalg.broadcast ins(%mapped_9 : tensor<4xi32>) outs(%37 : tensor<4x4xi32>) dimensions = [0] 
        %mapped_18 = linalg.map { arith.addi } ins(%broadcasted_17, %broadcasted_5 : tensor<4x4xi32>, tensor<4x4xi32>) outs(%37 : tensor<4x4xi32>)
        %80 = linalg.fill ins(%36 : i32) outs(%37 : tensor<4x4xi32>) -> tensor<4x4xi32>
        %mapped_19 = linalg.map { arith.addi } ins(%mapped_18, %80 : tensor<4x4xi32>, tensor<4x4xi32>) outs(%37 : tensor<4x4xi32>)
        %view_memref_20 = aux.view %42 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
        %81 = bufferization.to_tensor %view_memref_20 restrict writable : memref<9223372036854775807xf32>
        %82 = linalg.fill ins(%cst : f32) outs(%expanded_7 : tensor<16x1xf32>) -> tensor<16x1xf32>
        %collapsed_21 = tensor.collapse_shape %mapped_19 [[0, 1]] : tensor<4x4xi32> into tensor<16xi32>
        %expanded_22 = tensor.expand_shape %collapsed_21 [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
        %collapsed_23 = tensor.collapse_shape %mapped_16 [[0, 1]] : tensor<4x4xi1> into tensor<16xi1>
        %len = tensor.dim %expanded_22, %c0 :  tensor<16x1xi32>  // index slice
        %83 = scf.for %index = %c0 to %len step %c1 iter_args(%gather = %82) -> (tensor<16x1xf32>) {
          %flag = tensor.extract %collapsed_23[%index] : tensor<16xi1>
          %updated_gather = scf.if %flag -> tensor<16x1xf32> {
            %offset = tensor.extract %expanded_22[%index, %c0] :  tensor<16x1xi32>
            %offset_idx = arith.index_cast %offset : i32 to index
            %value = tensor.extract %81[%offset_idx] : tensor<9223372036854775807xf32>
            %inserted = tensor.insert %value into %gather[%index, %c0] : tensor<16x1xf32>
            scf.yield %inserted : tensor<16x1xf32>
          } else {
            scf.yield %gather : tensor<16x1xf32>
          }
          scf.yield %updated_gather : tensor<16x1xf32>
        }
        %collapsed_24 = tensor.collapse_shape %83 [[0, 1]] : tensor<16x1xf32> into tensor<16xf32>
        %expanded_25 = tensor.expand_shape %collapsed_24 [[0, 1]] : tensor<16xf32> into tensor<4x4xf32>
        %view_memref_26 = aux.view %62 to offset: [%61], sizes: [%50, %52], strides: [%60, 1] : !llvm.ptr to memref<?x?xf32, #map>
        %84 = bufferization.to_tensor %view_memref_26 restrict writable : memref<?x?xf32, #map>
        %85 = linalg.copy ins(%84 : tensor<?x?xf32>) outs(%63 : tensor<?x?xf32>) -> tensor<?x?xf32>
        %86 = linalg.fill ins(%cst : f32) outs(%0 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %inserted_slice_27 = tensor.insert_slice %85 into %86[0, 0] [%50, %52] [1, 1] : tensor<?x?xf32> into tensor<4x4xf32>
        %mapped_28 = linalg.map { arith.mulf } ins(%expanded_25, %inserted_slice_27 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%0 : tensor<4x4xf32>)
        %collapsed_29 = tensor.collapse_shape %mapped_28 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
        %87 = linalg.fill ins(%cst : f32) outs(%64 : tensor<f32>) -> tensor<f32>
        %reduced = linalg.reduce ins(%collapsed_29 : tensor<16xf32>) outs(%87 : tensor<f32>) dimensions = [0] 
          (%in: f32, %init: f32) {
            %97 = arith.addf %in, %init : f32
            linalg.yield %97 : f32
          }
        %extracted_30 = tensor.extract %reduced[] : tensor<f32>
        %88 = arith.addf %extracted_30, %cst : f32
        %89 = arith.addi %arg19, %14 : i32
        %90 = arith.addi %89, %13 : i32
        %91 = arith.addi %90, %12 : i32
        %92 = arith.extsi %91 : i32 to i64
        %93 = arith.muli %92, %c4_i64 : i64
        %94 = arith.addi %arg13, %93 : i64
        %95 = arith.addf %88, %11 : f32
        %96 = llvm.inttoptr %94 : i64 to !llvm.ptr
        %view_memref_31 = aux.view %96 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        memref.store %95, %view_memref_31[%c0] : memref<1xf32>
      }
    }
    
    return
  }
}

