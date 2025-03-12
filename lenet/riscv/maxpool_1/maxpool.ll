; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton__0d1d2d3de(i64 %0, i64 %1, i64 %2, i32 %3) {
  %5 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %6 = ptrtoint ptr %5 to i64
  %7 = add i64 %6, 63
  %8 = urem i64 %7, 64
  %9 = sub i64 %7, %8
  %10 = inttoptr i64 %9 to ptr
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, ptr %10, 1
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 0, 2
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 1024, 3, 0
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 1, 4, 0
  %16 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %17 = ptrtoint ptr %16 to i64
  %18 = add i64 %17, 63
  %19 = urem i64 %18, 64
  %20 = sub i64 %18, %19
  %21 = inttoptr i64 %20 to ptr
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %16, 0
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, ptr %21, 1
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 0, 2
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 1024, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 1, 4, 0
  %27 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %28 = ptrtoint ptr %27 to i64
  %29 = add i64 %28, 63
  %30 = urem i64 %29, 64
  %31 = sub i64 %29, %30
  %32 = inttoptr i64 %31 to ptr
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %27, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, ptr %32, 1
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 0, 2
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, i64 1024, 3, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, i64 1, 4, 0
  br label %38

38:                                               ; preds = %41, %4
  %39 = phi i64 [ %43, %41 ], [ 0, %4 ]
  %40 = icmp slt i64 %39, 1024
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr i32, ptr %32, i64 %39
  store i32 25, ptr %42, align 4
  %43 = add i64 %39, 1
  br label %38

44:                                               ; preds = %38
  %45 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %46 = ptrtoint ptr %45 to i64
  %47 = add i64 %46, 63
  %48 = urem i64 %47, 64
  %49 = sub i64 %47, %48
  %50 = inttoptr i64 %49 to ptr
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %45, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, ptr %50, 1
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 0, 2
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, i64 1024, 3, 0
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 1, 4, 0
  br label %56

56:                                               ; preds = %59, %44
  %57 = phi i64 [ %61, %59 ], [ 0, %44 ]
  %58 = icmp slt i64 %57, 1024
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr i32, ptr %50, i64 %57
  store i32 24, ptr %60, align 4
  %61 = add i64 %57, 1
  br label %56

62:                                               ; preds = %56
  %63 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %64 = ptrtoint ptr %63 to i64
  %65 = add i64 %64, 63
  %66 = urem i64 %65, 64
  %67 = sub i64 %65, %66
  %68 = inttoptr i64 %67 to ptr
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %63, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, ptr %68, 1
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 0, 2
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 1024, 3, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 1, 4, 0
  br label %74

74:                                               ; preds = %77, %62
  %75 = phi i64 [ %79, %77 ], [ 0, %62 ]
  %76 = icmp slt i64 %75, 1024
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr i32, ptr %68, i64 %75
  store i32 1, ptr %78, align 4
  %79 = add i64 %75, 1
  br label %74

80:                                               ; preds = %74
  %81 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %82 = ptrtoint ptr %81 to i64
  %83 = add i64 %82, 63
  %84 = urem i64 %83, 64
  %85 = sub i64 %83, %84
  %86 = inttoptr i64 %85 to ptr
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %81, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, ptr %86, 1
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 0, 2
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 1024, 3, 0
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 1, 4, 0
  br label %92

92:                                               ; preds = %95, %80
  %93 = phi i64 [ %97, %95 ], [ 0, %80 ]
  %94 = icmp slt i64 %93, 1024
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr i32, ptr %86, i64 %93
  store i32 48, ptr %96, align 4
  %97 = add i64 %93, 1
  br label %92

98:                                               ; preds = %92
  %99 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %100 = ptrtoint ptr %99 to i64
  %101 = add i64 %100, 63
  %102 = urem i64 %101, 64
  %103 = sub i64 %101, %102
  %104 = inttoptr i64 %103 to ptr
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %99, 0
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, ptr %104, 1
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 0, 2
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 1024, 3, 0
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 1, 4, 0
  br label %110

110:                                              ; preds = %113, %98
  %111 = phi i64 [ %115, %113 ], [ 0, %98 ]
  %112 = icmp slt i64 %111, 1024
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = getelementptr i32, ptr %104, i64 %111
  store i32 2, ptr %114, align 4
  %115 = add i64 %111, 1
  br label %110

116:                                              ; preds = %110
  %117 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %118 = ptrtoint ptr %117 to i64
  %119 = add i64 %118, 63
  %120 = urem i64 %119, 64
  %121 = sub i64 %119, %120
  %122 = inttoptr i64 %121 to ptr
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %117, 0
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, ptr %122, 1
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, i64 0, 2
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 1024, 3, 0
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, i64 1, 4, 0
  br label %128

128:                                              ; preds = %131, %116
  %129 = phi i64 [ %133, %131 ], [ 0, %116 ]
  %130 = icmp slt i64 %129, 1024
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = getelementptr i32, ptr %122, i64 %129
  store i32 12, ptr %132, align 4
  %133 = add i64 %129, 1
  br label %128

134:                                              ; preds = %128
  %135 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %136 = ptrtoint ptr %135 to i64
  %137 = add i64 %136, 63
  %138 = urem i64 %137, 64
  %139 = sub i64 %137, %138
  %140 = inttoptr i64 %139 to ptr
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %135, 0
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, ptr %140, 1
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, i64 0, 2
  %144 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, i64 1024, 3, 0
  %145 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, i64 1, 4, 0
  br label %146

146:                                              ; preds = %150, %134
  %147 = phi i64 [ %154, %150 ], [ 0, %134 ]
  %148 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %148, %150 ], [ %145, %134 ]
  %149 = icmp slt i64 %147, 1024
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = trunc i64 %147 to i32
  %152 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %148, 1
  %153 = getelementptr i32, ptr %152, i64 %147
  store i32 %151, ptr %153, align 4
  %154 = add i64 %147, 1
  br label %146

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %159, %155
  %157 = phi i64 [ %161, %159 ], [ 0, %155 ]
  %158 = icmp slt i64 %157, 1024
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = getelementptr i32, ptr %21, i64 %157
  store i32 0, ptr %160, align 4
  %161 = add i64 %157, 1
  br label %156

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %166, %162
  %164 = phi i64 [ %174, %166 ], [ 0, %162 ]
  %165 = icmp slt i64 %164, 1024
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = getelementptr i32, ptr %21, i64 %164
  %168 = load i32, ptr %167, align 4
  %169 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %148, 1
  %170 = getelementptr i32, ptr %169, i64 %164
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %168, %171
  %173 = getelementptr i32, ptr %21, i64 %164
  store i32 %172, ptr %173, align 4
  %174 = add i64 %164, 1
  br label %163

