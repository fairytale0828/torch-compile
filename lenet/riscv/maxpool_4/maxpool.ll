; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton__0d1d2de_4(i64 %0, i64 %1, i32 %2) {
  %4 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %5, 63
  %7 = urem i64 %6, 64
  %8 = sub i64 %6, %7
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %9, 1
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 0, 2
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 256, 3, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0
  %15 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 63
  %18 = urem i64 %17, 64
  %19 = sub i64 %17, %18
  %20 = inttoptr i64 %19 to ptr
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, ptr %20, 1
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 0, 2
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 256, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0
  %26 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %27 = ptrtoint ptr %26 to i64
  %28 = add i64 %27, 63
  %29 = urem i64 %28, 64
  %30 = sub i64 %28, %29
  %31 = inttoptr i64 %30 to ptr
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %26, 0
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, ptr %31, 1
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 0, 2
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 256, 3, 0
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, i64 1, 4, 0
  br label %37

37:                                               ; preds = %40, %3
  %38 = phi i64 [ %42, %40 ], [ 0, %3 ]
  %39 = icmp slt i64 %38, 256
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr i32, ptr %31, i64 %38
  store i32 9, ptr %41, align 4
  %42 = add i64 %38, 1
  br label %37

43:                                               ; preds = %37
  %44 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %45 = ptrtoint ptr %44 to i64
  %46 = add i64 %45, 63
  %47 = urem i64 %46, 64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to ptr
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %44, 0
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, ptr %49, 1
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 0, 2
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 256, 3, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, i64 1, 4, 0
  br label %55

55:                                               ; preds = %58, %43
  %56 = phi i64 [ %60, %58 ], [ 0, %43 ]
  %57 = icmp slt i64 %56, 256
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr i32, ptr %49, i64 %56
  store i32 8, ptr %59, align 4
  %60 = add i64 %56, 1
  br label %55

61:                                               ; preds = %55
  %62 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %63 = ptrtoint ptr %62 to i64
  %64 = add i64 %63, 63
  %65 = urem i64 %64, 64
  %66 = sub i64 %64, %65
  %67 = inttoptr i64 %66 to ptr
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %62, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, ptr %67, 1
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 0, 2
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 256, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 1, 4, 0
  br label %73

73:                                               ; preds = %76, %61
  %74 = phi i64 [ %78, %76 ], [ 0, %61 ]
  %75 = icmp slt i64 %74, 256
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr i32, ptr %67, i64 %74
  store i32 1, ptr %77, align 4
  %78 = add i64 %74, 1
  br label %73

79:                                               ; preds = %73
  %80 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %81 = ptrtoint ptr %80 to i64
  %82 = add i64 %81, 63
  %83 = urem i64 %82, 64
  %84 = sub i64 %82, %83
  %85 = inttoptr i64 %84 to ptr
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %80, 0
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, ptr %85, 1
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 0, 2
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 256, 3, 0
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 1, 4, 0
  br label %91

91:                                               ; preds = %94, %79
  %92 = phi i64 [ %96, %94 ], [ 0, %79 ]
  %93 = icmp slt i64 %92, 256
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr i32, ptr %85, i64 %92
  store i32 16, ptr %95, align 4
  %96 = add i64 %92, 1
  br label %91

97:                                               ; preds = %91
  %98 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %99 = ptrtoint ptr %98 to i64
  %100 = add i64 %99, 63
  %101 = urem i64 %100, 64
  %102 = sub i64 %100, %101
  %103 = inttoptr i64 %102 to ptr
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %98, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, ptr %103, 1
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 0, 2
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 256, 3, 0
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 1, 4, 0
  br label %109

109:                                              ; preds = %112, %97
  %110 = phi i64 [ %114, %112 ], [ 0, %97 ]
  %111 = icmp slt i64 %110, 256
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = getelementptr i32, ptr %103, i64 %110
  store i32 2, ptr %113, align 4
  %114 = add i64 %110, 1
  br label %109

115:                                              ; preds = %109
  %116 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %117 = ptrtoint ptr %116 to i64
  %118 = add i64 %117, 63
  %119 = urem i64 %118, 64
  %120 = sub i64 %118, %119
  %121 = inttoptr i64 %120 to ptr
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %116, 0
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, ptr %121, 1
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 0, 2
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, i64 256, 3, 0
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 1, 4, 0
  br label %127

127:                                              ; preds = %130, %115
  %128 = phi i64 [ %132, %130 ], [ 0, %115 ]
  %129 = icmp slt i64 %128, 256
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = getelementptr i32, ptr %121, i64 %128
  store i32 4, ptr %131, align 4
  %132 = add i64 %128, 1
  br label %127

133:                                              ; preds = %127
  %134 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %135 = ptrtoint ptr %134 to i64
  %136 = add i64 %135, 63
  %137 = urem i64 %136, 64
  %138 = sub i64 %136, %137
  %139 = inttoptr i64 %138 to ptr
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %134, 0
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, ptr %139, 1
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, i64 0, 2
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, i64 256, 3, 0
  %144 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, i64 1, 4, 0
  br label %145

145:                                              ; preds = %149, %133
  %146 = phi i64 [ %153, %149 ], [ 0, %133 ]
  %147 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %147, %149 ], [ %144, %133 ]
  %148 = icmp slt i64 %146, 256
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = trunc i64 %146 to i32
  %151 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, 1
  %152 = getelementptr i32, ptr %151, i64 %146
  store i32 %150, ptr %152, align 4
  %153 = add i64 %146, 1
  br label %145

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %158, %154
  %156 = phi i64 [ %160, %158 ], [ 0, %154 ]
  %157 = icmp slt i64 %156, 256
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = getelementptr i32, ptr %20, i64 %156
  store i32 0, ptr %159, align 4
  %160 = add i64 %156, 1
  br label %155

