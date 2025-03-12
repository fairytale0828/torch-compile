; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) {
  %11 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %12, 63
  %14 = urem i64 %13, 64
  %15 = sub i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, ptr %16, 1
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 16, 3, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 128, 3, 1
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 128, 4, 0
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  br label %24

24:                                               ; preds = %36, %10
  %25 = phi i64 [ %37, %36 ], [ 0, %10 ]
  %26 = icmp slt i64 %25, 16
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %31, %27
  %29 = phi i64 [ %35, %31 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 128
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = mul i64 %25, 128
  %33 = add i64 %32, %29
  %34 = getelementptr float, ptr %16, i64 %33
  store float 0.000000e+00, ptr %34, align 4
  %35 = add i64 %29, 1
  br label %28

36:                                               ; preds = %28
  %37 = add i64 %25, 1
  br label %24

38:                                               ; preds = %24
  %39 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %40 = ptrtoint ptr %39 to i64
  %41 = add i64 %40, 63
  %42 = urem i64 %41, 64
  %43 = sub i64 %41, %42
  %44 = inttoptr i64 %43 to ptr
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %39, 0
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, ptr %44, 1
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 0, 2
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 16, 3, 0
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, i64 1, 4, 0
  br label %50

50:                                               ; preds = %54, %38
  %51 = phi i64 [ %58, %54 ], [ 0, %38 ]
  %52 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %52, %54 ], [ %49, %38 ]
  %53 = icmp slt i64 %51, 16
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = trunc i64 %51 to i32
  %56 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 1
  %57 = getelementptr i32, ptr %56, i64 %51
  store i32 %55, ptr %57, align 4
  %58 = add i64 %51, 1
  br label %50

59:                                               ; preds = %50
  %60 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i64 64))
  %61 = ptrtoint ptr %60 to i64
  %62 = add i64 %61, 63
  %63 = urem i64 %62, 64
  %64 = sub i64 %62, %63
  %65 = inttoptr i64 %64 to ptr
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %60, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, ptr %65, 1
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, i64 0, 2
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, i64 128, 3, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 1, 4, 0
  br label %71

71:                                               ; preds = %75, %59
  %72 = phi i64 [ %79, %75 ], [ 0, %59 ]
  %73 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %73, %75 ], [ %70, %59 ]
  %74 = icmp slt i64 %72, 128
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = trunc i64 %72 to i32
  %77 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 1
  %78 = getelementptr i32, ptr %77, i64 %72
  store i32 %76, ptr %78, align 4
  %79 = add i64 %72, 1
  br label %71

80:                                               ; preds = %71
  %81 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), i64 64))
  %82 = ptrtoint ptr %81 to i64
  %83 = add i64 %82, 63
  %84 = urem i64 %83, 64
  %85 = sub i64 %83, %84
  %86 = inttoptr i64 %85 to ptr
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %81, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, ptr %86, 1
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 0, 2
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 32, 3, 0
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 1, 4, 0
  br label %92

92:                                               ; preds = %96, %80
  %93 = phi i64 [ %100, %96 ], [ 0, %80 ]
  %94 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %94, %96 ], [ %91, %80 ]
  %95 = icmp slt i64 %93, 32
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = trunc i64 %93 to i32
  %98 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, 1
  %99 = getelementptr i32, ptr %98, i64 %93
  store i32 %97, ptr %99, align 4
  %100 = add i64 %93, 1
  br label %92

