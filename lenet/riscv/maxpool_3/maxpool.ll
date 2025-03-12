; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton__0d1d2de_3(i64 %0, i64 %1, i32 %2) {
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
  br label %162

162:                                              ; preds = %165, %161
  %163 = phi i64 [ %173, %165 ], [ 0, %161 ]
  %164 = icmp slt i64 %163, 256
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = getelementptr i32, ptr %20, i64 %163
  %167 = load i32, ptr %166, align 4
  %168 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, 1
  %169 = getelementptr i32, ptr %168, i64 %163
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %167, %170
  %172 = getelementptr i32, ptr %20, i64 %163
  store i32 %171, ptr %172, align 4
  %173 = add i64 %163, 1
  br label %162

174:                                              ; preds = %162
  %175 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 256) to i64), i64 64))
  %176 = ptrtoint ptr %175 to i64
  %177 = add i64 %176, 63
  %178 = urem i64 %177, 64
  %179 = sub i64 %177, %178
  %180 = inttoptr i64 %179 to ptr
  %181 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %175, 0
  %182 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, ptr %180, 1
  %183 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %182, i64 0, 2
  %184 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %183, i64 256, 3, 0
  %185 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %184, i64 1, 4, 0
  br label %186

186:                                              ; preds = %189, %174
  %187 = phi i64 [ %191, %189 ], [ 0, %174 ]
  %188 = icmp slt i64 %187, 256
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = getelementptr i1, ptr %180, i64 %187
  store i1 true, ptr %190, align 1
  %191 = add i64 %187, 1
  br label %186

192:                                              ; preds = %186
  %193 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 256) to i64), i64 64))
  %194 = ptrtoint ptr %193 to i64
  %195 = add i64 %194, 63
  %196 = urem i64 %195, 64
  %197 = sub i64 %195, %196
  %198 = inttoptr i64 %197 to ptr
  %199 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %193, 0
  %200 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %199, ptr %198, 1
  %201 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %200, i64 0, 2
  %202 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %201, i64 256, 3, 0
  %203 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %202, i64 1, 4, 0
  br label %204

204:                                              ; preds = %207, %192
  %205 = phi i64 [ %209, %207 ], [ 0, %192 ]
  %206 = icmp slt i64 %205, 256
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = getelementptr i1, ptr %198, i64 %205
  store i1 false, ptr %208, align 1
  %209 = add i64 %205, 1
  br label %204

210:                                              ; preds = %204
  %211 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %193, 0
  %212 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %211, ptr %198, 1
  %213 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %212, i64 0, 2
  %214 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %213, i64 256, 3, 0
  %215 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %214, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %198, ptr %180, i64 mul (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 256), i1 false)
  %216 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %217 = ptrtoint ptr %216 to i64
  %218 = add i64 %217, 63
  %219 = urem i64 %218, 64
  %220 = sub i64 %218, %219
  %221 = inttoptr i64 %220 to ptr
  %222 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %216, 0
  %223 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %222, ptr %221, 1
  %224 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %223, i64 0, 2
  %225 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %224, i64 256, 3, 0
  %226 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %225, i64 1, 4, 0
  br label %227

227:                                              ; preds = %230, %210
  %228 = phi i64 [ %237, %230 ], [ 0, %210 ]
  %229 = icmp slt i64 %228, 256
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = getelementptr i32, ptr %20, i64 %228
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr i32, ptr %121, i64 %228
  %234 = load i32, ptr %233, align 4
  %235 = srem i32 %232, %234
  %236 = getelementptr i32, ptr %221, i64 %228
  store i32 %235, ptr %236, align 4
  %237 = add i64 %228, 1
  br label %227

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %242, %238
  %240 = phi i64 [ %249, %242 ], [ 0, %238 ]
  %241 = icmp slt i64 %240, 256
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = getelementptr i32, ptr %20, i64 %240
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr i32, ptr %121, i64 %240
  %246 = load i32, ptr %245, align 4
  %247 = sdiv i32 %244, %246
  %248 = getelementptr i32, ptr %20, i64 %240
  store i32 %247, ptr %248, align 4
  %249 = add i64 %240, 1
  br label %239

250:                                              ; preds = %239
  %251 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %252 = ptrtoint ptr %251 to i64
  %253 = add i64 %252, 63
  %254 = urem i64 %253, 64
  %255 = sub i64 %253, %254
  %256 = inttoptr i64 %255 to ptr
  %257 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %251, 0
  %258 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %257, ptr %256, 1
  %259 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %258, i64 0, 2
  %260 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %259, i64 256, 3, 0
  %261 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %260, i64 1, 4, 0
  br label %262

262:                                              ; preds = %265, %250
  %263 = phi i64 [ %272, %265 ], [ 0, %250 ]
  %264 = icmp slt i64 %263, 256
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = getelementptr i32, ptr %20, i64 %263
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr i32, ptr %121, i64 %263
  %269 = load i32, ptr %268, align 4
  %270 = srem i32 %267, %269
  %271 = getelementptr i32, ptr %256, i64 %263
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
  %289 = getelementptr i32, ptr %221, i64 %286
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr i32, ptr %103, i64 %286
  %292 = load i32, ptr %291, align 4
  %293 = mul i32 %290, %292
  %294 = getelementptr i32, ptr %279, i64 %286
  store i32 %293, ptr %294, align 4
  %295 = add i64 %286, 1
  br label %285