175:                                              ; preds = %163
  %176 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 864) to i64), i64 64))
  %177 = ptrtoint ptr %176 to i64
  %178 = add i64 %177, 63
  %179 = urem i64 %178, 64
  %180 = sub i64 %178, %179
  %181 = inttoptr i64 %180 to ptr
  %182 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %176, 0
  %183 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %182, ptr %181, 1
  %184 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %183, i64 0, 2
  %185 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %184, i64 864, 3, 0
  %186 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %185, i64 1, 4, 0
  br label %187

187:                                              ; preds = %190, %175
  %188 = phi i64 [ %192, %190 ], [ 0, %175 ]
  %189 = icmp slt i64 %188, 864
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = getelementptr i1, ptr %181, i64 %188
  store i1 true, ptr %191, align 1
  %192 = add i64 %188, 1
  br label %187

193:                                              ; preds = %187
  %194 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1024) to i64), i64 64))
  %195 = ptrtoint ptr %194 to i64
  %196 = add i64 %195, 63
  %197 = urem i64 %196, 64
  %198 = sub i64 %196, %197
  %199 = inttoptr i64 %198 to ptr
  %200 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %194, 0
  %201 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %200, ptr %199, 1
  %202 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %201, i64 0, 2
  %203 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %202, i64 1024, 3, 0
  %204 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %203, i64 1, 4, 0
  br label %205

205:                                              ; preds = %208, %193
  %206 = phi i64 [ %210, %208 ], [ 0, %193 ]
  %207 = icmp slt i64 %206, 1024
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = getelementptr i1, ptr %199, i64 %206
  store i1 false, ptr %209, align 1
  %210 = add i64 %206, 1
  br label %205

211:                                              ; preds = %205
  %212 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %194, 0
  %213 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %212, ptr %199, 1
  %214 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %213, i64 0, 2
  %215 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %214, i64 864, 3, 0
  %216 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %215, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %199, ptr %181, i64 mul (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 864), i1 false)
  %217 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %218 = ptrtoint ptr %217 to i64
  %219 = add i64 %218, 63
  %220 = urem i64 %219, 64
  %221 = sub i64 %219, %220
  %222 = inttoptr i64 %221 to ptr
  %223 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %217, 0
  %224 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %223, ptr %222, 1
  %225 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %224, i64 0, 2
  %226 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %225, i64 1024, 3, 0
  %227 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %226, i64 1, 4, 0
  br label %228

228:                                              ; preds = %231, %211
  %229 = phi i64 [ %238, %231 ], [ 0, %211 ]
  %230 = icmp slt i64 %229, 1024
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = getelementptr i32, ptr %21, i64 %229
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr i32, ptr %122, i64 %229
  %235 = load i32, ptr %234, align 4
  %236 = srem i32 %233, %235
  %237 = getelementptr i32, ptr %222, i64 %229
  store i32 %236, ptr %237, align 4
  %238 = add i64 %229, 1
  br label %228

239:                                              ; preds = %228
  br label %240

240:                                              ; preds = %243, %239
  %241 = phi i64 [ %250, %243 ], [ 0, %239 ]
  %242 = icmp slt i64 %241, 1024
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = getelementptr i32, ptr %21, i64 %241
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr i32, ptr %122, i64 %241
  %247 = load i32, ptr %246, align 4
  %248 = sdiv i32 %245, %247
  %249 = getelementptr i32, ptr %21, i64 %241
  store i32 %248, ptr %249, align 4
  %250 = add i64 %241, 1
  br label %240

251:                                              ; preds = %240
  %252 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %253 = ptrtoint ptr %252 to i64
  %254 = add i64 %253, 63
  %255 = urem i64 %254, 64
  %256 = sub i64 %254, %255
  %257 = inttoptr i64 %256 to ptr
  %258 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %252, 0
  %259 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %258, ptr %257, 1
  %260 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %259, i64 0, 2
  %261 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %260, i64 1024, 3, 0
  %262 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %261, i64 1, 4, 0
  br label %263

263:                                              ; preds = %266, %251
  %264 = phi i64 [ %273, %266 ], [ 0, %251 ]
  %265 = icmp slt i64 %264, 1024
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = getelementptr i32, ptr %21, i64 %264
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr i32, ptr %122, i64 %264
  %270 = load i32, ptr %269, align 4
  %271 = srem i32 %268, %270
  %272 = getelementptr i32, ptr %257, i64 %264
  store i32 %271, ptr %272, align 4
  %273 = add i64 %264, 1
  br label %263

274:                                              ; preds = %263
  %275 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %276 = ptrtoint ptr %275 to i64
  %277 = add i64 %276, 63
  %278 = urem i64 %277, 64
  %279 = sub i64 %277, %278
  %280 = inttoptr i64 %279 to ptr
  %281 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %275, 0
  %282 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %281, ptr %280, 1
  %283 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %282, i64 0, 2
  %284 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %283, i64 1024, 3, 0
  %285 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %284, i64 1, 4, 0
  br label %286

286:                                              ; preds = %289, %274
  %287 = phi i64 [ %296, %289 ], [ 0, %274 ]
  %288 = icmp slt i64 %287, 1024
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = getelementptr i32, ptr %222, i64 %287
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr i32, ptr %104, i64 %287
  %293 = load i32, ptr %292, align 4
  %294 = mul i32 %291, %293
  %295 = getelementptr i32, ptr %280, i64 %287
  store i32 %294, ptr %295, align 4
  %296 = add i64 %287, 1
  br label %286

297:                                              ; preds = %286
  %298 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %299 = ptrtoint ptr %298 to i64
  %300 = add i64 %299, 63
  %301 = urem i64 %300, 64
  %302 = sub i64 %300, %301
  %303 = inttoptr i64 %302 to ptr
  %304 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %298, 0
  %305 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %304, ptr %303, 1
  %306 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %305, i64 0, 2
  %307 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %306, i64 1024, 3, 0
  %308 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %307, i64 1, 4, 0
  br label %309

309:                                              ; preds = %312, %297
  %310 = phi i64 [ %319, %312 ], [ 0, %297 ]
  %311 = icmp slt i64 %310, 1024
  br i1 %311, label %312, label %320

