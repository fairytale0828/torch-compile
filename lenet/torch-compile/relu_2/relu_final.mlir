module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @triton__0d1d2de_2(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(64 : i32) : i32
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(1024 : index) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(1024 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.zero : !llvm.ptr
    %11 = llvm.getelementptr %10[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %12 = llvm.ptrtoint %11 : !llvm.ptr to i64
    %13 = llvm.mlir.constant(64 : index) : i64
    %14 = llvm.add %12, %13  : i64
    %15 = llvm.call @malloc(%14) : (i64) -> !llvm.ptr
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.sub %13, %17  : i64
    %19 = llvm.add %16, %18  : i64
    %20 = llvm.urem %19, %13  : i64
    %21 = llvm.sub %19, %20  : i64
    %22 = llvm.inttoptr %21 : i64 to !llvm.ptr
    %23 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %15, %23[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %8, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %9, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(1024 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.zero : !llvm.ptr
    %33 = llvm.getelementptr %32[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.mlir.constant(64 : index) : i64
    %36 = llvm.add %34, %35  : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr
    %38 = llvm.ptrtoint %37 : !llvm.ptr to i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.sub %35, %39  : i64
    %41 = llvm.add %38, %40  : i64
    %42 = llvm.urem %41, %35  : i64
    %43 = llvm.sub %41, %42  : i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr
    %45 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %37, %45[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %30, %49[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %31, %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%7 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb2
    %53 = llvm.icmp "slt" %52, %6 : i64
    llvm.cond_br %53, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %54 = llvm.getelementptr %44[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %0, %54 : f32, !llvm.ptr
    %55 = llvm.add %52, %5  : i64
    llvm.br ^bb1(%55 : i64)
  ^bb3:  // pred: ^bb1
    %56 = llvm.mlir.constant(1024 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.zero : !llvm.ptr
    %59 = llvm.getelementptr %58[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mlir.constant(64 : index) : i64
    %62 = llvm.add %60, %61  : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.sub %61, %65  : i64
    %67 = llvm.add %64, %66  : i64
    %68 = llvm.urem %67, %61  : i64
    %69 = llvm.sub %67, %68  : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr
    %71 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.insertvalue %63, %71[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %56, %75[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.insertvalue %57, %76[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.mlir.constant(1024 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.zero : !llvm.ptr
    %81 = llvm.getelementptr %80[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.mlir.constant(64 : index) : i64
    %84 = llvm.add %82, %83  : i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.sub %83, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.urem %89, %83  : i64
    %91 = llvm.sub %89, %90  : i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr
    %93 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %94 = llvm.insertvalue %85, %93[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.insertvalue %96, %95[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %78, %97[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %79, %98[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%7 : i64)
  ^bb4(%100: i64):  // 2 preds: ^bb3, ^bb5
    %101 = llvm.icmp "slt" %100, %6 : i64
    llvm.cond_br %101, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %102 = llvm.getelementptr %92[%100] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %1, %102 : i32, !llvm.ptr
    %103 = llvm.add %100, %5  : i64
    llvm.br ^bb4(%103 : i64)
  ^bb6:  // pred: ^bb4
    %104 = llvm.mlir.constant(1024 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.zero : !llvm.ptr
    %107 = llvm.getelementptr %106[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %108 = llvm.ptrtoint %107 : !llvm.ptr to i64
    %109 = llvm.mlir.constant(64 : index) : i64
    %110 = llvm.add %108, %109  : i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr
    %112 = llvm.ptrtoint %111 : !llvm.ptr to i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.sub %109, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.urem %115, %109  : i64
    %117 = llvm.sub %115, %116  : i64
    %118 = llvm.inttoptr %117 : i64 to !llvm.ptr
    %119 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %120 = llvm.insertvalue %111, %119[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %118, %120[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.insertvalue %122, %121[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.insertvalue %104, %123[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %105, %124[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%7, %125 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb7(%126: i64, %127: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb6, ^bb8
    %128 = llvm.icmp "slt" %126, %6 : i64
    llvm.cond_br %128, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %129 = llvm.trunc %126 : i64 to i32
    %130 = llvm.extractvalue %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.getelementptr %130[%126] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %129, %131 : i32, !llvm.ptr
    %132 = llvm.add %126, %5  : i64
    llvm.br ^bb7(%132, %127 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%7 : i64)
  ^bb10(%133: i64):  // 2 preds: ^bb9, ^bb11
    %134 = llvm.icmp "slt" %133, %6 : i64
    llvm.cond_br %134, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %135 = llvm.getelementptr %70[%133] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %4, %135 : i32, !llvm.ptr
    %136 = llvm.add %133, %5  : i64
    llvm.br ^bb10(%136 : i64)
  ^bb12:  // pred: ^bb10
    llvm.br ^bb13(%7 : i64)
  ^bb13(%137: i64):  // 2 preds: ^bb12, ^bb14
    %138 = llvm.icmp "slt" %137, %6 : i64
    llvm.cond_br %138, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %139 = llvm.getelementptr %70[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %140 = llvm.load %139 : !llvm.ptr -> i32
    %141 = llvm.extractvalue %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %143 = llvm.load %142 : !llvm.ptr -> i32
    %144 = llvm.add %140, %143  : i32
    %145 = llvm.getelementptr %70[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %144, %145 : i32, !llvm.ptr
    %146 = llvm.add %137, %5  : i64
    llvm.br ^bb13(%146 : i64)
  ^bb15:  // pred: ^bb13
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.zero : !llvm.ptr
    %149 = llvm.getelementptr %148[1024] : (!llvm.ptr) -> !llvm.ptr, i1
    %150 = llvm.ptrtoint %149 : !llvm.ptr to i64
    %151 = llvm.mlir.constant(64 : index) : i64
    %152 = llvm.add %150, %151  : i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr
    %154 = llvm.ptrtoint %153 : !llvm.ptr to i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.sub %151, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.urem %157, %151  : i64
    %159 = llvm.sub %157, %158  : i64
    %160 = llvm.inttoptr %159 : i64 to !llvm.ptr
    %161 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %162 = llvm.insertvalue %153, %161[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.insertvalue %160, %162[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.insertvalue %164, %163[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %6, %165[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %147, %166[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%7 : i64)
  ^bb16(%168: i64):  // 2 preds: ^bb15, ^bb17
    %169 = llvm.icmp "slt" %168, %6 : i64
    llvm.cond_br %169, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %170 = llvm.getelementptr %160[%168] : (!llvm.ptr, i64) -> !llvm.ptr, i1
    llvm.store %2, %170 : i1, !llvm.ptr
    %171 = llvm.add %168, %5  : i64
    llvm.br ^bb16(%171 : i64)
  ^bb18:  // pred: ^bb16
    %172 = llvm.mlir.constant(1024 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.zero : !llvm.ptr
    %175 = llvm.getelementptr %174[1024] : (!llvm.ptr) -> !llvm.ptr, i1
    %176 = llvm.ptrtoint %175 : !llvm.ptr to i64
    %177 = llvm.mlir.constant(64 : index) : i64
    %178 = llvm.add %176, %177  : i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr
    %180 = llvm.ptrtoint %179 : !llvm.ptr to i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.sub %177, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.urem %183, %177  : i64
    %185 = llvm.sub %183, %184  : i64
    %186 = llvm.inttoptr %185 : i64 to !llvm.ptr
    %187 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %188 = llvm.insertvalue %179, %187[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %172, %191[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %173, %192[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%7 : i64)
  ^bb19(%194: i64):  // 2 preds: ^bb18, ^bb20
    %195 = llvm.icmp "slt" %194, %6 : i64
    llvm.cond_br %195, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %196 = llvm.getelementptr %186[%194] : (!llvm.ptr, i64) -> !llvm.ptr, i1
    llvm.store %3, %196 : i1, !llvm.ptr
    %197 = llvm.add %194, %5  : i64
    llvm.br ^bb19(%197 : i64)
  ^bb21:  // pred: ^bb19
    %198 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.insertvalue %179, %198[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %186, %199[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.insertvalue %201, %200[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %6, %202[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.insertvalue %204, %203[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mul %6, %206  : i64
    %208 = llvm.mlir.zero : !llvm.ptr
    %209 = llvm.getelementptr %208[1] : (!llvm.ptr) -> !llvm.ptr, i1
    %210 = llvm.ptrtoint %209 : !llvm.ptr to i64
    %211 = llvm.mul %207, %210  : i64
    "llvm.intr.memcpy"(%186, %160, %211) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %212 = llvm.mlir.constant(1024 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.zero : !llvm.ptr
    %215 = llvm.getelementptr %214[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %216 = llvm.ptrtoint %215 : !llvm.ptr to i64
    %217 = llvm.mlir.constant(64 : index) : i64
    %218 = llvm.add %216, %217  : i64
    %219 = llvm.call @malloc(%218) : (i64) -> !llvm.ptr
    %220 = llvm.ptrtoint %219 : !llvm.ptr to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %217, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %217  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr
    %227 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %212, %231[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %213, %232[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%7 : i64)
  ^bb22(%234: i64):  // 2 preds: ^bb21, ^bb23
    %235 = llvm.icmp "slt" %234, %6 : i64
    llvm.cond_br %235, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %236 = llvm.getelementptr %70[%234] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %237 = llvm.load %236 : !llvm.ptr -> i32
    %238 = llvm.getelementptr %92[%234] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %239 = llvm.load %238 : !llvm.ptr -> i32
    %240 = llvm.sdiv %237, %239  : i32
    %241 = llvm.getelementptr %226[%234] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %240, %241 : i32, !llvm.ptr
    %242 = llvm.add %234, %5  : i64
    llvm.br ^bb22(%242 : i64)
  ^bb24:  // pred: ^bb22
    %243 = llvm.extractvalue %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.load %243 : !llvm.ptr -> i32
    %245 = llvm.sext %244 : i32 to i64
    %246 = llvm.inttoptr %arg0 : i64 to !llvm.ptr
    %247 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %248 = llvm.insertvalue %246, %247[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %246, %248[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %245, %249[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %6, %250[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.insertvalue %252, %251[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.zero : !llvm.ptr
    %256 = llvm.getelementptr %255[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %257 = llvm.ptrtoint %256 : !llvm.ptr to i64
    %258 = llvm.mlir.constant(64 : index) : i64
    %259 = llvm.add %257, %258  : i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr
    %261 = llvm.ptrtoint %260 : !llvm.ptr to i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.sub %258, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.urem %264, %258  : i64
    %266 = llvm.sub %264, %265  : i64
    %267 = llvm.inttoptr %266 : i64 to !llvm.ptr
    %268 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %269 = llvm.insertvalue %260, %268[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.insertvalue %6, %272[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %254, %273[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%7 : i64)
  ^bb25(%275: i64):  // 2 preds: ^bb24, ^bb26
    %276 = llvm.icmp "slt" %275, %6 : i64
    llvm.cond_br %276, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %277 = llvm.extractvalue %253[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.extractvalue %253[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %277[%278] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %280 = llvm.getelementptr %279[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %281 = llvm.load %280 : !llvm.ptr -> f32
    %282 = llvm.getelementptr %267[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %281, %282 : f32, !llvm.ptr
    %283 = llvm.add %275, %5  : i64
    llvm.br ^bb25(%283 : i64)
  ^bb27:  // pred: ^bb25
    %284 = llvm.mlir.constant(1024 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.zero : !llvm.ptr
    %287 = llvm.getelementptr %286[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %288 = llvm.ptrtoint %287 : !llvm.ptr to i64
    %289 = llvm.mlir.constant(64 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr
    %292 = llvm.ptrtoint %291 : !llvm.ptr to i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.sub %289, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.urem %295, %289  : i64
    %297 = llvm.sub %295, %296  : i64
    %298 = llvm.inttoptr %297 : i64 to !llvm.ptr
    %299 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %300 = llvm.insertvalue %291, %299[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.insertvalue %298, %300[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.insertvalue %302, %301[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %284, %303[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %285, %304[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %307 = llvm.insertvalue %291, %306[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %298, %307[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.insertvalue %309, %308[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.insertvalue %6, %310[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.insertvalue %312, %311[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mul %6, %314  : i64
    %316 = llvm.mlir.zero : !llvm.ptr
    %317 = llvm.getelementptr %316[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %318 = llvm.ptrtoint %317 : !llvm.ptr to i64
    %319 = llvm.mul %315, %318  : i64
    "llvm.intr.memcpy"(%298, %267, %319) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb28(%7 : i64)
  ^bb28(%320: i64):  // 2 preds: ^bb27, ^bb29
    %321 = llvm.icmp "slt" %320, %6 : i64
    llvm.cond_br %321, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %322 = llvm.getelementptr %70[%320] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %4, %322 : i32, !llvm.ptr
    %323 = llvm.add %320, %5  : i64
    llvm.br ^bb28(%323 : i64)
  ^bb30:  // pred: ^bb28
    llvm.br ^bb31(%7 : i64)
  ^bb31(%324: i64):  // 2 preds: ^bb30, ^bb32
    %325 = llvm.icmp "slt" %324, %6 : i64
    llvm.cond_br %325, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %326 = llvm.getelementptr %226[%324] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %327 = llvm.load %326 : !llvm.ptr -> i32
    %328 = llvm.getelementptr %70[%324] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %329 = llvm.load %328 : !llvm.ptr -> i32
    %330 = llvm.add %327, %329  : i32
    %331 = llvm.getelementptr %70[%324] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %330, %331 : i32, !llvm.ptr
    %332 = llvm.add %324, %5  : i64
    llvm.br ^bb31(%332 : i64)
  ^bb33:  // pred: ^bb31
    %333 = llvm.inttoptr %arg1 : i64 to !llvm.ptr
    %334 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %335 = llvm.insertvalue %333, %334[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.insertvalue %333, %335[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.insertvalue %337, %336[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %340 = llvm.insertvalue %339, %338[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.insertvalue %341, %340[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.mlir.constant(1024 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.zero : !llvm.ptr
    %347 = llvm.getelementptr %346[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %348 = llvm.ptrtoint %347 : !llvm.ptr to i64
    %349 = llvm.mlir.constant(64 : index) : i64
    %350 = llvm.add %348, %349  : i64
    %351 = llvm.call @malloc(%350) : (i64) -> !llvm.ptr
    %352 = llvm.ptrtoint %351 : !llvm.ptr to i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.sub %349, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.urem %355, %349  : i64
    %357 = llvm.sub %355, %356  : i64
    %358 = llvm.inttoptr %357 : i64 to !llvm.ptr
    %359 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %360 = llvm.insertvalue %351, %359[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.insertvalue %358, %360[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.insertvalue %362, %361[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %364 = llvm.insertvalue %343, %363[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %365 = llvm.insertvalue %344, %364[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %366 = llvm.insertvalue %344, %365[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %367 = llvm.insertvalue %345, %366[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%7 : i64)
  ^bb34(%368: i64):  // 2 preds: ^bb33, ^bb38
    %369 = llvm.icmp "slt" %368, %6 : i64
    llvm.cond_br %369, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%7 : i64)
  ^bb36(%370: i64):  // 2 preds: ^bb35, ^bb37
    %371 = llvm.icmp "slt" %370, %5 : i64
    llvm.cond_br %371, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %372 = llvm.add %368, %370  : i64
    %373 = llvm.getelementptr %358[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %0, %373 : f32, !llvm.ptr
    %374 = llvm.add %370, %5  : i64
    llvm.br ^bb36(%374 : i64)
  ^bb38:  // pred: ^bb36
    %375 = llvm.add %368, %5  : i64
    llvm.br ^bb34(%375 : i64)
  ^bb39:  // pred: ^bb34
    %376 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %377 = llvm.insertvalue %63, %376[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %378 = llvm.insertvalue %70, %377[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.insertvalue %379, %378[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.mlir.constant(1024 : index) : i64
    %382 = llvm.insertvalue %381, %380[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.insertvalue %383, %382[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.insertvalue %385, %384[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.insertvalue %387, %386[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb40(%7, %367 : i64, !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb40(%389: i64, %390: !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb39, ^bb45
    %391 = llvm.icmp "slt" %389, %6 : i64
    llvm.cond_br %391, ^bb41, ^bb46
  ^bb41:  // pred: ^bb40
    %392 = llvm.getelementptr %186[%389] : (!llvm.ptr, i64) -> !llvm.ptr, i1
    %393 = llvm.load %392 : !llvm.ptr -> i1
    llvm.cond_br %393, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %394 = llvm.add %389, %7  : i64
    %395 = llvm.getelementptr %70[%394] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %396 = llvm.load %395 : !llvm.ptr -> i32
    %397 = llvm.sext %396 : i32 to i64
    %398 = llvm.extractvalue %342[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%397] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %400 = llvm.load %399 : !llvm.ptr -> f32
    %401 = llvm.extractvalue %390[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.add %389, %7  : i64
    %403 = llvm.getelementptr %401[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %400, %403 : f32, !llvm.ptr
    llvm.br ^bb44(%390 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb43:  // pred: ^bb41
    llvm.br ^bb44(%390 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb44(%404: !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb42, ^bb43
    llvm.br ^bb45
  ^bb45:  // pred: ^bb44
    %405 = llvm.add %389, %5  : i64
    llvm.br ^bb40(%405, %404 : i64, !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb46:  // pred: ^bb40
    %406 = llvm.extractvalue %390[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %407 = llvm.extractvalue %390[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %408 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %409 = llvm.insertvalue %406, %408[0] : !llvm.struct<(ptr, ptr, i64)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr, ptr, i64)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr, ptr, i64)> 
    %413 = llvm.extractvalue %390[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %414 = llvm.extractvalue %390[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %415 = llvm.extractvalue %390[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %416 = llvm.extractvalue %390[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.extractvalue %390[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %418 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %419 = llvm.insertvalue %406, %418[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.insertvalue %407, %419[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.insertvalue %421, %420[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.mlir.constant(1024 : index) : i64
    %424 = llvm.insertvalue %423, %422[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.insertvalue %425, %424[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb47(%7 : i64)
  ^bb47(%427: i64):  // 2 preds: ^bb46, ^bb48
    %428 = llvm.icmp "slt" %427, %6 : i64
    llvm.cond_br %428, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %429 = llvm.getelementptr %298[%427] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %430 = llvm.load %429 : !llvm.ptr -> f32
    %431 = llvm.getelementptr %407[%427] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %432 = llvm.load %431 : !llvm.ptr -> f32
    %433 = llvm.fadd %430, %432  : f32
    %434 = llvm.getelementptr %22[%427] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %433, %434 : f32, !llvm.ptr
    %435 = llvm.add %427, %5  : i64
    llvm.br ^bb47(%435 : i64)
  ^bb49:  // pred: ^bb47
    llvm.br ^bb50(%7 : i64)
  ^bb50(%436: i64):  // 2 preds: ^bb49, ^bb51
    %437 = llvm.icmp "slt" %436, %6 : i64
    llvm.cond_br %437, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %438 = llvm.getelementptr %22[%436] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %439 = llvm.load %438 : !llvm.ptr -> f32
    %440 = llvm.getelementptr %44[%436] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %441 = llvm.load %440 : !llvm.ptr -> f32
    %442 = llvm.intr.maximum(%439, %441)  : (f32, f32) -> f32
    %443 = llvm.getelementptr %22[%436] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %442, %443 : f32, !llvm.ptr
    %444 = llvm.add %436, %5  : i64
    llvm.br ^bb50(%444 : i64)
  ^bb52:  // pred: ^bb50
    %445 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %446 = llvm.insertvalue %246, %445[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.insertvalue %246, %446[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.insertvalue %245, %447[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.insertvalue %6, %448[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.insertvalue %450, %449[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %453 = llvm.insertvalue %15, %452[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %22, %453[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.insertvalue %6, %456[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.insertvalue %458, %457[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.intr.stacksave : !llvm.ptr
    %461 = llvm.mlir.constant(1 : i64) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.alloca %462 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %459, %463 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %464 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %465 = llvm.insertvalue %461, %464[0] : !llvm.struct<(i64, ptr)> 
    %466 = llvm.insertvalue %463, %465[1] : !llvm.struct<(i64, ptr)> 
    %467 = llvm.mlir.constant(1 : i64) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.alloca %468 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %451, %469 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %470 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %471 = llvm.insertvalue %467, %470[0] : !llvm.struct<(i64, ptr)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(i64, ptr)> 
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.alloca %473 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %466, %474 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %475 = llvm.alloca %473 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %472, %475 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %476 = llvm.mlir.zero : !llvm.ptr
    %477 = llvm.getelementptr %476[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %478 = llvm.ptrtoint %477 : !llvm.ptr to i64
    llvm.call @memrefCopy(%478, %474, %475) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %460 : !llvm.ptr
    llvm.return
  }
  llvm.func @_mlir_ciface_triton__0d1d2de_2(%arg0: i64, %arg1: i64, %arg2: i32) attributes {llvm.emit_c_interface} {
    llvm.call @triton__0d1d2de_2(%arg0, %arg1, %arg2) : (i64, i64, i32) -> ()
    llvm.return
  }
}

