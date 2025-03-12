; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) {
  %9 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %10 = ptrtoint ptr %9 to i64
  %11 = add i64 %10, 63
  %12 = urem i64 %11, 64
  %13 = sub i64 %11, %12
  %14 = inttoptr i64 %13 to ptr
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %9, 0
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, i64 0, 2
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 16, 3, 0
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 128, 3, 1
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 128, 4, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 1, 4, 1
  br label %22

22:                                               ; preds = %34, %8
  %23 = phi i64 [ %35, %34 ], [ 0, %8 ]
  %24 = icmp slt i64 %23, 16
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %29, %25
  %27 = phi i64 [ %33, %29 ], [ 0, %25 ]
  %28 = icmp slt i64 %27, 128
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = mul i64 %23, 128
  %31 = add i64 %30, %27
  %32 = getelementptr float, ptr %14, i64 %31
  store float 0.000000e+00, ptr %32, align 4
  %33 = add i64 %27, 1
  br label %26

34:                                               ; preds = %26
  %35 = add i64 %23, 1
  br label %22

36:                                               ; preds = %22
  %37 = add i32 %3, 127
  %38 = sdiv i32 %37, 128
  %39 = mul i32 %38, 8
  %40 = sdiv i32 0, %39
  %41 = mul i32 %40, 8
  %42 = sub i32 1, %41
  %43 = call i32 @llvm.smin.i32(i32 %42, i32 8)
  %44 = srem i32 0, %43
  %45 = add i32 %41, %44
  %46 = srem i32 0, %39
  %47 = sdiv i32 %46, %43
  %48 = mul i32 %47, 128
  %49 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i64 64))
  %50 = ptrtoint ptr %49 to i64
  %51 = add i64 %50, 63
  %52 = urem i64 %51, 64
  %53 = sub i64 %51, %52
  %54 = inttoptr i64 %53 to ptr
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %49, 0
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, ptr %54, 1
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 0, 2
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 128, 3, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, i64 1, 4, 0
  br label %60

60:                                               ; preds = %64, %36
  %61 = phi i64 [ %68, %64 ], [ 0, %36 ]
  %62 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %62, %64 ], [ %59, %36 ]
  %63 = icmp slt i64 %61, 128
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = trunc i64 %61 to i32
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 1
  %67 = getelementptr i32, ptr %66, i64 %61
  store i32 %65, ptr %67, align 4
  %68 = add i64 %61, 1
  br label %60

69:                                               ; preds = %60
  %70 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), i64 64))
  %71 = ptrtoint ptr %70 to i64
  %72 = add i64 %71, 63
  %73 = urem i64 %72, 64
  %74 = sub i64 %72, %73
  %75 = inttoptr i64 %74 to ptr
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %70, 0
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, ptr %75, 1
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 0, 2
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 32, 3, 0
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 1, 4, 0
  br label %81

81:                                               ; preds = %85, %69
  %82 = phi i64 [ %89, %85 ], [ 0, %69 ]
  %83 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %83, %85 ], [ %80, %69 ]
  %84 = icmp slt i64 %82, 32
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = trunc i64 %82 to i32
  %87 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 1
  %88 = getelementptr i32, ptr %87, i64 %82
  store i32 %86, ptr %88, align 4
  %89 = add i64 %82, 1
  br label %81

90:                                               ; preds = %81
  %91 = add i32 %4, 31
  %92 = sdiv i32 %91, 32
  %93 = mul i32 %6, 32
  %94 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 1
  %95 = load i32, ptr %94, align 4
  %96 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 1
  %97 = getelementptr i32, ptr %96, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = mul i32 %98, %6
  %100 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %48, %101
  %103 = srem i32 %102, %3
  %104 = add i32 %99, %103
  %105 = mul i32 %95, %6
  %106 = add i32 %105, %103
  %107 = inttoptr i64 %0 to ptr
  %108 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 32) to i64), i64 64))
  %109 = ptrtoint ptr %108 to i64
  %110 = add i64 %109, 63
  %111 = urem i64 %110, 64
  %112 = sub i64 %110, %111
  %113 = inttoptr i64 %112 to ptr
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %108, 0
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, ptr %113, 1
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 0, 2
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, i64 32, 3, 0
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %117, i64 1, 4, 0
  %119 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 512) to i64), i64 64))
  %120 = ptrtoint ptr %119 to i64
  %121 = add i64 %120, 63
  %122 = urem i64 %121, 64
  %123 = sub i64 %121, %122
  %124 = inttoptr i64 %123 to ptr
  %125 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %119, 0
  %126 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %125, ptr %124, 1
  %127 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %126, i64 0, 2
  %128 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, i64 16, 3, 0
  %129 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %128, i64 32, 3, 1
  %130 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %129, i64 32, 4, 0
  %131 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %130, i64 1, 4, 1
  %132 = inttoptr i64 %1 to ptr
  %133 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %134 = ptrtoint ptr %133 to i64
  %135 = add i64 %134, 63
  %136 = urem i64 %135, 64
  %137 = sub i64 %135, %136
  %138 = inttoptr i64 %137 to ptr
  %139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %133, 0
  %140 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %139, ptr %138, 1
  %141 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %140, i64 0, 2
  %142 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %141, i64 32, 3, 0
  %143 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %142, i64 128, 3, 1
  %144 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %143, i64 128, 4, 0
  %145 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %144, i64 1, 4, 1
  br label %146

