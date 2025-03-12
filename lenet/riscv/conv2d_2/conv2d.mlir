module {
  func.func @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i64, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i64, %arg15: i64, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32)attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c4_i64 = arith.constant 4 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0.000000e+00 : f32
    // %0 = gpu.block_id  x
    %0 = arith.constant 0 : index
    %1 = arith.index_cast %0 : index to i32
    %2 = arith.muli %arg19, %arg20 : i32
    %3 = arith.muli %1, %arg1 : i32
    %4 = arith.muli %1, %arg16 : i32
    scf.for %arg23 = %c0_i32 to %arg13 step %c1_i32  : i32 {
      %5 = arith.extsi %arg23 : i32 to i64
      %6 = arith.muli %5, %c4_i64 : i64
      %7 = arith.addi %arg14, %6 : i64
      %8 = arith.muli %arg23, %arg8 : i32
      %9 = arith.muli %arg23, %arg17 : i32
      %10 = arith.addi %4, %9 : i32
      %11 = llvm.inttoptr %7 : i64 to !llvm.ptr
      scf.for %arg24 = %c0_i32 to %2 step %c1_i32  : i32 {
        %12 = arith.divsi %arg24, %arg20 : i32
        %13 = arith.remsi %arg24, %arg20 : i32
        %14 = arith.subi %12, %arg21 : i32
        %15 = arith.subi %13, %arg22 : i32
        %view_memref = aux.view %11 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        %16 = memref.load %view_memref[%c0] : memref<1xf32>
        %17 = scf.for %arg25 = %c0_i32 to %arg6 step %c1_i32 iter_args(%arg26 = %cst) -> (f32)  : i32 {
          %26 = arith.muli %arg25, %arg9 : i32
          %27 = arith.addi %8, %26 : i32
          %28 = arith.muli %arg25, %arg2 : i32
          %29 = arith.addi %3, %28 : i32
          %30 = scf.for %arg27 = %c0_i32 to %arg11 step %c1_i32 iter_args(%arg28 = %arg26) -> (f32)  : i32 {
            %31 = arith.addi %14, %arg27 : i32
            %32 = arith.cmpi slt, %31, %c0_i32 : i32
            %33 = arith.cmpi sge, %31, %arg4 : i32
            %34 = arith.ori %32, %33 : i1
            %35 = scf.if %34 -> (f32) {
              scf.yield %arg28 : f32
            } else {
              %36 = scf.for %arg29 = %c0_i32 to %arg12 step %c1_i32 iter_args(%arg30 = %arg28) -> (f32)  : i32 {
                %37 = arith.addi %15, %arg29 : i32
                %38 = arith.cmpi slt, %37, %c0_i32 : i32
                %39 = arith.cmpi sge, %37, %arg5 : i32
                %40 = arith.ori %38, %39 : i1
                %41 = scf.if %40 -> (f32) {
                  scf.yield %arg30 : f32
                } else {
                  %42 = arith.muli %arg27, %arg10 : i32
                  %43 = arith.addi %arg29, %42 : i32
                  %44 = arith.addi %43, %27 : i32
                  %45 = arith.extsi %44 : i32 to i64
                  %46 = arith.muli %45, %c4_i64 : i64
                  %47 = arith.addi %arg7, %46 : i64
                  %48 = llvm.inttoptr %47 : i64 to !llvm.ptr
                  %view_memref_1 = aux.view %48 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
                  %49 = memref.load %view_memref_1[%c0] : memref<1xf32>
                  %50 = arith.muli %31, %arg3 : i32
                  %51 = arith.addi %37, %50 : i32
                  %52 = arith.addi %51, %29 : i32
                  %53 = arith.extsi %52 : i32 to i64
                  %54 = arith.muli %53, %c4_i64 : i64
                  %55 = arith.addi %arg0, %54 : i64
                  %56 = llvm.inttoptr %55 : i64 to !llvm.ptr
                  %view_memref_2 = aux.view %56 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
                  %57 = memref.load %view_memref_2[%c0] : memref<1xf32>
                  %58 = arith.mulf %57, %49 : f32
                  %59 = arith.addf %arg30, %58 : f32
                  scf.yield %59 : f32
                }
                scf.yield %41 : f32
              }
              scf.yield %36 : f32
            }
            scf.yield %35 : f32
          }
          scf.yield %30 : f32
        }
        %18 = arith.addf %17, %16 : f32
        %19 = arith.muli %12, %arg18 : i32
        %20 = arith.addi %10, %19 : i32
        %21 = arith.addi %20, %13 : i32
        %22 = arith.extsi %21 : i32 to i64
        %23 = arith.muli %22, %c4_i64 : i64
        %24 = arith.addi %arg15, %23 : i64
        %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
        %view_memref_0 = aux.view %25 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        memref.store %18, %view_memref_0[%c0] : memref<1xf32>
      }
    }
    return
  }
}

