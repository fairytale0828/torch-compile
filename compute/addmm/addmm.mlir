#map = affine_map<(d0, d1)[s0, s1, s2] -> (d0 * s1 + s0 + d1 * s2)>
module {
  func.func @addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32)attributes{llvm.emit_c_interface} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c16_i32 = arith.constant 16 : i32
    %c128_i32 = arith.constant 128 : i32
    %c32_i32 = arith.constant 32 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<16x128xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<16x128xf32>) -> tensor<16x128xf32>
    // %2 = gpu.block_id  x
    %2 = arith.constant 0 : index

    %3 = arith.index_cast %2 : index to i32
    // %4 = gpu.block_id  y
    %4 = arith.constant 0 : index
    %5 = arith.index_cast %4 : index to i32
    %6 = arith.muli %3, %c16_i32 : i32
    %7 = tensor.empty() : tensor<16xi32>
    %8 = scf.for %arg15 = %c0 to %c16 step %c1 iter_args(%arg16 = %7) -> (tensor<16xi32>) {
      %105 = arith.index_cast %arg15 : index to i32
      %inserted = tensor.insert %105 into %arg16[%arg15] : tensor<16xi32>
      scf.yield %inserted : tensor<16xi32>
    }
    %9 = linalg.fill ins(%6 : i32) outs(%7 : tensor<16xi32>) -> tensor<16xi32>
    %mapped = linalg.map { arith.addi } ins(%9, %8 : tensor<16xi32>, tensor<16xi32>) outs(%7 : tensor<16xi32>)
    %10 = arith.muli %5, %c128_i32 : i32
    %11 = tensor.empty() : tensor<128xi32>
    %12 = scf.for %arg15 = %c0 to %c128 step %c1 iter_args(%arg16 = %11) -> (tensor<128xi32>) {
      %105 = arith.index_cast %arg15 : index to i32
      %inserted = tensor.insert %105 into %arg16[%arg15] : tensor<128xi32>
      scf.yield %inserted : tensor<128xi32>
    }
    %13 = linalg.fill ins(%10 : i32) outs(%11 : tensor<128xi32>) -> tensor<128xi32>
    %mapped_0 = linalg.map { arith.addi } ins(%13, %12 : tensor<128xi32>, tensor<128xi32>) outs(%11 : tensor<128xi32>)
    %expanded = tensor.expand_shape %mapped [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
    %14 = tensor.empty() : tensor<16x1xi32>
    %15 = linalg.fill ins(%arg9 : i32) outs(%14 : tensor<16x1xi32>) -> tensor<16x1xi32>
    %mapped_1 = linalg.map { arith.muli } ins(%expanded, %15 : tensor<16x1xi32>, tensor<16x1xi32>) outs(%14 : tensor<16x1xi32>)
    %16 = tensor.empty() : tensor<32xi32>
    %17 = scf.for %arg15 = %c0 to %c32 step %c1 iter_args(%arg16 = %16) -> (tensor<32xi32>) {
      %105 = arith.index_cast %arg15 : index to i32
      %inserted = tensor.insert %105 into %arg16[%arg15] : tensor<32xi32>
      scf.yield %inserted : tensor<32xi32>
    }
    %expanded_2 = tensor.expand_shape %17 [[0, 1]] : tensor<32xi32> into tensor<1x32xi32>
    %18 = tensor.empty() : tensor<1x32xi32>
    %19 = linalg.fill ins(%arg10 : i32) outs(%18 : tensor<1x32xi32>) -> tensor<1x32xi32>
    %mapped_3 = linalg.map { arith.muli } ins(%expanded_2, %19 : tensor<1x32xi32>, tensor<1x32xi32>) outs(%18 : tensor<1x32xi32>)
    %collapsed = tensor.collapse_shape %mapped_1 [[0, 1]] : tensor<16x1xi32> into tensor<16xi32>
    %20 = tensor.empty() : tensor<16x32xi32>
    %broadcasted = linalg.broadcast ins(%collapsed : tensor<16xi32>) outs(%20 : tensor<16x32xi32>) dimensions = [1] 
    %collapsed_4 = tensor.collapse_shape %mapped_3 [[0, 1]] : tensor<1x32xi32> into tensor<32xi32>
    %broadcasted_5 = linalg.broadcast ins(%collapsed_4 : tensor<32xi32>) outs(%20 : tensor<16x32xi32>) dimensions = [0] 
    %mapped_6 = linalg.map { arith.addi } ins(%broadcasted_5, %broadcasted : tensor<16x32xi32>, tensor<16x32xi32>) outs(%20 : tensor<16x32xi32>)
    %expanded_7 = tensor.expand_shape %17 [[0, 1]] : tensor<32xi32> into tensor<32x1xi32>
    %21 = tensor.empty() : tensor<32x1xi32>
    %22 = linalg.fill ins(%arg11 : i32) outs(%21 : tensor<32x1xi32>) -> tensor<32x1xi32>
    %mapped_8 = linalg.map { arith.muli } ins(%expanded_7, %22 : tensor<32x1xi32>, tensor<32x1xi32>) outs(%21 : tensor<32x1xi32>)
    %expanded_9 = tensor.expand_shape %mapped_0 [[0, 1]] : tensor<128xi32> into tensor<1x128xi32>
    %23 = tensor.empty() : tensor<1x128xi32>
    %24 = linalg.fill ins(%arg12 : i32) outs(%23 : tensor<1x128xi32>) -> tensor<1x128xi32>
    %mapped_10 = linalg.map { arith.muli } ins(%expanded_9, %24 : tensor<1x128xi32>, tensor<1x128xi32>) outs(%23 : tensor<1x128xi32>)
    %collapsed_11 = tensor.collapse_shape %mapped_8 [[0, 1]] : tensor<32x1xi32> into tensor<32xi32>
    %25 = tensor.empty() : tensor<32x128xi32>
    %broadcasted_12 = linalg.broadcast ins(%collapsed_11 : tensor<32xi32>) outs(%25 : tensor<32x128xi32>) dimensions = [1] 
    %collapsed_13 = tensor.collapse_shape %mapped_10 [[0, 1]] : tensor<1x128xi32> into tensor<128xi32>
    %broadcasted_14 = linalg.broadcast ins(%collapsed_13 : tensor<128xi32>) outs(%25 : tensor<32x128xi32>) dimensions = [0] 
    %mapped_15 = linalg.map { arith.addi } ins(%broadcasted_14, %broadcasted_12 : tensor<32x128xi32>, tensor<32x128xi32>) outs(%25 : tensor<32x128xi32>)
    %26 = arith.index_cast %6 : i32 to index
    %27 = arith.addi %26, %c16 : index
    %28 = arith.index_cast %arg4 : i32 to index
    %29 = arith.maxsi %28, %26 : index
    %30 = arith.minsi %27, %29 : index
    %31 = arith.subi %30, %26 : index
    %32 = arith.index_cast %arg6 : i32 to index
    %33 = arith.maxsi %32, %c0 : index
    %34 = arith.minsi %33, %c32 : index
    %35 = arith.minsi %31, %c16 : index
    %36 = arith.maxsi %35, %c0 : index
    %37 = arith.minsi %34, %c32 : index
    %38 = arith.maxsi %37, %c0 : index
    %39 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %40 = tensor.empty(%36, %38) : tensor<?x?xf32>
    %41 = tensor.empty() : tensor<16x32xf32>
    %42 = arith.index_cast %10 : i32 to index
    %43 = arith.addi %42, %c128 : index
    %44 = arith.index_cast %arg5 : i32 to index
    %45 = arith.maxsi %44, %42 : index
    %46 = arith.minsi %43, %45 : index
    %47 = arith.subi %46, %42 : index
    %48 = arith.minsi %47, %c128 : index
    %49 = arith.maxsi %48, %c0 : index
    %50 = llvm.inttoptr %arg2 : i64 to !llvm.ptr
    %51 = tensor.empty(%38, %49) : tensor<?x?xf32>
    %52 = tensor.empty() : tensor<32x128xf32>
    %53 = arith.muli %arg10, %c32_i32 : i32
    %54 = arith.muli %arg11, %c32_i32 : i32
    %55:3 = scf.for %arg15 = %c0_i32 to %arg6 step %c32_i32 iter_args(%arg16 = %1, %arg17 = %mapped_6, %arg18 = %mapped_15) -> (tensor<16x128xf32>, tensor<16x32xi32>, tensor<32x128xi32>)  : i32 {
      %extracted_21 = tensor.extract %arg17[%c0, %c0] : tensor<16x32xi32>
      %extracted_22 = tensor.extract %arg17[%c1, %c0] : tensor<16x32xi32>
      %105 = arith.subi %extracted_22, %extracted_21 : i32
      %106 = arith.index_cast %105 : i32 to index
      %extracted_23 = tensor.extract %arg17[%c0, %c1] : tensor<16x32xi32>
      %107 = arith.subi %extracted_23, %extracted_21 : i32
      %108 = arith.index_cast %107 : i32 to index
      %109 = arith.index_cast %extracted_21 : i32 to index
      %view_memref_24 = aux.view %39 to offset: [%109], sizes: [%36, %38], strides: [%106, %108] : !llvm.ptr to memref<?x?xf32, #map>
      %110 = bufferization.to_tensor %view_memref_24 restrict writable : memref<?x?xf32, #map>
      %111 = linalg.copy ins(%110 : tensor<?x?xf32>) outs(%40 : tensor<?x?xf32>) -> tensor<?x?xf32>
      %112 = linalg.fill ins(%cst : f32) outs(%41 : tensor<16x32xf32>) -> tensor<16x32xf32>
      %inserted_slice_25 = tensor.insert_slice %111 into %112[0, 0] [%36, %38] [1, 1] : tensor<?x?xf32> into tensor<16x32xf32>
      %extracted_26 = tensor.extract %arg18[%c0, %c0] : tensor<32x128xi32>
      %extracted_27 = tensor.extract %arg18[%c1, %c0] : tensor<32x128xi32>
      %113 = arith.subi %extracted_27, %extracted_26 : i32
      %114 = arith.index_cast %113 : i32 to index
      %extracted_28 = tensor.extract %arg18[%c0, %c1] : tensor<32x128xi32>
      %115 = arith.subi %extracted_28, %extracted_26 : i32
      %116 = arith.index_cast %115 : i32 to index
      %117 = arith.index_cast %extracted_26 : i32 to index
      %view_memref_29 = aux.view %50 to offset: [%117], sizes: [%38, %49], strides: [%114, %116] : !llvm.ptr to memref<?x?xf32, #map>
      %118 = bufferization.to_tensor %view_memref_29 restrict writable : memref<?x?xf32, #map>
      %119 = linalg.copy ins(%118 : tensor<?x?xf32>) outs(%51 : tensor<?x?xf32>) -> tensor<?x?xf32>
      %120 = linalg.fill ins(%cst : f32) outs(%52 : tensor<32x128xf32>) -> tensor<32x128xf32>
      %inserted_slice_30 = tensor.insert_slice %119 into %120[0, 0] [%38, %49] [1, 1] : tensor<?x?xf32> into tensor<32x128xf32>
      %121 = linalg.matmul {__allow_tf32__} ins(%inserted_slice_25, %inserted_slice_30 : tensor<16x32xf32>, tensor<32x128xf32>) outs(%1 : tensor<16x128xf32>) -> tensor<16x128xf32>
      %mapped_31 = linalg.map { arith.addf } ins(%arg16, %121 : tensor<16x128xf32>, tensor<16x128xf32>) outs(%0 : tensor<16x128xf32>)
      %122 = linalg.fill ins(%53 : i32) outs(%20 : tensor<16x32xi32>) -> tensor<16x32xi32>
      %mapped_32 = linalg.map { arith.addi } ins(%122, %arg17 : tensor<16x32xi32>, tensor<16x32xi32>) outs(%20 : tensor<16x32xi32>)
      %123 = linalg.fill ins(%54 : i32) outs(%25 : tensor<32x128xi32>) -> tensor<32x128xi32>
      %mapped_33 = linalg.map { arith.addi } ins(%123, %arg18 : tensor<32x128xi32>, tensor<32x128xi32>) outs(%25 : tensor<32x128xi32>)
      scf.yield %mapped_31, %mapped_32, %mapped_33 : tensor<16x128xf32>, tensor<16x32xi32>, tensor<32x128xi32>
    }
    %56 = arith.index_cast %6 : i32 to index
    %57 = arith.addi %56, %c16 : index
    %58 = arith.index_cast %arg4 : i32 to index
    %59 = arith.maxsi %58, %56 : index
    %60 = arith.minsi %57, %59 : index
    %61 = arith.subi %60, %56 : index
    %62 = arith.index_cast %10 : i32 to index
    %63 = arith.addi %62, %c128 : index
    %64 = arith.index_cast %arg5 : i32 to index
    %65 = arith.maxsi %64, %62 : index
    %66 = arith.minsi %63, %65 : index
    %67 = arith.subi %66, %62 : index
    %68 = arith.minsi %61, %c16 : index
    %69 = arith.maxsi %68, %c0 : index
    %70 = arith.minsi %67, %c128 : index
    %71 = arith.maxsi %70, %c0 : index
    %extracted = tensor.extract %12[%c0] : tensor<128xi32>
    %72 = arith.addi %10, %extracted : i32
    %73 = arith.muli %72, %arg8 : i32
    %extracted_16 = tensor.extract %8[%c0] : tensor<16xi32>
    %74 = arith.addi %6, %extracted_16 : i32
    %75 = arith.muli %74, %arg7 : i32
    %76 = arith.addi %73, %75 : i32
    %extracted_17 = tensor.extract %8[%c1] : tensor<16xi32>
    %77 = arith.addi %6, %extracted_17 : i32
    %78 = arith.muli %77, %arg7 : i32
    %79 = arith.addi %73, %78 : i32
    %80 = arith.subi %79, %76 : i32
    %81 = arith.index_cast %80 : i32 to index
    %extracted_18 = tensor.extract %12[%c1] : tensor<128xi32>
    %82 = arith.addi %10, %extracted_18 : i32
    %83 = arith.muli %82, %arg8 : i32
    %84 = arith.addi %83, %75 : i32
    %85 = arith.subi %84, %76 : i32
    %86 = arith.index_cast %85 : i32 to index
    %87 = arith.index_cast %76 : i32 to index
    %88 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %view_memref = aux.view %88 to offset: [%87], sizes: [%69, %71], strides: [%81, %86] : !llvm.ptr to memref<?x?xf32, #map>
    %89 = bufferization.to_tensor %view_memref restrict writable : memref<?x?xf32, #map>
    %90 = tensor.empty(%69, %71) : tensor<?x?xf32>
    %91 = linalg.copy ins(%89 : tensor<?x?xf32>) outs(%90 : tensor<?x?xf32>) -> tensor<?x?xf32>
    %inserted_slice = tensor.insert_slice %91 into %1[0, 0] [%69, %71] [1, 1] : tensor<?x?xf32> into tensor<16x128xf32>
    %mapped_19 = linalg.map { arith.addf } ins(%55#0, %inserted_slice : tensor<16x128xf32>, tensor<16x128xf32>) outs(%0 : tensor<16x128xf32>)
    %92 = arith.muli %72, %arg14 : i32
    %93 = arith.muli %74, %arg13 : i32
    %94 = arith.addi %92, %93 : i32
    %95 = arith.muli %77, %arg13 : i32
    %96 = arith.addi %92, %95 : i32
    %97 = arith.subi %96, %94 : i32
    %98 = arith.index_cast %97 : i32 to index
    %99 = arith.muli %82, %arg14 : i32
    %100 = arith.addi %99, %93 : i32
    %101 = arith.subi %100, %94 : i32
    %102 = arith.index_cast %101 : i32 to index
    %103 = arith.index_cast %94 : i32 to index
    %104 = llvm.inttoptr %arg3 : i64 to !llvm.ptr
    %view_memref_20 = aux.view %104 to offset: [%103], sizes: [%69, %71], strides: [%98, %102] : !llvm.ptr to memref<?x?xf32, #map>
    %extracted_slice = tensor.extract_slice %mapped_19[0, 0] [%69, %71] [1, 1] : tensor<16x128xf32> to tensor<?x?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref_20 : (tensor<?x?xf32>, memref<?x?xf32, #map>) -> ()
    return
  }
}

