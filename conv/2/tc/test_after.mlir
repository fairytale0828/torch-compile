module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @triton__0d1d2de(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(784 : index) : i64
    %2 = llvm.mlir.constant(1024 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1024 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.zero : !llvm.ptr
    %8 = llvm.getelementptr %7[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %9 = llvm.ptrtoint %8 : !llvm.ptr to i64
    %10 = llvm.mlir.constant(64 : index) : i64
    %11 = llvm.add %9, %10  : i64
    %12 = llvm.call @malloc(%11) : (i64) -> !llvm.ptr
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.sub %10, %14  : i64
    %16 = llvm.add %13, %15  : i64
    %17 = llvm.urem %16, %10  : i64
    %18 = llvm.sub %16, %17  : i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %12, %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %5, %24[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %6, %25[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%4, %26 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%27: i64, %28: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %29 = llvm.icmp "slt" %27, %2 : i64
    llvm.cond_br %29, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %30 = llvm.trunc %27 : i64 to i32
    %31 = llvm.extractvalue %28[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.getelementptr %31[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %30, %32 : i32, !llvm.ptr
    %33 = llvm.add %27, %3  : i64
    llvm.br ^bb1(%33, %28 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    %34 = llvm.extractvalue %28[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.load %34 : !llvm.ptr -> i32
    %36 = llvm.sext %35 : i32 to i64
    %37 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %38 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %36, %40[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %1, %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.zero : !llvm.ptr
    %47 = llvm.getelementptr %46[784] : (!llvm.ptr) -> !llvm.ptr, f32
    %48 = llvm.ptrtoint %47 : !llvm.ptr to i64
    %49 = llvm.mlir.constant(64 : index) : i64
    %50 = llvm.add %48, %49  : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.sub %49, %53  : i64
    %55 = llvm.add %52, %54  : i64
    %56 = llvm.urem %55, %49  : i64
    %57 = llvm.sub %55, %56  : i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr
    %59 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %51, %59[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %1, %63[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %45, %64[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%4 : i64)
  ^bb4(%66: i64):  // 2 preds: ^bb3, ^bb5
    %67 = llvm.icmp "slt" %66, %1 : i64
    llvm.cond_br %67, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %68 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %68[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %71 = llvm.getelementptr %70[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %72 = llvm.load %71 : !llvm.ptr -> f32
    %73 = llvm.getelementptr %58[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %72, %73 : f32, !llvm.ptr
    %74 = llvm.add %66, %3  : i64
    llvm.br ^bb4(%74 : i64)
  ^bb6:  // pred: ^bb4
    %75 = llvm.mlir.constant(1024 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.zero : !llvm.ptr
    %78 = llvm.getelementptr %77[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %79 = llvm.ptrtoint %78 : !llvm.ptr to i64
    %80 = llvm.mlir.constant(64 : index) : i64
    %81 = llvm.add %79, %80  : i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr
    %83 = llvm.ptrtoint %82 : !llvm.ptr to i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.sub %80, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.urem %86, %80  : i64
    %88 = llvm.sub %86, %87  : i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr
    %90 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.insertvalue %82, %90[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %75, %94[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %76, %95[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(1024 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.zero : !llvm.ptr
    %100 = llvm.getelementptr %99[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.mlir.constant(64 : index) : i64
    %103 = llvm.add %101, %102  : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %102, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.urem %108, %102  : i64
    %110 = llvm.sub %108, %109  : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr
    %112 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %97, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %98, %117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%119: i64):  // 2 preds: ^bb6, ^bb8
    %120 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %120, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %121 = llvm.getelementptr %111[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %0, %121 : f32, !llvm.ptr
    %122 = llvm.add %119, %3  : i64
    llvm.br ^bb7(%122 : i64)
  ^bb9:  // pred: ^bb7
    %123 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.insertvalue %104, %123[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %111, %124[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %1, %127[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.insertvalue %129, %128[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mul %1, %131  : i64
    %133 = llvm.mlir.zero : !llvm.ptr
    %134 = llvm.getelementptr %133[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %135 = llvm.ptrtoint %134 : !llvm.ptr to i64
    %136 = llvm.mul %132, %135  : i64
    "llvm.intr.memcpy"(%111, %58, %136) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %137 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %138 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.insertvalue %143, %142[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.insertvalue %145, %144[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.load %147 : !llvm.ptr -> f32
    llvm.br ^bb10(%4 : i64)
  ^bb10(%149: i64):  // 2 preds: ^bb9, ^bb11
    %150 = llvm.icmp "slt" %149, %2 : i64
    llvm.cond_br %150, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %151 = llvm.getelementptr %89[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %148, %151 : f32, !llvm.ptr
    %152 = llvm.add %149, %3  : i64
    llvm.br ^bb10(%152 : i64)
  ^bb12:  // pred: ^bb10
    llvm.br ^bb13(%4 : i64)
  ^bb13(%153: i64):  // 2 preds: ^bb12, ^bb14
    %154 = llvm.icmp "slt" %153, %2 : i64
    llvm.cond_br %154, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %155 = llvm.getelementptr %111[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %156 = llvm.load %155 : !llvm.ptr -> f32
    %157 = llvm.getelementptr %89[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %158 = llvm.load %157 : !llvm.ptr -> f32
    %159 = llvm.fadd %156, %158  : f32
    %160 = llvm.getelementptr %89[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %159, %160 : f32, !llvm.ptr
    %161 = llvm.add %153, %3  : i64
    llvm.br ^bb13(%161 : i64)
  ^bb15:  // pred: ^bb13
    %162 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %163 = llvm.insertvalue %37, %162[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %37, %163[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %36, %164[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %1, %165[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.insertvalue %167, %166[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %170 = llvm.insertvalue %82, %169[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.insertvalue %89, %170[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %1, %173[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.insertvalue %175, %174[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.intr.stacksave : !llvm.ptr
    %178 = llvm.mlir.constant(1 : i64) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.alloca %179 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %176, %180 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %181 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %182 = llvm.insertvalue %178, %181[0] : !llvm.struct<(i64, ptr)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(i64, ptr)> 
    %184 = llvm.mlir.constant(1 : i64) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.alloca %185 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %168, %186 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %187 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %188 = llvm.insertvalue %184, %187[0] : !llvm.struct<(i64, ptr)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(i64, ptr)> 
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.alloca %190 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %183, %191 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %192 = llvm.alloca %190 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %189, %192 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %193 = llvm.mlir.zero : !llvm.ptr
    %194 = llvm.getelementptr %193[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %195 = llvm.ptrtoint %194 : !llvm.ptr to i64
    llvm.call @memrefCopy(%195, %191, %192) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %177 : !llvm.ptr
    llvm.return
  }
  llvm.func @_mlir_ciface_triton__0d1d2de(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    llvm.call @triton__0d1d2de(%arg0, %arg1, %arg2) : (i64, i64, i32) -> ()
    llvm.return
  }
}