296:                                              ; preds = %285
  %297 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %298 = ptrtoint ptr %297 to i64
  %299 = add i64 %298, 63
  %300 = urem i64 %299, 64
  %301 = sub i64 %299, %300
  %302 = inttoptr i64 %301 to ptr
  %303 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %297, 0
  %304 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %303, ptr %302, 1
  %305 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %304, i64 0, 2
  %306 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %305, i64 256, 3, 0
  %307 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %306, i64 1, 4, 0
  br label %308

308:                                              ; preds = %311, %296
  %309 = phi i64 [ %318, %311 ], [ 0, %296 ]
  %310 = icmp slt i64 %309, 256
  br i1 %310, label %311, label %319

311:                                              ; preds = %308
  %312 = getelementptr i32, ptr %20, i64 %309
  %313 = load i32, ptr %312, align 4
  %314 = getelementptr i32, ptr %85, i64 %309
  %315 = load i32, ptr %314, align 4
  %316 = mul i32 %313, %315
  %317 = getelementptr i32, ptr %302, i64 %309
  store i32 %316, ptr %317, align 4
  %318 = add i64 %309, 1
  br label %308

319:                                              ; preds = %308
  br label %320

320:                                              ; preds = %323, %319
  %321 = phi i64 [ %330, %323 ], [ 0, %319 ]
  %322 = icmp slt i64 %321, 256
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = getelementptr i32, ptr %279, i64 %321
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr i32, ptr %302, i64 %321
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %325, %327
  %329 = getelementptr i32, ptr %20, i64 %321
  store i32 %328, ptr %329, align 4
  %330 = add i64 %321, 1
  br label %320

331:                                              ; preds = %320
  %332 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %333 = ptrtoint ptr %332 to i64
  %334 = add i64 %333, 63
  %335 = urem i64 %334, 64
  %336 = sub i64 %334, %335
  %337 = inttoptr i64 %336 to ptr
  %338 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %332, 0
  %339 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %338, ptr %337, 1
  %340 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %339, i64 0, 2
  %341 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %340, i64 256, 3, 0
  %342 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %341, i64 1, 4, 0
  br label %343

343:                                              ; preds = %346, %331
  %344 = phi i64 [ %348, %346 ], [ 0, %331 ]
  %345 = icmp slt i64 %344, 256
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = getelementptr i32, ptr %337, i64 %344
  store i32 0, ptr %347, align 4
  %348 = add i64 %344, 1
  br label %343

349:                                              ; preds = %343
  br label %350

350:                                              ; preds = %353, %349
  %351 = phi i64 [ %360, %353 ], [ 0, %349 ]
  %352 = icmp slt i64 %351, 256
  br i1 %352, label %353, label %361

353:                                              ; preds = %350
  %354 = getelementptr i32, ptr %20, i64 %351
  %355 = load i32, ptr %354, align 4
  %356 = getelementptr i32, ptr %337, i64 %351
  %357 = load i32, ptr %356, align 4
  %358 = add i32 %355, %357
  %359 = getelementptr i32, ptr %20, i64 %351
  store i32 %358, ptr %359, align 4
  %360 = add i64 %351, 1
  br label %350

361:                                              ; preds = %350
  %362 = inttoptr i64 %0 to ptr
  %363 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %362, 0
  %364 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %363, ptr %362, 1
  %365 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %364, i64 0, 2
  %366 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %365, i64 9223372036854775807, 3, 0
  %367 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %366, i64 1, 4, 0
  %368 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %369 = ptrtoint ptr %368 to i64
  %370 = add i64 %369, 63
  %371 = urem i64 %370, 64
  %372 = sub i64 %370, %371
  %373 = inttoptr i64 %372 to ptr
  %374 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %368, 0
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, ptr %373, 1
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, i64 0, 2
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 256, 3, 0
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 1, 3, 1
  %379 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, i64 1, 4, 0
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %379, i64 1, 4, 1
  br label %381

381:                                              ; preds = %392, %361
  %382 = phi i64 [ %393, %392 ], [ 0, %361 ]
  %383 = icmp slt i64 %382, 256
  br i1 %383, label %384, label %394

384:                                              ; preds = %381
  br label %385

385:                                              ; preds = %388, %384
  %386 = phi i64 [ %391, %388 ], [ 0, %384 ]
  %387 = icmp slt i64 %386, 1
  br i1 %387, label %388, label %392

388:                                              ; preds = %385
  %389 = add i64 %382, %386
  %390 = getelementptr float, ptr %373, i64 %389
  store float 0.000000e+00, ptr %390, align 4
  %391 = add i64 %386, 1
  br label %385

392:                                              ; preds = %385
  %393 = add i64 %382, 1
  br label %381

