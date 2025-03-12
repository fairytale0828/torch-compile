; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define void @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i64 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29) {
  %31 = mul i32 %21, %22
  br label %32

32:                                               ; preds = %139, %30
  %33 = phi i32 [ %140, %139 ], [ 0, %30 ]
  %34 = icmp slt i32 %33, %15
  br i1 %34, label %35, label %141

35:                                               ; preds = %32
  %36 = mul i32 %33, %9
  %37 = mul i32 %33, %18
  br label %38

38:                                               ; preds = %123, %35
  %39 = phi i32 [ %138, %123 ], [ 0, %35 ]
  %40 = icmp slt i32 %39, %31
  br i1 %40, label %41, label %139

41:                                               ; preds = %38
  %42 = sdiv i32 %39, %22
  %43 = srem i32 %39, %22
  %44 = mul i32 %42, %23
  %45 = sub i32 %44, %25
  %46 = mul i32 %43, %24
  %47 = sub i32 %46, %26
  br label %48

48:                                               ; preds = %121, %41
  %49 = phi i32 [ %122, %121 ], [ 0, %41 ]
  %50 = phi float [ %58, %121 ], [ 0.000000e+00, %41 ]
  %51 = icmp slt i32 %49, %7
  br i1 %51, label %52, label %123

52:                                               ; preds = %48
  %53 = mul i32 %49, %10
  %54 = add i32 %36, %53
  %55 = mul i32 %49, %2
  br label %56

56:                                               ; preds = %119, %52
  %57 = phi i32 [ %120, %119 ], [ 0, %52 ]
  %58 = phi float [ %118, %119 ], [ %50, %52 ]
  %59 = icmp slt i32 %57, %13
  br i1 %59, label %60, label %121

60:                                               ; preds = %56
  %61 = mul i32 %57, %27
  %62 = add i32 %45, %61
  %63 = icmp slt i32 %62, 0
  %64 = icmp sge i32 %62, %5
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %69, %60
  %67 = phi float [ %71, %69 ], [ %58, %60 ]
  br label %117

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %115, %68
  %70 = phi i32 [ %116, %115 ], [ 0, %68 ]
  %71 = phi float [ %114, %115 ], [ %58, %68 ]
  %72 = icmp slt i32 %70, %14
  br i1 %72, label %73, label %66

73:                                               ; preds = %69
  %74 = mul i32 %70, %28
  %75 = add i32 %47, %74
  %76 = icmp slt i32 %75, 0
  %77 = icmp sge i32 %75, %6
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %113

80:                                               ; preds = %73
  %81 = mul i32 %57, %11
  %82 = mul i32 %70, %12
  %83 = add i32 %82, %81
  %84 = add i32 %83, %54
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = add i64 %8, %86
  %88 = inttoptr i64 %87 to ptr
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %88, 0
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, ptr %88, 1
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 0, 2
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, i64 1, 3, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, i64 1, 4, 0
  %94 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, 1
  %95 = load float, ptr %94, align 4
  %96 = mul i32 %62, %3
  %97 = mul i32 %75, %4
  %98 = add i32 %97, %96
  %99 = add i32 %98, %55
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = add i64 %0, %101
  %103 = inttoptr i64 %102 to ptr
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %103, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, ptr %103, 1
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 0, 2
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 1, 3, 0
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 1, 4, 0
  %109 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, 1
  %110 = load float, ptr %109, align 4
  %111 = fmul float %110, %95
  %112 = fadd float %71, %111
  br label %113

113:                                              ; preds = %79, %80
  %114 = phi float [ %112, %80 ], [ %71, %79 ]
  br label %115

115:                                              ; preds = %113
  %116 = add i32 %70, 1
  br label %69

117:                                              ; preds = %66
  %118 = phi float [ %67, %66 ]
  br label %119

119:                                              ; preds = %117
  %120 = add i32 %57, 1
  br label %56

121:                                              ; preds = %56
  %122 = add i32 %49, 1
  br label %48

123:                                              ; preds = %48
  %124 = mul i32 %42, %19
  %125 = add i32 %37, %124
  %126 = mul i32 %43, %20
  %127 = add i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = add i64 %16, %129
  %131 = inttoptr i64 %130 to ptr
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %131, 0
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, ptr %131, 1
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 0, 2
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 1, 3, 0
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, i64 1, 4, 0
  %137 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  store float %50, ptr %137, align 4
  %138 = add i32 %39, 1
  br label %38

139:                                              ; preds = %38
  %140 = add i32 %33, 1
  br label %32

141:                                              ; preds = %32
  ret void
}

define void @_mlir_ciface_conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i64 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29) {
  call void @conv2d_kernel_0d1de2de34c5678d9101112c131415de16d17de18de1920c212223c24c25de26de27de28de29c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i64 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
