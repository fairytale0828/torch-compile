module {
  llvm.func @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i64, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i64, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32, %arg28: i32, %arg29: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.mlir.constant(4 : i64) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mul %arg21, %arg22  : i32
    llvm.br ^bb1(%3 : i32)
  ^bb1(%6: i32):  // 2 preds: ^bb0, ^bb21
    %7 = llvm.icmp "slt" %6, %arg15 : i32
    llvm.cond_br %7, ^bb2, ^bb22
  ^bb2:  // pred: ^bb1
    %8 = llvm.mul %6, %arg9  : i32
    %9 = llvm.mul %6, %arg18  : i32
    llvm.br ^bb3(%3 : i32)
  ^bb3(%10: i32):  // 2 preds: ^bb2, ^bb20
    %11 = llvm.icmp "slt" %10, %5 : i32
    llvm.cond_br %11, ^bb4, ^bb21
  ^bb4:  // pred: ^bb3
    %12 = llvm.sdiv %10, %arg22  : i32
    %13 = llvm.srem %10, %arg22  : i32
    %14 = llvm.mul %12, %arg23  : i32
    %15 = llvm.sub %14, %arg25  : i32
    %16 = llvm.mul %13, %arg24  : i32
    %17 = llvm.sub %16, %arg26  : i32
    llvm.br ^bb5(%3, %0 : i32, f32)
  ^bb5(%18: i32, %19: f32):  // 2 preds: ^bb4, ^bb19
    %20 = llvm.icmp "slt" %18, %arg7 : i32
    llvm.cond_br %20, ^bb6, ^bb20
  ^bb6:  // pred: ^bb5
    %21 = llvm.mul %18, %arg10  : i32
    %22 = llvm.add %8, %21  : i32
    %23 = llvm.mul %18, %arg2  : i32
    llvm.br ^bb7(%3, %19 : i32, f32)
  ^bb7(%24: i32, %25: f32):  // 2 preds: ^bb6, ^bb18
    %26 = llvm.icmp "slt" %24, %arg13 : i32
    llvm.cond_br %26, ^bb8, ^bb19
  ^bb8:  // pred: ^bb7
    %27 = llvm.mul %24, %arg27  : i32
    %28 = llvm.add %15, %27  : i32
    %29 = llvm.icmp "slt" %28, %3 : i32
    %30 = llvm.icmp "sge" %28, %arg5 : i32
    %31 = llvm.or %29, %30  : i1
    llvm.cond_br %31, ^bb9(%25 : f32), ^bb10
  ^bb9(%32: f32):  // 2 preds: ^bb8, ^bb11
    llvm.br ^bb17(%32 : f32)
  ^bb10:  // pred: ^bb8
    llvm.br ^bb11(%3, %25 : i32, f32)
  ^bb11(%33: i32, %34: f32):  // 2 preds: ^bb10, ^bb16
    %35 = llvm.icmp "slt" %33, %arg14 : i32
    llvm.cond_br %35, ^bb12, ^bb9(%34 : f32)
  ^bb12:  // pred: ^bb11
    %36 = llvm.mul %33, %arg28  : i32
    %37 = llvm.add %17, %36  : i32
    %38 = llvm.icmp "slt" %37, %3 : i32
    %39 = llvm.icmp "sge" %37, %arg6 : i32
    %40 = llvm.or %38, %39  : i1
    llvm.cond_br %40, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    llvm.br ^bb15(%34 : f32)
  ^bb14:  // pred: ^bb12
    %41 = llvm.mul %24, %arg11  : i32
    %42 = llvm.mul %33, %arg12  : i32
    %43 = llvm.add %42, %41  : i32
    %44 = llvm.add %43, %22  : i32
    %45 = llvm.sext %44 : i32 to i64
    %46 = llvm.mul %45, %2  : i64
    %47 = llvm.add %arg8, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr
    %49 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.load %58 : !llvm.ptr -> f32
    %60 = llvm.mul %28, %arg3  : i32
    %61 = llvm.mul %37, %arg4  : i32
    %62 = llvm.add %61, %60  : i32
    %63 = llvm.add %62, %23  : i32
    %64 = llvm.sext %63 : i32 to i64
    %65 = llvm.mul %64, %2  : i64
    %66 = llvm.add %arg0, %65  : i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr
    %68 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.insertvalue %67, %68[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.load %77 : !llvm.ptr -> f32
    %79 = llvm.fmul %78, %59  : f32
    %80 = llvm.fadd %34, %79  : f32
    llvm.br ^bb15(%80 : f32)
  ^bb15(%81: f32):  // 2 preds: ^bb13, ^bb14
    llvm.br ^bb16
  ^bb16:  // pred: ^bb15
    %82 = llvm.add %33, %1  : i32
    llvm.br ^bb11(%82, %81 : i32, f32)
  ^bb17(%83: f32):  // pred: ^bb9
    llvm.br ^bb18
  ^bb18:  // pred: ^bb17
    %84 = llvm.add %24, %1  : i32
    llvm.br ^bb7(%84, %83 : i32, f32)
  ^bb19:  // pred: ^bb7
    %85 = llvm.add %18, %1  : i32
    llvm.br ^bb5(%85, %25 : i32, f32)
  ^bb20:  // pred: ^bb5
    %86 = llvm.mul %12, %arg19  : i32
    %87 = llvm.add %9, %86  : i32
    %88 = llvm.mul %13, %arg20  : i32
    %89 = llvm.add %87, %88  : i32
    %90 = llvm.sext %89 : i32 to i64
    %91 = llvm.mul %90, %2  : i64
    %92 = llvm.add %arg16, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr
    %94 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %95 = llvm.insertvalue %93, %94[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.extractvalue %102[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %19, %103 : f32, !llvm.ptr
    %104 = llvm.add %10, %1  : i32
    llvm.br ^bb3(%104 : i32)
  ^bb21:  // pred: ^bb3
    %105 = llvm.add %6, %1  : i32
    llvm.br ^bb1(%105 : i32)
  ^bb22:  // pred: ^bb1
    llvm.return
  }
  llvm.func @_mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(%arg0: i64, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i64, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i64, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32, %arg28: i32, %arg29: i32) attributes {llvm.emit_c_interface} {
    llvm.call @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %arg24, %arg25, %arg26, %arg27, %arg28, %arg29) : (i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> ()
    llvm.return
  }
}

