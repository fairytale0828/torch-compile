module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @triton_(%arg0: i64, %arg1: !llvm.ptr, %arg2: i64, %arg3: !llvm.ptr, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1 = llvm.insertvalue %arg2, %0[0] : !llvm.struct<(i64, ptr)> 
    %2 = llvm.insertvalue %arg3, %1[1] : !llvm.struct<(i64, ptr)> 
    %3 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %4 = llvm.insertvalue %arg0, %3[0] : !llvm.struct<(i64, ptr)> 
    %5 = llvm.insertvalue %arg1, %4[1] : !llvm.struct<(i64, ptr)> 
    %6 = llvm.mlir.constant(1024 : i32) : i32
    %7 = llvm.mlir.constant(1024 : index) : i64
    %8 = llvm.mlir.constant(784 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mul %arg8, %6 : i32
    %12 = llvm.sext %11 : i32 to i64
    %13 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.extractvalue %5[1] : !llvm.struct<(i64, ptr)> 
    %15 = llvm.load %14 : !llvm.ptr -> !llvm.ptr
    %16 = llvm.getelementptr %14[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %17 = llvm.load %16 : !llvm.ptr -> !llvm.ptr
    %18 = llvm.insertvalue %15, %13[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %17, %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %12, %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1024 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1024 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.zero : !llvm.ptr
    %28 = llvm.getelementptr %27[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr
    %31 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %25, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %26, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.sext %11 : i32 to i64
    %39 = llvm.add %38, %7 : i64
    %40 = llvm.intr.smin(%39, %8)  : (i64, i64) -> i64
    %41 = llvm.intr.smax(%40, %38)  : (i64, i64) -> i64
    %42 = llvm.sub %41, %38 : i64
    %43 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %44 = llvm.insertvalue %15, %43[0] : !llvm.struct<(ptr, ptr, i64)> 
    %45 = llvm.insertvalue %17, %44[1] : !llvm.struct<(ptr, ptr, i64)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr, ptr, i64)> 
    %48 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %15, %48[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %17, %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %12, %50[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %42, %51[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %56 = llvm.insertvalue %30, %55[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.insertvalue %30, %56[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %42, %59[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.intr.stacksave : !llvm.ptr
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.alloca %65 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %54, %66 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %67 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %68 = llvm.insertvalue %64, %67[0] : !llvm.struct<(i64, ptr)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(i64, ptr)> 
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.alloca %71 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %62, %72 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %73 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %74 = llvm.insertvalue %70, %73[0] : !llvm.struct<(i64, ptr)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(i64, ptr)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.alloca %76 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %69, %77 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %78 = llvm.alloca %76 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %75, %78 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %79 = llvm.mlir.zero : !llvm.ptr
    %80 = llvm.getelementptr %79[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %81 = llvm.ptrtoint %80 : !llvm.ptr to i64
    llvm.call @memrefCopy(%81, %77, %78) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %63 : !llvm.ptr
    %82 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %83 = llvm.extractvalue %2[1] : !llvm.struct<(i64, ptr)> 
    %84 = llvm.load %83 : !llvm.ptr -> !llvm.ptr
    %85 = llvm.getelementptr %83[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %86 = llvm.load %85 : !llvm.ptr -> !llvm.ptr
    %87 = llvm.insertvalue %84, %82[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %86, %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %10, %88[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.getelementptr %86[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %95 = llvm.load %94 : !llvm.ptr -> f32
    %96 = llvm.mlir.constant(1024 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.zero : !llvm.ptr
    %99 = llvm.getelementptr %98[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.mlir.constant(64 : index) : i64
    %102 = llvm.add %100, %101 : i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.sub %101, %105 : i64
    %107 = llvm.add %104, %106 : i64
    %108 = llvm.urem %107, %101  : i64
    %109 = llvm.sub %107, %108 : i64
    %110 = llvm.inttoptr %109 : i64 to !llvm.ptr
    %111 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.insertvalue %103, %111[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %110, %112[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %96, %115[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %97, %116[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%10 : i64)
  ^bb1(%118: i64):  // 2 preds: ^bb0, ^bb2
    %119 = llvm.icmp "slt" %118, %7 : i64
    llvm.cond_br %119, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %120 = llvm.getelementptr %110[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %95, %120 : f32, !llvm.ptr
    %121 = llvm.add %118, %9 : i64
    llvm.br ^bb1(%121 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%10 : i64)
  ^bb4(%122: i64):  // 2 preds: ^bb3, ^bb5
    %123 = llvm.icmp "slt" %122, %7 : i64
    llvm.cond_br %123, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %124 = llvm.getelementptr %30[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %125 = llvm.load %124 : !llvm.ptr -> f32
    %126 = llvm.getelementptr %110[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %127 = llvm.load %126 : !llvm.ptr -> f32
    %128 = llvm.fadd %125, %127  : f32
    %129 = llvm.getelementptr %30[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %128, %129 : f32, !llvm.ptr
    %130 = llvm.add %122, %9 : i64
    llvm.br ^bb4(%130 : i64)
  ^bb6:  // pred: ^bb4
    %131 = llvm.sext %11 : i32 to i64
    %132 = llvm.add %131, %7 : i64
    %133 = llvm.intr.smin(%132, %8)  : (i64, i64) -> i64
    %134 = llvm.intr.smax(%133, %131)  : (i64, i64) -> i64
    %135 = llvm.sub %134, %131 : i64
    %136 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %137 = llvm.insertvalue %30, %136[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %30, %137[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.insertvalue %139, %138[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %135, %140[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %145 = llvm.insertvalue %15, %144[0] : !llvm.struct<(ptr, ptr, i64)> 
    %146 = llvm.insertvalue %17, %145[1] : !llvm.struct<(ptr, ptr, i64)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr, ptr, i64)> 
    %149 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %150 = llvm.insertvalue %15, %149[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %17, %150[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %12, %151[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %135, %152[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.insertvalue %154, %153[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.intr.stacksave : !llvm.ptr
    %157 = llvm.mlir.constant(1 : i64) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.alloca %158 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %143, %159 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %160 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %161 = llvm.insertvalue %157, %160[0] : !llvm.struct<(i64, ptr)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(i64, ptr)> 
    %163 = llvm.mlir.constant(1 : i64) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.alloca %164 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %155, %165 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %163, %166[0] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.alloca %169 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %162, %170 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %171 = llvm.alloca %169 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %168, %171 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %172 = llvm.mlir.zero : !llvm.ptr
    %173 = llvm.getelementptr %172[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %174 = llvm.ptrtoint %173 : !llvm.ptr to i64
    llvm.call @memrefCopy(%174, %170, %171) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %156 : !llvm.ptr
    llvm.return
  }
  llvm.func @_mlir_ciface_triton_(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg0 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(i64, ptr)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(i64, ptr)> 
    %3 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %4 = llvm.extractvalue %3[0] : !llvm.struct<(i64, ptr)> 
    %5 = llvm.extractvalue %3[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @triton_(%1, %2, %4, %5, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8) : (i64, !llvm.ptr, i64, !llvm.ptr, i32, i32, i32, i32, i32, i32, i32) -> ()
    llvm.return
  }
}