101:                                              ; preds = %92
  %102 = mul i32 %8, 32
  %103 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, 1
  %104 = load i32, ptr %103, align 4
  %105 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 1
  %106 = getelementptr i32, ptr %105, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = mul i32 %107, %7
  %109 = add i32 %104, %108
  %110 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 1
  %111 = load i32, ptr %110, align 4
  %112 = mul i32 %111, %7
  %113 = add i32 %104, %112
  %114 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 1
  %115 = load i32, ptr %114, align 4
  %116 = mul i32 %104, %8
  %117 = add i32 %115, %116
  %118 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, 1
  %119 = getelementptr i32, ptr %118, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = mul i32 %120, %8
  %122 = add i32 %115, %121
  %123 = sext i32 %5 to i64
  %124 = call i64 @llvm.smax.i64(i64 %123, i64 0)
  %125 = call i64 @llvm.smin.i64(i64 %124, i64 32)
  %126 = call i64 @llvm.smin.i64(i64 %125, i64 32)
  %127 = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %128 = inttoptr i64 %1 to ptr
  %129 = mul i64 %127, 1
  %130 = getelementptr float, ptr null, i64 %129
  %131 = ptrtoint ptr %130 to i64
  %132 = add i64 %131, 64
  %133 = call ptr @malloc(i64 %132)
  %134 = ptrtoint ptr %133 to i64
  %135 = add i64 %134, 63
  %136 = urem i64 %135, 64
  %137 = sub i64 %135, %136
  %138 = inttoptr i64 %137 to ptr
  %139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %133, 0
  %140 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %139, ptr %138, 1
  %141 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %140, i64 0, 2
  %142 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %141, i64 1, 3, 0
  %143 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %142, i64 %127, 3, 1
  %144 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %143, i64 %127, 4, 0
  %145 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %144, i64 1, 4, 1
  %146 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 512) to i64), i64 64))
  %147 = ptrtoint ptr %146 to i64
  %148 = add i64 %147, 63
  %149 = urem i64 %148, 64
  %150 = sub i64 %148, %149
  %151 = inttoptr i64 %150 to ptr
  %152 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %146, 0
  %153 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %152, ptr %151, 1
  %154 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %153, i64 0, 2
  %155 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %154, i64 16, 3, 0
  %156 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, i64 32, 3, 1
  %157 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %156, i64 32, 4, 0
  %158 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %157, i64 1, 4, 1
  %159 = sext i32 %4 to i64
  %160 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %161 = call i64 @llvm.smin.i64(i64 %160, i64 128)
  %162 = call i64 @llvm.smin.i64(i64 %161, i64 128)
  %163 = call i64 @llvm.smax.i64(i64 %162, i64 0)
  %164 = inttoptr i64 %2 to ptr
  %165 = mul i64 %163, %127
  %166 = getelementptr float, ptr null, i64 %165
  %167 = ptrtoint ptr %166 to i64
  %168 = add i64 %167, 64
  %169 = call ptr @malloc(i64 %168)
  %170 = ptrtoint ptr %169 to i64
  %171 = add i64 %170, 63
  %172 = urem i64 %171, 64
  %173 = sub i64 %171, %172
  %174 = inttoptr i64 %173 to ptr
  %175 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %169, 0
  %176 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %175, ptr %174, 1
  %177 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %176, i64 0, 2
  %178 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %177, i64 %127, 3, 0
  %179 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %178, i64 %163, 3, 1
  %180 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %179, i64 %163, 4, 0
  %181 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %180, i64 1, 4, 1
  %182 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %183 = ptrtoint ptr %182 to i64
  %184 = add i64 %183, 63
  %185 = urem i64 %184, 64
  %186 = sub i64 %184, %185
  %187 = inttoptr i64 %186 to ptr
  %188 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %182, 0
  %189 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, ptr %187, 1
  %190 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %189, i64 0, 2
  %191 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %190, i64 32, 3, 0
  %192 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %191, i64 128, 3, 1
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %192, i64 128, 4, 0
  %194 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %193, i64 1, 4, 1
  %195 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %196 = ptrtoint ptr %195 to i64
  %197 = add i64 %196, 63
  %198 = urem i64 %197, 64
  %199 = sub i64 %197, %198
  %200 = inttoptr i64 %199 to ptr
  %201 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %195, 0
  %202 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %201, ptr %200, 1
  %203 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %202, i64 0, 2
  %204 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, i64 16, 3, 0
  %205 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, i64 128, 3, 1
  %206 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %205, i64 128, 4, 0
  %207 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %206, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %200, ptr %16, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 2048), i1 false)
  br label %208

