; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17) {
  %19 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64), i64 64))
  %20 = ptrtoint ptr %19 to i64
  %21 = add i64 %20, 63
  %22 = urem i64 %21, 64
  %23 = sub i64 %21, %22
  %24 = inttoptr i64 %23 to ptr
  %25 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %26 = ptrtoint ptr %25 to i64
  %27 = add i64 %26, 63
  %28 = urem i64 %27, 64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to ptr
  %31 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %32 = ptrtoint ptr %31 to i64
  %33 = add i64 %32, 63
  %34 = urem i64 %33, 64
  %35 = sub i64 %33, %34
  %36 = inttoptr i64 %35 to ptr
  br label %37

37:                                               ; preds = %49, %18
  %38 = phi i64 [ %50, %49 ], [ 0, %18 ]
  %39 = icmp slt i64 %38, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %44, %40
  %42 = phi i64 [ %48, %44 ], [ 0, %40 ]
  %43 = icmp slt i64 %42, 4
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = mul i64 %38, 4
  %46 = add i64 %45, %42
  %47 = getelementptr i1, ptr %36, i64 %46
  store i1 true, ptr %47, align 1
  %48 = add i64 %42, 1
  br label %41

49:                                               ; preds = %41
  %50 = add i64 %38, 1
  br label %37

51:                                               ; preds = %37
  %52 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %53 = ptrtoint ptr %52 to i64
  %54 = add i64 %53, 63
  %55 = urem i64 %54, 64
  %56 = sub i64 %54, %55
  %57 = inttoptr i64 %56 to ptr
  br label %58

58:                                               ; preds = %69, %51
  %59 = phi i64 [ %70, %69 ], [ 0, %51 ]
  %60 = icmp slt i64 %59, 4
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %65, %61
  %63 = phi i64 [ %68, %65 ], [ 0, %61 ]
  %64 = icmp slt i64 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = add i64 %59, %63
  %67 = getelementptr i1, ptr %57, i64 %66
  store i1 true, ptr %67, align 1
  %68 = add i64 %63, 1
  br label %62

69:                                               ; preds = %62
  %70 = add i64 %59, 1
  br label %58

71:                                               ; preds = %58
  %72 = inttoptr i64 %12 to ptr
  %73 = load float, ptr %72, align 4
  %74 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4) to i64), i64 64))
  %75 = ptrtoint ptr %74 to i64
  %76 = add i64 %75, 63
  %77 = urem i64 %76, 64
  %78 = sub i64 %76, %77
  %79 = inttoptr i64 %78 to ptr
  %80 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4) to i64), i64 64))
  %81 = ptrtoint ptr %80 to i64
  %82 = add i64 %81, 63
  %83 = urem i64 %82, 64
  %84 = sub i64 %82, %83
  %85 = inttoptr i64 %84 to ptr
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %80, 0
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, ptr %85, 1
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 0, 2
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 4, 3, 0
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 1, 4, 0
  br label %91

91:                                               ; preds = %95, %71
  %92 = phi i64 [ %99, %95 ], [ 0, %71 ]
  %93 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %93, %95 ], [ %90, %71 ]
  %94 = icmp slt i64 %92, 4
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = trunc i64 %92 to i32
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, 1
  %98 = getelementptr i32, ptr %97, i64 %92
  store i32 %96, ptr %98, align 4
  %99 = add i64 %92, 1
  br label %91

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %104, %100
  %102 = phi i64 [ %106, %104 ], [ 0, %100 ]
  %103 = icmp slt i64 %102, 4
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = getelementptr i32, ptr %79, i64 %102
  store i32 -1, ptr %105, align 4
  %106 = add i64 %102, 1
  br label %101

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %111, %107
  %109 = phi i64 [ %118, %111 ], [ 0, %107 ]
  %110 = icmp slt i64 %109, 4
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr i32, ptr %79, i64 %109
  %113 = load i32, ptr %112, align 4
  %114 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, 1
  %115 = getelementptr i32, ptr %114, i64 %109
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %113, %116
  store i32 %117, ptr %112, align 4
  %118 = add i64 %109, 1
  br label %108

119:                                              ; preds = %108
  %120 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 64))
  %121 = ptrtoint ptr %120 to i64
  %122 = add i64 %121, 63
  %123 = urem i64 %122, 64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to ptr
  %126 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %120, 0
  %127 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %126, ptr %125, 1
  %128 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, i64 0, 2
  %129 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %128, i64 1, 3, 0
  %130 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %129, i64 1, 3, 1
  %131 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %130, i64 1, 4, 0
  %132 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, i64 1, 4, 1
  br label %133

133:                                              ; preds = %144, %119
  %134 = phi i64 [ %145, %144 ], [ 0, %119 ]
  %135 = icmp slt i64 %134, 1
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %140, %136
  %138 = phi i64 [ %143, %140 ], [ 0, %136 ]
  %139 = icmp slt i64 %138, 1
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = add i64 %134, %138
  %142 = getelementptr i1, ptr %125, i64 %141
  store i1 true, ptr %142, align 1
  %143 = add i64 %138, 1
  br label %137

144:                                              ; preds = %137
  %145 = add i64 %134, 1
  br label %133