394:                                              ; preds = %381
  %395 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %396 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %395, ptr %20, 1
  %397 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, i64 0, 2
  %398 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, i64 256, 3, 0
  %399 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %398, i64 1, 4, 0
  %400 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %399, i64 1, 3, 1
  %401 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %400, i64 1, 4, 1
  %402 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %403 = ptrtoint ptr %402 to i64
  %404 = add i64 %403, 63
  %405 = urem i64 %404, 64
  %406 = sub i64 %404, %405
  %407 = inttoptr i64 %406 to ptr
  %408 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %402, 0
  %409 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %408, ptr %407, 1
  %410 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %409, i64 0, 2
  %411 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %410, i64 256, 3, 0
  %412 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %411, i64 1, 3, 1
  %413 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %412, i64 1, 4, 0
  %414 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %413, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %407, ptr %373, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %415

415:                                              ; preds = %436, %394
  %416 = phi i64 [ %437, %436 ], [ 0, %394 ]
  %417 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %435, %436 ], [ %414, %394 ]
  %418 = icmp slt i64 %416, 256
  br i1 %418, label %419, label %438

419:                                              ; preds = %415
  %420 = getelementptr i1, ptr %198, i64 %416
  %421 = load i1, ptr %420, align 1
  br i1 %421, label %422, label %433

422:                                              ; preds = %419
  %423 = add i64 %416, 0
  %424 = getelementptr i32, ptr %20, i64 %423
  %425 = load i32, ptr %424, align 4
  %426 = sext i32 %425 to i64
  %427 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %367, 1
  %428 = getelementptr float, ptr %427, i64 %426
  %429 = load float, ptr %428, align 4
  %430 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 1
  %431 = add i64 %416, 0
  %432 = getelementptr float, ptr %430, i64 %431
  store float %429, ptr %432, align 4
  br label %434

433:                                              ; preds = %419
  br label %434

434:                                              ; preds = %422, %433
  %435 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %417, %433 ], [ %417, %422 ]
  br label %436

436:                                              ; preds = %434
  %437 = add i64 %416, 1
  br label %415

438:                                              ; preds = %415
  %439 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 0
  %440 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 1
  %441 = insertvalue { ptr, ptr, i64 } undef, ptr %439, 0
  %442 = insertvalue { ptr, ptr, i64 } %441, ptr %440, 1
  %443 = insertvalue { ptr, ptr, i64 } %442, i64 0, 2
  %444 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 2
  %445 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 3, 0
  %446 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 3, 1
  %447 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 4, 0
  %448 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, 4, 1
  %449 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %439, 0
  %450 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %449, ptr %440, 1
  %451 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %450, i64 0, 2
  %452 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %451, i64 256, 3, 0
  %453 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %452, i64 1, 4, 0
  %454 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %455 = ptrtoint ptr %454 to i64
  %456 = add i64 %455, 63
  %457 = urem i64 %456, 64
  %458 = sub i64 %456, %457
  %459 = inttoptr i64 %458 to ptr
  %460 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %454, 0
  %461 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %460, ptr %459, 1
  %462 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %461, i64 0, 2
  %463 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %462, i64 256, 3, 0
  %464 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %463, i64 1, 4, 0
  br label %465

465:                                              ; preds = %468, %438
  %466 = phi i64 [ %475, %468 ], [ 0, %438 ]
  %467 = icmp slt i64 %466, 256
  br i1 %467, label %468, label %476

468:                                              ; preds = %465
  %469 = getelementptr i32, ptr %279, i64 %466
  %470 = load i32, ptr %469, align 4
  %471 = getelementptr i32, ptr %67, i64 %466
  %472 = load i32, ptr %471, align 4
  %473 = add i32 %470, %472
  %474 = getelementptr i32, ptr %459, i64 %466
  store i32 %473, ptr %474, align 4
  %475 = add i64 %466, 1
  br label %465

476:                                              ; preds = %465
  br label %477

477:                                              ; preds = %480, %476
  %478 = phi i64 [ %487, %480 ], [ 0, %476 ]
  %479 = icmp slt i64 %478, 256
  br i1 %479, label %480, label %488

480:                                              ; preds = %477
  %481 = getelementptr i32, ptr %459, i64 %478
  %482 = load i32, ptr %481, align 4
  %483 = getelementptr i32, ptr %302, i64 %478
  %484 = load i32, ptr %483, align 4
  %485 = add i32 %482, %484
  %486 = getelementptr i32, ptr %20, i64 %478
  store i32 %485, ptr %486, align 4
  %487 = add i64 %478, 1
  br label %477

488:                                              ; preds = %477
  br label %489

489:                                              ; preds = %492, %488
  %490 = phi i64 [ %499, %492 ], [ 0, %488 ]
  %491 = icmp slt i64 %490, 256
  br i1 %491, label %492, label %500

492:                                              ; preds = %489
  %493 = getelementptr i32, ptr %20, i64 %490
  %494 = load i32, ptr %493, align 4
  %495 = getelementptr i32, ptr %337, i64 %490
  %496 = load i32, ptr %495, align 4
  %497 = add i32 %494, %496
  %498 = getelementptr i32, ptr %20, i64 %490
  store i32 %497, ptr %498, align 4
  %499 = add i64 %490, 1
  br label %489