161:                                              ; preds = %155
  %162 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %163 = ptrtoint ptr %162 to i64
  %164 = add i64 %163, 63
  %165 = urem i64 %164, 64
  %166 = sub i64 %164, %165
  %167 = inttoptr i64 %166 to ptr
  %168 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %162, 0
  %169 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %168, ptr %167, 1
  %170 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %169, i64 0, 2
  %171 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %170, i64 256, 3, 0
  %172 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %171, i64 1, 4, 0
  br label %173

173:                                              ; preds = %176, %161
  %174 = phi i64 [ %184, %176 ], [ 0, %161 ]
  %175 = icmp slt i64 %174, 256
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = getelementptr i32, ptr %20, i64 %174
  %178 = load i32, ptr %177, align 4
  %179 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, 1
  %180 = getelementptr i32, ptr %179, i64 %174
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %178, %181
  %183 = getelementptr i32, ptr %167, i64 %174
  store i32 %182, ptr %183, align 4
  %184 = add i64 %174, 1
  br label %173

185:                                              ; preds = %173
  %186 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 256) to i64), i64 64))
  %187 = ptrtoint ptr %186 to i64
  %188 = add i64 %187, 63
  %189 = urem i64 %188, 64
  %190 = sub i64 %188, %189
  %191 = inttoptr i64 %190 to ptr
  %192 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %186, 0
  %193 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %192, ptr %191, 1
  %194 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %193, i64 0, 2
  %195 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %194, i64 256, 3, 0
  %196 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %195, i64 1, 4, 0
  br label %197

197:                                              ; preds = %200, %185
  %198 = phi i64 [ %202, %200 ], [ 0, %185 ]
  %199 = icmp slt i64 %198, 256
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = getelementptr i1, ptr %191, i64 %198
  store i1 true, ptr %201, align 1
  %202 = add i64 %198, 1
  br label %197

203:                                              ; preds = %197
  %204 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 256) to i64), i64 64))
  %205 = ptrtoint ptr %204 to i64
  %206 = add i64 %205, 63
  %207 = urem i64 %206, 64
  %208 = sub i64 %206, %207
  %209 = inttoptr i64 %208 to ptr
  %210 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %204, 0
  %211 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %210, ptr %209, 1
  %212 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %211, i64 0, 2
  %213 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %212, i64 256, 3, 0
  %214 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %213, i64 1, 4, 0
  br label %215

215:                                              ; preds = %218, %203
  %216 = phi i64 [ %220, %218 ], [ 0, %203 ]
  %217 = icmp slt i64 %216, 256
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = getelementptr i1, ptr %209, i64 %216
  store i1 false, ptr %219, align 1
  %220 = add i64 %216, 1
  br label %215