312:                                              ; preds = %309
  %313 = getelementptr i32, ptr %21, i64 %310
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr i32, ptr %86, i64 %310
  %316 = load i32, ptr %315, align 4
  %317 = mul i32 %314, %316
  %318 = getelementptr i32, ptr %303, i64 %310
  store i32 %317, ptr %318, align 4
  %319 = add i64 %310, 1
  br label %309

320:                                              ; preds = %309
  br label %321

321:                                              ; preds = %324, %320
  %322 = phi i64 [ %331, %324 ], [ 0, %320 ]
  %323 = icmp slt i64 %322, 1024
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = getelementptr i32, ptr %280, i64 %322
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr i32, ptr %303, i64 %322
  %328 = load i32, ptr %327, align 4
  %329 = add i32 %326, %328
  %330 = getelementptr i32, ptr %21, i64 %322
  store i32 %329, ptr %330, align 4
  %331 = add i64 %322, 1
  br label %321

332:                                              ; preds = %321
  %333 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %334 = ptrtoint ptr %333 to i64
  %335 = add i64 %334, 63
  %336 = urem i64 %335, 64
  %337 = sub i64 %335, %336
  %338 = inttoptr i64 %337 to ptr
  %339 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %333, 0
  %340 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %339, ptr %338, 1
  %341 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %340, i64 0, 2
  %342 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %341, i64 1024, 3, 0
  %343 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %342, i64 1, 4, 0
  br label %344

344:                                              ; preds = %347, %332
  %345 = phi i64 [ %349, %347 ], [ 0, %332 ]
  %346 = icmp slt i64 %345, 1024
  br i1 %346, label %347, label %350

347:                                              ; preds = %344
  %348 = getelementptr i32, ptr %338, i64 %345
  store i32 0, ptr %348, align 4
  %349 = add i64 %345, 1
  br label %344

350:                                              ; preds = %344
  br label %351

351:                                              ; preds = %354, %350
  %352 = phi i64 [ %361, %354 ], [ 0, %350 ]
  %353 = icmp slt i64 %352, 1024
  br i1 %353, label %354, label %362

354:                                              ; preds = %351
  %355 = getelementptr i32, ptr %21, i64 %352
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr i32, ptr %338, i64 %352
  %358 = load i32, ptr %357, align 4
  %359 = add i32 %356, %358
  %360 = getelementptr i32, ptr %21, i64 %352
  store i32 %359, ptr %360, align 4
  %361 = add i64 %352, 1
  br label %351

362:                                              ; preds = %351
  %363 = inttoptr i64 %0 to ptr
  %364 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %363, 0
  %365 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %364, ptr %363, 1
  %366 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %365, i64 0, 2
  %367 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %366, i64 9223372036854775807, 3, 0
  %368 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %367, i64 1, 4, 0
  %369 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %370 = ptrtoint ptr %369 to i64
  %371 = add i64 %370, 63
  %372 = urem i64 %371, 64
  %373 = sub i64 %371, %372
  %374 = inttoptr i64 %373 to ptr
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %369, 0
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, ptr %374, 1
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 0, 2
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 1024, 3, 0
  %379 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, i64 1, 3, 1
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %379, i64 1, 4, 0
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %380, i64 1, 4, 1
  br label %382

382:                                              ; preds = %393, %362
  %383 = phi i64 [ %394, %393 ], [ 0, %362 ]
  %384 = icmp slt i64 %383, 1024
  br i1 %384, label %385, label %395

385:                                              ; preds = %382
  br label %386

386:                                              ; preds = %389, %385
  %387 = phi i64 [ %392, %389 ], [ 0, %385 ]
  %388 = icmp slt i64 %387, 1
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = add i64 %383, %387
  %391 = getelementptr float, ptr %374, i64 %390
  store float 0.000000e+00, ptr %391, align 4
  %392 = add i64 %387, 1
  br label %386

393:                                              ; preds = %386
  %394 = add i64 %383, 1
  br label %382

395:                                              ; preds = %382
  %396 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %397 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, ptr %21, 1
  %398 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, i64 0, 2
  %399 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %398, i64 1024, 3, 0
  %400 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %399, i64 1, 4, 0
  %401 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %400, i64 1, 3, 1
  %402 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %401, i64 1, 4, 1
  %403 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %404 = ptrtoint ptr %403 to i64
  %405 = add i64 %404, 63
  %406 = urem i64 %405, 64
  %407 = sub i64 %405, %406
  %408 = inttoptr i64 %407 to ptr
  %409 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %403, 0
  %410 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %409, ptr %408, 1
  %411 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %410, i64 0, 2
  %412 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %411, i64 1024, 3, 0
  %413 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %412, i64 1, 3, 1
  %414 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %413, i64 1, 4, 0
  %415 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %414, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %408, ptr %374, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 1024), i1 false)
  br label %416

416:                                              ; preds = %437, %395
  %417 = phi i64 [ %438, %437 ], [ 0, %395 ]
  %418 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %436, %437 ], [ %415, %395 ]
  %419 = icmp slt i64 %417, 1024
  br i1 %419, label %420, label %439

420:                                              ; preds = %416
  %421 = getelementptr i1, ptr %199, i64 %417
  %422 = load i1, ptr %421, align 1
  br i1 %422, label %423, label %434

423:                                              ; preds = %420
  %424 = add i64 %417, 0
  %425 = getelementptr i32, ptr %21, i64 %424
  %426 = load i32, ptr %425, align 4
  %427 = sext i32 %426 to i64
  %428 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %368, 1
  %429 = getelementptr float, ptr %428, i64 %427
  %430 = load float, ptr %429, align 4
  %431 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 1
  %432 = add i64 %417, 0
  %433 = getelementptr float, ptr %431, i64 %432
  store float %430, ptr %433, align 4
  br label %435

434:                                              ; preds = %420
  br label %435

435:                                              ; preds = %423, %434
  %436 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %418, %434 ], [ %418, %423 ]
  br label %437

437:                                              ; preds = %435
  %438 = add i64 %417, 1
  br label %416

