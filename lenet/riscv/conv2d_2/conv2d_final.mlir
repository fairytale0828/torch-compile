module {
  llvm.func @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i64, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i64, %arg15: i64, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.mlir.constant(4 : i64) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mul %arg19, %arg20  : i32
    llvm.br ^bb1(%3 : i32)
  ^bb1(%6: i32):  // 2 preds: ^bb0, ^bb21
    %7 = llvm.icmp "slt" %6, %arg13 : i32
    llvm.cond_br %7, ^bb2, ^bb22
  ^bb2:  // pred: ^bb1
    %8 = llvm.sext %6 : i32 to i64
    %9 = llvm.mul %8, %2  : i64
    %10 = llvm.add %arg14, %9  : i64
    %11 = llvm.mul %6, %arg8  : i32
    %12 = llvm.mul %6, %arg17  : i32
    %13 = llvm.inttoptr %10 : i64 to !llvm.ptr
    llvm.br ^bb3(%3 : i32)
  ^bb3(%14: i32):  // 2 preds: ^bb2, ^bb20
    %15 = llvm.icmp "slt" %14, %5 : i32
    llvm.cond_br %15, ^bb4, ^bb21
  ^bb4:  // pred: ^bb3
    %16 = llvm.sdiv %14, %arg20  : i32
    %17 = llvm.srem %14, %arg20  : i32
    %18 = llvm.sub %16, %arg21  : i32
    %19 = llvm.sub %17, %arg22  : i32
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %13, %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %13, %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.extractvalue %28[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.load %29 : !llvm.ptr -> f32
    llvm.br ^bb5(%3, %0 : i32, f32)
  ^bb5(%31: i32, %32: f32):  // 2 preds: ^bb4, ^bb19
    %33 = llvm.icmp "slt" %31, %arg6 : i32
    llvm.cond_br %33, ^bb6, ^bb20
  ^bb6:  // pred: ^bb5
    %34 = llvm.mul %31, %arg9  : i32
    %35 = llvm.add %11, %34  : i32
    %36 = llvm.mul %31, %arg2  : i32
    llvm.br ^bb7(%3, %32 : i32, f32)
  ^bb7(%37: i32, %38: f32):  // 2 preds: ^bb6, ^bb18
    %39 = llvm.icmp "slt" %37, %arg11 : i32
    llvm.cond_br %39, ^bb8, ^bb19
  ^bb8:  // pred: ^bb7
    %40 = llvm.add %18, %37  : i32
    %41 = llvm.icmp "slt" %40, %3 : i32
    %42 = llvm.icmp "sge" %40, %arg4 : i32
    %43 = llvm.or %41, %42  : i1
    llvm.cond_br %43, ^bb9(%38 : f32), ^bb10
  ^bb9(%44: f32):  // 2 preds: ^bb8, ^bb11
    llvm.br ^bb17(%44 : f32)
  ^bb10:  // pred: ^bb8
    llvm.br ^bb11(%3, %38 : i32, f32)
  ^bb11(%45: i32, %46: f32):  // 2 preds: ^bb10, ^bb16
    %47 = llvm.icmp "slt" %45, %arg12 : i32
    llvm.cond_br %47, ^bb12, ^bb9(%46 : f32)
  ^bb12:  // pred: ^bb11
    %48 = llvm.add %19, %45  : i32
    %49 = llvm.icmp "slt" %48, %3 : i32
    %50 = llvm.icmp "sge" %48, %arg5 : i32
    %51 = llvm.or %49, %50  : i1
    llvm.cond_br %51, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    llvm.br ^bb15(%46 : f32)
  ^bb14:  // pred: ^bb12
    %52 = llvm.mul %37, %arg10  : i32
    %53 = llvm.add %45, %52  : i32
    %54 = llvm.add %53, %35  : i32
    %55 = llvm.sext %54 : i32 to i64
    %56 = llvm.mul %55, %2  : i64
    %57 = llvm.add %arg7, %56  : i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr
    %59 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %67[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.load %68 : !llvm.ptr -> f32
    %70 = llvm.mul %40, %arg3  : i32
    %71 = llvm.add %48, %70  : i32
    %72 = llvm.add %71, %36  : i32
    %73 = llvm.sext %72 : i32 to i64
    %74 = llvm.mul %73, %2  : i64
    %75 = llvm.add %arg0, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.load %86 : !llvm.ptr -> f32
    %88 = llvm.fmul %87, %69  : f32
    %89 = llvm.fadd %46, %88  : f32
    llvm.br ^bb15(%89 : f32)
  ^bb15(%90: f32):  // 2 preds: ^bb13, ^bb14
    llvm.br ^bb16
  ^bb16:  // pred: ^bb15
    %91 = llvm.add %45, %1  : i32
    llvm.br ^bb11(%91, %90 : i32, f32)
  ^bb17(%92: f32):  // pred: ^bb9
    llvm.br ^bb18
  ^bb18:  // pred: ^bb17
    %93 = llvm.add %37, %1  : i32
    llvm.br ^bb7(%93, %92 : i32, f32)
  ^bb19:  // pred: ^bb7
    %94 = llvm.add %31, %1  : i32
    llvm.br ^bb5(%94, %38 : i32, f32)
  ^bb20:  // pred: ^bb5
    %95 = llvm.fadd %32, %30  : f32
    %96 = llvm.mul %16, %arg18  : i32
    %97 = llvm.add %12, %96  : i32
    %98 = llvm.add %97, %17  : i32
    %99 = llvm.sext %98 : i32 to i64
    %100 = llvm.mul %99, %2  : i64
    %101 = llvm.add %arg15, %100  : i64
    %102 = llvm.inttoptr %101 : i64 to !llvm.ptr
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %104 = llvm.insertvalue %102, %103[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.insertvalue %108, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.insertvalue %110, %109[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %95, %112 : f32, !llvm.ptr
    %113 = llvm.add %14, %1  : i32
    llvm.br ^bb3(%113 : i32)
  ^bb21:  // pred: ^bb3
    %114 = llvm.add %6, %1  : i32
    llvm.br ^bb1(%114 : i32)
  ^bb22:  // pred: ^bb1
    llvm.return
  }
  llvm.func @_mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i64, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i64, %arg15: i64, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface} {
    llvm.call @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22) : (i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32) -> ()
    llvm.return
  }
}