146:                                              ; preds = %133
  %147 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %148 = ptrtoint ptr %147 to i64
  %149 = add i64 %148, 63
  %150 = urem i64 %149, 64
  %151 = sub i64 %149, %150
  %152 = inttoptr i64 %151 to ptr
  br label %153

153:                                              ; preds = %164, %146
  %154 = phi i64 [ %165, %164 ], [ 0, %146 ]
  %155 = icmp slt i64 %154, 4
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %160, %156
  %158 = phi i64 [ %163, %160 ], [ 0, %156 ]
  %159 = icmp slt i64 %158, 1
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = add i64 %154, %158
  %162 = getelementptr i1, ptr %152, i64 %161
  store i1 false, ptr %162, align 1
  %163 = add i64 %158, 1
  br label %157

164:                                              ; preds = %157
  %165 = add i64 %154, 1
  br label %153

166:                                              ; preds = %153
  %167 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %168 = ptrtoint ptr %167 to i64
  %169 = add i64 %168, 63
  %170 = urem i64 %169, 64
  %171 = sub i64 %169, %170
  %172 = inttoptr i64 %171 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr %172, ptr %152, i64 mul (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 4), i1 false)
  %173 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %167, 0
  %174 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %173, ptr %172, 1
  %175 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %174, i64 0, 2
  %176 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %175, i64 1, 3, 0
  %177 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %176, i64 1, 4, 0
  %178 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %177, i64 1, 3, 1
  %179 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %178, i64 1, 4, 1
  %180 = call ptr @llvm.stacksave.p0()
  %181 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %132, ptr %181, align 8
  %182 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %181, 1
  %183 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %179, ptr %183, align 8
  %184 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %183, 1
  %185 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %182, ptr %185, align 8
  %186 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %184, ptr %186, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), ptr %185, ptr %186)
  call void @llvm.stackrestore.p0(ptr %180)
  br label %187

187:                                              ; preds = %202, %166
  %188 = phi i64 [ %203, %202 ], [ 0, %166 ]
  %189 = icmp slt i64 %188, 4
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  br label %191

191:                                              ; preds = %194, %190
  %192 = phi i64 [ %201, %194 ], [ 0, %190 ]
  %193 = icmp slt i64 %192, 1
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = add i64 %188, %192
  %196 = getelementptr i1, ptr %172, i64 %195
  %197 = load i1, ptr %196, align 1
  %198 = getelementptr i1, ptr %57, i64 %195
  %199 = load i1, ptr %198, align 1
  %200 = xor i1 %197, %199
  store i1 %200, ptr %198, align 1
  %201 = add i64 %192, 1
  br label %191

202:                                              ; preds = %191
  %203 = add i64 %188, 1
  br label %187

204:                                              ; preds = %187
  %205 = sext i32 %4 to i64
  %206 = call i64 @llvm.smax.i64(i64 %205, i64 -1)
  %207 = call i64 @llvm.smin.i64(i64 %206, i64 3)
  %208 = sub i64 %207, -1
  %209 = getelementptr i1, ptr null, i64 %208
  %210 = ptrtoint ptr %209 to i64
  %211 = add i64 %210, 64
  %212 = call ptr @malloc(i64 %211)
  %213 = ptrtoint ptr %212 to i64
  %214 = add i64 %213, 63
  %215 = urem i64 %214, 64
  %216 = sub i64 %214, %215
  %217 = inttoptr i64 %216 to ptr
  %218 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %212, 0
  %219 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %218, ptr %217, 1
  %220 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %219, i64 0, 2
  %221 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %220, i64 %208, 3, 0
  %222 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, i64 1, 3, 1
  %223 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %222, i64 1, 4, 0
  %224 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %223, i64 1, 4, 1
  br label %225

225:                                              ; preds = %236, %204
  %226 = phi i64 [ %237, %236 ], [ 0, %204 ]
  %227 = icmp slt i64 %226, %208
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %232, %228
  %230 = phi i64 [ %235, %232 ], [ 0, %228 ]
  %231 = icmp slt i64 %230, 1
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = add i64 %226, %230
  %234 = getelementptr i1, ptr %217, i64 %233
  store i1 true, ptr %234, align 1
  %235 = add i64 %230, 1
  br label %229

236:                                              ; preds = %229
  %237 = add i64 %226, 1
  br label %225

238:                                              ; preds = %225
  %239 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %147, 0
  %240 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %239, ptr %152, 1
  %241 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %240, i64 0, 2
  %242 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %241, i64 %208, 3, 0
  %243 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %242, i64 1, 4, 0
  %244 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %243, i64 1, 3, 1
  %245 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %244, i64 1, 4, 1
  %246 = call ptr @llvm.stacksave.p0()
  %247 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %224, ptr %247, align 8
  %248 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %247, 1
  %249 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %245, ptr %249, align 8
  %250 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %249, 1
  %251 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %248, ptr %251, align 8
  %252 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %250, ptr %252, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), ptr %251, ptr %252)
  call void @llvm.stackrestore.p0(ptr %246)
  br label %253

253:                                              ; preds = %268, %238
  %254 = phi i64 [ %269, %268 ], [ 0, %238 ]
  %255 = icmp slt i64 %254, 4
  br i1 %255, label %256, label %270

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %260, %256
  %258 = phi i64 [ %267, %260 ], [ 0, %256 ]
  %259 = icmp slt i64 %258, 1
  br i1 %259, label %260, label %268

