module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @triton__0d1d2e_5(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(120 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(128 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(128 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.zero : !llvm.ptr
    %8 = llvm.getelementptr %7[128] : (!llvm.ptr) -> !llvm.ptr, f32
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
    %27 = llvm.mlir.constant(128 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.getelementptr %29[128] : (!llvm.ptr) -> !llvm.ptr, f32
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.mlir.constant(64 : index) : i64
    %33 = llvm.add %31, %32  : i64
    %34 = llvm.call @malloc(%33) : (i64) -> !llvm.ptr
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.sub %32, %36  : i64
    %38 = llvm.add %35, %37  : i64
    %39 = llvm.urem %38, %32  : i64
    %40 = llvm.sub %38, %39  : i64
    %41 = llvm.inttoptr %40 : i64 to !llvm.ptr
    %42 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %34, %42[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %27, %46[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %28, %47[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb2
    %50 = llvm.icmp "slt" %49, %3 : i64
    llvm.cond_br %50, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %51 = llvm.getelementptr %41[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %0, %51 : f32, !llvm.ptr
    %52 = llvm.add %49, %2  : i64
    llvm.br ^bb1(%52 : i64)
  ^bb3:  // pred: ^bb1
    %53 = llvm.mlir.constant(128 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.zero : !llvm.ptr
    %56 = llvm.getelementptr %55[128] : (!llvm.ptr) -> !llvm.ptr, i32
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(64 : index) : i64
    %59 = llvm.add %57, %58  : i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.sub %58, %62  : i64
    %64 = llvm.add %61, %63  : i64
    %65 = llvm.urem %64, %58  : i64
    %66 = llvm.sub %64, %65  : i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr
    %68 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.insertvalue %60, %68[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %53, %72[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %54, %73[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%4, %74 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb4(%75: i64, %76: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb3, ^bb5
    %77 = llvm.icmp "slt" %75, %3 : i64
    llvm.cond_br %77, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %78 = llvm.trunc %75 : i64 to i32
    %79 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%75] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %78, %80 : i32, !llvm.ptr
    %81 = llvm.add %75, %2  : i64
    llvm.br ^bb4(%81, %76 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb6:  // pred: ^bb4
    %82 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.load %82 : !llvm.ptr -> i32
    %84 = llvm.sext %83 : i32 to i64
    %85 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %86 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %84, %88[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %1, %89[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.zero : !llvm.ptr
    %95 = llvm.getelementptr %94[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.mlir.constant(64 : index) : i64
    %98 = llvm.add %96, %97  : i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.sub %97, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.urem %103, %97  : i64
    %105 = llvm.sub %103, %104  : i64
    %106 = llvm.inttoptr %105 : i64 to !llvm.ptr
    %107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %108 = llvm.insertvalue %99, %107[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %1, %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %93, %112[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%114: i64):  // 2 preds: ^bb6, ^bb8
    %115 = llvm.icmp "slt" %114, %1 : i64
    llvm.cond_br %115, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %116 = llvm.extractvalue %92[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.extractvalue %92[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.getelementptr %116[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %119 = llvm.getelementptr %118[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %120 = llvm.load %119 : !llvm.ptr -> f32
    %121 = llvm.getelementptr %106[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %120, %121 : f32, !llvm.ptr
    %122 = llvm.add %114, %2  : i64
    llvm.br ^bb7(%122 : i64)
  ^bb9:  // pred: ^bb7
    %123 = llvm.mlir.constant(128 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.zero : !llvm.ptr
    %126 = llvm.getelementptr %125[128] : (!llvm.ptr) -> !llvm.ptr, f32
    %127 = llvm.ptrtoint %126 : !llvm.ptr to i64
    %128 = llvm.mlir.constant(64 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %128, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.urem %134, %128  : i64
    %136 = llvm.sub %134, %135  : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr
    %138 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %123, %142[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %124, %143[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mul %27, %145  : i64
    %147 = llvm.mlir.zero : !llvm.ptr
    %148 = llvm.getelementptr %147[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %149 = llvm.ptrtoint %148 : !llvm.ptr to i64
    %150 = llvm.mul %146, %149  : i64
    "llvm.intr.memcpy"(%137, %41, %150) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %151 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %152 = llvm.insertvalue %130, %151[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %137, %152[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %1, %155[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mul %1, %159  : i64
    %161 = llvm.mlir.zero : !llvm.ptr
    %162 = llvm.getelementptr %161[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %163 = llvm.ptrtoint %162 : !llvm.ptr to i64
    %164 = llvm.mul %160, %163  : i64
    "llvm.intr.memcpy"(%137, %106, %164) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %165 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %166 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %84, %168[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.insertvalue %1, %169[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.insertvalue %171, %170[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%4 : i64)
  ^bb10(%173: i64):  // 2 preds: ^bb9, ^bb11
    %174 = llvm.icmp "slt" %173, %1 : i64
    llvm.cond_br %174, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %175 = llvm.extractvalue %172[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.extractvalue %172[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.getelementptr %175[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %178 = llvm.getelementptr %177[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %179 = llvm.load %178 : !llvm.ptr -> f32
    %180 = llvm.getelementptr %106[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %179, %180 : f32, !llvm.ptr
    %181 = llvm.add %173, %2  : i64
    llvm.br ^bb10(%181 : i64)
  ^bb12:  // pred: ^bb10
    %182 = llvm.mlir.constant(128 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.zero : !llvm.ptr
    %185 = llvm.getelementptr %184[128] : (!llvm.ptr) -> !llvm.ptr, f32
    %186 = llvm.ptrtoint %185 : !llvm.ptr to i64
    %187 = llvm.mlir.constant(64 : index) : i64
    %188 = llvm.add %186, %187  : i64
    %189 = llvm.call @malloc(%188) : (i64) -> !llvm.ptr
    %190 = llvm.ptrtoint %189 : !llvm.ptr to i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.sub %187, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.urem %193, %187  : i64
    %195 = llvm.sub %193, %194  : i64
    %196 = llvm.inttoptr %195 : i64 to !llvm.ptr
    %197 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.insertvalue %189, %197[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %196, %198[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.insertvalue %200, %199[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %182, %201[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %183, %202[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mul %27, %204  : i64
    %206 = llvm.mlir.zero : !llvm.ptr
    %207 = llvm.getelementptr %206[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %208 = llvm.ptrtoint %207 : !llvm.ptr to i64
    %209 = llvm.mul %205, %208  : i64
    "llvm.intr.memcpy"(%196, %41, %209) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %210 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %211 = llvm.insertvalue %189, %210[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %196, %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.insertvalue %213, %212[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %1, %214[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.insertvalue %216, %215[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mul %1, %218  : i64
    %220 = llvm.mlir.zero : !llvm.ptr
    %221 = llvm.getelementptr %220[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %222 = llvm.ptrtoint %221 : !llvm.ptr to i64
    %223 = llvm.mul %219, %222  : i64
    "llvm.intr.memcpy"(%196, %106, %223) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb13(%4 : i64)
  ^bb13(%224: i64):  // 2 preds: ^bb12, ^bb14
    %225 = llvm.icmp "slt" %224, %3 : i64
    llvm.cond_br %225, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %226 = llvm.getelementptr %137[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %227 = llvm.load %226 : !llvm.ptr -> f32
    %228 = llvm.getelementptr %196[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %229 = llvm.load %228 : !llvm.ptr -> f32
    %230 = llvm.fadd %227, %229  : f32
    %231 = llvm.getelementptr %19[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %230, %231 : f32, !llvm.ptr
    %232 = llvm.add %224, %2  : i64
    llvm.br ^bb13(%232 : i64)
  ^bb15:  // pred: ^bb13
    llvm.br ^bb16(%4 : i64)
  ^bb16(%233: i64):  // 2 preds: ^bb15, ^bb17
    %234 = llvm.icmp "slt" %233, %3 : i64
    llvm.cond_br %234, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %235 = llvm.getelementptr %19[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %236 = llvm.load %235 : !llvm.ptr -> f32
    %237 = llvm.getelementptr %41[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %238 = llvm.load %237 : !llvm.ptr -> f32
    %239 = llvm.intr.maximum(%236, %238)  : (f32, f32) -> f32
    %240 = llvm.getelementptr %19[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %239, %240 : f32, !llvm.ptr
    %241 = llvm.add %233, %2  : i64
    llvm.br ^bb16(%241 : i64)
  ^bb18:  // pred: ^bb16
    %242 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %243 = llvm.insertvalue %165, %242[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %165, %243[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %84, %244[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %1, %245[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.insertvalue %247, %246[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %12, %249[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %19, %250[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %1, %253[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.insertvalue %255, %254[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.intr.stacksave : !llvm.ptr
    %258 = llvm.mlir.constant(1 : i64) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.alloca %259 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %256, %260 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %261 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %262 = llvm.insertvalue %258, %261[0] : !llvm.struct<(i64, ptr)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(i64, ptr)> 
    %264 = llvm.mlir.constant(1 : i64) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.alloca %265 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %248, %266 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %267 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %268 = llvm.insertvalue %264, %267[0] : !llvm.struct<(i64, ptr)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(i64, ptr)> 
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.alloca %270 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %263, %271 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %272 = llvm.alloca %270 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %269, %272 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %273 = llvm.mlir.zero : !llvm.ptr
    %274 = llvm.getelementptr %273[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %275 = llvm.ptrtoint %274 : !llvm.ptr to i64
    llvm.call @memrefCopy(%275, %271, %272) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %257 : !llvm.ptr
    llvm.return
  }
  llvm.func @_mlir_ciface_triton__0d1d2e_5(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    llvm.call @triton__0d1d2e_5(%arg0, %arg1, %arg2) : (i64, i64, i32) -> ()
    llvm.return
  }
}

