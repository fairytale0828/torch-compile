; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton_(i64 %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr %5, i64 %6, ptr %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) {
  %16 = insertvalue { i64, ptr } undef, i64 %6, 0
  %17 = insertvalue { i64, ptr } %16, ptr %7, 1
  %18 = insertvalue { i64, ptr } undef, i64 %4, 0
  %19 = insertvalue { i64, ptr } %18, ptr %5, 1
  %20 = insertvalue { i64, ptr } undef, i64 %2, 0
  %21 = insertvalue { i64, ptr } %20, ptr %3, 1
  %22 = insertvalue { i64, ptr } undef, i64 %0, 0
  %23 = insertvalue { i64, ptr } %22, ptr %1, 1
  %24 = mul i32 %12, 16
  %25 = sext i32 %24 to i64
  %26 = extractvalue { i64, ptr } %23, 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr ptr, ptr %26, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %27, 0
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, ptr %29, 1
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 %25, 2
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 16, 3, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 1, 4, 0
  %35 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %35, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, ptr %35, 1
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, i64 0, 2
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, i64 16, 3, 0
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 1, 4, 0
  %41 = sext i32 %24 to i64
  %42 = add i64 %41, 16
  %43 = call i64 @llvm.smin.i64(i64 %42, i64 10)
  %44 = call i64 @llvm.smax.i64(i64 %43, i64 %41)
  %45 = sub i64 %44, %41
  %46 = insertvalue { ptr, ptr, i64 } undef, ptr %27, 0
  %47 = insertvalue { ptr, ptr, i64 } %46, ptr %29, 1
  %48 = insertvalue { ptr, ptr, i64 } %47, i64 0, 2
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %27, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, ptr %29, 1
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %25, 2
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %45, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 1, 4, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %35, 0
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, ptr %35, 1
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 0, 2
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %45, 3, 0
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 1, 4, 0
  %59 = call ptr @llvm.stacksave.p0()
  %60 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %60, align 8
  %61 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %60, 1
  %62 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, ptr %62, align 8
  %63 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %62, 1
  %64 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %61, ptr %64, align 8
  %65 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %63, ptr %65, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %64, ptr %65)
  call void @llvm.stackrestore.p0(ptr %59)
  %66 = sext i32 %24 to i64
  %67 = extractvalue { i64, ptr } %21, 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr ptr, ptr %67, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, ptr %70, 1
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 %66, 2
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, i64 16, 3, 0
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, i64 1, 4, 0
  %76 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %76, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, ptr %76, 1
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 0, 2
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 16, 3, 0
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 1, 4, 0
  %82 = sext i32 %24 to i64
  %83 = add i64 %82, 16
  %84 = call i64 @llvm.smin.i64(i64 %83, i64 10)
  %85 = call i64 @llvm.smax.i64(i64 %84, i64 %82)
  %86 = sub i64 %85, %82
  %87 = insertvalue { ptr, ptr, i64 } undef, ptr %68, 0
  %88 = insertvalue { ptr, ptr, i64 } %87, ptr %70, 1
  %89 = insertvalue { ptr, ptr, i64 } %88, i64 0, 2
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, ptr %70, 1
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, i64 %66, 2
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, i64 %86, 3, 0
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 1, 4, 0
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %76, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, ptr %76, 1
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, i64 0, 2
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, i64 %86, 3, 0
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 1, 4, 0
  %100 = call ptr @llvm.stacksave.p0()
  %101 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, ptr %101, align 8
  %102 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %101, 1
  %103 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %99, ptr %103, align 8
  %104 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %103, 1
  %105 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %102, ptr %105, align 8
  %106 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %104, ptr %106, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %105, ptr %106)
  call void @llvm.stackrestore.p0(ptr %100)
  %107 = sext i32 %24 to i64
  %108 = extractvalue { i64, ptr } %19, 1
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr ptr, ptr %108, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %109, 0
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, ptr %111, 1
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 %107, 2
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 16, 3, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 1, 4, 0
  %117 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %117, 0
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, ptr %117, 1
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, i64 0, 2
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, i64 16, 3, 0
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 1, 4, 0
  %123 = sext i32 %24 to i64
  %124 = add i64 %123, 16
  %125 = call i64 @llvm.smin.i64(i64 %124, i64 10)
  %126 = call i64 @llvm.smax.i64(i64 %125, i64 %123)
  %127 = sub i64 %126, %123
  %128 = insertvalue { ptr, ptr, i64 } undef, ptr %109, 0
  %129 = insertvalue { ptr, ptr, i64 } %128, ptr %111, 1
  %130 = insertvalue { ptr, ptr, i64 } %129, i64 0, 2
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %109, 0
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, ptr %111, 1
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, i64 %107, 2
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 %127, 3, 0
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 1, 4, 0
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %117, 0
  %137 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, ptr %117, 1
  %138 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, i64 0, 2
  %139 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %138, i64 %127, 3, 0
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, i64 1, 4, 0
  %141 = call ptr @llvm.stacksave.p0()
  %142 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, ptr %142, align 8
  %143 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %142, 1
  %144 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, ptr %144, align 8
  %145 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %144, 1
  %146 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %143, ptr %146, align 8
  %147 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %145, ptr %147, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %146, ptr %147)
  call void @llvm.stackrestore.p0(ptr %141)
  br label %148