208:                                              ; preds = %379, %101
  %209 = phi i32 [ %384, %379 ], [ 0, %101 ]
  %210 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %210, %379 ], [ %207, %101 ]
  %211 = phi i32 [ %380, %379 ], [ %109, %101 ]
  %212 = phi i32 [ %381, %379 ], [ %113, %101 ]
  %213 = phi i32 [ %381, %379 ], [ %113, %101 ]
  %214 = phi i32 [ %382, %379 ], [ %117, %101 ]
  %215 = phi i32 [ %383, %379 ], [ %122, %101 ]
  %216 = phi i32 [ %382, %379 ], [ %117, %101 ]
  %217 = icmp slt i32 %209, %5
  br i1 %217, label %218, label %385

218:                                              ; preds = %208
  %219 = sub i32 %211, %212
  %220 = sext i32 %219 to i64
  %221 = sext i32 %213 to i64
  %222 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %128, 0
  %223 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %222, ptr %128, 1
  %224 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %223, i64 %221, 2
  %225 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %224, i64 %127, 3, 1
  %226 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %225, i64 1, 4, 1
  %227 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %226, i64 1, 3, 0
  %228 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %227, i64 %220, 4, 0
  br label %229

229:                                              ; preds = %249, %218
  %230 = phi i64 [ %250, %249 ], [ 0, %218 ]
  %231 = icmp slt i64 %230, 1
  br i1 %231, label %232, label %251

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %236, %232
  %234 = phi i64 [ %248, %236 ], [ 0, %232 ]
  %235 = icmp slt i64 %234, %127
  br i1 %235, label %236, label %249

236:                                              ; preds = %233
  %237 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %228, 1
  %238 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %228, 2
  %239 = getelementptr float, ptr %237, i64 %238
  %240 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %228, 4, 0
  %241 = mul i64 %230, %240
  %242 = add i64 %241, %234
  %243 = getelementptr float, ptr %239, i64 %242
  %244 = load float, ptr %243, align 4
  %245 = mul i64 %230, %127
  %246 = add i64 %245, %234
  %247 = getelementptr float, ptr %138, i64 %246
  store float %244, ptr %247, align 4
  %248 = add i64 %234, 1
  br label %233

249:                                              ; preds = %233
  %250 = add i64 %230, 1
  br label %229

251:                                              ; preds = %229
  br label %252

252:                                              ; preds = %264, %251
  %253 = phi i64 [ %265, %264 ], [ 0, %251 ]
  %254 = icmp slt i64 %253, 16
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %259, %255
  %257 = phi i64 [ %263, %259 ], [ 0, %255 ]
  %258 = icmp slt i64 %257, 32
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = mul i64 %253, 32
  %261 = add i64 %260, %257
  %262 = getelementptr float, ptr %151, i64 %261
  store float 0.000000e+00, ptr %262, align 4
  %263 = add i64 %257, 1
  br label %256

264:                                              ; preds = %256
  %265 = add i64 %253, 1
  br label %252

266:                                              ; preds = %252
  %267 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %146, 0
  %268 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %267, ptr %151, 1
  %269 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %268, i64 0, 2
  %270 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %269, i64 1, 3, 0
  %271 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %270, i64 32, 4, 0
  %272 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %271, i64 %127, 3, 1
  %273 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %272, i64 1, 4, 1
  %274 = call ptr @llvm.stacksave.p0()
  %275 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %145, ptr %275, align 8
  %276 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %275, 1
  %277 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %273, ptr %277, align 8
  %278 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %277, 1
  %279 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %276, ptr %279, align 8
  %280 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %278, ptr %280, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %279, ptr %280)
  call void @llvm.stackrestore.p0(ptr %274)
  %281 = sub i32 %215, %216
  %282 = sext i32 %281 to i64
  %283 = sext i32 %214 to i64
  %284 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %164, 0
  %285 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %284, ptr %164, 1
  %286 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %285, i64 %283, 2
  %287 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %286, i64 %163, 3, 1
  %288 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %287, i64 1, 4, 1
  %289 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %288, i64 %127, 3, 0
  %290 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %289, i64 %282, 4, 0
  br label %291