260:                                              ; preds = %257
  %261 = add i64 %254, %258
  %262 = getelementptr i1, ptr %152, i64 %261
  %263 = load i1, ptr %262, align 1
  %264 = getelementptr i1, ptr %57, i64 %261
  %265 = load i1, ptr %264, align 1
  %266 = and i1 %263, %265
  store i1 %266, ptr %264, align 1
  %267 = add i64 %258, 1
  br label %257

268:                                              ; preds = %257
  %269 = add i64 %254, 1
  br label %253

270:                                              ; preds = %253
  %271 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4) to i64), i64 64))
  %272 = ptrtoint ptr %271 to i64
  %273 = add i64 %272, 63
  %274 = urem i64 %273, 64
  %275 = sub i64 %273, %274
  %276 = inttoptr i64 %275 to ptr
  br label %277

277:                                              ; preds = %288, %270
  %278 = phi i64 [ %289, %288 ], [ 0, %270 ]
  %279 = icmp slt i64 %278, 4
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  br label %281

281:                                              ; preds = %284, %280
  %282 = phi i64 [ %287, %284 ], [ 0, %280 ]
  %283 = icmp slt i64 %282, 1
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = add i64 %278, %282
  %286 = getelementptr i32, ptr %276, i64 %285
  store i32 %3, ptr %286, align 4
  %287 = add i64 %282, 1
  br label %281

288:                                              ; preds = %281
  %289 = add i64 %278, 1
  br label %277

290:                                              ; preds = %277
  br label %291

291:                                              ; preds = %306, %290
  %292 = phi i64 [ %307, %306 ], [ 0, %290 ]
  %293 = icmp slt i64 %292, 4
  br i1 %293, label %294, label %308

294:                                              ; preds = %291
  br label %295

295:                                              ; preds = %298, %294
  %296 = phi i64 [ %305, %298 ], [ 0, %294 ]
  %297 = icmp slt i64 %296, 1
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = add i64 %292, %296
  %300 = getelementptr i32, ptr %79, i64 %299
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr i32, ptr %276, i64 %299
  %303 = load i32, ptr %302, align 4
  %304 = mul i32 %301, %303
  store i32 %304, ptr %302, align 4
  %305 = add i64 %296, 1
  br label %295

306:                                              ; preds = %295
  %307 = add i64 %292, 1
  br label %291

308:                                              ; preds = %291
  %309 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 16) to i64), i64 64))
  %310 = ptrtoint ptr %309 to i64
  %311 = add i64 %310, 63
  %312 = urem i64 %311, 64
  %313 = sub i64 %311, %312
  %314 = inttoptr i64 %313 to ptr
  %315 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 16) to i64), i64 64))
  %316 = ptrtoint ptr %315 to i64
  %317 = add i64 %316, 63
  %318 = urem i64 %317, 64
  %319 = sub i64 %317, %318
  %320 = inttoptr i64 %319 to ptr
  br label %321

321:                                              ; preds = %335, %308
  %322 = phi i64 [ %336, %335 ], [ 0, %308 ]
  %323 = icmp slt i64 %322, 4
  br i1 %323, label %324, label %337

324:                                              ; preds = %321
  br label %325

325:                                              ; preds = %328, %324
  %326 = phi i64 [ %334, %328 ], [ 0, %324 ]
  %327 = icmp slt i64 %326, 4
  br i1 %327, label %328, label %335

328:                                              ; preds = %325
  %329 = getelementptr i1, ptr %57, i64 %322
  %330 = load i1, ptr %329, align 1
  %331 = mul i64 %322, 4
  %332 = add i64 %331, %326
  %333 = getelementptr i1, ptr %320, i64 %332
  store i1 %330, ptr %333, align 1
  %334 = add i64 %326, 1
  br label %325

335:                                              ; preds = %325
  %336 = add i64 %322, 1
  br label %321

337:                                              ; preds = %321
  %338 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %339 = ptrtoint ptr %338 to i64
  %340 = add i64 %339, 63
  %341 = urem i64 %340, 64
  %342 = sub i64 %340, %341
  %343 = inttoptr i64 %342 to ptr
  %344 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %345 = ptrtoint ptr %344 to i64
  %346 = add i64 %345, 63
  %347 = urem i64 %346, 64
  %348 = sub i64 %346, %347
  %349 = inttoptr i64 %348 to ptr
  br label %350

350:                                              ; preds = %364, %337
  %351 = phi i64 [ %365, %364 ], [ 0, %337 ]
  %352 = icmp slt i64 %351, 4
  br i1 %352, label %353, label %366

353:                                              ; preds = %350
  br label %354

354:                                              ; preds = %357, %353
  %355 = phi i64 [ %363, %357 ], [ 0, %353 ]
  %356 = icmp slt i64 %355, 4
  br i1 %356, label %357, label %364

357:                                              ; preds = %354
  %358 = getelementptr i32, ptr %276, i64 %351
  %359 = load i32, ptr %358, align 4
  %360 = mul i64 %351, 4
  %361 = add i64 %360, %355
  %362 = getelementptr i32, ptr %349, i64 %361
  store i32 %359, ptr %362, align 4
  %363 = add i64 %355, 1
  br label %354