221:                                              ; preds = %215
  %222 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %204, 0
  %223 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %222, ptr %209, 1
  %224 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %223, i64 0, 2
  %225 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %224, i64 256, 3, 0
  %226 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %225, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %209, ptr %191, i64 mul (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %227

227:                                              ; preds = %230, %221
  %228 = phi i64 [ %237, %230 ], [ 0, %221 ]
  %229 = icmp slt i64 %228, 256
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = getelementptr i32, ptr %167, i64 %228
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr i32, ptr %121, i64 %228
  %234 = load i32, ptr %233, align 4
  %235 = srem i32 %232, %234
  %236 = getelementptr i32, ptr %20, i64 %228
  store i32 %235, ptr %236, align 4
  %237 = add i64 %228, 1
  br label %227

238:                                              ; preds = %227
  %239 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %240 = ptrtoint ptr %239 to i64
  %241 = add i64 %240, 63
  %242 = urem i64 %241, 64
  %243 = sub i64 %241, %242
  %244 = inttoptr i64 %243 to ptr
  %245 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %239, 0
  %246 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %245, ptr %244, 1
  %247 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %246, i64 0, 2
  %248 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %247, i64 256, 3, 0
  %249 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %248, i64 1, 4, 0
  br label %250

250:                                              ; preds = %253, %238
  %251 = phi i64 [ %260, %253 ], [ 0, %238 ]
  %252 = icmp slt i64 %251, 256
  br i1 %252, label %253, label %261

253:                                              ; preds = %250
  %254 = getelementptr i32, ptr %20, i64 %251
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr i32, ptr %103, i64 %251
  %257 = load i32, ptr %256, align 4
  %258 = mul i32 %255, %257
  %259 = getelementptr i32, ptr %244, i64 %251
  store i32 %258, ptr %259, align 4
  %260 = add i64 %251, 1
  br label %250

261:                                              ; preds = %250
  br label %262

262:                                              ; preds = %265, %261
  %263 = phi i64 [ %272, %265 ], [ 0, %261 ]
  %264 = icmp slt i64 %263, 256
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = getelementptr i32, ptr %167, i64 %263
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr i32, ptr %121, i64 %263
  %269 = load i32, ptr %268, align 4
  %270 = sdiv i32 %267, %269
  %271 = getelementptr i32, ptr %20, i64 %263
  store i32 %270, ptr %271, align 4
  %272 = add i64 %263, 1
  br label %262

273:                                              ; preds = %262
  %274 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %275 = ptrtoint ptr %274 to i64
  %276 = add i64 %275, 63
  %277 = urem i64 %276, 64
  %278 = sub i64 %276, %277
  %279 = inttoptr i64 %278 to ptr
  %280 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %274, 0
  %281 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %280, ptr %279, 1
  %282 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %281, i64 0, 2
  %283 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %282, i64 256, 3, 0
  %284 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %283, i64 1, 4, 0
  br label %285

285:                                              ; preds = %288, %273
  %286 = phi i64 [ %295, %288 ], [ 0, %273 ]
  %287 = icmp slt i64 %286, 256
  br i1 %287, label %288, label %296

288:                                              ; preds = %285
  %289 = getelementptr i32, ptr %20, i64 %286
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr i32, ptr %85, i64 %286
  %292 = load i32, ptr %291, align 4
  %293 = mul i32 %290, %292
  %294 = getelementptr i32, ptr %279, i64 %286
  store i32 %293, ptr %294, align 4
  %295 = add i64 %286, 1
  br label %285

296:                                              ; preds = %285
  br label %297

297:                                              ; preds = %300, %296
  %298 = phi i64 [ %307, %300 ], [ 0, %296 ]
  %299 = icmp slt i64 %298, 256
  br i1 %299, label %300, label %308

300:                                              ; preds = %297
  %301 = getelementptr i32, ptr %244, i64 %298
  %302 = load i32, ptr %301, align 4
  %303 = getelementptr i32, ptr %279, i64 %298
  %304 = load i32, ptr %303, align 4
  %305 = add i32 %302, %304
  %306 = getelementptr i32, ptr %20, i64 %298
  store i32 %305, ptr %306, align 4
  %307 = add i64 %298, 1
  br label %297

308:                                              ; preds = %297
  %309 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %310 = ptrtoint ptr %309 to i64
  %311 = add i64 %310, 63
  %312 = urem i64 %311, 64
  %313 = sub i64 %311, %312
  %314 = inttoptr i64 %313 to ptr
  %315 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %309, 0
  %316 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %315, ptr %314, 1
  %317 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %316, i64 0, 2
  %318 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %317, i64 256, 3, 0
  %319 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %318, i64 1, 4, 0
  br label %320

320:                                              ; preds = %323, %308
  %321 = phi i64 [ %325, %323 ], [ 0, %308 ]
  %322 = icmp slt i64 %321, 256
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = getelementptr i32, ptr %314, i64 %321
  store i32 0, ptr %324, align 4
  %325 = add i64 %321, 1
  br label %320

326:                                              ; preds = %320
  br label %327

327:                                              ; preds = %330, %326
  %328 = phi i64 [ %337, %330 ], [ 0, %326 ]
  %329 = icmp slt i64 %328, 256
  br i1 %329, label %330, label %338

330:                                              ; preds = %327
  %331 = getelementptr i32, ptr %20, i64 %328
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr i32, ptr %314, i64 %328
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %332, %334
  %336 = getelementptr i32, ptr %20, i64 %328
  store i32 %335, ptr %336, align 4
  %337 = add i64 %328, 1
  br label %327

338:                                              ; preds = %327
  %339 = inttoptr i64 %0 to ptr
  %340 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %339, 0
  %341 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %340, ptr %339, 1
  %342 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %341, i64 0, 2
  %343 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %342, i64 9223372036854775807, 3, 0
  %344 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %343, i64 1, 4, 0
  %345 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %346 = ptrtoint ptr %345 to i64
  %347 = add i64 %346, 63
  %348 = urem i64 %347, 64
  %349 = sub i64 %347, %348
  %350 = inttoptr i64 %349 to ptr
  %351 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %345, 0
  %352 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %351, ptr %350, 1
  %353 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %352, i64 0, 2
  %354 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %353, i64 256, 3, 0
  %355 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %354, i64 1, 3, 1
  %356 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %355, i64 1, 4, 0
  %357 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %356, i64 1, 4, 1
  br label %358

358:                                              ; preds = %369, %338
  %359 = phi i64 [ %370, %369 ], [ 0, %338 ]
  %360 = icmp slt i64 %359, 256
  br i1 %360, label %361, label %371

361:                                              ; preds = %358
  br label %362

362:                                              ; preds = %365, %361
  %363 = phi i64 [ %368, %365 ], [ 0, %361 ]
  %364 = icmp slt i64 %363, 1
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = add i64 %359, %363
  %367 = getelementptr float, ptr %350, i64 %366
  store float 0.000000e+00, ptr %367, align 4
  %368 = add i64 %363, 1
  br label %362

369:                                              ; preds = %362
  %370 = add i64 %359, 1
  br label %358

371:                                              ; preds = %358
  %372 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %373 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %372, ptr %20, 1
  %374 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %373, i64 0, 2
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, i64 256, 3, 0
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, i64 1, 4, 0
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 1, 3, 1
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 1, 4, 1
  %379 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %380 = ptrtoint ptr %379 to i64
  %381 = add i64 %380, 63
  %382 = urem i64 %381, 64
  %383 = sub i64 %381, %382
  %384 = inttoptr i64 %383 to ptr
  %385 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %379, 0
  %386 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %385, ptr %384, 1
  %387 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %386, i64 0, 2
  %388 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %387, i64 256, 3, 0
  %389 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %388, i64 1, 3, 1
  %390 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %389, i64 1, 4, 0
  %391 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %390, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %384, ptr %350, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %392

392:                                              ; preds = %413, %371
  %393 = phi i64 [ %414, %413 ], [ 0, %371 ]
  %394 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %412, %413 ], [ %391, %371 ]
  %395 = icmp slt i64 %393, 256
  br i1 %395, label %396, label %415