500:                                              ; preds = %489
  %501 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %362, 0
  %502 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %501, ptr %362, 1
  %503 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %502, i64 0, 2
  %504 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %503, i64 9223372036854775807, 3, 0
  %505 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %504, i64 1, 4, 0
  %506 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %507 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %506, ptr %20, 1
  %508 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %507, i64 0, 2
  %509 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %508, i64 256, 3, 0
  %510 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %509, i64 1, 4, 0
  %511 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %510, i64 1, 3, 1
  %512 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %511, i64 1, 4, 1
  %513 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %514 = ptrtoint ptr %513 to i64
  %515 = add i64 %514, 63
  %516 = urem i64 %515, 64
  %517 = sub i64 %515, %516
  %518 = inttoptr i64 %517 to ptr
  %519 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %513, 0
  %520 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %519, ptr %518, 1
  %521 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %520, i64 0, 2
  %522 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %521, i64 256, 3, 0
  %523 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %522, i64 1, 3, 1
  %524 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %523, i64 1, 4, 0
  %525 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %524, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %518, ptr %373, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %526

526:                                              ; preds = %547, %500
  %527 = phi i64 [ %548, %547 ], [ 0, %500 ]
  %528 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %546, %547 ], [ %525, %500 ]
  %529 = icmp slt i64 %527, 256
  br i1 %529, label %530, label %549

530:                                              ; preds = %526
  %531 = getelementptr i1, ptr %198, i64 %527
  %532 = load i1, ptr %531, align 1
  br i1 %532, label %533, label %544

533:                                              ; preds = %530
  %534 = add i64 %527, 0
  %535 = getelementptr i32, ptr %20, i64 %534
  %536 = load i32, ptr %535, align 4
  %537 = sext i32 %536 to i64
  %538 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %505, 1
  %539 = getelementptr float, ptr %538, i64 %537
  %540 = load float, ptr %539, align 4
  %541 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 1
  %542 = add i64 %527, 0
  %543 = getelementptr float, ptr %541, i64 %542
  store float %540, ptr %543, align 4
  br label %545

544:                                              ; preds = %530
  br label %545

545:                                              ; preds = %533, %544
  %546 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %528, %544 ], [ %528, %533 ]
  br label %547

547:                                              ; preds = %545
  %548 = add i64 %527, 1
  br label %526

549:                                              ; preds = %526
  %550 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 0
  %551 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 1
  %552 = insertvalue { ptr, ptr, i64 } undef, ptr %550, 0
  %553 = insertvalue { ptr, ptr, i64 } %552, ptr %551, 1
  %554 = insertvalue { ptr, ptr, i64 } %553, i64 0, 2
  %555 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 2
  %556 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 3, 0
  %557 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 3, 1
  %558 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 4, 0
  %559 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, 4, 1
  %560 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %550, 0
  %561 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %560, ptr %551, 1
  %562 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %561, i64 0, 2
  %563 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %562, i64 256, 3, 0
  %564 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %563, i64 1, 4, 0
  %565 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %566 = ptrtoint ptr %565 to i64
  %567 = add i64 %566, 63
  %568 = urem i64 %567, 64
  %569 = sub i64 %567, %568
  %570 = inttoptr i64 %569 to ptr
  %571 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %565, 0
  %572 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %571, ptr %570, 1
  %573 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %572, i64 0, 2
  %574 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %573, i64 256, 3, 0
  %575 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %574, i64 1, 4, 0
  br label %576

576:                                              ; preds = %579, %549
  %577 = phi i64 [ %586, %579 ], [ 0, %549 ]
  %578 = icmp slt i64 %577, 256
  br i1 %578, label %579, label %587

579:                                              ; preds = %576
  %580 = getelementptr i32, ptr %279, i64 %577
  %581 = load i32, ptr %580, align 4
  %582 = getelementptr i32, ptr %49, i64 %577
  %583 = load i32, ptr %582, align 4
  %584 = add i32 %581, %583
  %585 = getelementptr i32, ptr %570, i64 %577
  store i32 %584, ptr %585, align 4
  %586 = add i64 %577, 1
  br label %576

587:                                              ; preds = %576
  br label %588

588:                                              ; preds = %591, %587
  %589 = phi i64 [ %598, %591 ], [ 0, %587 ]
  %590 = icmp slt i64 %589, 256
  br i1 %590, label %591, label %599

591:                                              ; preds = %588
  %592 = getelementptr i32, ptr %570, i64 %589
  %593 = load i32, ptr %592, align 4
  %594 = getelementptr i32, ptr %302, i64 %589
  %595 = load i32, ptr %594, align 4
  %596 = add i32 %593, %595
  %597 = getelementptr i32, ptr %20, i64 %589
  store i32 %596, ptr %597, align 4
  %598 = add i64 %589, 1
  br label %588

599:                                              ; preds = %588
  br label %600

600:                                              ; preds = %603, %599
  %601 = phi i64 [ %610, %603 ], [ 0, %599 ]
  %602 = icmp slt i64 %601, 256
  br i1 %602, label %603, label %611

603:                                              ; preds = %600
  %604 = getelementptr i32, ptr %20, i64 %601
  %605 = load i32, ptr %604, align 4
  %606 = getelementptr i32, ptr %337, i64 %601
  %607 = load i32, ptr %606, align 4
  %608 = add i32 %605, %607
  %609 = getelementptr i32, ptr %20, i64 %601
  store i32 %608, ptr %609, align 4
  %610 = add i64 %601, 1
  br label %600

