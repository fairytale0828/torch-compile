; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define void @conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i64 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21) {
  %23 = mul i32 %18, %19
  br label %24

24:                                               ; preds = %125, %22
  %25 = phi i32 [ %126, %125 ], [ 0, %22 ]
  %26 = icmp slt i32 %25, %12
  br i1 %26, label %27, label %127

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %13, %29
  %31 = mul i32 %25, %7
  %32 = mul i32 %25, %16
  %33 = inttoptr i64 %30 to ptr
  br label %34

34:                                               ; preds = %109, %27
  %35 = phi i32 [ %124, %109 ], [ 0, %27 ]
  %36 = icmp slt i32 %35, %23
  br i1 %36, label %37, label %125

37:                                               ; preds = %34
  %38 = sdiv i32 %35, %19
  %39 = srem i32 %35, %19
  %40 = sub i32 %38, %20
  %41 = sub i32 %39, %21
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %33, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, ptr %33, 1
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, i64 0, 2
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 1, 3, 0
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 1, 4, 0
  %47 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, 1
  %48 = load float, ptr %47, align 4
  br label %49

49:                                               ; preds = %107, %37
  %50 = phi i32 [ %108, %107 ], [ 0, %37 ]
  %51 = phi float [ %106, %107 ], [ 0.000000e+00, %37 ]
  %52 = icmp slt i32 %50, %10
  br i1 %52, label %53, label %109

53:                                               ; preds = %49
  %54 = add i32 %40, %50
  %55 = icmp slt i32 %54, 0
  %56 = icmp sge i32 %54, %4
  %57 = or i1 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %61, %53
  %59 = phi float [ %63, %61 ], [ %51, %53 ]
  br label %105

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %103, %60
  %62 = phi i32 [ %104, %103 ], [ 0, %60 ]
  %63 = phi float [ %102, %103 ], [ %51, %60 ]
  %64 = icmp slt i32 %62, %11
  br i1 %64, label %65, label %58

65:                                               ; preds = %61
  %66 = add i32 %41, %62
  %67 = icmp slt i32 %66, 0
  %68 = icmp sge i32 %66, %5
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %101

71:                                               ; preds = %65
  %72 = mul i32 %50, %9
  %73 = add i32 %62, %72
  %74 = add i32 %73, %31
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = add i64 %6, %76
  %78 = inttoptr i64 %77 to ptr
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %78, 0
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, ptr %78, 1
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 0, 2
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 1, 3, 0
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, i64 1, 4, 0
  %84 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 1
  %85 = load float, ptr %84, align 4
  %86 = mul i32 %54, %3
  %87 = add i32 %66, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = add i64 %0, %89
  %91 = inttoptr i64 %90 to ptr
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %91, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %91, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 0, 2
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 1, 3, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 1, 4, 0
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, 1
  %98 = load float, ptr %97, align 4
  %99 = fmul float %98, %85
  %100 = fadd float %63, %99
  br label %101

101:                                              ; preds = %70, %71
  %102 = phi float [ %100, %71 ], [ %63, %70 ]
  br label %103

103:                                              ; preds = %101
  %104 = add i32 %62, 1
  br label %61

105:                                              ; preds = %58
  %106 = phi float [ %59, %58 ]
  br label %107

107:                                              ; preds = %105
  %108 = add i32 %50, 1
  br label %49

109:                                              ; preds = %49
  %110 = fadd float %51, %48
  %111 = mul i32 %38, %17
  %112 = add i32 %32, %111
  %113 = add i32 %112, %39
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = add i64 %14, %115
  %117 = inttoptr i64 %116 to ptr
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %117, 0
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, ptr %117, 1
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, i64 0, 2
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, i64 1, 3, 0
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 1, 4, 0
  %123 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, 1
  store float %110, ptr %123, align 4
  %124 = add i32 %35, 1
  br label %34

125:                                              ; preds = %34
  %126 = add i32 %25, 1
  br label %24

127:                                              ; preds = %24
  ret void
}

define void @_mlir_ciface_conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i64 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21) {
  call void @conv2d_kernel_0d1de2de34c567c8d9101112c13141516d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i64 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