396:                                              ; preds = %392
  %397 = getelementptr i1, ptr %209, i64 %393
  %398 = load i1, ptr %397, align 1
  br i1 %398, label %399, label %410

399:                                              ; preds = %396
  %400 = add i64 %393, 0
  %401 = getelementptr i32, ptr %20, i64 %400
  %402 = load i32, ptr %401, align 4
  %403 = sext i32 %402 to i64
  %404 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %344, 1
  %405 = getelementptr float, ptr %404, i64 %403
  %406 = load float, ptr %405, align 4
  %407 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 1
  %408 = add i64 %393, 0
  %409 = getelementptr float, ptr %407, i64 %408
  store float %406, ptr %409, align 4
  br label %411

410:                                              ; preds = %396
  br label %411

411:                                              ; preds = %399, %410
  %412 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %394, %410 ], [ %394, %399 ]
  br label %413

413:                                              ; preds = %411
  %414 = add i64 %393, 1
  br label %392

415:                                              ; preds = %392
  %416 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 0
  %417 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 1
  %418 = insertvalue { ptr, ptr, i64 } undef, ptr %416, 0
  %419 = insertvalue { ptr, ptr, i64 } %418, ptr %417, 1
  %420 = insertvalue { ptr, ptr, i64 } %419, i64 0, 2
  %421 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 2
  %422 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 3, 0
  %423 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 3, 1
  %424 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 4, 0
  %425 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, 4, 1
  %426 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %416, 0
  %427 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %426, ptr %417, 1
  %428 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %427, i64 0, 2
  %429 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %428, i64 256, 3, 0
  %430 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %429, i64 1, 4, 0
  br label %431

