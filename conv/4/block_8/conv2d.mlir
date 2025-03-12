#map = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
module {
  func.func @conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18e19de20de21e22c23c24c25c26c27c28c29c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i64, %arg13: i64, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32)attributes {llvm.emit_c_interface} {
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
    %5 = arith.constant 0 : index
    %6 = arith.index_cast %5 : index to i32
    // %7 = gpu.block_id  y
    %7 = arith.constant 0 : index
    %8 = arith.index_cast %7 : index to i32
    // %9 = gpu.block_id  z
    %9 = arith.constant 8 : index
    // %10 = arith.index_cast %9 : index to i32
    scf.for %arg22 = %c0 to %9 step %c1 : index{        //add
      %10 = arith.index_cast %arg22 : index to i32       //add
      %11 = arith.extsi %8 : i32 to i64
      %12 = arith.muli %11, %c4_i64 : i64
      %13 = arith.addi %arg12, %12 : i64
      %14 = llvm.inttoptr %13 : i64 to !llvm.ptr
      %view_memref = aux.view %14 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
      %15 = memref.load %view_memref[%c0] : memref<1xf32>
      %16 = arith.muli %6, %arg16 : i32
      %17 = arith.muli %8, %arg17 : i32
      %18 = arith.muli %10, %arg18 : i32
      %19 = tensor.empty() : tensor<4xi32>
      %20 = scf.for %arg19 = %c0 to %c4 step %c1 iter_args(%arg20 = %19) -> (tensor<4xi32>) {
        %69 = arith.index_cast %arg19 : index to i32
        %inserted = tensor.insert %69 into %arg20[%arg19] : tensor<4xi32>
        scf.yield %inserted : tensor<4xi32>
      }
      %21 = arith.subi %10, %c1_i32 : i32
      %22 = linalg.fill ins(%21 : i32) outs(%19 : tensor<4xi32>) -> tensor<4xi32>
      %mapped = linalg.map { arith.addi } ins(%22, %20 : tensor<4xi32>, tensor<4xi32>) outs(%19 : tensor<4xi32>)
      %expanded = tensor.expand_shape %mapped [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
      %23 = arith.index_cast %21 : i32 to index
      %24 = arith.addi %23, %c4 : index
      %25 = arith.maxsi %23, %c0 : index
      %26 = arith.minsi %24, %25 : index
      %27 = arith.subi %26, %23 : index
      %28 = tensor.empty(%27) : tensor<?x1xi1>
      %29 = linalg.fill ins(%true : i1) outs(%28 : tensor<?x1xi1>) -> tensor<?x1xi1>
      %30 = linalg.fill ins(%false : i1) outs(%3 : tensor<4x1xi1>) -> tensor<4x1xi1>
      %inserted_slice = tensor.insert_slice %29 into %30[0, 0] [%27, 1] [1, 1] : tensor<?x1xi1> into tensor<4x1xi1>
      %mapped_0 = linalg.map { arith.xori } ins(%inserted_slice, %4 : tensor<4x1xi1>, tensor<4x1xi1>) outs(%3 : tensor<4x1xi1>)
      %31 = arith.index_cast %arg4 : i32 to index
      %32 = arith.maxsi %31, %23 : index
      %33 = arith.minsi %24, %32 : index
      %34 = arith.subi %33, %23 : index
      %35 = tensor.empty(%34) : tensor<?x1xi1>
      %36 = linalg.fill ins(%true : i1) outs(%35 : tensor<?x1xi1>) -> tensor<?x1xi1>
      %inserted_slice_1 = tensor.insert_slice %36 into %30[0, 0] [%34, 1] [1, 1] : tensor<?x1xi1> into tensor<4x1xi1>
      %mapped_2 = linalg.map { arith.andi } ins(%inserted_slice_1, %mapped_0 : tensor<4x1xi1>, tensor<4x1xi1>) outs(%3 : tensor<4x1xi1>)
      %37 = tensor.empty() : tensor<4x1xi32>
      %38 = linalg.fill ins(%arg3 : i32) outs(%37 : tensor<4x1xi32>) -> tensor<4x1xi32>
      %mapped_3 = linalg.map { arith.muli } ins(%expanded, %38 : tensor<4x1xi32>, tensor<4x1xi32>) outs(%37 : tensor<4x1xi32>)
      %collapsed = tensor.collapse_shape %mapped_2 [[0, 1]] : tensor<4x1xi1> into tensor<4xi1>
      %39 = tensor.empty() : tensor<4x4xi1>
      %broadcasted = linalg.broadcast ins(%collapsed : tensor<4xi1>) outs(%39 : tensor<4x4xi1>) dimensions = [1] 
      %40 = arith.muli %8, %arg2 : i32
      %collapsed_4 = tensor.collapse_shape %mapped_3 [[0, 1]] : tensor<4x1xi32> into tensor<4xi32>
      %41 = tensor.empty() : tensor<4x4xi32>
      %broadcasted_5 = linalg.broadcast ins(%collapsed_4 : tensor<4xi32>) outs(%41 : tensor<4x4xi32>) dimensions = [1] 
      %42 = arith.muli %8, %arg9 : i32
      %43 = arith.muli %8, %arg10 : i32
      %44 = arith.addi %43, %42 : i32
      %45 = arith.index_cast %arg5 : i32 to index
      %46 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
      %collapsed_6 = tensor.collapse_shape %0 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
      %expanded_7 = tensor.expand_shape %collapsed_6 [[0, 1]] : tensor<16xf32> into tensor<16x1xf32>
      %47 = arith.index_cast %arg7 : i32 to index
      %48 = arith.maxsi %47, %c0 : index
      %49 = arith.minsi %48, %c4 : index
      %50 = arith.index_cast %arg8 : i32 to index
      %51 = arith.maxsi %50, %c0 : index
      %52 = arith.minsi %51, %c4 : index
      %53 = arith.minsi %49, %c4 : index
      %54 = arith.maxsi %53, %c0 : index
      %55 = arith.minsi %52, %c4 : index
      %56 = arith.maxsi %55, %c0 : index
      %extracted = tensor.extract %20[%c0] : tensor<4xi32>
      %57 = arith.muli %extracted, %arg11 : i32
      %58 = arith.addi %extracted, %57 : i32
      %59 = arith.addi %58, %44 : i32
      %extracted_8 = tensor.extract %20[%c1] : tensor<4xi32>
      %60 = arith.muli %extracted_8, %arg11 : i32
      %61 = arith.addi %extracted, %60 : i32
      %62 = arith.addi %61, %44 : i32
      %63 = arith.subi %62, %59 : i32
      %64 = arith.index_cast %63 : i32 to index
      %65 = arith.index_cast %59 : i32 to index
      %66 = llvm.inttoptr %arg6 : i64 to !llvm.ptr
      %67 = tensor.empty(%54, %56) : tensor<?x?xf32>
      %68 = tensor.empty() : tensor<f32>
      scf.for %arg19 = %c0_i32 to %arg15 step %c1_i32  : i32 {
        %69 = arith.subi %arg19, %c1_i32 : i32
        %70 = linalg.fill ins(%69 : i32) outs(%19 : tensor<4xi32>) -> tensor<4xi32>
        %mapped_9 = linalg.map { arith.addi } ins(%70, %20 : tensor<4xi32>, tensor<4xi32>) outs(%19 : tensor<4xi32>)
        %71 = arith.index_cast %69 : i32 to index
        %72 = arith.addi %71, %c4 : index
        %73 = arith.maxsi %71, %c0 : index
        %74 = arith.minsi %72, %73 : index
        %75 = arith.subi %74, %71 : index
        %76 = tensor.empty(%75) : tensor<1x?xi1>
        %77 = linalg.fill ins(%true : i1) outs(%76 : tensor<1x?xi1>) -> tensor<1x?xi1>
        %78 = linalg.fill ins(%false : i1) outs(%1 : tensor<1x4xi1>) -> tensor<1x4xi1>
        %inserted_slice_10 = tensor.insert_slice %77 into %78[0, 0] [1, %75] [1, 1] : tensor<1x?xi1> into tensor<1x4xi1>
        %mapped_11 = linalg.map { arith.xori } ins(%inserted_slice_10, %2 : tensor<1x4xi1>, tensor<1x4xi1>) outs(%1 : tensor<1x4xi1>)
        %79 = arith.maxsi %45, %71 : index
        %80 = arith.minsi %72, %79 : index
        %81 = arith.subi %80, %71 : index
        %82 = tensor.empty(%81) : tensor<1x?xi1>
        %83 = linalg.fill ins(%true : i1) outs(%82 : tensor<1x?xi1>) -> tensor<1x?xi1>
        %inserted_slice_12 = tensor.insert_slice %83 into %78[0, 0] [1, %81] [1, 1] : tensor<1x?xi1> into tensor<1x4xi1>
        %mapped_13 = linalg.map { arith.andi } ins(%inserted_slice_12, %mapped_11 : tensor<1x4xi1>, tensor<1x4xi1>) outs(%1 : tensor<1x4xi1>)
        %collapsed_14 = tensor.collapse_shape %mapped_13 [[0, 1]] : tensor<1x4xi1> into tensor<4xi1>
        %broadcasted_15 = linalg.broadcast ins(%collapsed_14 : tensor<4xi1>) outs(%39 : tensor<4x4xi1>) dimensions = [0] 
        %mapped_16 = linalg.map { arith.andi } ins(%broadcasted, %broadcasted_15 : tensor<4x4xi1>, tensor<4x4xi1>) outs(%39 : tensor<4x4xi1>)
        %broadcasted_17 = linalg.broadcast ins(%mapped_9 : tensor<4xi32>) outs(%41 : tensor<4x4xi32>) dimensions = [0] 
        %mapped_18 = linalg.map { arith.addi } ins(%broadcasted_17, %broadcasted_5 : tensor<4x4xi32>, tensor<4x4xi32>) outs(%41 : tensor<4x4xi32>)
        %84 = linalg.fill ins(%40 : i32) outs(%41 : tensor<4x4xi32>) -> tensor<4x4xi32>
        %mapped_19 = linalg.map { arith.addi } ins(%mapped_18, %84 : tensor<4x4xi32>, tensor<4x4xi32>) outs(%41 : tensor<4x4xi32>)
        %view_memref_20 = aux.view %46 to offset: [0], sizes: [9223372036854775807], strides: [1] : !llvm.ptr to memref<9223372036854775807xf32>
        %85 = bufferization.to_tensor %view_memref_20 restrict writable : memref<9223372036854775807xf32>
        %86 = linalg.fill ins(%cst : f32) outs(%expanded_7 : tensor<16x1xf32>) -> tensor<16x1xf32>
        %collapsed_21 = tensor.collapse_shape %mapped_19 [[0, 1]] : tensor<4x4xi32> into tensor<16xi32>
        %expanded_22 = tensor.expand_shape %collapsed_21 [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
        %collapsed_23 = tensor.collapse_shape %mapped_16 [[0, 1]] : tensor<4x4xi1> into tensor<16xi1>
        %len = tensor.dim %expanded_22, %c0 :  tensor<16x1xi32>  // index slice
        %87 = scf.for %index = %c0 to %len step %c1 iter_args(%gather = %86) -> (tensor<16x1xf32>) {
          %flag = tensor.extract %collapsed_23[%index] : tensor<16xi1>
          %updated_gather = scf.if %flag -> tensor<16x1xf32> {
            %offset = tensor.extract %expanded_22[%index, %c0] :  tensor<16x1xi32>
            %offset_idx = arith.index_cast %offset : i32 to index
            %value = tensor.extract %85[%offset_idx] : tensor<9223372036854775807xf32>
            %inserted = tensor.insert %value into %gather[%index, %c0] : tensor<16x1xf32>
            scf.yield %inserted : tensor<16x1xf32>
          } else {
            scf.yield %gather : tensor<16x1xf32>
          }
          scf.yield %updated_gather : tensor<16x1xf32>
        }
        %collapsed_24 = tensor.collapse_shape %87 [[0, 1]] : tensor<16x1xf32> into tensor<16xf32>
        %expanded_25 = tensor.expand_shape %collapsed_24 [[0, 1]] : tensor<16xf32> into tensor<4x4xf32>
        %view_memref_26 = aux.view %66 to offset: [%65], sizes: [%54, %56], strides: [%64, 1] : !llvm.ptr to memref<?x?xf32, #map>
        %88 = bufferization.to_tensor %view_memref_26 restrict writable : memref<?x?xf32, #map>
        %89 = linalg.copy ins(%88 : tensor<?x?xf32>) outs(%67 : tensor<?x?xf32>) -> tensor<?x?xf32>
        %90 = linalg.fill ins(%cst : f32) outs(%0 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %inserted_slice_27 = tensor.insert_slice %89 into %90[0, 0] [%54, %56] [1, 1] : tensor<?x?xf32> into tensor<4x4xf32>
        %mapped_28 = linalg.map { arith.mulf } ins(%expanded_25, %inserted_slice_27 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%0 : tensor<4x4xf32>)
        %collapsed_29 = tensor.collapse_shape %mapped_28 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
        %91 = linalg.fill ins(%cst : f32) outs(%68 : tensor<f32>) -> tensor<f32>
        %reduced = linalg.reduce ins(%collapsed_29 : tensor<16xf32>) outs(%91 : tensor<f32>) dimensions = [0] 
          (%in: f32, %init: f32) {
            %101 = arith.addf %in, %init : f32
            linalg.yield %101 : f32
          }
        %extracted_30 = tensor.extract %reduced[] : tensor<f32>
        %92 = arith.addf %extracted_30, %cst : f32
        %93 = arith.addi %arg19, %18 : i32
        %94 = arith.addi %93, %17 : i32
        %95 = arith.addi %94, %16 : i32
        %96 = arith.extsi %95 : i32 to i64
        %97 = arith.muli %96, %c4_i64 : i64
        %98 = arith.addi %arg13, %97 : i64
        %99 = arith.addf %92, %15 : f32
        %100 = llvm.inttoptr %98 : i64 to !llvm.ptr
        %view_memref_31 = aux.view %100 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        memref.store %99, %view_memref_31[%c0] : memref<1xf32>
      }
    
    }
    return
  }
}