364:                                              ; preds = %354
  %365 = add i64 %351, 1
  br label %350

366:                                              ; preds = %350
  %367 = sext i32 %5 to i64
  %368 = inttoptr i64 %0 to ptr
  %369 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64), i64 64))
  %370 = ptrtoint ptr %369 to i64
  %371 = add i64 %370, 63
  %372 = urem i64 %371, 64
  %373 = sub i64 %371, %372
  %374 = inttoptr i64 %373 to ptr
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %369, 0
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, ptr %374, 1
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 0, 2
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 16, 3, 0
  %379 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, i64 1, 4, 0
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %379, i64 1, 3, 1
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %380, i64 1, 4, 1
  %382 = sext i32 %7 to i64
  %383 = call i64 @llvm.smax.i64(i64 %382, i64 0)
  %384 = call i64 @llvm.smin.i64(i64 %383, i64 4)
  %385 = sext i32 %8 to i64
  %386 = call i64 @llvm.smax.i64(i64 %385, i64 0)
  %387 = call i64 @llvm.smin.i64(i64 %386, i64 4)
  %388 = call i64 @llvm.smin.i64(i64 %384, i64 4)
  %389 = call i64 @llvm.smax.i64(i64 %388, i64 0)
  %390 = call i64 @llvm.smin.i64(i64 %387, i64 4)
  %391 = call i64 @llvm.smax.i64(i64 %390, i64 0)
  %392 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, 1
  %393 = load i32, ptr %392, align 4
  %394 = mul i32 %393, %11
  %395 = add i32 %393, %394
  %396 = getelementptr i32, ptr %392, i32 1
  %397 = load i32, ptr %396, align 4
  %398 = mul i32 %397, %11
  %399 = add i32 %393, %398
  %400 = sub i32 %399, %395
  %401 = sext i32 %400 to i64
  %402 = sext i32 %395 to i64
  %403 = inttoptr i64 %6 to ptr
  %404 = mul i64 %391, %389
  %405 = getelementptr float, ptr null, i64 %404
  %406 = ptrtoint ptr %405 to i64
  %407 = add i64 %406, 64
  %408 = call ptr @malloc(i64 %407)
  %409 = ptrtoint ptr %408 to i64
  %410 = add i64 %409, 63
  %411 = urem i64 %410, 64
  %412 = sub i64 %410, %411
  %413 = inttoptr i64 %412 to ptr
  %414 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %408, 0
  %415 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %414, ptr %413, 1
  %416 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %415, i64 0, 2
  %417 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %416, i64 %389, 3, 0
  %418 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, i64 %391, 3, 1
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, i64 %391, 4, 0
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, i64 1, 4, 1
  %421 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 64))
  %422 = ptrtoint ptr %421 to i64
  %423 = add i64 %422, 63
  %424 = urem i64 %423, 64
  %425 = sub i64 %423, %424
  %426 = inttoptr i64 %425 to ptr
  br label %427

427:                                              ; preds = %843, %366
  %428 = phi i32 [ %851, %843 ], [ 0, %366 ]
  %429 = icmp slt i32 %428, %14
  br i1 %429, label %430, label %852

430:                                              ; preds = %427
  %431 = sub i32 %428, 1
  br label %432

432:                                              ; preds = %435, %430
  %433 = phi i64 [ %437, %435 ], [ 0, %430 ]
  %434 = icmp slt i64 %433, 4
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = getelementptr i32, ptr %79, i64 %433
  store i32 %431, ptr %436, align 4
  %437 = add i64 %433, 1
  br label %432

438:                                              ; preds = %432
  br label %439

439:                                              ; preds = %442, %438
  %440 = phi i64 [ %448, %442 ], [ 0, %438 ]
  %441 = icmp slt i64 %440, 4
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = getelementptr i32, ptr %79, i64 %440
  %444 = load i32, ptr %443, align 4
  %445 = getelementptr i32, ptr %392, i64 %440
  %446 = load i32, ptr %445, align 4
  %447 = add i32 %444, %446
  store i32 %447, ptr %443, align 4
  %448 = add i64 %440, 1
  br label %439

449:                                              ; preds = %439
  %450 = sext i32 %431 to i64
  %451 = add i64 %450, 4
  %452 = call i64 @llvm.smax.i64(i64 %450, i64 0)
  %453 = call i64 @llvm.smin.i64(i64 %451, i64 %452)
  %454 = sub i64 %453, %450
  %455 = mul i64 %454, 1
  %456 = getelementptr i1, ptr null, i64 %455
  %457 = ptrtoint ptr %456 to i64
  %458 = add i64 %457, 64
  %459 = call ptr @malloc(i64 %458)
  %460 = ptrtoint ptr %459 to i64
  %461 = add i64 %460, 63
  %462 = urem i64 %461, 64
  %463 = sub i64 %461, %462
  %464 = inttoptr i64 %463 to ptr
  %465 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %459, 0
  %466 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %465, ptr %464, 1
  %467 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %466, i64 0, 2
  %468 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %467, i64 1, 3, 0
  %469 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %468, i64 %454, 3, 1
  %470 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %469, i64 %454, 4, 0
  %471 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %470, i64 1, 4, 1
  br label %472