291:                                              ; preds = %311, %266
  %292 = phi i64 [ %312, %311 ], [ 0, %266 ]
  %293 = icmp slt i64 %292, %127
  br i1 %293, label %294, label %313

294:                                              ; preds = %291
  br label %295

295:                                              ; preds = %298, %294
  %296 = phi i64 [ %310, %298 ], [ 0, %294 ]
  %297 = icmp slt i64 %296, %163
  br i1 %297, label %298, label %311

298:                                              ; preds = %295
  %299 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %290, 1
  %300 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %290, 2
  %301 = getelementptr float, ptr %299, i64 %300
  %302 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %290, 4, 0
  %303 = mul i64 %292, %302
  %304 = add i64 %303, %296
  %305 = getelementptr float, ptr %301, i64 %304
  %306 = load float, ptr %305, align 4
  %307 = mul i64 %292, %163
  %308 = add i64 %307, %296
  %309 = getelementptr float, ptr %174, i64 %308
  store float %306, ptr %309, align 4
  %310 = add i64 %296, 1
  br label %295

311:                                              ; preds = %295
  %312 = add i64 %292, 1
  br label %291

313:                                              ; preds = %291
  br label %314

314:                                              ; preds = %326, %313
  %315 = phi i64 [ %327, %326 ], [ 0, %313 ]
  %316 = icmp slt i64 %315, 32
  br i1 %316, label %317, label %328

317:                                              ; preds = %314
  br label %318

318:                                              ; preds = %321, %317
  %319 = phi i64 [ %325, %321 ], [ 0, %317 ]
  %320 = icmp slt i64 %319, 128
  br i1 %320, label %321, label %326

321:                                              ; preds = %318
  %322 = mul i64 %315, 128
  %323 = add i64 %322, %319
  %324 = getelementptr float, ptr %187, i64 %323
  store float 0.000000e+00, ptr %324, align 4
  %325 = add i64 %319, 1
  br label %318

326:                                              ; preds = %318
  %327 = add i64 %315, 1
  br label %314

328:                                              ; preds = %314
  %329 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %182, 0
  %330 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %329, ptr %187, 1
  %331 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, i64 0, 2
  %332 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %331, i64 %127, 3, 0
  %333 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %332, i64 128, 4, 0
  %334 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %333, i64 %163, 3, 1
  %335 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %334, i64 1, 4, 1
  %336 = call ptr @llvm.stacksave.p0()
  %337 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %181, ptr %337, align 8
  %338 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %337, 1
  %339 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %335, ptr %339, align 8
  %340 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %339, 1
  %341 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %338, ptr %341, align 8
  %342 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %340, ptr %342, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %341, ptr %342)
  call void @llvm.stackrestore.p0(ptr %336)
  br label %343

343:                                              ; preds = %377, %328
  %344 = phi i64 [ %378, %377 ], [ 0, %328 ]
  %345 = icmp slt i64 %344, 16
  br i1 %345, label %346, label %379

346:                                              ; preds = %343
  br label %347

347:                                              ; preds = %375, %346
  %348 = phi i64 [ %376, %375 ], [ 0, %346 ]
  %349 = icmp slt i64 %348, 128
  br i1 %349, label %350, label %377

350:                                              ; preds = %347
  br label %351