439:                                              ; preds = %416
  %440 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 0
  %441 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 1
  %442 = insertvalue { ptr, ptr, i64 } undef, ptr %440, 0
  %443 = insertvalue { ptr, ptr, i64 } %442, ptr %441, 1
  %444 = insertvalue { ptr, ptr, i64 } %443, i64 0, 2
  %445 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 2
  %446 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 3, 0
  %447 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 3, 1
  %448 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 4, 0
  %449 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, 4, 1
  %450 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %440, 0
  %451 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %450, ptr %441, 1
  %452 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %451, i64 0, 2
  %453 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %452, i64 1024, 3, 0
  %454 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %453, i64 1, 4, 0
  %455 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %456 = ptrtoint ptr %455 to i64
  %457 = add i64 %456, 63
  %458 = urem i64 %457, 64
  %459 = sub i64 %457, %458
  %460 = inttoptr i64 %459 to ptr
  %461 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %455, 0
  %462 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %461, ptr %460, 1
  %463 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %462, i64 0, 2
  %464 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %463, i64 1024, 3, 0
  %465 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %464, i64 1, 4, 0
  br label %466

466:                                              ; preds = %469, %439
  %467 = phi i64 [ %476, %469 ], [ 0, %439 ]
  %468 = icmp slt i64 %467, 1024
  br i1 %468, label %469, label %477

469:                                              ; preds = %466
  %470 = getelementptr i32, ptr %280, i64 %467
  %471 = load i32, ptr %470, align 4
  %472 = getelementptr i32, ptr %68, i64 %467
  %473 = load i32, ptr %472, align 4
  %474 = add i32 %471, %473
  %475 = getelementptr i32, ptr %460, i64 %467
  store i32 %474, ptr %475, align 4
  %476 = add i64 %467, 1
  br label %466

477:                                              ; preds = %466
  br label %478

478:                                              ; preds = %481, %477
  %479 = phi i64 [ %488, %481 ], [ 0, %477 ]
  %480 = icmp slt i64 %479, 1024
  br i1 %480, label %481, label %489

481:                                              ; preds = %478
  %482 = getelementptr i32, ptr %460, i64 %479
  %483 = load i32, ptr %482, align 4
  %484 = getelementptr i32, ptr %303, i64 %479
  %485 = load i32, ptr %484, align 4
  %486 = add i32 %483, %485
  %487 = getelementptr i32, ptr %21, i64 %479
  store i32 %486, ptr %487, align 4
  %488 = add i64 %479, 1
  br label %478

489:                                              ; preds = %478
  br label %490

490:                                              ; preds = %493, %489
  %491 = phi i64 [ %500, %493 ], [ 0, %489 ]
  %492 = icmp slt i64 %491, 1024
  br i1 %492, label %493, label %501

493:                                              ; preds = %490
  %494 = getelementptr i32, ptr %21, i64 %491
  %495 = load i32, ptr %494, align 4
  %496 = getelementptr i32, ptr %338, i64 %491
  %497 = load i32, ptr %496, align 4
  %498 = add i32 %495, %497
  %499 = getelementptr i32, ptr %21, i64 %491
  store i32 %498, ptr %499, align 4
  %500 = add i64 %491, 1
  br label %490

501:                                              ; preds = %490
  %502 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %363, 0
  %503 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %502, ptr %363, 1
  %504 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %503, i64 0, 2
  %505 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %504, i64 9223372036854775807, 3, 0
  %506 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %505, i64 1, 4, 0
  %507 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %508 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %507, ptr %21, 1
  %509 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %508, i64 0, 2
  %510 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %509, i64 1024, 3, 0
  %511 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %510, i64 1, 4, 0
  %512 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %511, i64 1, 3, 1
  %513 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %512, i64 1, 4, 1
  %514 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %515 = ptrtoint ptr %514 to i64
  %516 = add i64 %515, 63
  %517 = urem i64 %516, 64
  %518 = sub i64 %516, %517
  %519 = inttoptr i64 %518 to ptr
  %520 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %514, 0
  %521 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %520, ptr %519, 1
  %522 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %521, i64 0, 2
  %523 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %522, i64 1024, 3, 0
  %524 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %523, i64 1, 3, 1
  %525 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %524, i64 1, 4, 0
  %526 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %525, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %519, ptr %374, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 1024), i1 false)
  br label %527

527:                                              ; preds = %548, %501
  %528 = phi i64 [ %549, %548 ], [ 0, %501 ]
  %529 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %547, %548 ], [ %526, %501 ]
  %530 = icmp slt i64 %528, 1024
  br i1 %530, label %531, label %550

531:                                              ; preds = %527
  %532 = getelementptr i1, ptr %199, i64 %528
  %533 = load i1, ptr %532, align 1
  br i1 %533, label %534, label %545

534:                                              ; preds = %531
  %535 = add i64 %528, 0
  %536 = getelementptr i32, ptr %21, i64 %535
  %537 = load i32, ptr %536, align 4
  %538 = sext i32 %537 to i64
  %539 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %506, 1
  %540 = getelementptr float, ptr %539, i64 %538
  %541 = load float, ptr %540, align 4
  %542 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 1
  %543 = add i64 %528, 0
  %544 = getelementptr float, ptr %542, i64 %543
  store float %541, ptr %544, align 4
  br label %546

545:                                              ; preds = %531
  br label %546

546:                                              ; preds = %534, %545
  %547 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %529, %545 ], [ %529, %534 ]
  br label %548

548:                                              ; preds = %546
  %549 = add i64 %528, 1
  br label %527

550:                                              ; preds = %527
  %551 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 0
  %552 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 1
  %553 = insertvalue { ptr, ptr, i64 } undef, ptr %551, 0
  %554 = insertvalue { ptr, ptr, i64 } %553, ptr %552, 1
  %555 = insertvalue { ptr, ptr, i64 } %554, i64 0, 2
  %556 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 2
  %557 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 3, 0
  %558 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 3, 1
  %559 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 4, 0
  %560 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, 4, 1
  %561 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %551, 0
  %562 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %561, ptr %552, 1
  %563 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %562, i64 0, 2
  %564 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %563, i64 1024, 3, 0
  %565 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %564, i64 1, 4, 0
  %566 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %567 = ptrtoint ptr %566 to i64
  %568 = add i64 %567, 63
  %569 = urem i64 %568, 64
  %570 = sub i64 %568, %569
  %571 = inttoptr i64 %570 to ptr
  %572 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %566, 0
  %573 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %572, ptr %571, 1
  %574 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %573, i64 0, 2
  %575 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %574, i64 1024, 3, 0
  %576 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %575, i64 1, 4, 0
  br label %577

577:                                              ; preds = %580, %550
  %578 = phi i64 [ %587, %580 ], [ 0, %550 ]
  %579 = icmp slt i64 %578, 1024
  br i1 %579, label %580, label %588