472:                                              ; preds = %484, %449
  %473 = phi i64 [ %485, %484 ], [ 0, %449 ]
  %474 = icmp slt i64 %473, 1
  br i1 %474, label %475, label %486

475:                                              ; preds = %472
  br label %476

476:                                              ; preds = %479, %475
  %477 = phi i64 [ %483, %479 ], [ 0, %475 ]
  %478 = icmp slt i64 %477, %454
  br i1 %478, label %479, label %484

479:                                              ; preds = %476
  %480 = mul i64 %473, %454
  %481 = add i64 %480, %477
  %482 = getelementptr i1, ptr %464, i64 %481
  store i1 true, ptr %482, align 1
  %483 = add i64 %477, 1
  br label %476

484:                                              ; preds = %476
  %485 = add i64 %473, 1
  br label %472

486:                                              ; preds = %472
  %487 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %488 = ptrtoint ptr %487 to i64
  %489 = add i64 %488, 63
  %490 = urem i64 %489, 64
  %491 = sub i64 %489, %490
  %492 = inttoptr i64 %491 to ptr
  br label %493

493:                                              ; preds = %505, %486
  %494 = phi i64 [ %506, %505 ], [ 0, %486 ]
  %495 = icmp slt i64 %494, 1
  br i1 %495, label %496, label %507

496:                                              ; preds = %493
  br label %497

497:                                              ; preds = %500, %496
  %498 = phi i64 [ %504, %500 ], [ 0, %496 ]
  %499 = icmp slt i64 %498, 4
  br i1 %499, label %500, label %505

500:                                              ; preds = %497
  %501 = mul i64 %494, 4
  %502 = add i64 %501, %498
  %503 = getelementptr i1, ptr %492, i64 %502
  store i1 false, ptr %503, align 1
  %504 = add i64 %498, 1
  br label %497

505:                                              ; preds = %497
  %506 = add i64 %494, 1
  br label %493

507:                                              ; preds = %493
  %508 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4) to i64), i64 64))
  %509 = ptrtoint ptr %508 to i64
  %510 = add i64 %509, 63
  %511 = urem i64 %510, 64
  %512 = sub i64 %510, %511
  %513 = inttoptr i64 %512 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr %513, ptr %492, i64 mul (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 4), i1 false)
  %514 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %508, 0
  %515 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %514, ptr %513, 1
  %516 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %515, i64 0, 2
  %517 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %516, i64 1, 3, 0
  %518 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %517, i64 4, 4, 0
  %519 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %518, i64 %454, 3, 1
  %520 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %519, i64 1, 4, 1
  %521 = call ptr @llvm.stacksave.p0()
  %522 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %471, ptr %522, align 8
  %523 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %522, 1
  %524 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %520, ptr %524, align 8
  %525 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %524, 1
  %526 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %523, ptr %526, align 8
  %527 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %525, ptr %527, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), ptr %526, ptr %527)
  call void @llvm.stackrestore.p0(ptr %521)
  br label %528

528:                                              ; preds = %545, %507
  %529 = phi i64 [ %546, %545 ], [ 0, %507 ]
  %530 = icmp slt i64 %529, 1
  br i1 %530, label %531, label %547

531:                                              ; preds = %528
  br label %532

532:                                              ; preds = %535, %531
  %533 = phi i64 [ %544, %535 ], [ 0, %531 ]
  %534 = icmp slt i64 %533, 4
  br i1 %534, label %535, label %545

535:                                              ; preds = %532
  %536 = mul i64 %529, 4
  %537 = add i64 %536, %533
  %538 = getelementptr i1, ptr %513, i64 %537
  %539 = load i1, ptr %538, align 1
  %540 = getelementptr i1, ptr %36, i64 %537
  %541 = load i1, ptr %540, align 1
  %542 = xor i1 %539, %541
  %543 = getelementptr i1, ptr %30, i64 %537
  store i1 %542, ptr %543, align 1
  %544 = add i64 %533, 1
  br label %532

545:                                              ; preds = %532
  %546 = add i64 %529, 1
  br label %528

547:                                              ; preds = %528
  %548 = call i64 @llvm.smax.i64(i64 %367, i64 %450)
  %549 = call i64 @llvm.smin.i64(i64 %451, i64 %548)
  %550 = sub i64 %549, %450
  %551 = mul i64 %550, 1
  %552 = getelementptr i1, ptr null, i64 %551
  %553 = ptrtoint ptr %552 to i64
  %554 = add i64 %553, 64
  %555 = call ptr @malloc(i64 %554)
  %556 = ptrtoint ptr %555 to i64
  %557 = add i64 %556, 63
  %558 = urem i64 %557, 64
  %559 = sub i64 %557, %558
  %560 = inttoptr i64 %559 to ptr
  %561 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %555, 0
  %562 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %561, ptr %560, 1
  %563 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %562, i64 0, 2
  %564 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %563, i64 1, 3, 0
  %565 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %564, i64 %550, 3, 1
  %566 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %565, i64 %550, 4, 0
  %567 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %566, i64 1, 4, 1
  br label %568

568:                                              ; preds = %580, %547
  %569 = phi i64 [ %581, %580 ], [ 0, %547 ]
  %570 = icmp slt i64 %569, 1
  br i1 %570, label %571, label %582