351:                                              ; preds = %354, %350
  %352 = phi i64 [ %374, %354 ], [ 0, %350 ]
  %353 = icmp slt i64 %352, 32
  br i1 %353, label %354, label %375

354:                                              ; preds = %351
  %355 = mul i64 %344, 32
  %356 = add i64 %355, %352
  %357 = getelementptr float, ptr %151, i64 %356
  %358 = load float, ptr %357, align 4
  %359 = mul i64 %352, 128
  %360 = add i64 %359, %348
  %361 = getelementptr float, ptr %187, i64 %360
  %362 = load float, ptr %361, align 4
  %363 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 1
  %364 = mul i64 %344, 128
  %365 = add i64 %364, %348
  %366 = getelementptr float, ptr %363, i64 %365
  %367 = load float, ptr %366, align 4
  %368 = fmul float %358, %362
  %369 = fadd float %367, %368
  %370 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 1
  %371 = mul i64 %344, 128
  %372 = add i64 %371, %348
  %373 = getelementptr float, ptr %370, i64 %372
  store float %369, ptr %373, align 4
  %374 = add i64 %352, 1
  br label %351

375:                                              ; preds = %351
  %376 = add i64 %348, 1
  br label %347

377:                                              ; preds = %347
  %378 = add i64 %344, 1
  br label %343

379:                                              ; preds = %343
  %380 = add i32 %211, 32
  %381 = add i32 %212, 32
  %382 = add i32 %102, %214
  %383 = add i32 %102, %215
  %384 = add i32 %209, 32
  br label %208

385:                                              ; preds = %208
  %386 = sext i32 %4 to i64
  %387 = call i64 @llvm.smax.i64(i64 %386, i64 0)
  %388 = call i64 @llvm.smin.i64(i64 %387, i64 128)
  %389 = call i64 @llvm.smin.i64(i64 %388, i64 128)
  %390 = call i64 @llvm.smax.i64(i64 %389, i64 0)
  %391 = mul i32 %111, %6
  %392 = add i32 %115, %391
  %393 = mul i32 %107, %6
  %394 = add i32 %115, %393
  %395 = sub i32 %394, %392
  %396 = sext i32 %395 to i64
  %397 = sext i32 %392 to i64
  %398 = inttoptr i64 %0 to ptr
  %399 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %398, 0
  %400 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %399, ptr %398, 1
  %401 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %400, i64 %397, 2
  %402 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %401, i64 %390, 3, 1
  %403 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %402, i64 1, 4, 1
  %404 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, i64 1, 3, 0
  %405 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, i64 %396, 4, 0
  %406 = mul i64 %390, 1
  %407 = getelementptr float, ptr null, i64 %406
  %408 = ptrtoint ptr %407 to i64
  %409 = add i64 %408, 64
  %410 = call ptr @malloc(i64 %409)
  %411 = ptrtoint ptr %410 to i64
  %412 = add i64 %411, 63
  %413 = urem i64 %412, 64
  %414 = sub i64 %412, %413
  %415 = inttoptr i64 %414 to ptr
  %416 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %410, 0
  %417 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %416, ptr %415, 1
  %418 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, i64 0, 2
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, i64 1, 3, 0
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, i64 %390, 3, 1
  %421 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %420, i64 %390, 4, 0
  %422 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %421, i64 1, 4, 1
  br label %423

423:                                              ; preds = %443, %385
  %424 = phi i64 [ %444, %443 ], [ 0, %385 ]
  %425 = icmp slt i64 %424, 1
  br i1 %425, label %426, label %445

426:                                              ; preds = %423
  br label %427

427:                                              ; preds = %430, %426
  %428 = phi i64 [ %442, %430 ], [ 0, %426 ]
  %429 = icmp slt i64 %428, %390
  br i1 %429, label %430, label %443