431:                                              ; preds = %434, %415
  %432 = phi i64 [ %441, %434 ], [ 0, %415 ]
  %433 = icmp slt i64 %432, 256
  br i1 %433, label %434, label %442

434:                                              ; preds = %431
  %435 = getelementptr i32, ptr %244, i64 %432
  %436 = load i32, ptr %435, align 4
  %437 = getelementptr i32, ptr %67, i64 %432
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %436, %438
  %440 = getelementptr i32, ptr %20, i64 %432
  store i32 %439, ptr %440, align 4
  %441 = add i64 %432, 1
  br label %431

442:                                              ; preds = %431
  br label %443

443:                                              ; preds = %446, %442
  %444 = phi i64 [ %453, %446 ], [ 0, %442 ]
  %445 = icmp slt i64 %444, 256
  br i1 %445, label %446, label %454

446:                                              ; preds = %443
  %447 = getelementptr i32, ptr %20, i64 %444
  %448 = load i32, ptr %447, align 4
  %449 = getelementptr i32, ptr %279, i64 %444
  %450 = load i32, ptr %449, align 4
  %451 = add i32 %448, %450
  %452 = getelementptr i32, ptr %20, i64 %444
  store i32 %451, ptr %452, align 4
  %453 = add i64 %444, 1
  br label %443

454:                                              ; preds = %443
  br label %455

455:                                              ; preds = %458, %454
  %456 = phi i64 [ %465, %458 ], [ 0, %454 ]
  %457 = icmp slt i64 %456, 256
  br i1 %457, label %458, label %466

458:                                              ; preds = %455
  %459 = getelementptr i32, ptr %20, i64 %456
  %460 = load i32, ptr %459, align 4
  %461 = getelementptr i32, ptr %314, i64 %456
  %462 = load i32, ptr %461, align 4
  %463 = add i32 %460, %462
  %464 = getelementptr i32, ptr %20, i64 %456
  store i32 %463, ptr %464, align 4
  %465 = add i64 %456, 1
  br label %455

466:                                              ; preds = %455
  %467 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %339, 0
  %468 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %467, ptr %339, 1
  %469 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %468, i64 0, 2
  %470 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %469, i64 9223372036854775807, 3, 0
  %471 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %470, i64 1, 4, 0
  %472 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %473 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %472, ptr %20, 1
  %474 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %473, i64 0, 2
  %475 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %474, i64 256, 3, 0
  %476 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %475, i64 1, 4, 0
  %477 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %476, i64 1, 3, 1
  %478 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %477, i64 1, 4, 1
  %479 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %480 = ptrtoint ptr %479 to i64
  %481 = add i64 %480, 63
  %482 = urem i64 %481, 64
  %483 = sub i64 %481, %482
  %484 = inttoptr i64 %483 to ptr
  %485 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %479, 0
  %486 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %485, ptr %484, 1
  %487 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %486, i64 0, 2
  %488 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %487, i64 256, 3, 0
  %489 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %488, i64 1, 3, 1
  %490 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %489, i64 1, 4, 0
  %491 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %490, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %484, ptr %350, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %492

492:                                              ; preds = %513, %466
  %493 = phi i64 [ %514, %513 ], [ 0, %466 ]
  %494 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %512, %513 ], [ %491, %466 ]
  %495 = icmp slt i64 %493, 256
  br i1 %495, label %496, label %515

496:                                              ; preds = %492
  %497 = getelementptr i1, ptr %209, i64 %493
  %498 = load i1, ptr %497, align 1
  br i1 %498, label %499, label %510

499:                                              ; preds = %496
  %500 = add i64 %493, 0
  %501 = getelementptr i32, ptr %20, i64 %500
  %502 = load i32, ptr %501, align 4
  %503 = sext i32 %502 to i64
  %504 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %471, 1
  %505 = getelementptr float, ptr %504, i64 %503
  %506 = load float, ptr %505, align 4
  %507 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 1
  %508 = add i64 %493, 0
  %509 = getelementptr float, ptr %507, i64 %508
  store float %506, ptr %509, align 4
  br label %511

510:                                              ; preds = %496
  br label %511

511:                                              ; preds = %499, %510
  %512 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %494, %510 ], [ %494, %499 ]
  br label %513

513:                                              ; preds = %511
  %514 = add i64 %493, 1
  br label %492