611:                                              ; preds = %600
  %612 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %362, 0
  %613 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %612, ptr %362, 1
  %614 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %613, i64 0, 2
  %615 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %614, i64 9223372036854775807, 3, 0
  %616 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %615, i64 1, 4, 0
  %617 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %618 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %617, ptr %20, 1
  %619 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %618, i64 0, 2
  %620 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %619, i64 256, 3, 0
  %621 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %620, i64 1, 4, 0
  %622 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %621, i64 1, 3, 1
  %623 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, i64 1, 4, 1
  %624 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64), i64 64))
  %625 = ptrtoint ptr %624 to i64
  %626 = add i64 %625, 63
  %627 = urem i64 %626, 64
  %628 = sub i64 %626, %627
  %629 = inttoptr i64 %628 to ptr
  %630 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %624, 0
  %631 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %630, ptr %629, 1
  %632 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %631, i64 0, 2
  %633 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %632, i64 256, 3, 0
  %634 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %633, i64 1, 3, 1
  %635 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %634, i64 1, 4, 0
  %636 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %635, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %629, ptr %373, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 256), i1 false)
  br label %637

637:                                              ; preds = %658, %611
  %638 = phi i64 [ %659, %658 ], [ 0, %611 ]
  %639 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %657, %658 ], [ %636, %611 ]
  %640 = icmp slt i64 %638, 256
  br i1 %640, label %641, label %660

641:                                              ; preds = %637
  %642 = getelementptr i1, ptr %198, i64 %638
  %643 = load i1, ptr %642, align 1
  br i1 %643, label %644, label %655

644:                                              ; preds = %641
  %645 = add i64 %638, 0
  %646 = getelementptr i32, ptr %20, i64 %645
  %647 = load i32, ptr %646, align 4
  %648 = sext i32 %647 to i64
  %649 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %616, 1
  %650 = getelementptr float, ptr %649, i64 %648
  %651 = load float, ptr %650, align 4
  %652 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 1
  %653 = add i64 %638, 0
  %654 = getelementptr float, ptr %652, i64 %653
  store float %651, ptr %654, align 4
  br label %656

655:                                              ; preds = %641
  br label %656

656:                                              ; preds = %644, %655
  %657 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %639, %655 ], [ %639, %644 ]
  br label %658

658:                                              ; preds = %656
  %659 = add i64 %638, 1
  br label %637

660:                                              ; preds = %637
  %661 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 0
  %662 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 1
  %663 = insertvalue { ptr, ptr, i64 } undef, ptr %661, 0
  %664 = insertvalue { ptr, ptr, i64 } %663, ptr %662, 1
  %665 = insertvalue { ptr, ptr, i64 } %664, i64 0, 2
  %666 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 2
  %667 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 3, 0
  %668 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 3, 1
  %669 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 4, 0
  %670 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %639, 4, 1
  %671 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %661, 0
  %672 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %671, ptr %662, 1
  %673 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %672, i64 0, 2
  %674 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %673, i64 256, 3, 0
  %675 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %674, i64 1, 4, 0
  %676 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %677 = ptrtoint ptr %676 to i64
  %678 = add i64 %677, 63
  %679 = urem i64 %678, 64
  %680 = sub i64 %678, %679
  %681 = inttoptr i64 %680 to ptr
  %682 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %676, 0
  %683 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %682, ptr %681, 1
  %684 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %683, i64 0, 2
  %685 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %684, i64 256, 3, 0
  %686 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %685, i64 1, 4, 0
  br label %687

687:                                              ; preds = %690, %660
  %688 = phi i64 [ %697, %690 ], [ 0, %660 ]
  %689 = icmp slt i64 %688, 256
  br i1 %689, label %690, label %698

690:                                              ; preds = %687
  %691 = getelementptr i32, ptr %279, i64 %688
  %692 = load i32, ptr %691, align 4
  %693 = getelementptr i32, ptr %31, i64 %688
  %694 = load i32, ptr %693, align 4
  %695 = add i32 %692, %694
  %696 = getelementptr i32, ptr %681, i64 %688
  store i32 %695, ptr %696, align 4
  %697 = add i64 %688, 1
  br label %687

698:                                              ; preds = %687
  br label %699

699:                                              ; preds = %702, %698
  %700 = phi i64 [ %709, %702 ], [ 0, %698 ]
  %701 = icmp slt i64 %700, 256
  br i1 %701, label %702, label %710

702:                                              ; preds = %699
  %703 = getelementptr i32, ptr %681, i64 %700
  %704 = load i32, ptr %703, align 4
  %705 = getelementptr i32, ptr %302, i64 %700
  %706 = load i32, ptr %705, align 4
  %707 = add i32 %704, %706
  %708 = getelementptr i32, ptr %20, i64 %700
  store i32 %707, ptr %708, align 4
  %709 = add i64 %700, 1
  br label %699

710:                                              ; preds = %699
  br label %711

711:                                              ; preds = %714, %710
  %712 = phi i64 [ %721, %714 ], [ 0, %710 ]
  %713 = icmp slt i64 %712, 256
  br i1 %713, label %714, label %722

714:                                              ; preds = %711
  %715 = getelementptr i32, ptr %20, i64 %712
  %716 = load i32, ptr %715, align 4
  %717 = getelementptr i32, ptr %337, i64 %712
  %718 = load i32, ptr %717, align 4
  %719 = add i32 %716, %718
  %720 = getelementptr i32, ptr %20, i64 %712
  store i32 %719, ptr %720, align 4
  %721 = add i64 %712, 1
  br label %711

