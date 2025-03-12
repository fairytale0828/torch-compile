module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @triton_(%arg0: i64, %arg1: !llvm.ptr, %arg2: i64, %arg3: !llvm.ptr, %arg4: i64, %arg5: !llvm.ptr, %arg6: i64, %arg7: !llvm.ptr, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1 = llvm.insertvalue %arg6, %0[0] : !llvm.struct<(i64, ptr)> 
    %2 = llvm.insertvalue %arg7, %1[1] : !llvm.struct<(i64, ptr)> 
    %3 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %4 = llvm.insertvalue %arg4, %3[0] : !llvm.struct<(i64, ptr)> 
    %5 = llvm.insertvalue %arg5, %4[1] : !llvm.struct<(i64, ptr)> 
    %6 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %7 = llvm.insertvalue %arg2, %6[0] : !llvm.struct<(i64, ptr)> 
    %8 = llvm.insertvalue %arg3, %7[1] : !llvm.struct<(i64, ptr)> 
    %9 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %10 = llvm.insertvalue %arg0, %9[0] : !llvm.struct<(i64, ptr)> 
    %11 = llvm.insertvalue %arg1, %10[1] : !llvm.struct<(i64, ptr)> 
    %12 = llvm.mlir.constant(16 : i32) : i32
    %13 = llvm.mlir.constant(16 : index) : i64
    %14 = llvm.mlir.constant(10 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mul %arg12, %12 : i32
    %18 = llvm.sext %17 : i32 to i64
    %19 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.extractvalue %11[1] : !llvm.struct<(i64, ptr)> 
    %21 = llvm.load %20 : !llvm.ptr -> !llvm.ptr
    %22 = llvm.getelementptr %20[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
    %24 = llvm.insertvalue %21, %19[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %23, %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %18, %25[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(16 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(16 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.zero : !llvm.ptr
    %34 = llvm.getelementptr %33[16] : (!llvm.ptr) -> !llvm.ptr, f32
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr
    %37 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %31, %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %32, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.sext %17 : i32 to i64
    %45 = llvm.add %44, %13 : i64
    %46 = llvm.intr.smin(%45, %14)  : (i64, i64) -> i64
    %47 = llvm.intr.smax(%46, %44)  : (i64, i64) -> i64
    %48 = llvm.sub %47, %44 : i64
    %49 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %50 = llvm.insertvalue %21, %49[0] : !llvm.struct<(ptr, ptr, i64)> 
    %51 = llvm.insertvalue %23, %50[1] : !llvm.struct<(ptr, ptr, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr, ptr, i64)> 
    %54 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %21, %54[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %23, %55[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.insertvalue %18, %56[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %48, %57[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %36, %61[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %36, %62[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %48, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.intr.stacksave : !llvm.ptr
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.alloca %71 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %60, %72 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %73 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %74 = llvm.insertvalue %70, %73[0] : !llvm.struct<(i64, ptr)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(i64, ptr)> 
    %76 = llvm.mlir.constant(1 : i64) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.alloca %77 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %68, %78 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %79 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %80 = llvm.insertvalue %76, %79[0] : !llvm.struct<(i64, ptr)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(i64, ptr)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.alloca %82 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %75, %83 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %84 = llvm.alloca %82 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %81, %84 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %85 = llvm.mlir.zero : !llvm.ptr
    %86 = llvm.getelementptr %85[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    llvm.call @memrefCopy(%87, %83, %84) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %69 : !llvm.ptr
    %88 = llvm.sext %17 : i32 to i64
    %89 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.extractvalue %8[1] : !llvm.struct<(i64, ptr)> 
    %91 = llvm.load %90 : !llvm.ptr -> !llvm.ptr
    %92 = llvm.getelementptr %90[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %93 = llvm.load %92 : !llvm.ptr -> !llvm.ptr
    %94 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %93, %94[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %88, %95[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(16 : index) : i64
    %98 = llvm.insertvalue %97, %96[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.mlir.constant(16 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.zero : !llvm.ptr
    %104 = llvm.getelementptr %103[16] : (!llvm.ptr) -> !llvm.ptr, f32
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.call @malloc(%105) : (i64) -> !llvm.ptr
    %107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %101, %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %102, %112[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.sext %17 : i32 to i64
    %115 = llvm.add %114, %13 : i64
    %116 = llvm.intr.smin(%115, %14)  : (i64, i64) -> i64
    %117 = llvm.intr.smax(%116, %114)  : (i64, i64) -> i64
    %118 = llvm.sub %117, %114 : i64
    %119 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %120 = llvm.insertvalue %91, %119[0] : !llvm.struct<(ptr, ptr, i64)> 
    %121 = llvm.insertvalue %93, %120[1] : !llvm.struct<(ptr, ptr, i64)> 
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.insertvalue %122, %121[2] : !llvm.struct<(ptr, ptr, i64)> 
    %124 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %125 = llvm.insertvalue %91, %124[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.insertvalue %93, %125[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.insertvalue %88, %126[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %118, %127[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.insertvalue %129, %128[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.insertvalue %106, %131[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %106, %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %118, %135[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.insertvalue %137, %136[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.intr.stacksave : !llvm.ptr
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.alloca %141 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %130, %142 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %143 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %144 = llvm.insertvalue %140, %143[0] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.alloca %147 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %138, %148 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %149 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %150 = llvm.insertvalue %146, %149[0] : !llvm.struct<(i64, ptr)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(i64, ptr)> 
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.alloca %152 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %145, %153 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %154 = llvm.alloca %152 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %151, %154 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %155 = llvm.mlir.zero : !llvm.ptr
    %156 = llvm.getelementptr %155[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %157 = llvm.ptrtoint %156 : !llvm.ptr to i64
    llvm.call @memrefCopy(%157, %153, %154) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %139 : !llvm.ptr
    %158 = llvm.sext %17 : i32 to i64
    %159 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %160 = llvm.extractvalue %5[1] : !llvm.struct<(i64, ptr)> 
    %161 = llvm.load %160 : !llvm.ptr -> !llvm.ptr
    %162 = llvm.getelementptr %160[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %163 = llvm.load %162 : !llvm.ptr -> !llvm.ptr
    %164 = llvm.insertvalue %161, %159[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %163, %164[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %158, %165[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.mlir.constant(16 : index) : i64
    %168 = llvm.insertvalue %167, %166[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.insertvalue %169, %168[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.mlir.constant(16 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.zero : !llvm.ptr
    %174 = llvm.getelementptr %173[16] : (!llvm.ptr) -> !llvm.ptr, f32
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %171, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %172, %182[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.sext %17 : i32 to i64
    %185 = llvm.add %184, %13 : i64
    %186 = llvm.intr.smin(%185, %14)  : (i64, i64) -> i64
    %187 = llvm.intr.smax(%186, %184)  : (i64, i64) -> i64
    %188 = llvm.sub %187, %184 : i64
    %189 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %190 = llvm.insertvalue %161, %189[0] : !llvm.struct<(ptr, ptr, i64)> 
    %191 = llvm.insertvalue %163, %190[1] : !llvm.struct<(ptr, ptr, i64)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr, ptr, i64)> 
    %194 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.insertvalue %161, %194[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %163, %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %158, %196[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %188, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.insertvalue %199, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %202 = llvm.insertvalue %176, %201[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %176, %202[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.insertvalue %204, %203[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.insertvalue %188, %205[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.insertvalue %207, %206[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.intr.stacksave : !llvm.ptr
    %210 = llvm.mlir.constant(1 : i64) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.alloca %211 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %200, %212 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %213 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %214 = llvm.insertvalue %210, %213[0] : !llvm.struct<(i64, ptr)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(i64, ptr)> 
    %216 = llvm.mlir.constant(1 : i64) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.alloca %217 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %208, %218 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %219 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %220 = llvm.insertvalue %216, %219[0] : !llvm.struct<(i64, ptr)> 
    %221 = llvm.insertvalue %218, %220[1] : !llvm.struct<(i64, ptr)> 
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.alloca %222 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %215, %223 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %224 = llvm.alloca %222 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %221, %224 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %225 = llvm.mlir.zero : !llvm.ptr
    %226 = llvm.getelementptr %225[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %227 = llvm.ptrtoint %226 : !llvm.ptr to i64
    llvm.call @memrefCopy(%227, %223, %224) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %209 : !llvm.ptr
    llvm.br ^bb1(%16 : i64)
  ^bb1(%228: i64):  // 2 preds: ^bb0, ^bb2
    %229 = llvm.icmp "slt" %228, %13 : i64
    llvm.cond_br %229, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %230 = llvm.getelementptr %36[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %231 = llvm.load %230 : !llvm.ptr -> f32
    %232 = llvm.getelementptr %106[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %233 = llvm.load %232 : !llvm.ptr -> f32
    %234 = llvm.fadd %231, %233  : f32
    %235 = llvm.getelementptr %36[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %234, %235 : f32, !llvm.ptr
    %236 = llvm.add %228, %15 : i64
    llvm.br ^bb1(%236 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%16 : i64)
  ^bb4(%237: i64):  // 2 preds: ^bb3, ^bb5
    %238 = llvm.icmp "slt" %237, %13 : i64
    llvm.cond_br %238, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %239 = llvm.getelementptr %36[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %240 = llvm.load %239 : !llvm.ptr -> f32
    %241 = llvm.getelementptr %176[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %242 = llvm.load %241 : !llvm.ptr -> f32
    %243 = llvm.fadd %240, %242  : f32
    %244 = llvm.getelementptr %36[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %243, %244 : f32, !llvm.ptr
    %245 = llvm.add %237, %15 : i64
    llvm.br ^bb4(%245 : i64)
  ^bb6:  // pred: ^bb4
    %246 = llvm.sext %17 : i32 to i64
    %247 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %248 = llvm.extractvalue %2[1] : !llvm.struct<(i64, ptr)> 
    %249 = llvm.load %248 : !llvm.ptr -> !llvm.ptr
    %250 = llvm.getelementptr %248[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %251 = llvm.load %250 : !llvm.ptr -> !llvm.ptr
    %252 = llvm.insertvalue %249, %247[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %251, %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %246, %253[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(16 : index) : i64
    %256 = llvm.insertvalue %255, %254[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.insertvalue %257, %256[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.sext %17 : i32 to i64
    %260 = llvm.add %259, %13 : i64
    %261 = llvm.intr.smin(%260, %14)  : (i64, i64) -> i64
    %262 = llvm.intr.smax(%261, %259)  : (i64, i64) -> i64
    %263 = llvm.sub %262, %259 : i64
    %264 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %265 = llvm.insertvalue %36, %264[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %36, %265[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.insertvalue %267, %266[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %263, %268[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.insertvalue %270, %269[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %273 = llvm.insertvalue %249, %272[0] : !llvm.struct<(ptr, ptr, i64)> 
    %274 = llvm.insertvalue %251, %273[1] : !llvm.struct<(ptr, ptr, i64)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr, ptr, i64)> 
    %277 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %278 = llvm.insertvalue %249, %277[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %251, %278[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %246, %279[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.insertvalue %263, %280[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.insertvalue %282, %281[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.intr.stacksave : !llvm.ptr
    %285 = llvm.mlir.constant(1 : i64) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.alloca %286 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %271, %287 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %288 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %289 = llvm.insertvalue %285, %288[0] : !llvm.struct<(i64, ptr)> 
    %290 = llvm.insertvalue %287, %289[1] : !llvm.struct<(i64, ptr)> 
    %291 = llvm.mlir.constant(1 : i64) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.alloca %292 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %283, %293 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %294 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %295 = llvm.insertvalue %291, %294[0] : !llvm.struct<(i64, ptr)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(i64, ptr)> 
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.alloca %297 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %290, %298 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %299 = llvm.alloca %297 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %296, %299 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    llvm.call @memrefCopy(%302, %298, %299) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %284 : !llvm.ptr
    llvm.return
  }
  llvm.func @_mlir_ciface_triton_(%arg0: !llvm.ptr {tt.divisibility = 16 : i32}, %arg1: !llvm.ptr {tt.divisibility = 16 : i32}, %arg2: !llvm.ptr {tt.divisibility = 16 : i32}, %arg3: !llvm.ptr {tt.divisibility = 16 : i32}, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg0 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(i64, ptr)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(i64, ptr)> 
    %3 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %4 = llvm.extractvalue %3[0] : !llvm.struct<(i64, ptr)> 
    %5 = llvm.extractvalue %3[1] : !llvm.struct<(i64, ptr)> 
    %6 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(i64, ptr)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(i64, ptr)> 
    %9 = llvm.load %arg3 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %10 = llvm.extractvalue %9[0] : !llvm.struct<(i64, ptr)> 
    %11 = llvm.extractvalue %9[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @triton_(%1, %2, %4, %5, %7, %8, %10, %11, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10) : (i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32, i32, i32, i32, i32, i32, i32) -> ()
    llvm.return
  }
}

