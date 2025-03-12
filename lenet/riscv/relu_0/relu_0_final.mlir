module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @triton__0d1d2de(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(576 : i32) : i32
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(3456 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(4096 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(4096 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[4096] : (!llvm.ptr) -> !llvm.ptr, f32
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(64 : index) : i64
    %15 = llvm.add %13, %14  : i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.sub %14, %18  : i64
    %20 = llvm.add %17, %19  : i64
    %21 = llvm.urem %20, %14  : i64
    %22 = llvm.sub %20, %21  : i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %16, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %9, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %10, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(4096 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.zero : !llvm.ptr
    %34 = llvm.getelementptr %33[4096] : (!llvm.ptr) -> !llvm.ptr, f32
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.mlir.constant(64 : index) : i64
    %37 = llvm.add %35, %36  : i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr
    %39 = llvm.ptrtoint %38 : !llvm.ptr to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %36, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %36  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr
    %46 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %31, %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %32, %51[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%8 : i64)
  ^bb1(%53: i64):  // 2 preds: ^bb0, ^bb2
    %54 = llvm.icmp "slt" %53, %7 : i64
    llvm.cond_br %54, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %55 = llvm.getelementptr %45[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %0, %55 : f32, !llvm.ptr
    %56 = llvm.add %53, %6  : i64
    llvm.br ^bb1(%56 : i64)
  ^bb3:  // pred: ^bb1
    %57 = llvm.mlir.constant(4096 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.zero : !llvm.ptr
    %60 = llvm.getelementptr %59[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.mlir.constant(64 : index) : i64
    %63 = llvm.add %61, %62  : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr
    %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.sub %62, %66  : i64
    %68 = llvm.add %65, %67  : i64
    %69 = llvm.urem %68, %62  : i64
    %70 = llvm.sub %68, %69  : i64
    %71 = llvm.inttoptr %70 : i64 to !llvm.ptr
    %72 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %73 = llvm.insertvalue %64, %72[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.insertvalue %75, %74[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.insertvalue %57, %76[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %58, %77[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(4096 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.zero : !llvm.ptr
    %82 = llvm.getelementptr %81[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %83 = llvm.ptrtoint %82 : !llvm.ptr to i64
    %84 = llvm.mlir.constant(64 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.sub %84, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.urem %90, %84  : i64
    %92 = llvm.sub %90, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr
    %94 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %95 = llvm.insertvalue %86, %94[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %79, %98[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.insertvalue %80, %99[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%8 : i64)
  ^bb4(%101: i64):  // 2 preds: ^bb3, ^bb5
    %102 = llvm.icmp "slt" %101, %7 : i64
    llvm.cond_br %102, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %103 = llvm.getelementptr %93[%101] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %1, %103 : i32, !llvm.ptr
    %104 = llvm.add %101, %6  : i64
    llvm.br ^bb4(%104 : i64)
  ^bb6:  // pred: ^bb4
    %105 = llvm.mlir.constant(4096 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.zero : !llvm.ptr
    %108 = llvm.getelementptr %107[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.mlir.constant(64 : index) : i64
    %111 = llvm.add %109, %110  : i64
    %112 = llvm.call @malloc(%111) : (i64) -> !llvm.ptr
    %113 = llvm.ptrtoint %112 : !llvm.ptr to i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.sub %110, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.urem %116, %110  : i64
    %118 = llvm.sub %116, %117  : i64
    %119 = llvm.inttoptr %118 : i64 to !llvm.ptr
    %120 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %121 = llvm.insertvalue %112, %120[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %105, %124[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.insertvalue %106, %125[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%8, %126 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb7(%127: i64, %128: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb6, ^bb8
    %129 = llvm.icmp "slt" %127, %7 : i64
    llvm.cond_br %129, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %130 = llvm.trunc %127 : i64 to i32
    %131 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.getelementptr %131[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %130, %132 : i32, !llvm.ptr
    %133 = llvm.add %127, %6  : i64
    llvm.br ^bb7(%133, %128 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%8 : i64)
  ^bb10(%134: i64):  // 2 preds: ^bb9, ^bb11
    %135 = llvm.icmp "slt" %134, %7 : i64
    llvm.cond_br %135, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %136 = llvm.getelementptr %71[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %4, %136 : i32, !llvm.ptr
    %137 = llvm.add %134, %6  : i64
    llvm.br ^bb10(%137 : i64)
  ^bb12:  // pred: ^bb10
    llvm.br ^bb13(%8 : i64)
  ^bb13(%138: i64):  // 2 preds: ^bb12, ^bb14
    %139 = llvm.icmp "slt" %138, %7 : i64
    llvm.cond_br %139, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %140 = llvm.getelementptr %71[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %141 = llvm.load %140 : !llvm.ptr -> i32
    %142 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.getelementptr %142[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %144 = llvm.load %143 : !llvm.ptr -> i32
    %145 = llvm.add %141, %144  : i32
    %146 = llvm.getelementptr %71[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %145, %146 : i32, !llvm.ptr
    %147 = llvm.add %138, %6  : i64
    llvm.br ^bb13(%147 : i64)
  ^bb15:  // pred: ^bb13
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.zero : !llvm.ptr
    %150 = llvm.getelementptr %149[3456] : (!llvm.ptr) -> !llvm.ptr, i1
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    %152 = llvm.mlir.constant(64 : index) : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr
    %155 = llvm.ptrtoint %154 : !llvm.ptr to i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.sub %152, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.urem %158, %152  : i64
    %160 = llvm.sub %158, %159  : i64
    %161 = llvm.inttoptr %160 : i64 to !llvm.ptr
    %162 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %163 = llvm.insertvalue %154, %162[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %161, %163[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.insertvalue %165, %164[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %5, %166[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %148, %167[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%8 : i64)
  ^bb16(%169: i64):  // 2 preds: ^bb15, ^bb17
    %170 = llvm.icmp "slt" %169, %5 : i64
    llvm.cond_br %170, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %171 = llvm.getelementptr %161[%169] : (!llvm.ptr, i64) -> !llvm.ptr, i1
    llvm.store %2, %171 : i1, !llvm.ptr
    %172 = llvm.add %169, %6  : i64
    llvm.br ^bb16(%172 : i64)
  ^bb18:  // pred: ^bb16
    %173 = llvm.mlir.constant(4096 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.zero : !llvm.ptr
    %176 = llvm.getelementptr %175[4096] : (!llvm.ptr) -> !llvm.ptr, i1
    %177 = llvm.ptrtoint %176 : !llvm.ptr to i64
    %178 = llvm.mlir.constant(64 : index) : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.call @malloc(%179) : (i64) -> !llvm.ptr
    %181 = llvm.ptrtoint %180 : !llvm.ptr to i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.sub %178, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.urem %184, %178  : i64
    %186 = llvm.sub %184, %185  : i64
    %187 = llvm.inttoptr %186 : i64 to !llvm.ptr
    %188 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %189 = llvm.insertvalue %180, %188[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %187, %189[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.insertvalue %191, %190[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %173, %192[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %174, %193[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%8 : i64)
  ^bb19(%195: i64):  // 2 preds: ^bb18, ^bb20
    %196 = llvm.icmp "slt" %195, %7 : i64
    llvm.cond_br %196, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %197 = llvm.getelementptr %187[%195] : (!llvm.ptr, i64) -> !llvm.ptr, i1
    llvm.store %3, %197 : i1, !llvm.ptr
    %198 = llvm.add %195, %6  : i64
    llvm.br ^bb19(%198 : i64)
  ^bb21:  // pred: ^bb19
    %199 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %200 = llvm.insertvalue %180, %199[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %187, %200[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.insertvalue %202, %201[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %5, %203[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.insertvalue %205, %204[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mul %5, %207  : i64
    %209 = llvm.mlir.zero : !llvm.ptr
    %210 = llvm.getelementptr %209[1] : (!llvm.ptr) -> !llvm.ptr, i1
    %211 = llvm.ptrtoint %210 : !llvm.ptr to i64
    %212 = llvm.mul %208, %211  : i64
    "llvm.intr.memcpy"(%187, %161, %212) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %213 = llvm.mlir.constant(4096 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.zero : !llvm.ptr
    %216 = llvm.getelementptr %215[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %217 = llvm.ptrtoint %216 : !llvm.ptr to i64
    %218 = llvm.mlir.constant(64 : index) : i64
    %219 = llvm.add %217, %218  : i64
    %220 = llvm.call @malloc(%219) : (i64) -> !llvm.ptr
    %221 = llvm.ptrtoint %220 : !llvm.ptr to i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.sub %218, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.urem %224, %218  : i64
    %226 = llvm.sub %224, %225  : i64
    %227 = llvm.inttoptr %226 : i64 to !llvm.ptr
    %228 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %229 = llvm.insertvalue %220, %228[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %213, %232[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %214, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%8 : i64)
  ^bb22(%235: i64):  // 2 preds: ^bb21, ^bb23
    %236 = llvm.icmp "slt" %235, %7 : i64
    llvm.cond_br %236, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %237 = llvm.getelementptr %71[%235] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %238 = llvm.load %237 : !llvm.ptr -> i32
    %239 = llvm.getelementptr %93[%235] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %240 = llvm.load %239 : !llvm.ptr -> i32
    %241 = llvm.sdiv %238, %240  : i32
    %242 = llvm.getelementptr %227[%235] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %241, %242 : i32, !llvm.ptr
    %243 = llvm.add %235, %6  : i64
    llvm.br ^bb22(%243 : i64)
  ^bb24:  // pred: ^bb22
    %244 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.load %244 : !llvm.ptr -> i32
    %246 = llvm.sext %245 : i32 to i64
    %247 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %248 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %249 = llvm.insertvalue %247, %248[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %247, %249[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %246, %250[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %5, %251[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.insertvalue %253, %252[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.zero : !llvm.ptr
    %257 = llvm.getelementptr %256[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %258 = llvm.ptrtoint %257 : !llvm.ptr to i64
    %259 = llvm.mlir.constant(64 : index) : i64
    %260 = llvm.add %258, %259  : i64
    %261 = llvm.call @malloc(%260) : (i64) -> !llvm.ptr
    %262 = llvm.ptrtoint %261 : !llvm.ptr to i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.sub %259, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.urem %265, %259  : i64
    %267 = llvm.sub %265, %266  : i64
    %268 = llvm.inttoptr %267 : i64 to !llvm.ptr
    %269 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %270 = llvm.insertvalue %261, %269[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.insertvalue %268, %270[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.insertvalue %272, %271[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %5, %273[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.insertvalue %255, %274[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%8 : i64)
  ^bb25(%276: i64):  // 2 preds: ^bb24, ^bb26
    %277 = llvm.icmp "slt" %276, %5 : i64
    llvm.cond_br %277, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %278 = llvm.extractvalue %254[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.extractvalue %254[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.getelementptr %278[%279] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %281 = llvm.getelementptr %280[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %282 = llvm.load %281 : !llvm.ptr -> f32
    %283 = llvm.getelementptr %268[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %282, %283 : f32, !llvm.ptr
    %284 = llvm.add %276, %6  : i64
    llvm.br ^bb25(%284 : i64)
  ^bb27:  // pred: ^bb25
    %285 = llvm.mlir.constant(4096 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.zero : !llvm.ptr
    %288 = llvm.getelementptr %287[4096] : (!llvm.ptr) -> !llvm.ptr, f32
    %289 = llvm.ptrtoint %288 : !llvm.ptr to i64
    %290 = llvm.mlir.constant(64 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr
    %293 = llvm.ptrtoint %292 : !llvm.ptr to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %290, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %290  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr
    %300 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %285, %304[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %286, %305[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mul %31, %307  : i64
    %309 = llvm.mlir.zero : !llvm.ptr
    %310 = llvm.getelementptr %309[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %311 = llvm.ptrtoint %310 : !llvm.ptr to i64
    %312 = llvm.mul %308, %311  : i64
    "llvm.intr.memcpy"(%299, %45, %312) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %313 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %314 = llvm.insertvalue %292, %313[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.insertvalue %299, %314[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.insertvalue %316, %315[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.insertvalue %5, %317[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.insertvalue %319, %318[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mul %5, %321  : i64
    %323 = llvm.mlir.zero : !llvm.ptr
    %324 = llvm.getelementptr %323[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %325 = llvm.ptrtoint %324 : !llvm.ptr to i64
    %326 = llvm.mul %322, %325  : i64
    "llvm.intr.memcpy"(%299, %268, %326) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb28(%8 : i64)
  ^bb28(%327: i64):  // 2 preds: ^bb27, ^bb29
    %328 = llvm.icmp "slt" %327, %7 : i64
    llvm.cond_br %328, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %329 = llvm.getelementptr %71[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %4, %329 : i32, !llvm.ptr
    %330 = llvm.add %327, %6  : i64
    llvm.br ^bb28(%330 : i64)
  ^bb30:  // pred: ^bb28
    llvm.br ^bb31(%8 : i64)
  ^bb31(%331: i64):  // 2 preds: ^bb30, ^bb32
    %332 = llvm.icmp "slt" %331, %7 : i64
    llvm.cond_br %332, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %333 = llvm.getelementptr %227[%331] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %334 = llvm.load %333 : !llvm.ptr -> i32
    %335 = llvm.getelementptr %71[%331] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %336 = llvm.load %335 : !llvm.ptr -> i32
    %337 = llvm.add %334, %336  : i32
    %338 = llvm.getelementptr %71[%331] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %337, %338 : i32, !llvm.ptr
    %339 = llvm.add %331, %6  : i64
    llvm.br ^bb31(%339 : i64)
  ^bb33:  // pred: ^bb31
    %340 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %341 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %342 = llvm.insertvalue %340, %341[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %340, %342[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.insertvalue %344, %343[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %347 = llvm.insertvalue %346, %345[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.insertvalue %348, %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.mlir.constant(4096 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.zero : !llvm.ptr
    %354 = llvm.getelementptr %353[4096] : (!llvm.ptr) -> !llvm.ptr, f32
    %355 = llvm.ptrtoint %354 : !llvm.ptr to i64
    %356 = llvm.mlir.constant(64 : index) : i64
    %357 = llvm.add %355, %356  : i64
    %358 = llvm.call @malloc(%357) : (i64) -> !llvm.ptr
    %359 = llvm.ptrtoint %358 : !llvm.ptr to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %356, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %356  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr
    %366 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %371 = llvm.insertvalue %350, %370[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %372 = llvm.insertvalue %351, %371[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %373 = llvm.insertvalue %351, %372[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %374 = llvm.insertvalue %352, %373[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%8 : i64)
  ^bb34(%375: i64):  // 2 preds: ^bb33, ^bb38
    %376 = llvm.icmp "slt" %375, %7 : i64
    llvm.cond_br %376, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%8 : i64)
  ^bb36(%377: i64):  // 2 preds: ^bb35, ^bb37
    %378 = llvm.icmp "slt" %377, %6 : i64
    llvm.cond_br %378, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %379 = llvm.add %375, %377  : i64
    %380 = llvm.getelementptr %365[%379] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %0, %380 : f32, !llvm.ptr
    %381 = llvm.add %377, %6  : i64
    llvm.br ^bb36(%381 : i64)
  ^bb38:  // pred: ^bb36
    %382 = llvm.add %375, %6  : i64
    llvm.br ^bb34(%382 : i64)
  ^bb39:  // pred: ^bb34
    %383 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %384 = llvm.insertvalue %64, %383[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.insertvalue %71, %384[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.insertvalue %386, %385[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %388 = llvm.mlir.constant(4096 : index) : i64
    %389 = llvm.insertvalue %388, %387[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.insertvalue %390, %389[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.insertvalue %392, %391[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.insertvalue %394, %393[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb40(%8, %374 : i64, !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb40(%396: i64, %397: !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb39, ^bb45
    %398 = llvm.icmp "slt" %396, %7 : i64
    llvm.cond_br %398, ^bb41, ^bb46
  ^bb41:  // pred: ^bb40
    %399 = llvm.getelementptr %187[%396] : (!llvm.ptr, i64) -> !llvm.ptr, i1
    %400 = llvm.load %399 : !llvm.ptr -> i1
    llvm.cond_br %400, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %401 = llvm.add %396, %8  : i64
    %402 = llvm.getelementptr %71[%401] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %403 = llvm.load %402 : !llvm.ptr -> i32
    %404 = llvm.sext %403 : i32 to i64
    %405 = llvm.extractvalue %349[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.getelementptr %405[%404] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %407 = llvm.load %406 : !llvm.ptr -> f32
    %408 = llvm.extractvalue %397[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %409 = llvm.add %396, %8  : i64
    %410 = llvm.getelementptr %408[%409] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %407, %410 : f32, !llvm.ptr
    llvm.br ^bb44(%397 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb43:  // pred: ^bb41
    llvm.br ^bb44(%397 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb44(%411: !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb42, ^bb43
    llvm.br ^bb45
  ^bb45:  // pred: ^bb44
    %412 = llvm.add %396, %6  : i64
    llvm.br ^bb40(%412, %411 : i64, !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb46:  // pred: ^bb40
    %413 = llvm.extractvalue %397[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %414 = llvm.extractvalue %397[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %415 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %416 = llvm.insertvalue %413, %415[0] : !llvm.struct<(ptr, ptr, i64)> 
    %417 = llvm.insertvalue %414, %416[1] : !llvm.struct<(ptr, ptr, i64)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.insertvalue %418, %417[2] : !llvm.struct<(ptr, ptr, i64)> 
    %420 = llvm.extractvalue %397[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %421 = llvm.extractvalue %397[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %422 = llvm.extractvalue %397[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %423 = llvm.extractvalue %397[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %424 = llvm.extractvalue %397[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %425 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %426 = llvm.insertvalue %413, %425[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.insertvalue %414, %426[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.insertvalue %428, %427[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.mlir.constant(4096 : index) : i64
    %431 = llvm.insertvalue %430, %429[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.insertvalue %432, %431[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb47(%8 : i64)
  ^bb47(%434: i64):  // 2 preds: ^bb46, ^bb48
    %435 = llvm.icmp "slt" %434, %7 : i64
    llvm.cond_br %435, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %436 = llvm.getelementptr %299[%434] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %437 = llvm.load %436 : !llvm.ptr -> f32
    %438 = llvm.getelementptr %414[%434] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %439 = llvm.load %438 : !llvm.ptr -> f32
    %440 = llvm.fadd %437, %439  : f32
    %441 = llvm.getelementptr %23[%434] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %440, %441 : f32, !llvm.ptr
    %442 = llvm.add %434, %6  : i64
    llvm.br ^bb47(%442 : i64)
  ^bb49:  // pred: ^bb47
    llvm.br ^bb50(%8 : i64)
  ^bb50(%443: i64):  // 2 preds: ^bb49, ^bb51
    %444 = llvm.icmp "slt" %443, %7 : i64
    llvm.cond_br %444, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %445 = llvm.getelementptr %23[%443] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %446 = llvm.load %445 : !llvm.ptr -> f32
    %447 = llvm.getelementptr %45[%443] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %448 = llvm.load %447 : !llvm.ptr -> f32
    %449 = llvm.intr.maximum(%446, %448)  : (f32, f32) -> f32
    %450 = llvm.getelementptr %23[%443] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %449, %450 : f32, !llvm.ptr
    %451 = llvm.add %443, %6  : i64
    llvm.br ^bb50(%451 : i64)
  ^bb52:  // pred: ^bb50
    %452 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %453 = llvm.insertvalue %247, %452[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %247, %453[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.insertvalue %246, %454[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %456 = llvm.insertvalue %5, %455[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.insertvalue %457, %456[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %460 = llvm.insertvalue %16, %459[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.insertvalue %23, %460[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.insertvalue %462, %461[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %5, %463[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.insertvalue %465, %464[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.intr.stacksave : !llvm.ptr
    %468 = llvm.mlir.constant(1 : i64) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.alloca %469 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %466, %470 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %471 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %472 = llvm.insertvalue %468, %471[0] : !llvm.struct<(i64, ptr)> 
    %473 = llvm.insertvalue %470, %472[1] : !llvm.struct<(i64, ptr)> 
    %474 = llvm.mlir.constant(1 : i64) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.alloca %475 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %458, %476 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %477 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %478 = llvm.insertvalue %474, %477[0] : !llvm.struct<(i64, ptr)> 
    %479 = llvm.insertvalue %476, %478[1] : !llvm.struct<(i64, ptr)> 
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.alloca %480 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %473, %481 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %482 = llvm.alloca %480 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %479, %482 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %483 = llvm.mlir.zero : !llvm.ptr
    %484 = llvm.getelementptr %483[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %485 = llvm.ptrtoint %484 : !llvm.ptr to i64
    llvm.call @memrefCopy(%485, %481, %482) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %467 : !llvm.ptr
    llvm.return
  }
  llvm.func @_mlir_ciface_triton__0d1d2de(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    llvm.call @triton__0d1d2de(%arg0, %arg1, %arg2) : (i64, i64, i32) -> ()
    llvm.return
  }
}

