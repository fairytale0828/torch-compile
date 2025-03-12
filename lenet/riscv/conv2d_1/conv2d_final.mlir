module {
  llvm.func @conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i64, %arg14: i64, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.mlir.constant(4 : i64) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mul %arg18, %arg19  : i32
    llvm.br ^bb1(%3 : i32)
  ^bb1(%6: i32):  // 2 preds: ^bb0, ^bb18
    %7 = llvm.icmp "slt" %6, %arg12 : i32
    llvm.cond_br %7, ^bb2, ^bb19
  ^bb2:  // pred: ^bb1
    %8 = llvm.sext %6 : i32 to i64
    %9 = llvm.mul %8, %2  : i64
    %10 = llvm.add %arg13, %9  : i64
    %11 = llvm.mul %6, %arg7  : i32
    %12 = llvm.mul %6, %arg16  : i32
    %13 = llvm.inttoptr %10 : i64 to !llvm.ptr
    llvm.br ^bb3(%3 : i32)
  ^bb3(%14: i32):  // 2 preds: ^bb2, ^bb17
    %15 = llvm.icmp "slt" %14, %5 : i32
    llvm.cond_br %15, ^bb4, ^bb18
  ^bb4:  // pred: ^bb3
    %16 = llvm.sdiv %14, %arg19  : i32
    %17 = llvm.srem %14, %arg19  : i32
    %18 = llvm.sub %16, %arg20  : i32
    %19 = llvm.sub %17, %arg21  : i32
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
  ^bb5(%31: i32, %32: f32):  // 2 preds: ^bb4, ^bb16
    %33 = llvm.icmp "slt" %31, %arg10 : i32
    llvm.cond_br %33, ^bb6, ^bb17
  ^bb6:  // pred: ^bb5
    %34 = llvm.add %18, %31  : i32
    %35 = llvm.icmp "slt" %34, %3 : i32
    %36 = llvm.icmp "sge" %34, %arg4 : i32
    %37 = llvm.or %35, %36  : i1
    llvm.cond_br %37, ^bb7(%32 : f32), ^bb8
  ^bb7(%38: f32):  // 2 preds: ^bb6, ^bb9
    llvm.br ^bb15(%38 : f32)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%3, %32 : i32, f32)
  ^bb9(%39: i32, %40: f32):  // 2 preds: ^bb8, ^bb14
    %41 = llvm.icmp "slt" %39, %arg11 : i32
    llvm.cond_br %41, ^bb10, ^bb7(%40 : f32)
  ^bb10:  // pred: ^bb9
    %42 = llvm.add %19, %39  : i32
    %43 = llvm.icmp "slt" %42, %3 : i32
    %44 = llvm.icmp "sge" %42, %arg5 : i32
    %45 = llvm.or %43, %44  : i1
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.br ^bb13(%40 : f32)
  ^bb12:  // pred: ^bb10
    %46 = llvm.mul %31, %arg9  : i32
    %47 = llvm.add %39, %46  : i32
    %48 = llvm.add %47, %11  : i32
    %49 = llvm.sext %48 : i32 to i64
    %50 = llvm.mul %49, %2  : i64
    %51 = llvm.add %arg6, %50  : i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr
    %53 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.extractvalue %61[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.load %62 : !llvm.ptr -> f32
    %64 = llvm.mul %34, %arg3  : i32
    %65 = llvm.add %42, %64  : i32
    %66 = llvm.sext %65 : i32 to i64
    %67 = llvm.mul %66, %2  : i64
    %68 = llvm.add %arg0, %67  : i64
    %69 = llvm.inttoptr %68 : i64 to !llvm.ptr
    %70 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.extractvalue %78[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.load %79 : !llvm.ptr -> f32
    %81 = llvm.fmul %80, %63  : f32
    %82 = llvm.fadd %40, %81  : f32
    llvm.br ^bb13(%82 : f32)
  ^bb13(%83: f32):  // 2 preds: ^bb11, ^bb12
    llvm.br ^bb14
  ^bb14:  // pred: ^bb13
    %84 = llvm.add %39, %1  : i32
    llvm.br ^bb9(%84, %83 : i32, f32)
  ^bb15(%85: f32):  // pred: ^bb7
    llvm.br ^bb16
  ^bb16:  // pred: ^bb15
    %86 = llvm.add %31, %1  : i32
    llvm.br ^bb5(%86, %85 : i32, f32)
  ^bb17:  // pred: ^bb5
    %87 = llvm.fadd %32, %30  : f32
    %88 = llvm.mul %16, %arg17  : i32
    %89 = llvm.add %12, %88  : i32
    %90 = llvm.add %89, %17  : i32
    %91 = llvm.sext %90 : i32 to i64
    %92 = llvm.mul %91, %2  : i64
    %93 = llvm.add %arg14, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr
    %95 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.insertvalue %94, %95[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %87, %104 : f32, !llvm.ptr
    %105 = llvm.add %14, %1  : i32
    llvm.br ^bb3(%105 : i32)
  ^bb18:  // pred: ^bb3
    %106 = llvm.add %6, %1  : i32
    llvm.br ^bb1(%106 : i32)
  ^bb19:  // pred: ^bb1
    llvm.return
  }
  llvm.func @_mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i64, %arg14: i64, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32) attributes {llvm.emit_c_interface} {
    llvm.call @conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21) : (i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32) -> ()
    llvm.return
  }
}