515:                                              ; preds = %492
  %516 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 0
  %517 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 1
  %518 = insertvalue { ptr, ptr, i64 } undef, ptr %516, 0
  %519 = insertvalue { ptr, ptr, i64 } %518, ptr %517, 1
  %520 = insertvalue { ptr, ptr, i64 } %519, i64 0, 2
  %521 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 2
  %522 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 3, 0
  %523 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 3, 1
  %524 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 4, 0
  %525 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, 4, 1
  %526 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %516, 0
  %527 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %526, ptr %517, 1
  %528 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %527, i64 0, 2
  %529 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %528, i64 256, 3, 0
  %530 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %529, i64 1, 4, 0
  br label %531

531:                                              ; preds = %534, %515
  %532 = phi i64 [ %541, %534 ], [ 0, %515 ]
  %533 = icmp slt i64 %532, 256
  br i1 %533, label %534, label %542

534:                                              ; preds = %531
  %535 = getelementptr i32, ptr %244, i64 %532
  %536 = load i32, ptr %535, align 4
  %537 = getelementptr i32, ptr %49, i64 %532
  %538 = load i32, ptr %537, align 4
  %539 = add i32 %536, %538
  %540 = getelementptr i32, ptr %20, i64 %532
  store i32 %539, ptr %540, align 4
  %541 = add i64 %532, 1
  br label %531

542:                                              ; preds = %531
  br label %543

543:                                              ; preds = %546, %542
  %544 = phi i64 [ %553, %546 ], [ 0, %542 ]
  %545 = icmp slt i64 %544, 256
  br i1 %545, label %546, label %554

546:                                              ; preds = %543
  %547 = getelementptr i32, ptr %20, i64 %544
  %548 = load i32, ptr %547, align 4
  %549 = getelementptr i32, ptr %279, i64 %544
  %550 = load i32, ptr %549, align 4
  %551 = add i32 %548, %550
  %552 = getelementptr i32, ptr %20, i64 %544
  store i32 %551, ptr %552, align 4
  %553 = add i64 %544, 1
  br label %543

554:                                              ; preds = %543
  br label %555

555:                                              ; preds = %558, %554
  %556 = phi i64 [ %565, %558 ], [ 0, %554 ]
  %557 = icmp slt i64 %556, 256
  br i1 %557, label %558, label %566

558:                                              ; preds = %555
  %559 = getelementptr i32, ptr %20, i64 %556
  %560 = load i32, ptr %559, align 4
  %561 = getelementptr i32, ptr %314, i64 %556
  %562 = load i32, ptr %561, align 4
  %563 = add i32 %560, %562
  %564 = getelementptr i32, ptr %20, i64 %556
  store i32 %563, ptr %564, align 4
  %565 = add i64 %556, 1
  br label %555

566:                                              ; preds = %555
  %567 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %339, 0
  %568 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %567, ptr %339, 1
  %569 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %568, i64 0, 2
  %570 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %569, i64 9223372036854775807, 3, 0
  %571 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %570, i64 1, 4, 0
  %572 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %573 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %572, ptr %20, 1
  %574 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %573, i64 0, 2
  %575 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %574, i64 256, 3, 0
  %576 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %575, i64 1, 4, 0
  %577 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %576, i64 1, 3, 1
  %578 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %577, i64 1, 4, 1
  %579 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %580 = ptrtoint ptr %579 to i64
  %581 = add i64 %580, 63
  %582 = urem i64 %581, 64
  %583 = sub i64 %581, %582
  %584 = inttoptr i64 %583 to ptr
  %585 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %579, 0
  %586 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %585, ptr %584, 1
  %587 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %586, i64 0, 2
  %588 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %587, i64 256, 3, 0
  %589 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %588, i64 1, 3, 1
  %590 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %589, i64 1, 4, 0
  %591 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %590, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %584, ptr %350, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %592

592:                                              ; preds = %613, %566
  %593 = phi i64 [ %614, %613 ], [ 0, %566 ]
  %594 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %612, %613 ], [ %591, %566 ]
  %595 = icmp slt i64 %593, 256
  br i1 %595, label %596, label %615

596:                                              ; preds = %592
  %597 = getelementptr i1, ptr %209, i64 %593
  %598 = load i1, ptr %597, align 1
  br i1 %598, label %599, label %610