580:                                              ; preds = %577
  %581 = getelementptr i32, ptr %280, i64 %578
  %582 = load i32, ptr %581, align 4
  %583 = getelementptr i32, ptr %50, i64 %578
  %584 = load i32, ptr %583, align 4
  %585 = add i32 %582, %584
  %586 = getelementptr i32, ptr %571, i64 %578
  store i32 %585, ptr %586, align 4
  %587 = add i64 %578, 1
  br label %577

588:                                              ; preds = %577
  br label %589

589:                                              ; preds = %592, %588
  %590 = phi i64 [ %599, %592 ], [ 0, %588 ]
  %591 = icmp slt i64 %590, 1024
  br i1 %591, label %592, label %600

592:                                              ; preds = %589
  %593 = getelementptr i32, ptr %571, i64 %590
  %594 = load i32, ptr %593, align 4
  %595 = getelementptr i32, ptr %303, i64 %590
  %596 = load i32, ptr %595, align 4
  %597 = add i32 %594, %596
  %598 = getelementptr i32, ptr %21, i64 %590
  store i32 %597, ptr %598, align 4
  %599 = add i64 %590, 1
  br label %589

600:                                              ; preds = %589
  br label %601

601:                                              ; preds = %604, %600
  %602 = phi i64 [ %611, %604 ], [ 0, %600 ]
  %603 = icmp slt i64 %602, 1024
  br i1 %603, label %604, label %612

604:                                              ; preds = %601
  %605 = getelementptr i32, ptr %21, i64 %602
  %606 = load i32, ptr %605, align 4
  %607 = getelementptr i32, ptr %338, i64 %602
  %608 = load i32, ptr %607, align 4
  %609 = add i32 %606, %608
  %610 = getelementptr i32, ptr %21, i64 %602
  store i32 %609, ptr %610, align 4
  %611 = add i64 %602, 1
  br label %601

612:                                              ; preds = %601
  %613 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %363, 0
  %614 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %613, ptr %363, 1
  %615 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %614, i64 0, 2
  %616 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %615, i64 9223372036854775807, 3, 0
  %617 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %616, i64 1, 4, 0
  %618 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %619 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %618, ptr %21, 1
  %620 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %619, i64 0, 2
  %621 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %620, i64 1024, 3, 0
  %622 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %621, i64 1, 4, 0
  %623 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, i64 1, 3, 1
  %624 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %623, i64 1, 4, 1
  %625 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i64 64))
  %626 = ptrtoint ptr %625 to i64
  %627 = add i64 %626, 63
  %628 = urem i64 %627, 64
  %629 = sub i64 %627, %628
  %630 = inttoptr i64 %629 to ptr
  %631 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %625, 0
  %632 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %631, ptr %630, 1
  %633 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %632, i64 0, 2
  %634 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %633, i64 1024, 3, 0
  %635 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %634, i64 1, 3, 1
  %636 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %635, i64 1, 4, 0
  %637 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %636, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %630, ptr %374, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 1024), i1 false)
  br label %638

638:                                              ; preds = %659, %612
  %639 = phi i64 [ %660, %659 ], [ 0, %612 ]
  %640 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %658, %659 ], [ %637, %612 ]
  %641 = icmp slt i64 %639, 1024
  br i1 %641, label %642, label %661

642:                                              ; preds = %638
  %643 = getelementptr i1, ptr %199, i64 %639
  %644 = load i1, ptr %643, align 1
  br i1 %644, label %645, label %656

645:                                              ; preds = %642
  %646 = add i64 %639, 0
  %647 = getelementptr i32, ptr %21, i64 %646
  %648 = load i32, ptr %647, align 4
  %649 = sext i32 %648 to i64
  %650 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %617, 1
  %651 = getelementptr float, ptr %650, i64 %649
  %652 = load float, ptr %651, align 4
  %653 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 1
  %654 = add i64 %639, 0
  %655 = getelementptr float, ptr %653, i64 %654
  store float %652, ptr %655, align 4
  br label %657

656:                                              ; preds = %642
  br label %657

657:                                              ; preds = %645, %656
  %658 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %640, %656 ], [ %640, %645 ]
  br label %659

659:                                              ; preds = %657
  %660 = add i64 %639, 1
  br label %638

661:                                              ; preds = %638
  %662 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 0
  %663 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 1
  %664 = insertvalue { ptr, ptr, i64 } undef, ptr %662, 0
  %665 = insertvalue { ptr, ptr, i64 } %664, ptr %663, 1
  %666 = insertvalue { ptr, ptr, i64 } %665, i64 0, 2
  %667 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 2
  %668 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 3, 0
  %669 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 3, 1
  %670 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 4, 0
  %671 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %640, 4, 1
  %672 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %662, 0
  %673 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %672, ptr %663, 1
  %674 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %673, i64 0, 2
  %675 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %674, i64 1024, 3, 0
  %676 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %675, i64 1, 4, 0
  %677 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %678 = ptrtoint ptr %677 to i64
  %679 = add i64 %678, 63
  %680 = urem i64 %679, 64
  %681 = sub i64 %679, %680
  %682 = inttoptr i64 %681 to ptr
  %683 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %677, 0
  %684 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %683, ptr %682, 1
  %685 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %684, i64 0, 2
  %686 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %685, i64 1024, 3, 0
  %687 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %686, i64 1, 4, 0
  br label %688

688:                                              ; preds = %691, %661
  %689 = phi i64 [ %698, %691 ], [ 0, %661 ]
  %690 = icmp slt i64 %689, 1024
  br i1 %690, label %691, label %699

691:                                              ; preds = %688
  %692 = getelementptr i32, ptr %280, i64 %689
  %693 = load i32, ptr %692, align 4
  %694 = getelementptr i32, ptr %32, i64 %689
  %695 = load i32, ptr %694, align 4
  %696 = add i32 %693, %695
  %697 = getelementptr i32, ptr %682, i64 %689
  store i32 %696, ptr %697, align 4
  %698 = add i64 %689, 1
  br label %688

699:                                              ; preds = %688
  br label %700

700:                                              ; preds = %703, %699
  %701 = phi i64 [ %710, %703 ], [ 0, %699 ]
  %702 = icmp slt i64 %701, 1024
  br i1 %702, label %703, label %711

