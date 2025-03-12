module {
  func.func @conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i64, %arg14: i64, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32)attributes {llvm.emit_c_interface}{
    %c0 = arith.constant 0 : index
    %c4_i64 = arith.constant 4 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0.000000e+00 : f32
    // %0 = gpu.block_id  x
    %0 = arith.constant 0 : index
    %1 = arith.index_cast %0 : index to i32
    %2 = arith.muli %arg18, %arg19 : i32
    %3 = arith.muli %1, %arg1 : i32
    %4 = arith.muli %1, %arg15 : i32
    scf.for %arg22 = %c0_i32 to %arg12 step %c1_i32  : i32 {
      %5 = arith.extsi %arg22 : i32 to i64
      %6 = arith.muli %5, %c4_i64 : i64
      %7 = arith.addi %arg13, %6 : i64
      %8 = arith.muli %arg22, %arg7 : i32
      %9 = arith.muli %arg22, %arg16 : i32
      %10 = arith.addi %4, %9 : i32
      %11 = llvm.inttoptr %7 : i64 to !llvm.ptr
      scf.for %arg23 = %c0_i32 to %2 step %c1_i32  : i32 {
        %12 = arith.divsi %arg23, %arg19 : i32
        %13 = arith.remsi %arg23, %arg19 : i32
        %14 = arith.subi %12, %arg20 : i32
        %15 = arith.subi %13, %arg21 : i32
        %view_memref = aux.view %11 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        %16 = memref.load %view_memref[%c0] : memref<1xf32>
        %17 = scf.for %arg24 = %c0_i32 to %arg10 step %c1_i32 iter_args(%arg25 = %cst) -> (f32)  : i32 {
          %26 = arith.addi %14, %arg24 : i32
          %27 = arith.cmpi slt, %26, %c0_i32 : i32
          %28 = arith.cmpi sge, %26, %arg4 : i32
          %29 = arith.ori %27, %28 : i1
          %30 = scf.if %29 -> (f32) {
            scf.yield %arg25 : f32
          } else {
            %31 = scf.for %arg26 = %c0_i32 to %arg11 step %c1_i32 iter_args(%arg27 = %arg25) -> (f32)  : i32 {
              %32 = arith.addi %15, %arg26 : i32
              %33 = arith.cmpi slt, %32, %c0_i32 : i32
              %34 = arith.cmpi sge, %32, %arg5 : i32
              %35 = arith.ori %33, %34 : i1
              %36 = scf.if %35 -> (f32) {
                scf.yield %arg27 : f32
              } else {
                %37 = arith.muli %arg24, %arg9 : i32
                %38 = arith.addi %arg26, %37 : i32
                %39 = arith.addi %38, %8 : i32
                %40 = arith.extsi %39 : i32 to i64
                %41 = arith.muli %40, %c4_i64 : i64
                %42 = arith.addi %arg6, %41 : i64
                %43 = llvm.inttoptr %42 : i64 to !llvm.ptr
                %view_memref_1 = aux.view %43 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
                %44 = memref.load %view_memref_1[%c0] : memref<1xf32>
                %45 = arith.muli %26, %arg3 : i32
                %46 = arith.addi %32, %45 : i32
                %47 = arith.addi %46, %3 : i32
                %48 = arith.extsi %47 : i32 to i64
                %49 = arith.muli %48, %c4_i64 : i64
                %50 = arith.addi %arg0, %49 : i64
                %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
                %view_memref_2 = aux.view %51 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
                %52 = memref.load %view_memref_2[%c0] : memref<1xf32>
                %53 = arith.mulf %52, %44 : f32
                %54 = arith.addf %arg27, %53 : f32
                scf.yield %54 : f32
              }
              scf.yield %36 : f32
            }
            scf.yield %31 : f32
          }
          scf.yield %30 : f32
        }
        %18 = arith.addf %17, %16 : f32
        %19 = arith.muli %12, %arg17 : i32
        %20 = arith.addi %10, %19 : i32
        %21 = arith.addi %20, %13 : i32
        %22 = arith.extsi %21 : i32 to i64
        %23 = arith.muli %22, %c4_i64 : i64
        %24 = arith.addi %arg14, %23 : i64
        %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
        %view_memref_0 = aux.view %25 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        memref.store %18, %view_memref_0[%c0] : memref<1xf32>
      }
    }
    return
  }
}

