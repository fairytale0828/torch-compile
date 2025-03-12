module {
  func.func @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i64, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i64, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32, %arg28: i32, %arg29: i32) attributes{llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c4_i64 = arith.constant 4 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0.000000e+00 : f32
    // %0 = gpu.block_id  x
    %0 = arith.constant 0 : index
    %1 = arith.index_cast %0 : index to i32
    %2 = arith.muli %arg21, %arg22 : i32
    %3 = arith.muli %1, %arg1 : i32
    %4 = arith.muli %1, %arg17 : i32
    scf.for %arg30 = %c0_i32 to %arg15 step %c1_i32  : i32 {
      %5 = arith.muli %arg30, %arg9 : i32
      %6 = arith.muli %arg30, %arg18 : i32
      %7 = arith.addi %4, %6 : i32
      scf.for %arg31 = %c0_i32 to %2 step %c1_i32  : i32 {
        %8 = arith.divsi %arg31, %arg22 : i32
        %9 = arith.remsi %arg31, %arg22 : i32
        %10 = arith.muli %8, %arg23 : i32
        %11 = arith.subi %10, %arg25 : i32
        %12 = arith.muli %9, %arg24 : i32
        %13 = arith.subi %12, %arg26 : i32
        %14 = scf.for %arg32 = %c0_i32 to %arg7 step %c1_i32 iter_args(%arg33 = %cst) -> (f32)  : i32 {
          %23 = arith.muli %arg32, %arg10 : i32
          %24 = arith.addi %5, %23 : i32
          %25 = arith.muli %arg32, %arg2 : i32
          %26 = arith.addi %3, %25 : i32
          %27 = scf.for %arg34 = %c0_i32 to %arg13 step %c1_i32 iter_args(%arg35 = %arg33) -> (f32)  : i32 {
            %28 = arith.muli %arg34, %arg27 : i32
            %29 = arith.addi %11, %28 : i32
            %30 = arith.cmpi slt, %29, %c0_i32 : i32
            %31 = arith.cmpi sge, %29, %arg5 : i32
            %32 = arith.ori %30, %31 : i1
            %33 = scf.if %32 -> (f32) {
              scf.yield %arg35 : f32
            } else {
              %34 = scf.for %arg36 = %c0_i32 to %arg14 step %c1_i32 iter_args(%arg37 = %arg35) -> (f32)  : i32 {
                %35 = arith.muli %arg36, %arg28 : i32
                %36 = arith.addi %13, %35 : i32
                %37 = arith.cmpi slt, %36, %c0_i32 : i32
                %38 = arith.cmpi sge, %36, %arg6 : i32
                %39 = arith.ori %37, %38 : i1
                %40 = scf.if %39 -> (f32) {
                  scf.yield %arg37 : f32
                } else {
                  %41 = arith.muli %arg34, %arg11 : i32
                  %42 = arith.muli %arg36, %arg12 : i32
                  %43 = arith.addi %42, %41 : i32
                  %44 = arith.addi %43, %24 : i32
                  %45 = arith.extsi %44 : i32 to i64
                  %46 = arith.muli %45, %c4_i64 : i64
                  %47 = arith.addi %arg8, %46 : i64
                  %48 = llvm.inttoptr %47 : i64 to !llvm.ptr
                  %view_memref_0 = aux.view %48 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
                  %49 = memref.load %view_memref_0[%c0] : memref<1xf32>
                  %50 = arith.muli %29, %arg3 : i32
                  %51 = arith.muli %36, %arg4 : i32
                  %52 = arith.addi %51, %50 : i32
                  %53 = arith.addi %52, %26 : i32
                  %54 = arith.extsi %53 : i32 to i64
                  %55 = arith.muli %54, %c4_i64 : i64
                  %56 = arith.addi %arg0, %55 : i64
                  %57 = llvm.inttoptr %56 : i64 to !llvm.ptr
                  %view_memref_1 = aux.view %57 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
                  %58 = memref.load %view_memref_1[%c0] : memref<1xf32>
                  %59 = arith.mulf %58, %49 : f32
                  %60 = arith.addf %arg37, %59 : f32
                  scf.yield %60 : f32
                }
                scf.yield %40 : f32
              }
              scf.yield %34 : f32
            }
            scf.yield %33 : f32
          }
          scf.yield %27 : f32
        }
        %15 = arith.muli %8, %arg19 : i32
        %16 = arith.addi %7, %15 : i32
        %17 = arith.muli %9, %arg20 : i32
        %18 = arith.addi %16, %17 : i32
        %19 = arith.extsi %18 : i32 to i64
        %20 = arith.muli %19, %c4_i64 : i64
        %21 = arith.addi %arg16, %20 : i64
        %22 = llvm.inttoptr %21 : i64 to !llvm.ptr
        %view_memref = aux.view %22 to offset: [0], sizes: [1], strides: [1] : !llvm.ptr to memref<1xf32>
        memref.store %14, %view_memref[%c0] : memref<1xf32>
      }
    }
    return
  }
}