703:                                              ; preds = %700
  %704 = getelementptr i32, ptr %682, i64 %701
  %705 = load i32, ptr %704, align 4
  %706 = getelementptr i32, ptr %303, i64 %701
  %707 = load i32, ptr %706, align 4
  %708 = add i32 %705, %707
  %709 = getelementptr i32, ptr %21, i64 %701
  store i32 %708, ptr %709, align 4
  %710 = add i64 %701, 1
  br label %700

711:                                              ; preds = %700
  br label %712

712:                                              ; preds = %715, %711
  %713 = phi i64 [ %722, %715 ], [ 0, %711 ]
  %714 = icmp slt i64 %713, 1024
  br i1 %714, label %715, label %723

715:                                              ; preds = %712
  %716 = getelementptr i32, ptr %21, i64 %713
  %717 = load i32, ptr %716, align 4
  %718 = getelementptr i32, ptr %338, i64 %713
  %719 = load i32, ptr %718, align 4
  %720 = add i32 %717, %719
  %721 = getelementptr i32, ptr %21, i64 %713
  store i32 %720, ptr %721, align 4
  %722 = add i64 %713, 1
  br label %712

723:                                              ; preds = %712
  %724 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %363, 0
  %725 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %724, ptr %363, 1
  %726 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %725, i64 0, 2
  %727 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %726, i64 9223372036854775807, 3, 0
  %728 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %727, i64 1, 4, 0
  %729 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %730 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %729, ptr %21, 1
  %731 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %730, i64 0, 2
  %732 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %731, i64 1024, 3, 0
  %733 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %732, i64 1, 4, 0
  %734 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %733, i64 1, 3, 1
  %735 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %734, i64 1, 4, 1
  br label %736

736:                                              ; preds = %757, %723
  %737 = phi i64 [ %758, %757 ], [ 0, %723 ]
  %738 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %756, %757 ], [ %381, %723 ]
  %739 = icmp slt i64 %737, 1024
  br i1 %739, label %740, label %759

740:                                              ; preds = %736
  %741 = getelementptr i1, ptr %199, i64 %737
  %742 = load i1, ptr %741, align 1
  br i1 %742, label %743, label %754

743:                                              ; preds = %740
  %744 = add i64 %737, 0
  %745 = getelementptr i32, ptr %21, i64 %744
  %746 = load i32, ptr %745, align 4
  %747 = sext i32 %746 to i64
  %748 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %728, 1
  %749 = getelementptr float, ptr %748, i64 %747
  %750 = load float, ptr %749, align 4
  %751 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 1
  %752 = add i64 %737, 0
  %753 = getelementptr float, ptr %751, i64 %752
  store float %750, ptr %753, align 4
  br label %755

754:                                              ; preds = %740
  br label %755

755:                                              ; preds = %743, %754
  %756 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %738, %754 ], [ %738, %743 ]
  br label %757

757:                                              ; preds = %755
  %758 = add i64 %737, 1
  br label %736

759:                                              ; preds = %736
  %760 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 0
  %761 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 1
  %762 = insertvalue { ptr, ptr, i64 } undef, ptr %760, 0
  %763 = insertvalue { ptr, ptr, i64 } %762, ptr %761, 1
  %764 = insertvalue { ptr, ptr, i64 } %763, i64 0, 2
  %765 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 2
  %766 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 3, 0
  %767 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 3, 1
  %768 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 4, 0
  %769 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 4, 1
  %770 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %760, 0
  %771 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %770, ptr %761, 1
  %772 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %771, i64 0, 2
  %773 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %772, i64 1024, 3, 0
  %774 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %773, i64 1, 4, 0
  %775 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1024) to i64), i64 64))
  %776 = ptrtoint ptr %775 to i64
  %777 = add i64 %776, 63
  %778 = urem i64 %777, 64
  %779 = sub i64 %777, %778
  %780 = inttoptr i64 %779 to ptr
  %781 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %775, 0
  %782 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %781, ptr %780, 1
  %783 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %782, i64 0, 2
  %784 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %783, i64 1024, 3, 0
  %785 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %784, i64 1, 4, 0
  br label %786

786:                                              ; preds = %789, %759
  %787 = phi i64 [ %796, %789 ], [ 0, %759 ]
  %788 = icmp slt i64 %787, 1024
  br i1 %788, label %789, label %797

789:                                              ; preds = %786
  %790 = getelementptr float, ptr %552, i64 %787
  %791 = load float, ptr %790, align 4
  %792 = getelementptr float, ptr %441, i64 %787
  %793 = load float, ptr %792, align 4
  %794 = fcmp ogt float %791, %793
  %795 = getelementptr i1, ptr %780, i64 %787
  store i1 %794, ptr %795, align 1
  %796 = add i64 %787, 1
  br label %786

797:                                              ; preds = %786
  br label %798

798:                                              ; preds = %801, %797
  %799 = phi i64 [ %808, %801 ], [ 0, %797 ]
  %800 = icmp slt i64 %799, 1024
  br i1 %800, label %801, label %809

801:                                              ; preds = %798
  %802 = getelementptr float, ptr %552, i64 %799
  %803 = load float, ptr %802, align 4
  %804 = getelementptr float, ptr %441, i64 %799
  %805 = load float, ptr %804, align 4
  %806 = call float @llvm.maximum.f32(float %803, float %805)
  %807 = getelementptr float, ptr %10, i64 %799
  store float %806, ptr %807, align 4
  %808 = add i64 %799, 1
  br label %798

809:                                              ; preds = %798
  %810 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1024) to i64), i64 64))
  %811 = ptrtoint ptr %810 to i64
  %812 = add i64 %811, 63
  %813 = urem i64 %812, 64
  %814 = sub i64 %812, %813
  %815 = inttoptr i64 %814 to ptr
  %816 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %810, 0
  %817 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %816, ptr %815, 1
  %818 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %817, i64 0, 2
  %819 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %818, i64 1024, 3, 0
  %820 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %819, i64 1, 4, 0
  br label %821

821:                                              ; preds = %824, %809
  %822 = phi i64 [ %831, %824 ], [ 0, %809 ]
  %823 = icmp slt i64 %822, 1024
  br i1 %823, label %824, label %832

824:                                              ; preds = %821
  %825 = getelementptr float, ptr %663, i64 %822
  %826 = load float, ptr %825, align 4
  %827 = getelementptr float, ptr %10, i64 %822
  %828 = load float, ptr %827, align 4
  %829 = fcmp ogt float %826, %828
  %830 = getelementptr i1, ptr %815, i64 %822
  store i1 %829, ptr %830, align 1
  %831 = add i64 %822, 1
  br label %821