599:                                              ; preds = %596
  %600 = add i64 %593, 0
  %601 = getelementptr i32, ptr %20, i64 %600
  %602 = load i32, ptr %601, align 4
  %603 = sext i32 %602 to i64
  %604 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %571, 1
  %605 = getelementptr float, ptr %604, i64 %603
  %606 = load float, ptr %605, align 4
  %607 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 1
  %608 = add i64 %593, 0
  %609 = getelementptr float, ptr %607, i64 %608
  store float %606, ptr %609, align 4
  br label %611

610:                                              ; preds = %596
  br label %611

611:                                              ; preds = %599, %610
  %612 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %594, %610 ], [ %594, %599 ]
  br label %613

613:                                              ; preds = %611
  %614 = add i64 %593, 1
  br label %592

615:                                              ; preds = %592
  %616 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 0
  %617 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 1
  %618 = insertvalue { ptr, ptr, i64 } undef, ptr %616, 0
  %619 = insertvalue { ptr, ptr, i64 } %618, ptr %617, 1
  %620 = insertvalue { ptr, ptr, i64 } %619, i64 0, 2
  %621 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 2
  %622 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 3, 0
  %623 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 3, 1
  %624 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 4, 0
  %625 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, 4, 1
  %626 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %616, 0
  %627 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %626, ptr %617, 1
  %628 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %627, i64 0, 2
  %629 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %628, i64 256, 3, 0
  %630 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %629, i64 1, 4, 0
  br label %631

631:                                              ; preds = %634, %615
  %632 = phi i64 [ %641, %634 ], [ 0, %615 ]
  %633 = icmp slt i64 %632, 256
  br i1 %633, label %634, label %642

634:                                              ; preds = %631
  %635 = getelementptr i32, ptr %244, i64 %632
  %636 = load i32, ptr %635, align 4
  %637 = getelementptr i32, ptr %31, i64 %632
  %638 = load i32, ptr %637, align 4
  %639 = add i32 %636, %638
  %640 = getelementptr i32, ptr %20, i64 %632
  store i32 %639, ptr %640, align 4
  %641 = add i64 %632, 1
  br label %631

642:                                              ; preds = %631
  br label %643

643:                                              ; preds = %646, %642
  %644 = phi i64 [ %653, %646 ], [ 0, %642 ]
  %645 = icmp slt i64 %644, 256
  br i1 %645, label %646, label %654

646:                                              ; preds = %643
  %647 = getelementptr i32, ptr %20, i64 %644
  %648 = load i32, ptr %647, align 4
  %649 = getelementptr i32, ptr %279, i64 %644
  %650 = load i32, ptr %649, align 4
  %651 = add i32 %648, %650
  %652 = getelementptr i32, ptr %20, i64 %644
  store i32 %651, ptr %652, align 4
  %653 = add i64 %644, 1
  br label %643

654:                                              ; preds = %643
  br label %655

655:                                              ; preds = %658, %654
  %656 = phi i64 [ %665, %658 ], [ 0, %654 ]
  %657 = icmp slt i64 %656, 256
  br i1 %657, label %658, label %666

658:                                              ; preds = %655
  %659 = getelementptr i32, ptr %20, i64 %656
  %660 = load i32, ptr %659, align 4
  %661 = getelementptr i32, ptr %314, i64 %656
  %662 = load i32, ptr %661, align 4
  %663 = add i32 %660, %662
  %664 = getelementptr i32, ptr %20, i64 %656
  store i32 %663, ptr %664, align 4
  %665 = add i64 %656, 1
  br label %655

666:                                              ; preds = %655
  %667 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %339, 0
  %668 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %667, ptr %339, 1
  %669 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %668, i64 0, 2
  %670 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %669, i64 9223372036854775807, 3, 0
  %671 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %670, i64 1, 4, 0
  %672 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %673 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %672, ptr %20, 1
  %674 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %673, i64 0, 2
  %675 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %674, i64 256, 3, 0
  %676 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %675, i64 1, 4, 0
  %677 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %676, i64 1, 3, 1
  %678 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %677, i64 1, 4, 1
  br label %679

679:                                              ; preds = %700, %666
  %680 = phi i64 [ %701, %700 ], [ 0, %666 ]
  %681 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %699, %700 ], [ %357, %666 ]
  %682 = icmp slt i64 %680, 256
  br i1 %682, label %683, label %702

683:                                              ; preds = %679
  %684 = getelementptr i1, ptr %209, i64 %680
  %685 = load i1, ptr %684, align 1
  br i1 %685, label %686, label %697