722:                                              ; preds = %711
  %723 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %362, 0
  %724 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %723, ptr %362, 1
  %725 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %724, i64 0, 2
  %726 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %725, i64 9223372036854775807, 3, 0
  %727 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %726, i64 1, 4, 0
  %728 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %729 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %728, ptr %20, 1
  %730 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %729, i64 0, 2
  %731 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %730, i64 256, 3, 0
  %732 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %731, i64 1, 4, 0
  %733 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %732, i64 1, 3, 1
  %734 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %733, i64 1, 4, 1
  br label %735

735:                                              ; preds = %756, %722
  %736 = phi i64 [ %757, %756 ], [ 0, %722 ]
  %737 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %755, %756 ], [ %380, %722 ]
  %738 = icmp slt i64 %736, 256
  br i1 %738, label %739, label %758

739:                                              ; preds = %735
  %740 = getelementptr i1, ptr %198, i64 %736
  %741 = load i1, ptr %740, align 1
  br i1 %741, label %742, label %753

742:                                              ; preds = %739
  %743 = add i64 %736, 0
  %744 = getelementptr i32, ptr %20, i64 %743
  %745 = load i32, ptr %744, align 4
  %746 = sext i32 %745 to i64
  %747 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %727, 1
  %748 = getelementptr float, ptr %747, i64 %746
  %749 = load float, ptr %748, align 4
  %750 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 1
  %751 = add i64 %736, 0
  %752 = getelementptr float, ptr %750, i64 %751
  store float %749, ptr %752, align 4
  br label %754

753:                                              ; preds = %739
  br label %754

754:                                              ; preds = %742, %753
  %755 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %737, %753 ], [ %737, %742 ]
  br label %756

756:                                              ; preds = %754
  %757 = add i64 %736, 1
  br label %735

758:                                              ; preds = %735
  %759 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 0
  %760 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 1
  %761 = insertvalue { ptr, ptr, i64 } undef, ptr %759, 0
  %762 = insertvalue { ptr, ptr, i64 } %761, ptr %760, 1
  %763 = insertvalue { ptr, ptr, i64 } %762, i64 0, 2
  %764 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 2
  %765 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 3, 0
  %766 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 3, 1
  %767 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 4, 0
  %768 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, 4, 1
  %769 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %759, 0
  %770 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %769, ptr %760, 1
  %771 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %770, i64 0, 2
  %772 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %771, i64 256, 3, 0
  %773 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %772, i64 1, 4, 0
  br label %774

774:                                              ; preds = %777, %758
  %775 = phi i64 [ %784, %777 ], [ 0, %758 ]
  %776 = icmp slt i64 %775, 256
  br i1 %776, label %777, label %785

777:                                              ; preds = %774
  %778 = getelementptr float, ptr %551, i64 %775
  %779 = load float, ptr %778, align 4
  %780 = getelementptr float, ptr %440, i64 %775
  %781 = load float, ptr %780, align 4
  %782 = fcmp ogt float %779, %781
  %783 = getelementptr i1, ptr %198, i64 %775
  store i1 %782, ptr %783, align 1
  %784 = add i64 %775, 1
  br label %774

785:                                              ; preds = %774
  %786 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %787 = ptrtoint ptr %786 to i64
  %788 = add i64 %787, 63
  %789 = urem i64 %788, 64
  %790 = sub i64 %788, %789
  %791 = inttoptr i64 %790 to ptr
  %792 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %786, 0
  %793 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %792, ptr %791, 1
  %794 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %793, i64 0, 2
  %795 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %794, i64 256, 3, 0
  %796 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %795, i64 1, 4, 0
  br label %797

797:                                              ; preds = %800, %785
  %798 = phi i64 [ %807, %800 ], [ 0, %785 ]
  %799 = icmp slt i64 %798, 256
  br i1 %799, label %800, label %808

800:                                              ; preds = %797
  %801 = getelementptr i32, ptr %256, i64 %798
  %802 = load i32, ptr %801, align 4
  %803 = getelementptr i32, ptr %85, i64 %798
  %804 = load i32, ptr %803, align 4
  %805 = mul i32 %802, %804
  %806 = getelementptr i32, ptr %791, i64 %798
  store i32 %805, ptr %806, align 4
  %807 = add i64 %798, 1
  br label %797

808:                                              ; preds = %797
  %809 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %810 = ptrtoint ptr %809 to i64
  %811 = add i64 %810, 63
  %812 = urem i64 %811, 64
  %813 = sub i64 %811, %812
  %814 = inttoptr i64 %813 to ptr
  %815 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %809, 0
  %816 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %815, ptr %814, 1
  %817 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %816, i64 0, 2
  %818 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %817, i64 256, 3, 0
  %819 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %818, i64 1, 4, 0
  br label %820

820:                                              ; preds = %823, %808
  %821 = phi i64 [ %830, %823 ], [ 0, %808 ]
  %822 = icmp slt i64 %821, 256
  br i1 %822, label %823, label %831