430:                                              ; preds = %427
  %431 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %405, 1
  %432 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %405, 2
  %433 = getelementptr float, ptr %431, i64 %432
  %434 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %405, 4, 0
  %435 = mul i64 %424, %434
  %436 = add i64 %435, %428
  %437 = getelementptr float, ptr %433, i64 %436
  %438 = load float, ptr %437, align 4
  %439 = mul i64 %424, %390
  %440 = add i64 %439, %428
  %441 = getelementptr float, ptr %415, i64 %440
  store float %438, ptr %441, align 4
  %442 = add i64 %428, 1
  br label %427

443:                                              ; preds = %427
  %444 = add i64 %424, 1
  br label %423

445:                                              ; preds = %423
  %446 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %447 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %446, ptr %16, 1
  %448 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %447, i64 0, 2
  %449 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %448, i64 1, 3, 0
  %450 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %449, i64 128, 4, 0
  %451 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %450, i64 %390, 3, 1
  %452 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %451, i64 1, 4, 1
  %453 = call ptr @llvm.stacksave.p0()
  %454 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %422, ptr %454, align 8
  %455 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %454, 1
  %456 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %452, ptr %456, align 8
  %457 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %456, 1
  %458 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %455, ptr %458, align 8
  %459 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %457, ptr %459, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %458, ptr %459)
  call void @llvm.stackrestore.p0(ptr %453)
  br label %460

460:                                              ; preds = %482, %445
  %461 = phi i64 [ %483, %482 ], [ 0, %445 ]
  %462 = icmp slt i64 %461, 16
  br i1 %462, label %463, label %484

463:                                              ; preds = %460
  br label %464

464:                                              ; preds = %467, %463
  %465 = phi i64 [ %481, %467 ], [ 0, %463 ]
  %466 = icmp slt i64 %465, 128
  br i1 %466, label %467, label %482

467:                                              ; preds = %464
  %468 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 1
  %469 = mul i64 %461, 128
  %470 = add i64 %469, %465
  %471 = getelementptr float, ptr %468, i64 %470
  %472 = load float, ptr %471, align 4
  %473 = mul i64 %461, 128
  %474 = add i64 %473, %465
  %475 = getelementptr float, ptr %16, i64 %474
  %476 = load float, ptr %475, align 4
  %477 = fadd float %472, %476
  %478 = mul i64 %461, 128
  %479 = add i64 %478, %465
  %480 = getelementptr float, ptr %16, i64 %479
  store float %477, ptr %480, align 4
  %481 = add i64 %465, 1
  br label %464

482:                                              ; preds = %464
  %483 = add i64 %461, 1
  br label %460

484:                                              ; preds = %460
  %485 = mul i32 %111, %9
  %486 = add i32 %115, %485
  %487 = mul i32 %107, %9
  %488 = add i32 %115, %487
  %489 = sub i32 %488, %486
  %490 = sext i32 %489 to i64
  %491 = sext i32 %486 to i64
  %492 = inttoptr i64 %3 to ptr
  %493 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %492, 0
  %494 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %493, ptr %492, 1
  %495 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, i64 %491, 2
  %496 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %495, i64 %390, 3, 1
  %497 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %496, i64 1, 4, 1
  %498 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %497, i64 1, 3, 0
  %499 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %498, i64 %490, 4, 0
  %500 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %501 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %500, ptr %16, 1
  %502 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %501, i64 0, 2
  %503 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %502, i64 1, 3, 0
  %504 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %503, i64 128, 4, 0
  %505 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %504, i64 %390, 3, 1
  %506 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %505, i64 1, 4, 1
  %507 = call ptr @llvm.stacksave.p0()
  %508 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %506, ptr %508, align 8
  %509 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %508, 1
  %510 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %499, ptr %510, align 8
  %511 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %510, 1
  %512 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %509, ptr %512, align 8
  %513 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %511, ptr %513, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %512, ptr %513)
  call void @llvm.stackrestore.p0(ptr %507)
  ret void
}

define void @_mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) {
  call void @addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