686:                                              ; preds = %683
  %687 = add i64 %680, 0
  %688 = getelementptr i32, ptr %20, i64 %687
  %689 = load i32, ptr %688, align 4
  %690 = sext i32 %689 to i64
  %691 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %671, 1
  %692 = getelementptr float, ptr %691, i64 %690
  %693 = load float, ptr %692, align 4
  %694 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 1
  %695 = add i64 %680, 0
  %696 = getelementptr float, ptr %694, i64 %695
  store float %693, ptr %696, align 4
  br label %698

697:                                              ; preds = %683
  br label %698

698:                                              ; preds = %686, %697
  %699 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %681, %697 ], [ %681, %686 ]
  br label %700

700:                                              ; preds = %698
  %701 = add i64 %680, 1
  br label %679

702:                                              ; preds = %679
  %703 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 0
  %704 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 1
  %705 = insertvalue { ptr, ptr, i64 } undef, ptr %703, 0
  %706 = insertvalue { ptr, ptr, i64 } %705, ptr %704, 1
  %707 = insertvalue { ptr, ptr, i64 } %706, i64 0, 2
  %708 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 2
  %709 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 3, 0
  %710 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 3, 1
  %711 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 4, 0
  %712 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, 4, 1
  %713 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %703, 0
  %714 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %713, ptr %704, 1
  %715 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %714, i64 0, 2
  %716 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %715, i64 256, 3, 0
  %717 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %716, i64 1, 4, 0
  br label %718

718:                                              ; preds = %721, %702
  %719 = phi i64 [ %728, %721 ], [ 0, %702 ]
  %720 = icmp slt i64 %719, 256
  br i1 %720, label %721, label %729

721:                                              ; preds = %718
  %722 = getelementptr float, ptr %517, i64 %719
  %723 = load float, ptr %722, align 4
  %724 = getelementptr float, ptr %417, i64 %719
  %725 = load float, ptr %724, align 4
  %726 = call float @llvm.maximum.f32(float %723, float %725)
  %727 = getelementptr float, ptr %9, i64 %719
  store float %726, ptr %727, align 4
  %728 = add i64 %719, 1
  br label %718

729:                                              ; preds = %718
  br label %730

730:                                              ; preds = %733, %729
  %731 = phi i64 [ %740, %733 ], [ 0, %729 ]
  %732 = icmp slt i64 %731, 256
  br i1 %732, label %733, label %741

733:                                              ; preds = %730
  %734 = getelementptr float, ptr %617, i64 %731
  %735 = load float, ptr %734, align 4
  %736 = getelementptr float, ptr %9, i64 %731
  %737 = load float, ptr %736, align 4
  %738 = call float @llvm.maximum.f32(float %735, float %737)
  %739 = getelementptr float, ptr %9, i64 %731
  store float %738, ptr %739, align 4
  %740 = add i64 %731, 1
  br label %730

741:                                              ; preds = %730
  br label %742

742:                                              ; preds = %745, %741
  %743 = phi i64 [ %752, %745 ], [ 0, %741 ]
  %744 = icmp slt i64 %743, 256
  br i1 %744, label %745, label %753

745:                                              ; preds = %742
  %746 = getelementptr float, ptr %704, i64 %743
  %747 = load float, ptr %746, align 4
  %748 = getelementptr float, ptr %9, i64 %743
  %749 = load float, ptr %748, align 4
  %750 = call float @llvm.maximum.f32(float %747, float %749)
  %751 = getelementptr float, ptr %9, i64 %743
  store float %750, ptr %751, align 4
  %752 = add i64 %743, 1
  br label %742

753:                                              ; preds = %742
  %754 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, 1
  %755 = load i32, ptr %754, align 4
  %756 = sext i32 %755 to i64
  %757 = inttoptr i64 %1 to ptr
  %758 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %757, 0
  %759 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %758, ptr %757, 1
  %760 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %759, i64 %756, 2
  %761 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %760, i64 256, 3, 0
  %762 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %761, i64 1, 4, 0
  %763 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %764 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %763, ptr %9, 1
  %765 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %764, i64 0, 2
  %766 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %765, i64 256, 3, 0
  %767 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %766, i64 1, 4, 0
  %768 = call ptr @llvm.stacksave()
  %769 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %767, ptr %769, align 8
  %770 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %769, 1
  %771 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %762, ptr %771, align 8
  %772 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %771, 1
  %773 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %770, ptr %773, align 8
  %774 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %772, ptr %774, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %773, ptr %774)
  call void @llvm.stackrestore(ptr %768)
  ret void
}

define void @_mlir_ciface_triton__0d1d2de_4(i64 %0, i64 %1, i32 %2) {
  call void @triton__0d1d2de_4(i64 %0, i64 %1, i32 %2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximum.f32(float, float) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