148:                                              ; preds = %151, %15
  %149 = phi i64 [ %158, %151 ], [ 0, %15 ]
  %150 = icmp slt i64 %149, 16
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = getelementptr float, ptr %35, i64 %149
  %153 = load float, ptr %152, align 4
  %154 = getelementptr float, ptr %76, i64 %149
  %155 = load float, ptr %154, align 4
  %156 = fadd float %153, %155
  %157 = getelementptr float, ptr %35, i64 %149
  store float %156, ptr %157, align 4
  %158 = add i64 %149, 1
  br label %148

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %163, %159
  %161 = phi i64 [ %170, %163 ], [ 0, %159 ]
  %162 = icmp slt i64 %161, 16
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = getelementptr float, ptr %35, i64 %161
  %165 = load float, ptr %164, align 4
  %166 = getelementptr float, ptr %117, i64 %161
  %167 = load float, ptr %166, align 4
  %168 = fadd float %165, %167
  %169 = getelementptr float, ptr %35, i64 %161
  store float %168, ptr %169, align 4
  %170 = add i64 %161, 1
  br label %160

171:                                              ; preds = %160
  %172 = sext i32 %24 to i64
  %173 = extractvalue { i64, ptr } %17, 1
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr ptr, ptr %173, i32 1
  %176 = load ptr, ptr %175, align 8
  %177 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %174, 0
  %178 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %177, ptr %176, 1
  %179 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %178, i64 %172, 2
  %180 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %179, i64 16, 3, 0
  %181 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %180, i64 1, 4, 0
  %182 = sext i32 %24 to i64
  %183 = add i64 %182, 16
  %184 = call i64 @llvm.smin.i64(i64 %183, i64 10)
  %185 = call i64 @llvm.smax.i64(i64 %184, i64 %182)
  %186 = sub i64 %185, %182
  %187 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %35, 0
  %188 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %187, ptr %35, 1
  %189 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %188, i64 0, 2
  %190 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %189, i64 %186, 3, 0
  %191 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %190, i64 1, 4, 0
  %192 = insertvalue { ptr, ptr, i64 } undef, ptr %174, 0
  %193 = insertvalue { ptr, ptr, i64 } %192, ptr %176, 1
  %194 = insertvalue { ptr, ptr, i64 } %193, i64 0, 2
  %195 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %174, 0
  %196 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %195, ptr %176, 1
  %197 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %196, i64 %172, 2
  %198 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %197, i64 %186, 3, 0
  %199 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %198, i64 1, 4, 0
  %200 = call ptr @llvm.stacksave.p0()
  %201 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %191, ptr %201, align 8
  %202 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %201, 1
  %203 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %199, ptr %203, align 8
  %204 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %203, 1
  %205 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %202, ptr %205, align 8
  %206 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %204, ptr %206, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %205, ptr %206)
  call void @llvm.stackrestore.p0(ptr %200)
  ret void
}

define void @_mlir_ciface_triton_(ptr %0, ptr %1, ptr %2, ptr %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) {
  %12 = load { i64, ptr }, ptr %0, align 8
  %13 = extractvalue { i64, ptr } %12, 0
  %14 = extractvalue { i64, ptr } %12, 1
  %15 = load { i64, ptr }, ptr %1, align 8
  %16 = extractvalue { i64, ptr } %15, 0
  %17 = extractvalue { i64, ptr } %15, 1
  %18 = load { i64, ptr }, ptr %2, align 8
  %19 = extractvalue { i64, ptr } %18, 0
  %20 = extractvalue { i64, ptr } %18, 1
  %21 = load { i64, ptr }, ptr %3, align 8
  %22 = extractvalue { i64, ptr } %21, 0
  %23 = extractvalue { i64, ptr } %21, 1
  call void @triton_(i64 %13, ptr %14, i64 %16, ptr %17, i64 %19, ptr %20, i64 %22, ptr %23, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
