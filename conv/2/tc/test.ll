; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton__0d1d2de(i64 %0, i64 %1, i32 %2) {
  %4 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %5, 63
  %7 = urem i64 %6, 64
  %8 = sub i64 %6, %7
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %9, 1
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 0, 2
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 1024, 3, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0
  br label %15

15:                                               ; preds = %19, %3
  %16 = phi i64 [ %23, %19 ], [ 0, %3 ]
  %17 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %17, %19 ], [ %14, %3 ]
  %18 = icmp slt i64 %16, 1024
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = trunc i64 %16 to i32
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 1
  %22 = getelementptr i32, ptr %21, i64 %16
  store i32 %20, ptr %22, align 4
  %23 = add i64 %16, 1
  br label %15

24:                                               ; preds = %15
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 1
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %0 to ptr
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %28, 0
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, ptr %28, 1
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, i64 %27, 2
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 784, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 1, 4, 0
  %34 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64), i64 64))
  %35 = ptrtoint ptr %34 to i64
  %36 = add i64 %35, 63
  %37 = urem i64 %36, 64
  %38 = sub i64 %36, %37
  %39 = inttoptr i64 %38 to ptr
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %34, 0
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, ptr %39, 1
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 0, 2
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 784, 3, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, i64 1, 4, 0
  br label %45

45:                                               ; preds = %48, %24
  %46 = phi i64 [ %55, %48 ], [ 0, %24 ]
  %47 = icmp slt i64 %46, 784
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, 1
  %50 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, 2
  %51 = getelementptr float, ptr %49, i64 %50
  %52 = getelementptr float, ptr %51, i64 %46
  %53 = load float, ptr %52, align 4
  %54 = getelementptr float, ptr %39, i64 %46
  store float %53, ptr %54, align 4
  %55 = add i64 %46, 1
  br label %45

56:                                               ; preds = %45
  %57 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %58 = ptrtoint ptr %57 to i64
  %59 = add i64 %58, 63
  %60 = urem i64 %59, 64
  %61 = sub i64 %59, %60
  %62 = inttoptr i64 %61 to ptr
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %57, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, ptr %62, 1
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 0, 2
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 1024, 3, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 1, 4, 0
  %68 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %69 = ptrtoint ptr %68 to i64
  %70 = add i64 %69, 63
  %71 = urem i64 %70, 64
  %72 = sub i64 %70, %71
  %73 = inttoptr i64 %72 to ptr
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, ptr %73, 1
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, i64 0, 2
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 1024, 3, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 1, 4, 0
  br label %79

79:                                               ; preds = %82, %56
  %80 = phi i64 [ %84, %82 ], [ 0, %56 ]
  %81 = icmp slt i64 %80, 1024
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = getelementptr float, ptr %73, i64 %80
  store float 0.000000e+00, ptr %83, align 4
  %84 = add i64 %80, 1
  br label %79

85:                                               ; preds = %79
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, ptr %73, 1
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 0, 2
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 784, 3, 0
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %73, ptr %39, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 784), i1 false)
  %91 = inttoptr i64 %1 to ptr
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %91, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %91, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 0, 2
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 1, 3, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 1, 4, 0
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, 1
  %98 = load float, ptr %97, align 4
  br label %99

99:                                               ; preds = %102, %85
  %100 = phi i64 [ %104, %102 ], [ 0, %85 ]
  %101 = icmp slt i64 %100, 1024
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr float, ptr %62, i64 %100
  store float %98, ptr %103, align 4
  %104 = add i64 %100, 1
  br label %99

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %109, %105
  %107 = phi i64 [ %116, %109 ], [ 0, %105 ]
  %108 = icmp slt i64 %107, 1024
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr float, ptr %73, i64 %107
  %111 = load float, ptr %110, align 4
  %112 = getelementptr float, ptr %62, i64 %107
  %113 = load float, ptr %112, align 4
  %114 = fadd float %111, %113
  %115 = getelementptr float, ptr %62, i64 %107
  store float %114, ptr %115, align 4
  %116 = add i64 %107, 1
  br label %106

117:                                              ; preds = %106
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %28, 0
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, ptr %28, 1
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, i64 %27, 2
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, i64 784, 3, 0
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 1, 4, 0
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %57, 0
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, ptr %62, 1
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, i64 0, 2
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 784, 3, 0
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, i64 1, 4, 0
  %128 = call ptr @llvm.stacksave.p0()
  %129 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, ptr %129, align 8
  %130 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %129, 1
  %131 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, ptr %131, align 8
  %132 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %131, 1
  %133 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %130, ptr %133, align 8
  %134 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %132, ptr %134, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %133, ptr %134)
  call void @llvm.stackrestore.p0(ptr %128)
  ret void
}

define void @_mlir_ciface_triton__0d1d2de(i64 %0, i64 %1, i32 %2) {
  call void @triton__0d1d2de(i64 %0, i64 %1, i32 %2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