832:                                              ; preds = %821
  br label %833

833:                                              ; preds = %836, %832
  %834 = phi i64 [ %843, %836 ], [ 0, %832 ]
  %835 = icmp slt i64 %834, 1024
  br i1 %835, label %836, label %844

836:                                              ; preds = %833
  %837 = getelementptr float, ptr %663, i64 %834
  %838 = load float, ptr %837, align 4
  %839 = getelementptr float, ptr %10, i64 %834
  %840 = load float, ptr %839, align 4
  %841 = call float @llvm.maximum.f32(float %838, float %840)
  %842 = getelementptr float, ptr %10, i64 %834
  store float %841, ptr %842, align 4
  %843 = add i64 %834, 1
  br label %833

844:                                              ; preds = %833
  br label %845

845:                                              ; preds = %848, %844
  %846 = phi i64 [ %855, %848 ], [ 0, %844 ]
  %847 = icmp slt i64 %846, 1024
  br i1 %847, label %848, label %856

848:                                              ; preds = %845
  %849 = getelementptr float, ptr %761, i64 %846
  %850 = load float, ptr %849, align 4
  %851 = getelementptr float, ptr %10, i64 %846
  %852 = load float, ptr %851, align 4
  %853 = fcmp ogt float %850, %852
  %854 = getelementptr i1, ptr %199, i64 %846
  store i1 %853, ptr %854, align 1
  %855 = add i64 %846, 1
  br label %845

856:                                              ; preds = %845
  br label %857

857:                                              ; preds = %860, %856
  %858 = phi i64 [ %867, %860 ], [ 0, %856 ]
  %859 = icmp slt i64 %858, 1024
  br i1 %859, label %860, label %868

860:                                              ; preds = %857
  %861 = getelementptr float, ptr %761, i64 %858
  %862 = load float, ptr %861, align 4
  %863 = getelementptr float, ptr %10, i64 %858
  %864 = load float, ptr %863, align 4
  %865 = call float @llvm.maximum.f32(float %862, float %864)
  %866 = getelementptr float, ptr %10, i64 %858
  store float %865, ptr %866, align 4
  %867 = add i64 %858, 1
  br label %857

868:                                              ; preds = %857
  %869 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %870 = ptrtoint ptr %869 to i64
  %871 = add i64 %870, 63
  %872 = urem i64 %871, 64
  %873 = sub i64 %871, %872
  %874 = inttoptr i64 %873 to ptr
  %875 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %869, 0
  %876 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %875, ptr %874, 1
  %877 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %876, i64 0, 2
  %878 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %877, i64 1024, 3, 0
  %879 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %878, i64 1, 4, 0
  br label %880

880:                                              ; preds = %883, %868
  %881 = phi i64 [ %890, %883 ], [ 0, %868 ]
  %882 = icmp slt i64 %881, 1024
  br i1 %882, label %883, label %891

883:                                              ; preds = %880
  %884 = getelementptr i32, ptr %257, i64 %881
  %885 = load i32, ptr %884, align 4
  %886 = getelementptr i32, ptr %86, i64 %881
  %887 = load i32, ptr %886, align 4
  %888 = mul i32 %885, %887
  %889 = getelementptr i32, ptr %874, i64 %881
  store i32 %888, ptr %889, align 4
  %890 = add i64 %881, 1
  br label %880

891:                                              ; preds = %880
  %892 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %893 = ptrtoint ptr %892 to i64
  %894 = add i64 %893, 63
  %895 = urem i64 %894, 64
  %896 = sub i64 %894, %895
  %897 = inttoptr i64 %896 to ptr
  %898 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %892, 0
  %899 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %898, ptr %897, 1
  %900 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %899, i64 0, 2
  %901 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %900, i64 1024, 3, 0
  %902 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %901, i64 1, 4, 0
  br label %903

903:                                              ; preds = %906, %891
  %904 = phi i64 [ %913, %906 ], [ 0, %891 ]
  %905 = icmp slt i64 %904, 1024
  br i1 %905, label %906, label %914

906:                                              ; preds = %903
  %907 = getelementptr i32, ptr %460, i64 %904
  %908 = load i32, ptr %907, align 4
  %909 = getelementptr i32, ptr %874, i64 %904
  %910 = load i32, ptr %909, align 4
  %911 = add i32 %908, %910
  %912 = getelementptr i32, ptr %897, i64 %904
  store i32 %911, ptr %912, align 4
  %913 = add i64 %904, 1
  br label %903

914:                                              ; preds = %903
  br label %915

915:                                              ; preds = %918, %914
  %916 = phi i64 [ %925, %918 ], [ 0, %914 ]
  %917 = icmp slt i64 %916, 1024
  br i1 %917, label %918, label %926

918:                                              ; preds = %915
  %919 = getelementptr i32, ptr %280, i64 %916
  %920 = load i32, ptr %919, align 4
  %921 = getelementptr i32, ptr %874, i64 %916
  %922 = load i32, ptr %921, align 4
  %923 = add i32 %920, %922
  %924 = getelementptr i32, ptr %21, i64 %916
  store i32 %923, ptr %924, align 4
  %925 = add i64 %916, 1
  br label %915

926:                                              ; preds = %915
  %927 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %928 = ptrtoint ptr %927 to i64
  %929 = add i64 %928, 63
  %930 = urem i64 %929, 64
  %931 = sub i64 %929, %930
  %932 = inttoptr i64 %931 to ptr
  %933 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %927, 0
  %934 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %933, ptr %932, 1
  %935 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %934, i64 0, 2
  %936 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %935, i64 1024, 3, 0
  %937 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %936, i64 1, 4, 0
  br label %938

938:                                              ; preds = %941, %926
  %939 = phi i64 [ %950, %941 ], [ 0, %926 ]
  %940 = icmp slt i64 %939, 1024
  br i1 %940, label %941, label %951

941:                                              ; preds = %938
  %942 = getelementptr i1, ptr %780, i64 %939
  %943 = load i1, ptr %942, align 1
  %944 = getelementptr i32, ptr %897, i64 %939
  %945 = load i32, ptr %944, align 4
  %946 = getelementptr i32, ptr %21, i64 %939
  %947 = load i32, ptr %946, align 4
  %948 = select i1 %943, i32 %945, i32 %947
  %949 = getelementptr i32, ptr %932, i64 %939
  store i32 %948, ptr %949, align 4
  %950 = add i64 %939, 1
  br label %938

