; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton__0d1d2_6(i64 %0, i64 %1, i32 %2) {
  %4 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64), i64 64))
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %5, 63
  %7 = urem i64 %6, 64
  %8 = sub i64 %6, %7
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %9, 1
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 0, 2
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 128, 3, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0
  %15 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64), i64 64))
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 63
  %18 = urem i64 %17, 64
  %19 = sub i64 %17, %18
  %20 = inttoptr i64 %19 to ptr
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, ptr %20, 1
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 0, 2
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 128, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0
  br label %26

26:                                               ; preds = %29, %3
  %27 = phi i64 [ %31, %29 ], [ 0, %3 ]
  %28 = icmp slt i64 %27, 128
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr float, ptr %20, i64 %27
  store float 0.000000e+00, ptr %30, align 4
  %31 = add i64 %27, 1
  br label %26

32:                                               ; preds = %26
  %33 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i64 64))
  %34 = ptrtoint ptr %33 to i64
  %35 = add i64 %34, 63
  %36 = urem i64 %35, 64
  %37 = sub i64 %35, %36
  %38 = inttoptr i64 %37 to ptr
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %33, 0
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, ptr %38, 1
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 0, 2
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 128, 3, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 1, 4, 0
  br label %44

44:                                               ; preds = %48, %32
  %45 = phi i64 [ %52, %48 ], [ 0, %32 ]
  %46 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %46, %48 ], [ %43, %32 ]
  %47 = icmp slt i64 %45, 128
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = trunc i64 %45 to i32
  %50 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, 1
  %51 = getelementptr i32, ptr %50, i64 %45
  store i32 %49, ptr %51, align 4
  %52 = add i64 %45, 1
  br label %44

53:                                               ; preds = %44
  %54 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, 1
  %55 = load i32, ptr %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %1 to ptr
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %57, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, ptr %57, 1
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %56, 2
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, i64 84, 3, 0
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 1, 4, 0
  %63 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64), i64 64))
  %64 = ptrtoint ptr %63 to i64
  %65 = add i64 %64, 63
  %66 = urem i64 %65, 64
  %67 = sub i64 %65, %66
  %68 = inttoptr i64 %67 to ptr
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %63, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, ptr %68, 1
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 0, 2
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 84, 3, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 1, 4, 0
  br label %74

74:                                               ; preds = %77, %53
  %75 = phi i64 [ %84, %77 ], [ 0, %53 ]
  %76 = icmp slt i64 %75, 84
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 1
  %79 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 2
  %80 = getelementptr float, ptr %78, i64 %79
  %81 = getelementptr float, ptr %80, i64 %75
  %82 = load float, ptr %81, align 4
  %83 = getelementptr float, ptr %68, i64 %75
  store float %82, ptr %83, align 4
  %84 = add i64 %75, 1
  br label %74

85:                                               ; preds = %74
  %86 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64), i64 64))
  %87 = ptrtoint ptr %86 to i64
  %88 = add i64 %87, 63
  %89 = urem i64 %88, 64
  %90 = sub i64 %88, %89
  %91 = inttoptr i64 %90 to ptr
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %86, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %91, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 0, 2
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 128, 3, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %91, ptr %20, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 128), i1 false)
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %86, 0
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, ptr %91, 1
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 0, 2
  %100 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %99, i64 84, 3, 0
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %100, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %91, ptr %68, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 84), i1 false)
  %102 = inttoptr i64 %0 to ptr
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %102, 0
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, ptr %102, 1
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, i64 %56, 2
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 84, 3, 0
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 1, 4, 0
  br label %108

108:                                              ; preds = %111, %85
  %109 = phi i64 [ %118, %111 ], [ 0, %85 ]
  %110 = icmp slt i64 %109, 84
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, 1
  %113 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, 2
  %114 = getelementptr float, ptr %112, i64 %113
  %115 = getelementptr float, ptr %114, i64 %109
  %116 = load float, ptr %115, align 4
  %117 = getelementptr float, ptr %68, i64 %109
  store float %116, ptr %117, align 4
  %118 = add i64 %109, 1
  br label %108

119:                                              ; preds = %108
  %120 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64), i64 64))
  %121 = ptrtoint ptr %120 to i64
  %122 = add i64 %121, 63
  %123 = urem i64 %122, 64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to ptr
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %120, 0
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, ptr %125, 1
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, i64 0, 2
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, i64 128, 3, 0
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %125, ptr %20, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 128), i1 false)
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %120, 0
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, ptr %125, 1
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, i64 0, 2
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 84, 3, 0
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %125, ptr %68, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 84), i1 false)
  br label %136

136:                                              ; preds = %139, %119
  %137 = phi i64 [ %146, %139 ], [ 0, %119 ]
  %138 = icmp slt i64 %137, 128
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = getelementptr float, ptr %91, i64 %137
  %141 = load float, ptr %140, align 4
  %142 = getelementptr float, ptr %125, i64 %137
  %143 = load float, ptr %142, align 4
  %144 = fadd float %141, %143
  %145 = getelementptr float, ptr %9, i64 %137
  store float %144, ptr %145, align 4
  %146 = add i64 %137, 1
  br label %136

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %151, %147
  %149 = phi i64 [ %158, %151 ], [ 0, %147 ]
  %150 = icmp slt i64 %149, 128
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = getelementptr float, ptr %9, i64 %149
  %153 = load float, ptr %152, align 4
  %154 = getelementptr float, ptr %20, i64 %149
  %155 = load float, ptr %154, align 4
  %156 = call float @llvm.maximum.f32(float %153, float %155)
  %157 = getelementptr float, ptr %9, i64 %149
  store float %156, ptr %157, align 4
  %158 = add i64 %149, 1
  br label %148

159:                                              ; preds = %148
  %160 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %102, 0
  %161 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, ptr %102, 1
  %162 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %161, i64 %56, 2
  %163 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %162, i64 84, 3, 0
  %164 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %163, i64 1, 4, 0
  %165 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %166 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, ptr %9, 1
  %167 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %166, i64 0, 2
  %168 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %167, i64 84, 3, 0
  %169 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %168, i64 1, 4, 0
  %170 = call ptr @llvm.stacksave.p0()
  %171 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %169, ptr %171, align 8
  %172 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %171, 1
  %173 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %164, ptr %173, align 8
  %174 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %173, 1
  %175 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %172, ptr %175, align 8
  %176 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %174, ptr %176, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %175, ptr %176)
  call void @llvm.stackrestore.p0(ptr %170)
  ret void
}

define void @_mlir_ciface_triton__0d1d2_6(i64 %0, i64 %1, i32 %2) {
  call void @triton__0d1d2_6(i64 %0, i64 %1, i32 %2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximum.f32(float, float) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