571:                                              ; preds = %568
  br label %572

572:                                              ; preds = %575, %571
  %573 = phi i64 [ %579, %575 ], [ 0, %571 ]
  %574 = icmp slt i64 %573, %550
  br i1 %574, label %575, label %580

575:                                              ; preds = %572
  %576 = mul i64 %569, %550
  %577 = add i64 %576, %573
  %578 = getelementptr i1, ptr %560, i64 %577
  store i1 true, ptr %578, align 1
  %579 = add i64 %573, 1
  br label %572

580:                                              ; preds = %572
  %581 = add i64 %569, 1
  br label %568

582:                                              ; preds = %568
  %583 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %487, 0
  %584 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %583, ptr %492, 1
  %585 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %584, i64 0, 2
  %586 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %585, i64 1, 3, 0
  %587 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %586, i64 4, 4, 0
  %588 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %587, i64 %550, 3, 1
  %589 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %588, i64 1, 4, 1
  %590 = call ptr @llvm.stacksave.p0()
  %591 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %567, ptr %591, align 8
  %592 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %591, 1
  %593 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %589, ptr %593, align 8
  %594 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %593, 1
  %595 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %592, ptr %595, align 8
  %596 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %594, ptr %596, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), ptr %595, ptr %596)
  call void @llvm.stackrestore.p0(ptr %590)
  br label %597

597:                                              ; preds = %613, %582
  %598 = phi i64 [ %614, %613 ], [ 0, %582 ]
  %599 = icmp slt i64 %598, 1
  br i1 %599, label %600, label %615

600:                                              ; preds = %597
  br label %601

601:                                              ; preds = %604, %600
  %602 = phi i64 [ %612, %604 ], [ 0, %600 ]
  %603 = icmp slt i64 %602, 4
  br i1 %603, label %604, label %613

604:                                              ; preds = %601
  %605 = mul i64 %598, 4
  %606 = add i64 %605, %602
  %607 = getelementptr i1, ptr %492, i64 %606
  %608 = load i1, ptr %607, align 1
  %609 = getelementptr i1, ptr %30, i64 %606
  %610 = load i1, ptr %609, align 1
  %611 = and i1 %608, %610
  store i1 %611, ptr %609, align 1
  %612 = add i64 %602, 1
  br label %601

613:                                              ; preds = %601
  %614 = add i64 %598, 1
  br label %597

615:                                              ; preds = %597
  br label %616

616:                                              ; preds = %630, %615
  %617 = phi i64 [ %631, %630 ], [ 0, %615 ]
  %618 = icmp slt i64 %617, 4
  br i1 %618, label %619, label %632

619:                                              ; preds = %616
  br label %620

620:                                              ; preds = %623, %619
  %621 = phi i64 [ %629, %623 ], [ 0, %619 ]
  %622 = icmp slt i64 %621, 4
  br i1 %622, label %623, label %630

623:                                              ; preds = %620
  %624 = getelementptr i1, ptr %30, i64 %621
  %625 = load i1, ptr %624, align 1
  %626 = mul i64 %617, 4
  %627 = add i64 %626, %621
  %628 = getelementptr i1, ptr %314, i64 %627
  store i1 %625, ptr %628, align 1
  %629 = add i64 %621, 1
  br label %620

630:                                              ; preds = %620
  %631 = add i64 %617, 1
  br label %616

632:                                              ; preds = %616
  br label %633

633:                                              ; preds = %649, %632
  %634 = phi i64 [ %650, %649 ], [ 0, %632 ]
  %635 = icmp slt i64 %634, 4
  br i1 %635, label %636, label %651

636:                                              ; preds = %633
  br label %637

637:                                              ; preds = %640, %636
  %638 = phi i64 [ %648, %640 ], [ 0, %636 ]
  %639 = icmp slt i64 %638, 4
  br i1 %639, label %640, label %649

640:                                              ; preds = %637
  %641 = mul i64 %634, 4
  %642 = add i64 %641, %638
  %643 = getelementptr i1, ptr %320, i64 %642
  %644 = load i1, ptr %643, align 1
  %645 = getelementptr i1, ptr %314, i64 %642
  %646 = load i1, ptr %645, align 1
  %647 = and i1 %644, %646
  store i1 %647, ptr %645, align 1
  %648 = add i64 %638, 1
  br label %637

649:                                              ; preds = %637
  %650 = add i64 %634, 1
  br label %633

651:                                              ; preds = %633
  br label %652

652:                                              ; preds = %666, %651
  %653 = phi i64 [ %667, %666 ], [ 0, %651 ]
  %654 = icmp slt i64 %653, 4
  br i1 %654, label %655, label %668

655:                                              ; preds = %652
  br label %656

656:                                              ; preds = %659, %655
  %657 = phi i64 [ %665, %659 ], [ 0, %655 ]
  %658 = icmp slt i64 %657, 4
  br i1 %658, label %659, label %666

659:                                              ; preds = %656
  %660 = getelementptr i32, ptr %79, i64 %657
  %661 = load i32, ptr %660, align 4
  %662 = mul i64 %653, 4
  %663 = add i64 %662, %657
  %664 = getelementptr i32, ptr %343, i64 %663
  store i32 %661, ptr %664, align 4
  %665 = add i64 %657, 1
  br label %656