823:                                              ; preds = %820
  %824 = getelementptr i32, ptr %459, i64 %821
  %825 = load i32, ptr %824, align 4
  %826 = getelementptr i32, ptr %791, i64 %821
  %827 = load i32, ptr %826, align 4
  %828 = add i32 %825, %827
  %829 = getelementptr i32, ptr %814, i64 %821
  store i32 %828, ptr %829, align 4
  %830 = add i64 %821, 1
  br label %820

831:                                              ; preds = %820
  br label %832

832:                                              ; preds = %835, %831
  %833 = phi i64 [ %842, %835 ], [ 0, %831 ]
  %834 = icmp slt i64 %833, 256
  br i1 %834, label %835, label %843

835:                                              ; preds = %832
  %836 = getelementptr i32, ptr %279, i64 %833
  %837 = load i32, ptr %836, align 4
  %838 = getelementptr i32, ptr %791, i64 %833
  %839 = load i32, ptr %838, align 4
  %840 = add i32 %837, %839
  %841 = getelementptr i32, ptr %20, i64 %833
  store i32 %840, ptr %841, align 4
  %842 = add i64 %833, 1
  br label %832

843:                                              ; preds = %832
  %844 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %845 = ptrtoint ptr %844 to i64
  %846 = add i64 %845, 63
  %847 = urem i64 %846, 64
  %848 = sub i64 %846, %847
  %849 = inttoptr i64 %848 to ptr
  %850 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %844, 0
  %851 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %850, ptr %849, 1
  %852 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %851, i64 0, 2
  %853 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %852, i64 256, 3, 0
  %854 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %853, i64 1, 4, 0
  br label %855

855:                                              ; preds = %858, %843
  %856 = phi i64 [ %867, %858 ], [ 0, %843 ]
  %857 = icmp slt i64 %856, 256
  br i1 %857, label %858, label %868

858:                                              ; preds = %855
  %859 = getelementptr i1, ptr %198, i64 %856
  %860 = load i1, ptr %859, align 1
  %861 = getelementptr i32, ptr %814, i64 %856
  %862 = load i32, ptr %861, align 4
  %863 = getelementptr i32, ptr %20, i64 %856
  %864 = load i32, ptr %863, align 4
  %865 = select i1 %860, i32 %862, i32 %864
  %866 = getelementptr i32, ptr %849, i64 %856
  store i32 %865, ptr %866, align 4
  %867 = add i64 %856, 1
  br label %855

868:                                              ; preds = %855
  br label %869

869:                                              ; preds = %872, %868
  %870 = phi i64 [ %879, %872 ], [ 0, %868 ]
  %871 = icmp slt i64 %870, 256
  br i1 %871, label %872, label %880

872:                                              ; preds = %869
  %873 = getelementptr float, ptr %551, i64 %870
  %874 = load float, ptr %873, align 4
  %875 = getelementptr float, ptr %440, i64 %870
  %876 = load float, ptr %875, align 4
  %877 = call float @llvm.maximum.f32(float %874, float %876)
  %878 = getelementptr float, ptr %9, i64 %870
  store float %877, ptr %878, align 4
  %879 = add i64 %870, 1
  br label %869

880:                                              ; preds = %869
  br label %881

881:                                              ; preds = %884, %880
  %882 = phi i64 [ %891, %884 ], [ 0, %880 ]
  %883 = icmp slt i64 %882, 256
  br i1 %883, label %884, label %892

884:                                              ; preds = %881
  %885 = getelementptr float, ptr %662, i64 %882
  %886 = load float, ptr %885, align 4
  %887 = getelementptr float, ptr %9, i64 %882
  %888 = load float, ptr %887, align 4
  %889 = fcmp ogt float %886, %888
  %890 = getelementptr i1, ptr %198, i64 %882
  store i1 %889, ptr %890, align 1
  %891 = add i64 %882, 1
  br label %881

892:                                              ; preds = %881
  br label %893

893:                                              ; preds = %896, %892
  %894 = phi i64 [ %903, %896 ], [ 0, %892 ]
  %895 = icmp slt i64 %894, 256
  br i1 %895, label %896, label %904

896:                                              ; preds = %893
  %897 = getelementptr i32, ptr %570, i64 %894
  %898 = load i32, ptr %897, align 4
  %899 = getelementptr i32, ptr %791, i64 %894
  %900 = load i32, ptr %899, align 4
  %901 = add i32 %898, %900
  %902 = getelementptr i32, ptr %20, i64 %894
  store i32 %901, ptr %902, align 4
  %903 = add i64 %894, 1
  br label %893

904:                                              ; preds = %893
  %905 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 256) to i64), i64 64))
  %906 = ptrtoint ptr %905 to i64
  %907 = add i64 %906, 63
  %908 = urem i64 %907, 64
  %909 = sub i64 %907, %908
  %910 = inttoptr i64 %909 to ptr
  %911 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %905, 0
  %912 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %911, ptr %910, 1
  %913 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %912, i64 0, 2
  %914 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %913, i64 256, 3, 0
  %915 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %914, i64 1, 4, 0
  br label %916

916:                                              ; preds = %919, %904
  %917 = phi i64 [ %928, %919 ], [ 0, %904 ]
  %918 = icmp slt i64 %917, 256
  br i1 %918, label %919, label %929