146:                                              ; preds = %258, %90
  %147 = phi i32 [ %262, %258 ], [ 0, %90 ]
  %148 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %148, %258 ], [ %21, %90 ]
  %149 = phi i32 [ %259, %258 ], [ %95, %90 ]
  %150 = phi i32 [ %260, %258 ], [ %104, %90 ]
  %151 = phi i32 [ %261, %258 ], [ %106, %90 ]
  %152 = icmp slt i32 %147, %92
  br i1 %152, label %153, label %263

153:                                              ; preds = %146
  %154 = sext i32 %149 to i64
  %155 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %107, 0
  %156 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %155, ptr %107, 1
  %157 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %156, i64 %154, 2
  %158 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %157, i64 32, 3, 0
  %159 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %158, i64 1, 4, 0
  br label %160

160:                                              ; preds = %163, %153
  %161 = phi i64 [ %170, %163 ], [ 0, %153 ]
  %162 = icmp slt i64 %161, 32
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, 1
  %165 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, 2
  %166 = getelementptr float, ptr %164, i64 %165
  %167 = getelementptr float, ptr %166, i64 %161
  %168 = load float, ptr %167, align 4
  %169 = getelementptr float, ptr %113, i64 %161
  store float %168, ptr %169, align 4
  %170 = add i64 %161, 1
  br label %160

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %186, %171
  %173 = phi i64 [ %187, %186 ], [ 0, %171 ]
  %174 = icmp slt i64 %173, 16
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %179, %175
  %177 = phi i64 [ %185, %179 ], [ 0, %175 ]
  %178 = icmp slt i64 %177, 32
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = getelementptr float, ptr %113, i64 %177
  %181 = load float, ptr %180, align 4
  %182 = mul i64 %173, 32
  %183 = add i64 %182, %177
  %184 = getelementptr float, ptr %124, i64 %183
  store float %181, ptr %184, align 4
  %185 = add i64 %177, 1
  br label %176

186:                                              ; preds = %176
  %187 = add i64 %173, 1
  br label %172

188:                                              ; preds = %172
  %189 = sub i32 %150, %151
  %190 = sext i32 %189 to i64
  %191 = sext i32 %151 to i64
  %192 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %132, 0
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %192, ptr %132, 1
  %194 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %193, i64 %191, 2
  %195 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, i64 128, 3, 1
  %196 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %195, i64 1, 4, 1
  %197 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %196, i64 32, 3, 0
  %198 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %197, i64 %190, 4, 0
  br label %199

199:                                              ; preds = %219, %188
  %200 = phi i64 [ %220, %219 ], [ 0, %188 ]
  %201 = icmp slt i64 %200, 32
  br i1 %201, label %202, label %221

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %206, %202
  %204 = phi i64 [ %218, %206 ], [ 0, %202 ]
  %205 = icmp slt i64 %204, 128
  br i1 %205, label %206, label %219

206:                                              ; preds = %203
  %207 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, 1
  %208 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, 2
  %209 = getelementptr float, ptr %207, i64 %208
  %210 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, 4, 0
  %211 = mul i64 %200, %210
  %212 = add i64 %211, %204
  %213 = getelementptr float, ptr %209, i64 %212
  %214 = load float, ptr %213, align 4
  %215 = mul i64 %200, 128
  %216 = add i64 %215, %204
  %217 = getelementptr float, ptr %138, i64 %216
  store float %214, ptr %217, align 4
  %218 = add i64 %204, 1
  br label %203

219:                                              ; preds = %203
  %220 = add i64 %200, 1
  br label %199

221:                                              ; preds = %199
  br label %222

222:                                              ; preds = %256, %221
  %223 = phi i64 [ %257, %256 ], [ 0, %221 ]
  %224 = icmp slt i64 %223, 16
  br i1 %224, label %225, label %258

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %254, %225
  %227 = phi i64 [ %255, %254 ], [ 0, %225 ]
  %228 = icmp slt i64 %227, 128
  br i1 %228, label %229, label %256

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %233, %229
  %231 = phi i64 [ %253, %233 ], [ 0, %229 ]
  %232 = icmp slt i64 %231, 32
  br i1 %232, label %233, label %254