666:                                              ; preds = %656
  %667 = add i64 %653, 1
  br label %652

668:                                              ; preds = %652
  %669 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %670 = ptrtoint ptr %669 to i64
  %671 = add i64 %670, 63
  %672 = urem i64 %671, 64
  %673 = sub i64 %671, %672
  %674 = inttoptr i64 %673 to ptr
  br label %675

675:                                              ; preds = %692, %668
  %676 = phi i64 [ %693, %692 ], [ 0, %668 ]
  %677 = icmp slt i64 %676, 4
  br i1 %677, label %678, label %694

678:                                              ; preds = %675
  br label %679

679:                                              ; preds = %682, %678
  %680 = phi i64 [ %691, %682 ], [ 0, %678 ]
  %681 = icmp slt i64 %680, 4
  br i1 %681, label %682, label %692

682:                                              ; preds = %679
  %683 = mul i64 %676, 4
  %684 = add i64 %683, %680
  %685 = getelementptr i32, ptr %343, i64 %684
  %686 = load i32, ptr %685, align 4
  %687 = getelementptr i32, ptr %349, i64 %684
  %688 = load i32, ptr %687, align 4
  %689 = add i32 %686, %688
  %690 = getelementptr i32, ptr %674, i64 %684
  store i32 %689, ptr %690, align 4
  %691 = add i64 %680, 1
  br label %679

692:                                              ; preds = %679
  %693 = add i64 %676, 1
  br label %675

694:                                              ; preds = %675
  br label %695

695:                                              ; preds = %707, %694
  %696 = phi i64 [ %708, %707 ], [ 0, %694 ]
  %697 = icmp slt i64 %696, 4
  br i1 %697, label %698, label %709

698:                                              ; preds = %695
  br label %699

699:                                              ; preds = %702, %698
  %700 = phi i64 [ %706, %702 ], [ 0, %698 ]
  %701 = icmp slt i64 %700, 4
  br i1 %701, label %702, label %707

702:                                              ; preds = %699
  %703 = mul i64 %696, 4
  %704 = add i64 %703, %700
  %705 = getelementptr i32, ptr %343, i64 %704
  store i32 0, ptr %705, align 4
  %706 = add i64 %700, 1
  br label %699

707:                                              ; preds = %699
  %708 = add i64 %696, 1
  br label %695

709:                                              ; preds = %695
  br label %710

710:                                              ; preds = %726, %709
  %711 = phi i64 [ %727, %726 ], [ 0, %709 ]
  %712 = icmp slt i64 %711, 4
  br i1 %712, label %713, label %728

713:                                              ; preds = %710
  br label %714

714:                                              ; preds = %717, %713
  %715 = phi i64 [ %725, %717 ], [ 0, %713 ]
  %716 = icmp slt i64 %715, 4
  br i1 %716, label %717, label %726

717:                                              ; preds = %714
  %718 = mul i64 %711, 4
  %719 = add i64 %718, %715
  %720 = getelementptr i32, ptr %674, i64 %719
  %721 = load i32, ptr %720, align 4
  %722 = getelementptr i32, ptr %343, i64 %719
  %723 = load i32, ptr %722, align 4
  %724 = add i32 %721, %723
  store i32 %724, ptr %722, align 4
  %725 = add i64 %715, 1
  br label %714

726:                                              ; preds = %714
  %727 = add i64 %711, 1
  br label %710

728:                                              ; preds = %710
  br label %729

729:                                              ; preds = %740, %728
  %730 = phi i64 [ %741, %740 ], [ 0, %728 ]
  %731 = icmp slt i64 %730, 16
  br i1 %731, label %732, label %742

732:                                              ; preds = %729
  br label %733

733:                                              ; preds = %736, %732
  %734 = phi i64 [ %739, %736 ], [ 0, %732 ]
  %735 = icmp slt i64 %734, 1
  br i1 %735, label %736, label %740

736:                                              ; preds = %733
  %737 = add i64 %730, %734
  %738 = getelementptr float, ptr %374, i64 %737
  store float 0.000000e+00, ptr %738, align 4
  %739 = add i64 %734, 1
  br label %733

740:                                              ; preds = %733
  %741 = add i64 %730, 1
  br label %729

742:                                              ; preds = %729
  br label %743

743:                                              ; preds = %762, %742
  %744 = phi i64 [ %763, %762 ], [ 0, %742 ]
  %745 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %761, %762 ], [ %381, %742 ]
  %746 = icmp slt i64 %744, 16
  br i1 %746, label %747, label %764

747:                                              ; preds = %743
  %748 = getelementptr i1, ptr %314, i64 %744
  %749 = load i1, ptr %748, align 1
  br i1 %749, label %750, label %759

750:                                              ; preds = %747
  %751 = add i64 %744, 0
  %752 = getelementptr i32, ptr %343, i64 %751
  %753 = load i32, ptr %752, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr float, ptr %368, i64 %754
  %756 = load float, ptr %755, align 4
  %757 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %745, 1
  %758 = getelementptr float, ptr %757, i64 %751
  store float %756, ptr %758, align 4
  br label %760

759:                                              ; preds = %747
  br label %760

