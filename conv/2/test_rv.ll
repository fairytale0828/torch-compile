; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton_(i64 %0, ptr %1, i64 %2, ptr %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) {
  %12 = insertvalue { i64, ptr } undef, i64 %2, 0
  %13 = insertvalue { i64, ptr } %12, ptr %3, 1
  %14 = insertvalue { i64, ptr } undef, i64 %0, 0
  %15 = insertvalue { i64, ptr } %14, ptr %1, 1
  %16 = mul i32 %8, 1024
  %17 = sext i32 %16 to i64
  %18 = extractvalue { i64, ptr } %15, 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr ptr, ptr %18, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %19, 0
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, ptr %21, 1
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 %17, 2
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 1024, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 1, 4, 0
  %27 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %27, 0
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, ptr %27, 1
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, i64 0, 2
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, i64 1024, 3, 0
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 1, 4, 0
  %33 = sext i32 %16 to i64
  %34 = add i64 %33, 1024
  %35 = call i64 @llvm.smin.i64(i64 %34, i64 784)
  %36 = call i64 @llvm.smax.i64(i64 %35, i64 %33)
  %37 = sub i64 %36, %33
  %38 = insertvalue { ptr, ptr, i64 } undef, ptr %19, 0
  %39 = insertvalue { ptr, ptr, i64 } %38, ptr %21, 1
  %40 = insertvalue { ptr, ptr, i64 } %39, i64 0, 2
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %19, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, ptr %21, 1
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 %17, 2
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, i64 %37, 3, 0
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 1, 4, 0
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %27, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, ptr %27, 1
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 0, 2
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, i64 %37, 3, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 1, 4, 0
  %51 = call ptr @llvm.stacksave()
  %52 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, ptr %52, align 8
  %53 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %52, 1
  %54 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, ptr %54, align 8
  %55 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %54, 1
  %56 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %53, ptr %56, align 8
  %57 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %55, ptr %57, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %56, ptr %57)
  call void @llvm.stackrestore(ptr %51)
  %58 = extractvalue { i64, ptr } %13, 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr ptr, ptr %58, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %59, 0
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, ptr %61, 1
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, i64 0, 2
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 1, 3, 0
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 1, 4, 0
  %67 = getelementptr float, ptr %61, i64 0
  %68 = load float, ptr %67, align 4
  %69 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %70 = ptrtoint ptr %69 to i64
  %71 = add i64 %70, 63
  %72 = urem i64 %71, 64
  %73 = sub i64 %71, %72
  %74 = inttoptr i64 %73 to ptr
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %69, 0
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, ptr %74, 1
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 0, 2
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 1024, 3, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 1, 4, 0
  br label %80

80:                                               ; preds = %83, %11
  %81 = phi i64 [ %85, %83 ], [ 0, %11 ]
  %82 = icmp slt i64 %81, 1024
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr float, ptr %74, i64 %81
  store float %68, ptr %84, align 4
  %85 = add i64 %81, 1
  br label %80

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %90, %86
  %88 = phi i64 [ %97, %90 ], [ 0, %86 ]
  %89 = icmp slt i64 %88, 1024
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = getelementptr float, ptr %27, i64 %88
  %92 = load float, ptr %91, align 4
  %93 = getelementptr float, ptr %74, i64 %88
  %94 = load float, ptr %93, align 4
  %95 = fadd float %92, %94
  %96 = getelementptr float, ptr %27, i64 %88
  store float %95, ptr %96, align 4
  %97 = add i64 %88, 1
  br label %87

98:                                               ; preds = %87
  %99 = sext i32 %16 to i64
  %100 = add i64 %99, 1024
  %101 = call i64 @llvm.smin.i64(i64 %100, i64 784)
  %102 = call i64 @llvm.smax.i64(i64 %101, i64 %99)
  %103 = sub i64 %102, %99
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %27, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, ptr %27, 1
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 0, 2
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 %103, 3, 0
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 1, 4, 0
  %109 = insertvalue { ptr, ptr, i64 } undef, ptr %19, 0
  %110 = insertvalue { ptr, ptr, i64 } %109, ptr %21, 1
  %111 = insertvalue { ptr, ptr, i64 } %110, i64 0, 2
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %19, 0
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, ptr %21, 1
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 %17, 2
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 %103, 3, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 1, 4, 0
  %117 = call ptr @llvm.stacksave()
  %118 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, ptr %118, align 8
  %119 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %118, 1
  %120 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, ptr %120, align 8
  %121 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %120, 1
  %122 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %119, ptr %122, align 8
  %123 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %121, ptr %123, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %122, ptr %123)
  call void @llvm.stackrestore(ptr %117)
  ret void
}

define void @_mlir_ciface_triton_(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) {
  %10 = load { i64, ptr }, ptr %0, align 8
  %11 = extractvalue { i64, ptr } %10, 0
  %12 = extractvalue { i64, ptr } %10, 1
  %13 = load { i64, ptr }, ptr %1, align 8
  %14 = extractvalue { i64, ptr } %13, 0
  %15 = extractvalue { i64, ptr } %13, 1
  call void @triton_(i64 %11, ptr %12, i64 %14, ptr %15, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