233:                                              ; preds = %230
  %234 = mul i64 %223, 32
  %235 = add i64 %234, %231
  %236 = getelementptr float, ptr %124, i64 %235
  %237 = load float, ptr %236, align 4
  %238 = mul i64 %231, 128
  %239 = add i64 %238, %227
  %240 = getelementptr float, ptr %138, i64 %239
  %241 = load float, ptr %240, align 4
  %242 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 1
  %243 = mul i64 %223, 128
  %244 = add i64 %243, %227
  %245 = getelementptr float, ptr %242, i64 %244
  %246 = load float, ptr %245, align 4
  %247 = fmul float %237, %241
  %248 = fadd float %246, %247
  %249 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 1
  %250 = mul i64 %223, 128
  %251 = add i64 %250, %227
  %252 = getelementptr float, ptr %249, i64 %251
  store float %248, ptr %252, align 4
  %253 = add i64 %231, 1
  br label %230

254:                                              ; preds = %230
  %255 = add i64 %227, 1
  br label %226

256:                                              ; preds = %226
  %257 = add i64 %223, 1
  br label %222

258:                                              ; preds = %222
  %259 = add i32 %149, 32
  %260 = add i32 %93, %150
  %261 = add i32 %93, %151
  %262 = add i32 %147, 1
  br label %146

263:                                              ; preds = %146
  %264 = mul i32 %45, 16
  %265 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %266 = ptrtoint ptr %265 to i64
  %267 = add i64 %266, 63
  %268 = urem i64 %267, 64
  %269 = sub i64 %267, %268
  %270 = inttoptr i64 %269 to ptr
  %271 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %265, 0
  %272 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %271, ptr %270, 1
  %273 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %272, i64 0, 2
  %274 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %273, i64 16, 3, 0
  %275 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %274, i64 1, 4, 0
  br label %276

276:                                              ; preds = %280, %263
  %277 = phi i64 [ %284, %280 ], [ 0, %263 ]
  %278 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %278, %280 ], [ %275, %263 ]
  %279 = icmp slt i64 %277, 16
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = trunc i64 %277 to i32
  %282 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %278, 1
  %283 = getelementptr i32, ptr %282, i64 %277
  store i32 %281, ptr %283, align 4
  %284 = add i64 %277, 1
  br label %276

285:                                              ; preds = %276
  %286 = sext i32 %264 to i64
  %287 = add i64 %286, 16
  %288 = call i64 @llvm.smax.i64(i64 %286, i64 1)
  %289 = call i64 @llvm.smin.i64(i64 %287, i64 %288)
  %290 = sub i64 %289, %286
  %291 = sext i32 %48 to i64
  %292 = add i64 %291, 128
  %293 = sext i32 %3 to i64
  %294 = call i64 @llvm.smax.i64(i64 %293, i64 %291)
  %295 = call i64 @llvm.smin.i64(i64 %292, i64 %294)
  %296 = sub i64 %295, %291
  %297 = call i64 @llvm.smin.i64(i64 %290, i64 16)
  %298 = call i64 @llvm.smax.i64(i64 %297, i64 0)
  %299 = call i64 @llvm.smin.i64(i64 %296, i64 128)
  %300 = call i64 @llvm.smax.i64(i64 %299, i64 0)
  %301 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %278, 1
  %302 = load i32, ptr %301, align 4
  %303 = add i32 %264, %302
  %304 = mul i32 %303, %7
  %305 = add i32 %304, %102
  %306 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %278, 1
  %307 = getelementptr i32, ptr %306, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = add i32 %264, %308
  %310 = mul i32 %309, %7
  %311 = add i32 %310, %102
  %312 = sub i32 %311, %305
  %313 = sext i32 %312 to i64
  %314 = sext i32 %305 to i64
  %315 = inttoptr i64 %2 to ptr
  %316 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %315, 0
  %317 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %316, ptr %315, 1
  %318 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %317, i64 %314, 2
  %319 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %318, i64 %300, 3, 1
  %320 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %319, i64 1, 4, 1
  %321 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %320, i64 %298, 3, 0
  %322 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %321, i64 %313, 4, 0
  %323 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 0
  %324 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 1
  %325 = insertvalue { ptr, ptr, i64 } undef, ptr %323, 0
  %326 = insertvalue { ptr, ptr, i64 } %325, ptr %324, 1
  %327 = insertvalue { ptr, ptr, i64 } %326, i64 0, 2
  %328 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 2
  %329 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 3, 0
  %330 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 3, 1
  %331 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 4, 0
  %332 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, 4, 1
  %333 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %323, 0
  %334 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %333, ptr %324, 1
  %335 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %334, i64 0, 2
  %336 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %335, i64 %298, 3, 0
  %337 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %336, i64 128, 4, 0
  %338 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %337, i64 %300, 3, 1
  %339 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, i64 1, 4, 1
  %340 = call ptr @llvm.stacksave.p0()
  %341 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %339, ptr %341, align 8
  %342 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %341, 1
  %343 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %322, ptr %343, align 8
  %344 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %343, 1
  %345 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %342, ptr %345, align 8
  %346 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %344, ptr %346, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %345, ptr %346)
  call void @llvm.stackrestore.p0(ptr %340)
  ret void
}

define void @_mlir_ciface_mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) {
  call void @mm_kernel_0d1d2d3c4e5de6de7c8e9c10e11c(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
