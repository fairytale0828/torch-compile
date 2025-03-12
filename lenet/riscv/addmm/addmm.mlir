#map = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
module {
  func.func @addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c16_i32 = arith.constant 16 : i32
    %c128_i32 = arith.constant 128 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %c32_i32 = arith.constant 32 : i32
    %c0_i32 = arith.constant 0 : i32
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
    %8 = scf.for %arg10 = %c0 to %c16 step %c1 iter_args(%arg11 = %7) -> (tensor<16xi32>) {
      %87 = arith.index_cast %arg10 : index to i32
      %inserted = tensor.insert %87 into %arg11[%arg10] : tensor<16xi32>
      scf.yield %inserted : tensor<16xi32>
    }
    %9 = arith.muli %5, %c128_i32 : i32
    %10 = tensor.empty() : tensor<128xi32>
    %11 = scf.for %arg10 = %c0 to %c128 step %c1 iter_args(%arg11 = %10) -> (tensor<128xi32>) {
      %87 = arith.index_cast %arg10 : index to i32
      %inserted = tensor.insert %87 into %arg11[%arg10] : tensor<128xi32>
      scf.yield %inserted : tensor<128xi32>
    }
    %12 = tensor.empty() : tensor<32xi32>
    %13 = scf.for %arg10 = %c0 to %c32 step %c1 iter_args(%arg11 = %12) -> (tensor<32xi32>) {
      %87 = arith.index_cast %arg10 : index to i32
      %inserted = tensor.insert %87 into %arg11[%arg10] : tensor<32xi32>
      scf.yield %inserted : tensor<32xi32>
    }
    %14 = arith.muli %arg8, %c32_i32 : i32
    %extracted = tensor.extract %13[%c0] : tensor<32xi32>
    %extracted_0 = tensor.extract %8[%c1] : tensor<16xi32>
    %15 = arith.addi %6, %extracted_0 : i32
    %16 = arith.muli %15, %arg7 : i32
    %17 = arith.addi %extracted, %16 : i32
    %extracted_1 = tensor.extract %8[%c0] : tensor<16xi32>
    %18 = arith.addi %6, %extracted_1 : i32
    %19 = arith.muli %18, %arg7 : i32
    %20 = arith.addi %extracted, %19 : i32
    %extracted_2 = tensor.extract %11[%c0] : tensor<128xi32>
    %21 = arith.addi %9, %extracted_2 : i32
    %22 = arith.muli %extracted, %arg8 : i32
    %23 = arith.addi %21, %22 : i32
    %extracted_3 = tensor.extract %13[%c1] : tensor<32xi32>
    %24 = arith.muli %extracted_3, %arg8 : i32
    %25 = arith.addi %21, %24 : i32
    %26 = arith.index_cast %6 : i32 to index
    %27 = arith.addi %26, %c16 : index
    %28 = arith.maxsi %26, %c1 : index
    %29 = arith.minsi %27, %28 : index
    %30 = arith.subi %29, %26 : index
    %31 = arith.index_cast %arg5 : i32 to index
    %32 = arith.maxsi %31, %c0 : index
    %33 = arith.minsi %32, %c32 : index
    %34 = arith.minsi %30, %c16 : index
    %35 = arith.maxsi %34, %c0 : index
    %36 = arith.minsi %33, %c32 : index
    %37 = arith.maxsi %36, %c0 : index
    %38 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %39 = tensor.empty(%35, %37) : tensor<?x?xf32>
    %40 = tensor.empty() : tensor<16x32xf32>
    %41 = arith.index_cast %9 : i32 to index
    %42 = arith.addi %41, %c128 : index
    %43 = arith.index_cast %arg4 : i32 to index
    %44 = arith.maxsi %43, %41 : index
    %45 = arith.minsi %42, %44 : index
    %46 = arith.subi %45, %41 : index
    %47 = arith.minsi %46, %c128 : index
    %48 = arith.maxsi %47, %c0 : index
    %49 = llvm.inttoptr %arg2 : i64 to !llvm.ptr
    %50 = tensor.empty(%37, %48) : tensor<?x?xf32>
    %51 = tensor.empty() : tensor<32x128xf32>
    %52:7 = scf.for %arg10 = %c0_i32 to %arg5 step %c32_i32 iter_args(%arg11 = %1, %arg12 = %17, %arg13 = %20, %arg14 = %20, %arg15 = %23, %arg16 = %25, %arg17 = %23) -> (tensor<16x128xf32>, i32, i32, i32, i32, i32, i32)  : i32 {
      %87 = arith.subi %arg12, %arg13 : i32
      %88 = arith.index_cast %87 : i32 to index
      %89 = arith.index_cast %arg14 : i32 to index
      %view_memref_5 = aux.view %38 to offset: [%89], sizes: [%35, %37], strides: [%88, 1] : !llvm.ptr to memref<?x?xf32, #map>
      %90 = bufferization.to_tensor %view_memref_5 restrict writable : memref<?x?xf32, #map>
      %91 = linalg.copy ins(%90 : tensor<?x?xf32>) outs(%39 : tensor<?x?xf32>) -> tensor<?x?xf32>
      %92 = linalg.fill ins(%cst : f32) outs(%40 : tensor<16x32xf32>) -> tensor<16x32xf32>
      %inserted_slice_6 = tensor.insert_slice %91 into %92[0, 0] [%35, %37] [1, 1] : tensor<?x?xf32> into tensor<16x32xf32>
      %93 = arith.subi %arg16, %arg17 : i32
      %94 = arith.index_cast %93 : i32 to index
      %95 = arith.index_cast %arg15 : i32 to index
      %view_memref_7 = aux.view %49 to offset: [%95], sizes: [%37, %48], strides: [%94, 1] : !llvm.ptr to memref<?x?xf32, #map>
      %96 = bufferization.to_tensor %view_memref_7 restrict writable : memref<?x?xf32, #map>
      %97 = linalg.copy ins(%96 : tensor<?x?xf32>) outs(%50 : tensor<?x?xf32>) -> tensor<?x?xf32>
      %98 = linalg.fill ins(%cst : f32) outs(%51 : tensor<32x128xf32>) -> tensor<32x128xf32>
      %inserted_slice_8 = tensor.insert_slice %97 into %98[0, 0] [%37, %48] [1, 1] : tensor<?x?xf32> into tensor<32x128xf32>
      %99 = linalg.matmul {__allow_tf32__} ins(%inserted_slice_6, %inserted_slice_8 : tensor<16x32xf32>, tensor<32x128xf32>) outs(%arg11 : tensor<16x128xf32>) -> tensor<16x128xf32>
      %100 = arith.addi %arg12, %c32_i32 : i32
      %101 = arith.addi %arg13, %c32_i32 : i32
      %102 = arith.addi %14, %arg15 : i32
      %103 = arith.addi %14, %arg16 : i32
      scf.yield %99, %100, %101, %101, %102, %103, %102 : tensor<16x128xf32>, i32, i32, i32, i32, i32, i32
    }
    %53 = arith.index_cast %6 : i32 to index
    %54 = arith.addi %53, %c16 : index
    %55 = arith.maxsi %53, %c1 : index
    %56 = arith.minsi %54, %55 : index
    %57 = arith.subi %56, %53 : index
    %58 = arith.index_cast %9 : i32 to index
    %59 = arith.addi %58, %c128 : index
    %60 = arith.index_cast %arg4 : i32 to index
    %61 = arith.maxsi %60, %58 : index
    %62 = arith.minsi %59, %61 : index
    %63 = arith.subi %62, %58 : index
    %64 = arith.minsi %57, %c16 : index
    %65 = arith.maxsi %64, %c0 : index
    %66 = arith.minsi %63, %c128 : index
    %67 = arith.maxsi %66, %c0 : index
    %68 = arith.muli %18, %arg6 : i32
    %69 = arith.addi %21, %68 : i32
    %70 = arith.muli %15, %arg6 : i32
    %71 = arith.addi %21, %70 : i32
    %72 = arith.subi %71, %69 : i32
    %73 = arith.index_cast %72 : i32 to index
    %74 = arith.index_cast %69 : i32 to index
    %75 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %view_memref = aux.view %75 to offset: [%74], sizes: [%65, %67], strides: [%73, 1] : !llvm.ptr to memref<?x?xf32, #map>
    %76 = bufferization.to_tensor %view_memref restrict writable : memref<?x?xf32, #map>
    %77 = tensor.empty(%65, %67) : tensor<?x?xf32>
    %78 = linalg.copy ins(%76 : tensor<?x?xf32>) outs(%77 : tensor<?x?xf32>) -> tensor<?x?xf32>
    %inserted_slice = tensor.insert_slice %78 into %1[0, 0] [%65, %67] [1, 1] : tensor<?x?xf32> into tensor<16x128xf32>
    %mapped = linalg.map { arith.addf } ins(%52#0, %inserted_slice : tensor<16x128xf32>, tensor<16x128xf32>) outs(%0 : tensor<16x128xf32>)
    %79 = arith.muli %18, %arg9 : i32
    %80 = arith.addi %21, %79 : i32
    %81 = arith.muli %15, %arg9 : i32
    %82 = arith.addi %21, %81 : i32
    %83 = arith.subi %82, %80 : i32
    %84 = arith.index_cast %83 : i32 to index
    %85 = arith.index_cast %80 : i32 to index
    %86 = llvm.inttoptr %arg3 : i64 to !llvm.ptr
    %view_memref_4 = aux.view %86 to offset: [%85], sizes: [%65, %67], strides: [%84, 1] : !llvm.ptr to memref<?x?xf32, #map>
    %extracted_slice = tensor.extract_slice %mapped[0, 0] [%65, %67] [1, 1] : tensor<16x128xf32> to tensor<?x?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref_4 : (tensor<?x?xf32>, memref<?x?xf32, #map>) -> ()
    return
  }
}

