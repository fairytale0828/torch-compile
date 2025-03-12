#map = affine_map<(d0)[s0] -> (d0 + s0)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
module {
  func.func @mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c128 = arith.constant 128 : index
    %c8_i32 = arith.constant 8 : i32
    %c16_i32 = arith.constant 16 : i32
    %c128_i32 = arith.constant 128 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %c31_i32 = arith.constant 31 : i32
    %c127_i32 = arith.constant 127 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32_i32 = arith.constant 32 : i32
    %0 = tensor.empty() : tensor<16x128xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<16x128xf32>) -> tensor<16x128xf32>
    // %2 = gpu.block_id  x
    %2 = arith.constant 0 : index
    %3 = arith.index_cast %2 : index to i32
    // %4 = gpu.block_id  y
    %4 = arith.constant 0 : index
    %5 = arith.index_cast %4 : index to i32
    %6 = arith.addi %arg3, %c127_i32 : i32
    %7 = arith.divsi %6, %c128_i32 : i32
    %8 = arith.muli %7, %c8_i32 : i32
    %9 = arith.divsi %3, %8 : i32
    %10 = arith.muli %9, %c8_i32 : i32
    %11 = arith.subi %c1_i32, %10 : i32
    %12 = arith.minsi %11, %c8_i32 : i32
    %13 = arith.remsi %3, %12 : i32
    %14 = arith.addi %10, %13 : i32
    %15 = arith.remsi %3, %8 : i32
    %16 = arith.divsi %15, %12 : i32
    %17 = arith.muli %16, %c128_i32 : i32
    %18 = tensor.empty() : tensor<128xi32>
    %19 = scf.for %arg8 = %c0 to %c128 step %c1 iter_args(%arg9 = %18) -> (tensor<128xi32>) {
      %68 = arith.index_cast %arg8 : index to i32
      %inserted = tensor.insert %68 into %arg9[%arg8] : tensor<128xi32>
      scf.yield %inserted : tensor<128xi32>
    }
    %20 = arith.muli %5, %c32_i32 : i32
    %21 = tensor.empty() : tensor<32xi32>
    %22 = scf.for %arg8 = %c0 to %c32 step %c1 iter_args(%arg9 = %21) -> (tensor<32xi32>) {
      %68 = arith.index_cast %arg8 : index to i32
      %inserted = tensor.insert %68 into %arg9[%arg8] : tensor<32xi32>
      scf.yield %inserted : tensor<32xi32>
    }
    %23 = arith.addi %arg4, %c31_i32 : i32
    %24 = arith.divsi %23, %c32_i32 : i32
    %25 = arith.muli %arg6, %c32_i32 : i32
    %extracted = tensor.extract %22[%c0] : tensor<32xi32>
    %26 = arith.addi %20, %extracted : i32
    %extracted_0 = tensor.extract %22[%c1] : tensor<32xi32>
    %27 = arith.addi %20, %extracted_0 : i32
    %28 = arith.muli %27, %arg6 : i32
    %extracted_1 = tensor.extract %19[%c0] : tensor<128xi32>
    %29 = arith.addi %17, %extracted_1 : i32
    %30 = arith.remsi %29, %arg3 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : i32
    %31 = arith.addi %28, %30 : i32
    %32 = arith.muli %26, %arg6 : i32
    %33 = arith.addi %32, %30 : i32
    %34 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %35 = tensor.empty() : tensor<32xf32>
    %36 = tensor.empty() : tensor<16x32xf32>
    %37 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %38 = tensor.empty() : tensor<32x128xf32>
    %39:4 = scf.for %arg8 = %c0_i32 to %24 step %c1_i32 iter_args(%arg9 = %1, %arg10 = %26, %arg11 = %31, %arg12 = %33) -> (tensor<16x128xf32>, i32, i32, i32)  : i32 {
      %68 = arith.index_cast %arg10 : i32 to index
      %view_memref_4 = aux.view %34 to offset: [%68], sizes: [32], strides: [1] : !llvm.ptr to memref<32xf32, #map>
      %69 = bufferization.to_tensor %view_memref_4 restrict writable : memref<32xf32, #map>
      %70 = linalg.copy ins(%69 : tensor<32xf32>) outs(%35 : tensor<32xf32>) -> tensor<32xf32>
      %broadcasted = linalg.broadcast ins(%70 : tensor<32xf32>) outs(%36 : tensor<16x32xf32>) dimensions = [0] 
      %71 = arith.subi %arg11, %arg12 : i32
      %72 = arith.index_cast %71 : i32 to index
      %73 = arith.index_cast %arg12 : i32 to index
      %view_memref_5 = aux.view %37 to offset: [%73], sizes: [32, 128], strides: [%72, 1] : !llvm.ptr to memref<32x128xf32, #map1>
      %74 = bufferization.to_tensor %view_memref_5 restrict writable : memref<32x128xf32, #map1>
      %75 = linalg.copy ins(%74 : tensor<32x128xf32>) outs(%38 : tensor<32x128xf32>) -> tensor<32x128xf32>
      %76 = linalg.matmul ins(%broadcasted, %75 : tensor<16x32xf32>, tensor<32x128xf32>) outs(%arg9 : tensor<16x128xf32>) -> tensor<16x128xf32>
      %77 = arith.addi %arg10, %c32_i32 : i32
      %78 = arith.addi %25, %arg11 : i32
      %79 = arith.addi %25, %arg12 : i32
      scf.yield %76, %77, %78, %79 : tensor<16x128xf32>, i32, i32, i32
    }
    %40 = arith.muli %14, %c16_i32 : i32
    %41 = tensor.empty() : tensor<16xi32>
    %42 = scf.for %arg8 = %c0 to %c16 step %c1 iter_args(%arg9 = %41) -> (tensor<16xi32>) {
      %68 = arith.index_cast %arg8 : index to i32
      %inserted = tensor.insert %68 into %arg9[%arg8] : tensor<16xi32>
      scf.yield %inserted : tensor<16xi32>
    }
    %43 = arith.index_cast %40 : i32 to index
    %44 = arith.addi %43, %c16 : index
    %45 = arith.maxsi %43, %c1 : index
    %46 = arith.minsi %44, %45 : index
    %47 = arith.subi %46, %43 : index
    %48 = arith.index_cast %17 : i32 to index
    %49 = arith.addi %48, %c128 : index
    %50 = arith.index_cast %arg3 : i32 to index
    %51 = arith.maxsi %50, %48 : index
    %52 = arith.minsi %49, %51 : index
    %53 = arith.subi %52, %48 : index
    %54 = arith.minsi %47, %c16 : index
    %55 = arith.maxsi %54, %c0 : index
    %56 = arith.minsi %53, %c128 : index
    %57 = arith.maxsi %56, %c0 : index
    %extracted_2 = tensor.extract %42[%c0] : tensor<16xi32>
    %58 = arith.addi %40, %extracted_2 : i32
    %59 = arith.muli %58, %arg7 : i32
    %60 = arith.addi %59, %29 : i32
    %extracted_3 = tensor.extract %42[%c1] : tensor<16xi32>
    %61 = arith.addi %40, %extracted_3 : i32
    %62 = arith.muli %61, %arg7 : i32
    %63 = arith.addi %62, %29 : i32
    %64 = arith.subi %63, %60 : i32
    %65 = arith.index_cast %64 : i32 to index
    %66 = arith.index_cast %60 : i32 to index
    %67 = llvm.inttoptr %arg2 : i64 to !llvm.ptr
    %view_memref = aux.view %67 to offset: [%66], sizes: [%55, %57], strides: [%65, 1] : !llvm.ptr to memref<?x?xf32, #map1>
    %extracted_slice = tensor.extract_slice %39#0[0, 0] [%55, %57] [1, 1] : tensor<16x128xf32> to tensor<?x?xf32>
    bufferization.materialize_in_destination %extracted_slice in writable %view_memref : (tensor<?x?xf32>, memref<?x?xf32, #map1>) -> ()
    return
  }
}