919:                                              ; preds = %916
  %920 = getelementptr i1, ptr %198, i64 %917
  %921 = load i1, ptr %920, align 1
  %922 = getelementptr i32, ptr %20, i64 %917
  %923 = load i32, ptr %922, align 4
  %924 = getelementptr i32, ptr %849, i64 %917
  %925 = load i32, ptr %924, align 4
  %926 = select i1 %921, i32 %923, i32 %925
  %927 = getelementptr i32, ptr %910, i64 %917
  store i32 %926, ptr %927, align 4
  %928 = add i64 %917, 1
  br label %916

929:                                              ; preds = %916
  br label %930

930:                                              ; preds = %933, %929
  %931 = phi i64 [ %940, %933 ], [ 0, %929 ]
  %932 = icmp slt i64 %931, 256
  br i1 %932, label %933, label %941

933:                                              ; preds = %930
  %934 = getelementptr float, ptr %662, i64 %931
  %935 = load float, ptr %934, align 4
  %936 = getelementptr float, ptr %9, i64 %931
  %937 = load float, ptr %936, align 4
  %938 = call float @llvm.maximum.f32(float %935, float %937)
  %939 = getelementptr float, ptr %9, i64 %931
  store float %938, ptr %939, align 4
  %940 = add i64 %931, 1
  br label %930

941:                                              ; preds = %930
  br label %942

942:                                              ; preds = %945, %941
  %943 = phi i64 [ %952, %945 ], [ 0, %941 ]
  %944 = icmp slt i64 %943, 256
  br i1 %944, label %945, label %953

945:                                              ; preds = %942
  %946 = getelementptr float, ptr %760, i64 %943
  %947 = load float, ptr %946, align 4
  %948 = getelementptr float, ptr %9, i64 %943
  %949 = load float, ptr %948, align 4
  %950 = fcmp ogt float %947, %949
  %951 = getelementptr i1, ptr %198, i64 %943
  store i1 %950, ptr %951, align 1
  %952 = add i64 %943, 1
  br label %942

953:                                              ; preds = %942
  br label %954

954:                                              ; preds = %957, %953
  %955 = phi i64 [ %964, %957 ], [ 0, %953 ]
  %956 = icmp slt i64 %955, 256
  br i1 %956, label %957, label %965

957:                                              ; preds = %954
  %958 = getelementptr i32, ptr %681, i64 %955
  %959 = load i32, ptr %958, align 4
  %960 = getelementptr i32, ptr %791, i64 %955
  %961 = load i32, ptr %960, align 4
  %962 = add i32 %959, %961
  %963 = getelementptr i32, ptr %20, i64 %955
  store i32 %962, ptr %963, align 4
  %964 = add i64 %955, 1
  br label %954

965:                                              ; preds = %954
  br label %966

966:                                              ; preds = %969, %965
  %967 = phi i64 [ %978, %969 ], [ 0, %965 ]
  %968 = icmp slt i64 %967, 256
  br i1 %968, label %969, label %979

969:                                              ; preds = %966
  %970 = getelementptr i1, ptr %198, i64 %967
  %971 = load i1, ptr %970, align 1
  %972 = getelementptr i32, ptr %20, i64 %967
  %973 = load i32, ptr %972, align 4
  %974 = getelementptr i32, ptr %910, i64 %967
  %975 = load i32, ptr %974, align 4
  %976 = select i1 %971, i32 %973, i32 %975
  %977 = getelementptr i32, ptr %20, i64 %967
  store i32 %976, ptr %977, align 4
  %978 = add i64 %967, 1
  br label %966

979:                                              ; preds = %966
  br label %980

980:                                              ; preds = %983, %979
  %981 = phi i64 [ %988, %983 ], [ 0, %979 ]
  %982 = icmp slt i64 %981, 256
  br i1 %982, label %983, label %989

983:                                              ; preds = %980
  %984 = getelementptr i32, ptr %20, i64 %981
  %985 = load i32, ptr %984, align 4
  %986 = sitofp i32 %985 to float
  %987 = getelementptr float, ptr %9, i64 %981
  store float %986, ptr %987, align 4
  %988 = add i64 %981, 1
  br label %980

989:                                              ; preds = %980
  %990 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, 1
  %991 = load i32, ptr %990, align 4
  %992 = sext i32 %991 to i64
  %993 = inttoptr i64 %1 to ptr
  %994 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %993, 0
  %995 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %994, ptr %993, 1
  %996 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %995, i64 %992, 2
  %997 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %996, i64 256, 3, 0
  %998 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %997, i64 1, 4, 0
  %999 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %1000 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %999, ptr %9, 1
  %1001 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1000, i64 0, 2
  %1002 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1001, i64 256, 3, 0
  %1003 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1002, i64 1, 4, 0
  %1004 = call ptr @llvm.stacksave()
  %1005 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %1003, ptr %1005, align 8
  %1006 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %1005, 1
  %1007 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %998, ptr %1007, align 8
  %1008 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %1007, 1
  %1009 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1006, ptr %1009, align 8
  %1010 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1008, ptr %1010, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %1009, ptr %1010)
  call void @llvm.stackrestore(ptr %1004)
  ret void
}

define void @_mlir_ciface_triton__0d1d2de_3(i64 %0, i64 %1, i32 %2) {
  call void @triton__0d1d2de_3(i64 %0, i64 %1, i32 %2)
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
