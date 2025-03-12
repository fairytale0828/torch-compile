; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define void @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i64 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22) {
  %24 = mul i32 %19, %20
  br label %25

25:                                               ; preds = %137, %23
  %26 = phi i32 [ %138, %137 ], [ 0, %23 ]
  %27 = icmp slt i32 %26, %13
  br i1 %27, label %28, label %139

28:                                               ; preds = %25
  %29 = sext i32 %26 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 %14, %30
  %32 = mul i32 %26, %8
  %33 = mul i32 %26, %17
  %34 = inttoptr i64 %31 to ptr
  br label %35

35:                                               ; preds = %121, %28
  %36 = phi i32 [ %136, %121 ], [ 0, %28 ]
  %37 = icmp slt i32 %36, %24
  br i1 %37, label %38, label %137

38:                                               ; preds = %35
  %39 = sdiv i32 %36, %20
  %40 = srem i32 %36, %20
  %41 = sub i32 %39, %21
  %42 = sub i32 %40, %22
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %34, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %34, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 0, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 1, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 1, 4, 0
  %48 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, 1
  %49 = load float, ptr %48, align 4
  br label %50

50:                                               ; preds = %119, %38
  %51 = phi i32 [ %120, %119 ], [ 0, %38 ]
  %52 = phi float [ %60, %119 ], [ 0.000000e+00, %38 ]
  %53 = icmp slt i32 %51, %6
  br i1 %53, label %54, label %121

54:                                               ; preds = %50
  %55 = mul i32 %51, %9
  %56 = add i32 %32, %55
  %57 = mul i32 %51, %2
  br label %58

58:                                               ; preds = %117, %54
  %59 = phi i32 [ %118, %117 ], [ 0, %54 ]
  %60 = phi float [ %116, %117 ], [ %52, %54 ]
  %61 = icmp slt i32 %59, %11
  br i1 %61, label %62, label %119

62:                                               ; preds = %58
  %63 = add i32 %41, %59
  %64 = icmp slt i32 %63, 0
  %65 = icmp sge i32 %63, %4
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %70, %62
  %68 = phi float [ %72, %70 ], [ %60, %62 ]
  br label %115

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %113, %69
  %71 = phi i32 [ %114, %113 ], [ 0, %69 ]
  %72 = phi float [ %112, %113 ], [ %60, %69 ]
  %73 = icmp slt i32 %71, %12
  br i1 %73, label %74, label %67

74:                                               ; preds = %70
  %75 = add i32 %42, %71
  %76 = icmp slt i32 %75, 0
  %77 = icmp sge i32 %75, %5
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %111

80:                                               ; preds = %74
  %81 = mul i32 %59, %10
  %82 = add i32 %71, %81
  %83 = add i32 %82, %56
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = add i64 %7, %85
  %87 = inttoptr i64 %86 to ptr
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %87, 0
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, ptr %87, 1
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 0, 2
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 1, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, i64 1, 4, 0
  %93 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, 1
  %94 = load float, ptr %93, align 4
  %95 = mul i32 %63, %3
  %96 = add i32 %75, %95
  %97 = add i32 %96, %57
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = add i64 %0, %99
  %101 = inttoptr i64 %100 to ptr
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %101, 0
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, ptr %101, 1
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, i64 0, 2
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, i64 1, 3, 0
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 1, 4, 0
  %107 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, 1
  %108 = load float, ptr %107, align 4
  %109 = fmul float %108, %94
  %110 = fadd float %72, %109
  br label %111

111:                                              ; preds = %79, %80
  %112 = phi float [ %110, %80 ], [ %72, %79 ]
  br label %113

113:                                              ; preds = %111
  %114 = add i32 %71, 1
  br label %70

115:                                              ; preds = %67
  %116 = phi float [ %68, %67 ]
  br label %117

117:                                              ; preds = %115
  %118 = add i32 %59, 1
  br label %58

119:                                              ; preds = %58
  %120 = add i32 %51, 1
  br label %50

121:                                              ; preds = %50
  %122 = fadd float %52, %49
  %123 = mul i32 %39, %18
  %124 = add i32 %33, %123
  %125 = add i32 %124, %40
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = add i64 %15, %127
  %129 = inttoptr i64 %128 to ptr
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %129, 0
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, ptr %129, 1
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, i64 0, 2
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, i64 1, 3, 0
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 1, 4, 0
  %135 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  store float %122, ptr %135, align 4
  %136 = add i32 %36, 1
  br label %35

137:                                              ; preds = %35
  %138 = add i32 %26, 1
  br label %25

139:                                              ; preds = %25
  ret void
}

define void @_mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i64 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22) {
  call void @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17d18de19de20e21c22e23e24c25c26de27de28c29c30c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i64 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