951:                                              ; preds = %938
  br label %952

952:                                              ; preds = %955, %951
  %953 = phi i64 [ %962, %955 ], [ 0, %951 ]
  %954 = icmp slt i64 %953, 1024
  br i1 %954, label %955, label %963

955:                                              ; preds = %952
  %956 = getelementptr i32, ptr %571, i64 %953
  %957 = load i32, ptr %956, align 4
  %958 = getelementptr i32, ptr %874, i64 %953
  %959 = load i32, ptr %958, align 4
  %960 = add i32 %957, %959
  %961 = getelementptr i32, ptr %21, i64 %953
  store i32 %960, ptr %961, align 4
  %962 = add i64 %953, 1
  br label %952

963:                                              ; preds = %952
  %964 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1024) to i64), i64 64))
  %965 = ptrtoint ptr %964 to i64
  %966 = add i64 %965, 63
  %967 = urem i64 %966, 64
  %968 = sub i64 %966, %967
  %969 = inttoptr i64 %968 to ptr
  %970 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %964, 0
  %971 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %970, ptr %969, 1
  %972 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %971, i64 0, 2
  %973 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %972, i64 1024, 3, 0
  %974 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %973, i64 1, 4, 0
  br label %975

975:                                              ; preds = %978, %963
  %976 = phi i64 [ %987, %978 ], [ 0, %963 ]
  %977 = icmp slt i64 %976, 1024
  br i1 %977, label %978, label %988

978:                                              ; preds = %975
  %979 = getelementptr i1, ptr %815, i64 %976
  %980 = load i1, ptr %979, align 1
  %981 = getelementptr i32, ptr %21, i64 %976
  %982 = load i32, ptr %981, align 4
  %983 = getelementptr i32, ptr %932, i64 %976
  %984 = load i32, ptr %983, align 4
  %985 = select i1 %980, i32 %982, i32 %984
  %986 = getelementptr i32, ptr %969, i64 %976
  store i32 %985, ptr %986, align 4
  %987 = add i64 %976, 1
  br label %975

988:                                              ; preds = %975
  br label %989

989:                                              ; preds = %992, %988
  %990 = phi i64 [ %999, %992 ], [ 0, %988 ]
  %991 = icmp slt i64 %990, 1024
  br i1 %991, label %992, label %1000

992:                                              ; preds = %989
  %993 = getelementptr i32, ptr %682, i64 %990
  %994 = load i32, ptr %993, align 4
  %995 = getelementptr i32, ptr %874, i64 %990
  %996 = load i32, ptr %995, align 4
  %997 = add i32 %994, %996
  %998 = getelementptr i32, ptr %21, i64 %990
  store i32 %997, ptr %998, align 4
  %999 = add i64 %990, 1
  br label %989

1000:                                             ; preds = %989
  br label %1001

1001:                                             ; preds = %1004, %1000
  %1002 = phi i64 [ %1013, %1004 ], [ 0, %1000 ]
  %1003 = icmp slt i64 %1002, 1024
  br i1 %1003, label %1004, label %1014

1004:                                             ; preds = %1001
  %1005 = getelementptr i1, ptr %199, i64 %1002
  %1006 = load i1, ptr %1005, align 1
  %1007 = getelementptr i32, ptr %21, i64 %1002
  %1008 = load i32, ptr %1007, align 4
  %1009 = getelementptr i32, ptr %969, i64 %1002
  %1010 = load i32, ptr %1009, align 4
  %1011 = select i1 %1006, i32 %1008, i32 %1010
  %1012 = getelementptr i32, ptr %21, i64 %1002
  store i32 %1011, ptr %1012, align 4
  %1013 = add i64 %1002, 1
  br label %1001

1014:                                             ; preds = %1001
  %1015 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %148, 1
  %1016 = load i32, ptr %1015, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = inttoptr i64 %1 to ptr
  %1019 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %1018, 0
  %1020 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1019, ptr %1018, 1
  %1021 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1020, i64 %1017, 2
  %1022 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1021, i64 864, 3, 0
  %1023 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1022, i64 1, 4, 0
  %1024 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %1025 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1024, ptr %10, 1
  %1026 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1025, i64 0, 2
  %1027 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1026, i64 864, 3, 0
  %1028 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1027, i64 1, 4, 0
  %1029 = call ptr @llvm.stacksave()
  %1030 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %1028, ptr %1030, align 8
  %1031 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %1030, 1
  %1032 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %1023, ptr %1032, align 8
  %1033 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %1032, 1
  %1034 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1031, ptr %1034, align 8
  %1035 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1033, ptr %1035, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %1034, ptr %1035)
  call void @llvm.stackrestore(ptr %1029)
  br label %1036

1036:                                             ; preds = %1039, %1014
  %1037 = phi i64 [ %1044, %1039 ], [ 0, %1014 ]
  %1038 = icmp slt i64 %1037, 1024
  br i1 %1038, label %1039, label %1045

1039:                                             ; preds = %1036
  %1040 = getelementptr i32, ptr %21, i64 %1037
  %1041 = load i32, ptr %1040, align 4
  %1042 = sitofp i32 %1041 to float
  %1043 = getelementptr float, ptr %10, i64 %1037
  store float %1042, ptr %1043, align 4
  %1044 = add i64 %1037, 1
  br label %1036

1045:                                             ; preds = %1036
  %1046 = inttoptr i64 %2 to ptr
  %1047 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %1046, 0
  %1048 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1047, ptr %1046, 1
  %1049 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1048, i64 %1017, 2
  %1050 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1049, i64 864, 3, 0
  %1051 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1050, i64 1, 4, 0
  %1052 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %1053 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1052, ptr %10, 1
  %1054 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1053, i64 0, 2
  %1055 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1054, i64 864, 3, 0
  %1056 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1055, i64 1, 4, 0
  %1057 = call ptr @llvm.stacksave()
  %1058 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %1056, ptr %1058, align 8
  %1059 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %1058, 1
  %1060 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %1051, ptr %1060, align 8
  %1061 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %1060, 1
  %1062 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1059, ptr %1062, align 8
  %1063 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1061, ptr %1063, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %1062, ptr %1063)
  call void @llvm.stackrestore(ptr %1057)
  ret void
}

define void @_mlir_ciface_triton__0d1d2d3de(i64 %0, i64 %1, i64 %2, i32 %3) {
  call void @triton__0d1d2d3de(i64 %0, i64 %1, i64 %2, i32 %3)
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