760:                                              ; preds = %750, %759
  %761 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %745, %759 ], [ %745, %750 ]
  br label %762

762:                                              ; preds = %760
  %763 = add i64 %744, 1
  br label %743

764:                                              ; preds = %743
  %765 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %745, 1
  br label %766

766:                                              ; preds = %783, %764
  %767 = phi i64 [ %784, %783 ], [ 0, %764 ]
  %768 = icmp slt i64 %767, %389
  br i1 %768, label %769, label %785

769:                                              ; preds = %766
  br label %770

770:                                              ; preds = %773, %769
  %771 = phi i64 [ %782, %773 ], [ 0, %769 ]
  %772 = icmp slt i64 %771, %391
  br i1 %772, label %773, label %783

773:                                              ; preds = %770
  %774 = getelementptr float, ptr %403, i64 %402
  %775 = mul i64 %767, %401
  %776 = add i64 %775, %771
  %777 = getelementptr float, ptr %774, i64 %776
  %778 = load float, ptr %777, align 4
  %779 = mul i64 %767, %391
  %780 = add i64 %779, %771
  %781 = getelementptr float, ptr %413, i64 %780
  store float %778, ptr %781, align 4
  %782 = add i64 %771, 1
  br label %770

783:                                              ; preds = %770
  %784 = add i64 %767, 1
  br label %766

785:                                              ; preds = %766
  br label %786

786:                                              ; preds = %798, %785
  %787 = phi i64 [ %799, %798 ], [ 0, %785 ]
  %788 = icmp slt i64 %787, 4
  br i1 %788, label %789, label %800

789:                                              ; preds = %786
  br label %790

790:                                              ; preds = %793, %789
  %791 = phi i64 [ %797, %793 ], [ 0, %789 ]
  %792 = icmp slt i64 %791, 4
  br i1 %792, label %793, label %798

793:                                              ; preds = %790
  %794 = mul i64 %787, 4
  %795 = add i64 %794, %791
  %796 = getelementptr float, ptr %24, i64 %795
  store float 0.000000e+00, ptr %796, align 4
  %797 = add i64 %791, 1
  br label %790

798:                                              ; preds = %790
  %799 = add i64 %787, 1
  br label %786

800:                                              ; preds = %786
  %801 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %19, 0
  %802 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %801, ptr %24, 1
  %803 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %802, i64 0, 2
  %804 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %803, i64 %389, 3, 0
  %805 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %804, i64 4, 4, 0
  %806 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %805, i64 %391, 3, 1
  %807 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %806, i64 1, 4, 1
  %808 = call ptr @llvm.stacksave.p0()
  %809 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %420, ptr %809, align 8
  %810 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %809, 1
  %811 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %807, ptr %811, align 8
  %812 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %811, 1
  %813 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %810, ptr %813, align 8
  %814 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %812, ptr %814, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %813, ptr %814)
  call void @llvm.stackrestore.p0(ptr %808)
  br label %815

815:                                              ; preds = %831, %800
  %816 = phi i64 [ %832, %831 ], [ 0, %800 ]
  %817 = icmp slt i64 %816, 4
  br i1 %817, label %818, label %833

818:                                              ; preds = %815
  br label %819

819:                                              ; preds = %822, %818
  %820 = phi i64 [ %830, %822 ], [ 0, %818 ]
  %821 = icmp slt i64 %820, 4
  br i1 %821, label %822, label %831

822:                                              ; preds = %819
  %823 = mul i64 %816, 4
  %824 = add i64 %823, %820
  %825 = getelementptr float, ptr %765, i64 %824
  %826 = load float, ptr %825, align 4
  %827 = getelementptr float, ptr %24, i64 %824
  %828 = load float, ptr %827, align 4
  %829 = fmul float %826, %828
  store float %829, ptr %827, align 4
  %830 = add i64 %820, 1
  br label %819

831:                                              ; preds = %819
  %832 = add i64 %816, 1
  br label %815

833:                                              ; preds = %815
  store float 0.000000e+00, ptr %426, align 4
  br label %834

834:                                              ; preds = %837, %833
  %835 = phi i64 [ %842, %837 ], [ 0, %833 ]
  %836 = icmp slt i64 %835, 16
  br i1 %836, label %837, label %843

837:                                              ; preds = %834
  %838 = getelementptr float, ptr %24, i64 %835
  %839 = load float, ptr %838, align 4
  %840 = load float, ptr %426, align 4
  %841 = fadd float %839, %840
  store float %841, ptr %426, align 4
  %842 = add i64 %835, 1
  br label %834

843:                                              ; preds = %834
  %844 = load float, ptr %426, align 4
  %845 = fadd float %844, 0.000000e+00
  %846 = sext i32 %428 to i64
  %847 = mul i64 %846, 4
  %848 = add i64 %13, %847
  %849 = fadd float %845, %73
  %850 = inttoptr i64 %848 to ptr
  store float %849, ptr %850, align 4
  %851 = add i32 %428, 1
  br label %427

852:                                              ; preds = %427
  ret void
}

define void @_mlir_ciface_conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17) {
  call void @conv2d_kernel_0d1234c567c8d91011de12de1314c15d16d17e18de19de20e21c22c23c24c25c26c27c28c(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
