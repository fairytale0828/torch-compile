; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) {
  %16 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %17 = ptrtoint ptr %16 to i64
  %18 = add i64 %17, 63
  %19 = urem i64 %18, 64
  %20 = sub i64 %18, %19
  %21 = inttoptr i64 %20 to ptr
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, ptr %21, 1
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 0, 2
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 16, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 128, 3, 1
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 128, 4, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 1, 4, 1
  %29 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %30 = ptrtoint ptr %29 to i64
  %31 = add i64 %30, 63
  %32 = urem i64 %31, 64
  %33 = sub i64 %31, %32
  %34 = inttoptr i64 %33 to ptr
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %29, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, ptr %34, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 0, 2
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 16, 3, 0
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 128, 3, 1
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, i64 128, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 1, 4, 1
  br label %42

42:                                               ; preds = %54, %15
  %43 = phi i64 [ %55, %54 ], [ 0, %15 ]
  %44 = icmp slt i64 %43, 16
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %53, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 128
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = mul i64 %43, 128
  %51 = add i64 %50, %47
  %52 = getelementptr float, ptr %34, i64 %51
  store float 0.000000e+00, ptr %52, align 4
  %53 = add i64 %47, 1
  br label %46

54:                                               ; preds = %46
  %55 = add i64 %43, 1
  br label %42

56:                                               ; preds = %42
  %57 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %58 = ptrtoint ptr %57 to i64
  %59 = add i64 %58, 63
  %60 = urem i64 %59, 64
  %61 = sub i64 %59, %60
  %62 = inttoptr i64 %61 to ptr
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %57, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, ptr %62, 1
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 0, 2
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 16, 3, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 1, 4, 0
  %68 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %69 = ptrtoint ptr %68 to i64
  %70 = add i64 %69, 63
  %71 = urem i64 %70, 64
  %72 = sub i64 %70, %71
  %73 = inttoptr i64 %72 to ptr
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, ptr %73, 1
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, i64 0, 2
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 16, 3, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 1, 4, 0
  br label %79

79:                                               ; preds = %83, %56
  %80 = phi i64 [ %87, %83 ], [ 0, %56 ]
  %81 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %81, %83 ], [ %78, %56 ]
  %82 = icmp slt i64 %80, 16
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = trunc i64 %80 to i32
  %85 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, 1
  %86 = getelementptr i32, ptr %85, i64 %80
  store i32 %84, ptr %86, align 4
  %87 = add i64 %80, 1
  br label %79

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %92, %88
  %90 = phi i64 [ %94, %92 ], [ 0, %88 ]
  %91 = icmp slt i64 %90, 16
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = getelementptr i32, ptr %62, i64 %90
  store i32 0, ptr %93, align 4
  %94 = add i64 %90, 1
  br label %89

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %99, %95
  %97 = phi i64 [ %107, %99 ], [ 0, %95 ]
  %98 = icmp slt i64 %97, 16
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = getelementptr i32, ptr %62, i64 %97
  %101 = load i32, ptr %100, align 4
  %102 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, 1
  %103 = getelementptr i32, ptr %102, i64 %97
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %101, %104
  %106 = getelementptr i32, ptr %62, i64 %97
  store i32 %105, ptr %106, align 4
  %107 = add i64 %97, 1
  br label %96

108:                                              ; preds = %96
  %109 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i64 64))
  %110 = ptrtoint ptr %109 to i64
  %111 = add i64 %110, 63
  %112 = urem i64 %111, 64
  %113 = sub i64 %111, %112
  %114 = inttoptr i64 %113 to ptr
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %109, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, ptr %114, 1
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, i64 0, 2
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %117, i64 128, 3, 0
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, i64 1, 4, 0
  %120 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i64 64))
  %121 = ptrtoint ptr %120 to i64
  %122 = add i64 %121, 63
  %123 = urem i64 %122, 64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to ptr
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %120, 0
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, ptr %125, 1
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, i64 0, 2
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, i64 128, 3, 0
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, i64 1, 4, 0
  br label %131

131:                                              ; preds = %135, %108
  %132 = phi i64 [ %139, %135 ], [ 0, %108 ]
  %133 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %133, %135 ], [ %130, %108 ]
  %134 = icmp slt i64 %132, 128
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = trunc i64 %132 to i32
  %137 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, 1
  %138 = getelementptr i32, ptr %137, i64 %132
  store i32 %136, ptr %138, align 4
  %139 = add i64 %132, 1
  br label %131

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %144, %140
  %142 = phi i64 [ %146, %144 ], [ 0, %140 ]
  %143 = icmp slt i64 %142, 128
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = getelementptr i32, ptr %114, i64 %142
  store i32 0, ptr %145, align 4
  %146 = add i64 %142, 1
  br label %141

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %151, %147
  %149 = phi i64 [ %159, %151 ], [ 0, %147 ]
  %150 = icmp slt i64 %149, 128
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = getelementptr i32, ptr %114, i64 %149
  %153 = load i32, ptr %152, align 4
  %154 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, 1
  %155 = getelementptr i32, ptr %154, i64 %149
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %153, %156
  %158 = getelementptr i32, ptr %114, i64 %149
  store i32 %157, ptr %158, align 4
  %159 = add i64 %149, 1
  br label %148

160:                                              ; preds = %148
  %161 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %57, 0
  %162 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %161, ptr %62, 1
  %163 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %162, i64 0, 2
  %164 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %163, i64 16, 3, 0
  %165 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %164, i64 1, 4, 0
  %166 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %165, i64 1, 3, 1
  %167 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %166, i64 1, 4, 1
  %168 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 16) to i64), i64 64))
  %169 = ptrtoint ptr %168 to i64
  %170 = add i64 %169, 63
  %171 = urem i64 %170, 64
  %172 = sub i64 %170, %171
  %173 = inttoptr i64 %172 to ptr
  %174 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %168, 0
  %175 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %174, ptr %173, 1
  %176 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %175, i64 0, 2
  %177 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %176, i64 16, 3, 0
  %178 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %177, i64 1, 3, 1
  %179 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %178, i64 1, 4, 0
  %180 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %179, i64 1, 4, 1
  br label %181

181:                                              ; preds = %192, %160
  %182 = phi i64 [ %193, %192 ], [ 0, %160 ]
  %183 = icmp slt i64 %182, 16
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  br label %185

185:                                              ; preds = %188, %184
  %186 = phi i64 [ %191, %188 ], [ 0, %184 ]
  %187 = icmp slt i64 %186, 1
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = add i64 %182, %186
  %190 = getelementptr i32, ptr %173, i64 %189
  store i32 %9, ptr %190, align 4
  %191 = add i64 %186, 1
  br label %185

192:                                              ; preds = %185
  %193 = add i64 %182, 1
  br label %181

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %213, %194
  %196 = phi i64 [ %214, %213 ], [ 0, %194 ]
  %197 = icmp slt i64 %196, 16
  br i1 %197, label %198, label %215

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %202, %198
  %200 = phi i64 [ %212, %202 ], [ 0, %198 ]
  %201 = icmp slt i64 %200, 1
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = add i64 %196, %200
  %204 = getelementptr i32, ptr %62, i64 %203
  %205 = load i32, ptr %204, align 4
  %206 = add i64 %196, %200
  %207 = getelementptr i32, ptr %173, i64 %206
  %208 = load i32, ptr %207, align 4
  %209 = mul i32 %205, %208
  %210 = add i64 %196, %200
  %211 = getelementptr i32, ptr %173, i64 %210
  store i32 %209, ptr %211, align 4
  %212 = add i64 %200, 1
  br label %199

213:                                              ; preds = %199
  %214 = add i64 %196, 1
  br label %195

215:                                              ; preds = %195
  %216 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), i64 64))
  %217 = ptrtoint ptr %216 to i64
  %218 = add i64 %217, 63
  %219 = urem i64 %218, 64
  %220 = sub i64 %218, %219
  %221 = inttoptr i64 %220 to ptr
  %222 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %216, 0
  %223 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %222, ptr %221, 1
  %224 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %223, i64 0, 2
  %225 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %224, i64 32, 3, 0
  %226 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %225, i64 1, 4, 0
  br label %227

227:                                              ; preds = %231, %215
  %228 = phi i64 [ %235, %231 ], [ 0, %215 ]
  %229 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %229, %231 ], [ %226, %215 ]
  %230 = icmp slt i64 %228, 32
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = trunc i64 %228 to i32
  %233 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 1
  %234 = getelementptr i32, ptr %233, i64 %228
  store i32 %232, ptr %234, align 4
  %235 = add i64 %228, 1
  br label %227

236:                                              ; preds = %227
  %237 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 0
  %238 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 1
  %239 = insertvalue { ptr, ptr, i64 } undef, ptr %237, 0
  %240 = insertvalue { ptr, ptr, i64 } %239, ptr %238, 1
  %241 = insertvalue { ptr, ptr, i64 } %240, i64 0, 2
  %242 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 2
  %243 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 3, 0
  %244 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 4, 0
  %245 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %237, 0
  %246 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %245, ptr %238, 1
  %247 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %246, i64 0, 2
  %248 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %247, i64 1, 3, 0
  %249 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %248, i64 32, 4, 0
  %250 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %249, i64 32, 3, 1
  %251 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %250, i64 1, 4, 1
  %252 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), i64 64))
  %253 = ptrtoint ptr %252 to i64
  %254 = add i64 %253, 63
  %255 = urem i64 %254, 64
  %256 = sub i64 %254, %255
  %257 = inttoptr i64 %256 to ptr
  %258 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %252, 0
  %259 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %258, ptr %257, 1
  %260 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %259, i64 0, 2
  %261 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %260, i64 1, 3, 0
  %262 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %261, i64 32, 3, 1
  %263 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %262, i64 32, 4, 0
  %264 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %263, i64 1, 4, 1
  br label %265

265:                                              ; preds = %277, %236
  %266 = phi i64 [ %278, %277 ], [ 0, %236 ]
  %267 = icmp slt i64 %266, 1
  br i1 %267, label %268, label %279

268:                                              ; preds = %265
  br label %269

269:                                              ; preds = %272, %268
  %270 = phi i64 [ %276, %272 ], [ 0, %268 ]
  %271 = icmp slt i64 %270, 32
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = mul i64 %266, 32
  %274 = add i64 %273, %270
  %275 = getelementptr i32, ptr %257, i64 %274
  store i32 %10, ptr %275, align 4
  %276 = add i64 %270, 1
  br label %269

277:                                              ; preds = %269
  %278 = add i64 %266, 1
  br label %265

279:                                              ; preds = %265
  br label %280

280:                                              ; preds = %301, %279
  %281 = phi i64 [ %302, %301 ], [ 0, %279 ]
  %282 = icmp slt i64 %281, 1
  br i1 %282, label %283, label %303

283:                                              ; preds = %280
  br label %284

284:                                              ; preds = %287, %283
  %285 = phi i64 [ %300, %287 ], [ 0, %283 ]
  %286 = icmp slt i64 %285, 32
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = mul i64 %281, 32
  %289 = add i64 %288, %285
  %290 = getelementptr i32, ptr %238, i64 %289
  %291 = load i32, ptr %290, align 4
  %292 = mul i64 %281, 32
  %293 = add i64 %292, %285
  %294 = getelementptr i32, ptr %257, i64 %293
  %295 = load i32, ptr %294, align 4
  %296 = mul i32 %291, %295
  %297 = mul i64 %281, 32
  %298 = add i64 %297, %285
  %299 = getelementptr i32, ptr %257, i64 %298
  store i32 %296, ptr %299, align 4
  %300 = add i64 %285, 1
  br label %284

301:                                              ; preds = %284
  %302 = add i64 %281, 1
  br label %280

303:                                              ; preds = %280
  %304 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %168, 0
  %305 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %304, ptr %173, 1
  %306 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %305, i64 0, 2
  %307 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %306, i64 16, 3, 0
  %308 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %307, i64 1, 4, 0
  %309 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 512) to i64), i64 64))
  %310 = ptrtoint ptr %309 to i64
  %311 = add i64 %310, 63
  %312 = urem i64 %311, 64
  %313 = sub i64 %311, %312
  %314 = inttoptr i64 %313 to ptr
  %315 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %309, 0
  %316 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %315, ptr %314, 1
  %317 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %316, i64 0, 2
  %318 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %317, i64 16, 3, 0
  %319 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %318, i64 32, 3, 1
  %320 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %319, i64 32, 4, 0
  %321 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %320, i64 1, 4, 1
  %322 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 512) to i64), i64 64))
  %323 = ptrtoint ptr %322 to i64
  %324 = add i64 %323, 63
  %325 = urem i64 %324, 64
  %326 = sub i64 %324, %325
  %327 = inttoptr i64 %326 to ptr
  %328 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %322, 0
  %329 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %328, ptr %327, 1
  %330 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %329, i64 0, 2
  %331 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, i64 16, 3, 0
  %332 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %331, i64 32, 3, 1
  %333 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %332, i64 32, 4, 0
  %334 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %333, i64 1, 4, 1
  br label %335

335:                                              ; preds = %349, %303
  %336 = phi i64 [ %350, %349 ], [ 0, %303 ]
  %337 = icmp slt i64 %336, 16
  br i1 %337, label %338, label %351

338:                                              ; preds = %335
  br label %339

339:                                              ; preds = %342, %338
  %340 = phi i64 [ %348, %342 ], [ 0, %338 ]
  %341 = icmp slt i64 %340, 32
  br i1 %341, label %342, label %349

342:                                              ; preds = %339
  %343 = getelementptr i32, ptr %173, i64 %336
  %344 = load i32, ptr %343, align 4
  %345 = mul i64 %336, 32
  %346 = add i64 %345, %340
  %347 = getelementptr i32, ptr %327, i64 %346
  store i32 %344, ptr %347, align 4
  %348 = add i64 %340, 1
  br label %339

349:                                              ; preds = %339
  %350 = add i64 %336, 1
  br label %335

351:                                              ; preds = %335
  %352 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %252, 0
  %353 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %352, ptr %257, 1
  %354 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %353, i64 0, 2
  %355 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %354, i64 32, 3, 0
  %356 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %355, i64 1, 4, 0
  br label %357

357:                                              ; preds = %371, %351
  %358 = phi i64 [ %372, %371 ], [ 0, %351 ]
  %359 = icmp slt i64 %358, 16
  br i1 %359, label %360, label %373

360:                                              ; preds = %357
  br label %361

361:                                              ; preds = %364, %360
  %362 = phi i64 [ %370, %364 ], [ 0, %360 ]
  %363 = icmp slt i64 %362, 32
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = getelementptr i32, ptr %257, i64 %362
  %366 = load i32, ptr %365, align 4
  %367 = mul i64 %358, 32
  %368 = add i64 %367, %362
  %369 = getelementptr i32, ptr %314, i64 %368
  store i32 %366, ptr %369, align 4
  %370 = add i64 %362, 1
  br label %361

371:                                              ; preds = %361
  %372 = add i64 %358, 1
  br label %357

373:                                              ; preds = %357
  %374 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 512) to i64), i64 64))
  %375 = ptrtoint ptr %374 to i64
  %376 = add i64 %375, 63
  %377 = urem i64 %376, 64
  %378 = sub i64 %376, %377
  %379 = inttoptr i64 %378 to ptr
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %374, 0
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %380, ptr %379, 1
  %382 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %381, i64 0, 2
  %383 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %382, i64 16, 3, 0
  %384 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %383, i64 32, 3, 1
  %385 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %384, i64 32, 4, 0
  %386 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %385, i64 1, 4, 1
  br label %387

387:                                              ; preds = %408, %373
  %388 = phi i64 [ %409, %408 ], [ 0, %373 ]
  %389 = icmp slt i64 %388, 16
  br i1 %389, label %390, label %410

390:                                              ; preds = %387
  br label %391

391:                                              ; preds = %394, %390
  %392 = phi i64 [ %407, %394 ], [ 0, %390 ]
  %393 = icmp slt i64 %392, 32
  br i1 %393, label %394, label %408

394:                                              ; preds = %391
  %395 = mul i64 %388, 32
  %396 = add i64 %395, %392
  %397 = getelementptr i32, ptr %314, i64 %396
  %398 = load i32, ptr %397, align 4
  %399 = mul i64 %388, 32
  %400 = add i64 %399, %392
  %401 = getelementptr i32, ptr %327, i64 %400
  %402 = load i32, ptr %401, align 4
  %403 = add i32 %398, %402
  %404 = mul i64 %388, 32
  %405 = add i64 %404, %392
  %406 = getelementptr i32, ptr %379, i64 %405
  store i32 %403, ptr %406, align 4
  %407 = add i64 %392, 1
  br label %391

408:                                              ; preds = %391
  %409 = add i64 %388, 1
  br label %387

410:                                              ; preds = %387
  %411 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 0
  %412 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 1
  %413 = insertvalue { ptr, ptr, i64 } undef, ptr %411, 0
  %414 = insertvalue { ptr, ptr, i64 } %413, ptr %412, 1
  %415 = insertvalue { ptr, ptr, i64 } %414, i64 0, 2
  %416 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 2
  %417 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 3, 0
  %418 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 4, 0
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %411, 0
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, ptr %412, 1
  %421 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %420, i64 0, 2
  %422 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %421, i64 32, 3, 0
  %423 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %422, i64 1, 4, 0
  %424 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %423, i64 1, 3, 1
  %425 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %424, i64 1, 4, 1
  %426 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), i64 64))
  %427 = ptrtoint ptr %426 to i64
  %428 = add i64 %427, 63
  %429 = urem i64 %428, 64
  %430 = sub i64 %428, %429
  %431 = inttoptr i64 %430 to ptr
  %432 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %426, 0
  %433 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %432, ptr %431, 1
  %434 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, i64 0, 2
  %435 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %434, i64 32, 3, 0
  %436 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %435, i64 1, 3, 1
  %437 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, i64 1, 4, 0
  %438 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %437, i64 1, 4, 1
  br label %439

439:                                              ; preds = %450, %410
  %440 = phi i64 [ %451, %450 ], [ 0, %410 ]
  %441 = icmp slt i64 %440, 32
  br i1 %441, label %442, label %452

442:                                              ; preds = %439
  br label %443

443:                                              ; preds = %446, %442
  %444 = phi i64 [ %449, %446 ], [ 0, %442 ]
  %445 = icmp slt i64 %444, 1
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  %447 = add i64 %440, %444
  %448 = getelementptr i32, ptr %431, i64 %447
  store i32 %11, ptr %448, align 4
  %449 = add i64 %444, 1
  br label %443

450:                                              ; preds = %443
  %451 = add i64 %440, 1
  br label %439

452:                                              ; preds = %439
  br label %453

453:                                              ; preds = %471, %452
  %454 = phi i64 [ %472, %471 ], [ 0, %452 ]
  %455 = icmp slt i64 %454, 32
  br i1 %455, label %456, label %473

456:                                              ; preds = %453
  br label %457

457:                                              ; preds = %460, %456
  %458 = phi i64 [ %470, %460 ], [ 0, %456 ]
  %459 = icmp slt i64 %458, 1
  br i1 %459, label %460, label %471

460:                                              ; preds = %457
  %461 = add i64 %454, %458
  %462 = getelementptr i32, ptr %412, i64 %461
  %463 = load i32, ptr %462, align 4
  %464 = add i64 %454, %458
  %465 = getelementptr i32, ptr %431, i64 %464
  %466 = load i32, ptr %465, align 4
  %467 = mul i32 %463, %466
  %468 = add i64 %454, %458
  %469 = getelementptr i32, ptr %431, i64 %468
  store i32 %467, ptr %469, align 4
  %470 = add i64 %458, 1
  br label %457

471:                                              ; preds = %457
  %472 = add i64 %454, 1
  br label %453

473:                                              ; preds = %453
  %474 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %109, 0
  %475 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %474, ptr %114, 1
  %476 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %475, i64 0, 2
  %477 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %476, i64 1, 3, 0
  %478 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %477, i64 128, 4, 0
  %479 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %478, i64 128, 3, 1
  %480 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %479, i64 1, 4, 1
  %481 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i64 64))
  %482 = ptrtoint ptr %481 to i64
  %483 = add i64 %482, 63
  %484 = urem i64 %483, 64
  %485 = sub i64 %483, %484
  %486 = inttoptr i64 %485 to ptr
  %487 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %481, 0
  %488 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %487, ptr %486, 1
  %489 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %488, i64 0, 2
  %490 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %489, i64 1, 3, 0
  %491 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %490, i64 128, 3, 1
  %492 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %491, i64 128, 4, 0
  %493 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %492, i64 1, 4, 1
  br label %494

494:                                              ; preds = %506, %473
  %495 = phi i64 [ %507, %506 ], [ 0, %473 ]
  %496 = icmp slt i64 %495, 1
  br i1 %496, label %497, label %508

497:                                              ; preds = %494
  br label %498

498:                                              ; preds = %501, %497
  %499 = phi i64 [ %505, %501 ], [ 0, %497 ]
  %500 = icmp slt i64 %499, 128
  br i1 %500, label %501, label %506

501:                                              ; preds = %498
  %502 = mul i64 %495, 128
  %503 = add i64 %502, %499
  %504 = getelementptr i32, ptr %486, i64 %503
  store i32 %12, ptr %504, align 4
  %505 = add i64 %499, 1
  br label %498

506:                                              ; preds = %498
  %507 = add i64 %495, 1
  br label %494

508:                                              ; preds = %494
  br label %509

509:                                              ; preds = %530, %508
  %510 = phi i64 [ %531, %530 ], [ 0, %508 ]
  %511 = icmp slt i64 %510, 1
  br i1 %511, label %512, label %532

512:                                              ; preds = %509
  br label %513

513:                                              ; preds = %516, %512
  %514 = phi i64 [ %529, %516 ], [ 0, %512 ]
  %515 = icmp slt i64 %514, 128
  br i1 %515, label %516, label %530

516:                                              ; preds = %513
  %517 = mul i64 %510, 128
  %518 = add i64 %517, %514
  %519 = getelementptr i32, ptr %114, i64 %518
  %520 = load i32, ptr %519, align 4
  %521 = mul i64 %510, 128
  %522 = add i64 %521, %514
  %523 = getelementptr i32, ptr %486, i64 %522
  %524 = load i32, ptr %523, align 4
  %525 = mul i32 %520, %524
  %526 = mul i64 %510, 128
  %527 = add i64 %526, %514
  %528 = getelementptr i32, ptr %486, i64 %527
  store i32 %525, ptr %528, align 4
  %529 = add i64 %514, 1
  br label %513

530:                                              ; preds = %513
  %531 = add i64 %510, 1
  br label %509

532:                                              ; preds = %509
  %533 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %426, 0
  %534 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %533, ptr %431, 1
  %535 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %534, i64 0, 2
  %536 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %535, i64 32, 3, 0
  %537 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %536, i64 1, 4, 0
  %538 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %539 = ptrtoint ptr %538 to i64
  %540 = add i64 %539, 63
  %541 = urem i64 %540, 64
  %542 = sub i64 %540, %541
  %543 = inttoptr i64 %542 to ptr
  %544 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %538, 0
  %545 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %544, ptr %543, 1
  %546 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %545, i64 0, 2
  %547 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %546, i64 32, 3, 0
  %548 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %547, i64 128, 3, 1
  %549 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %548, i64 128, 4, 0
  %550 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %549, i64 1, 4, 1
  %551 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %552 = ptrtoint ptr %551 to i64
  %553 = add i64 %552, 63
  %554 = urem i64 %553, 64
  %555 = sub i64 %553, %554
  %556 = inttoptr i64 %555 to ptr
  %557 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %551, 0
  %558 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %557, ptr %556, 1
  %559 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %558, i64 0, 2
  %560 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %559, i64 32, 3, 0
  %561 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %560, i64 128, 3, 1
  %562 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %561, i64 128, 4, 0
  %563 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %562, i64 1, 4, 1
  br label %564

564:                                              ; preds = %578, %532
  %565 = phi i64 [ %579, %578 ], [ 0, %532 ]
  %566 = icmp slt i64 %565, 32
  br i1 %566, label %567, label %580

567:                                              ; preds = %564
  br label %568

568:                                              ; preds = %571, %567
  %569 = phi i64 [ %577, %571 ], [ 0, %567 ]
  %570 = icmp slt i64 %569, 128
  br i1 %570, label %571, label %578

571:                                              ; preds = %568
  %572 = getelementptr i32, ptr %431, i64 %565
  %573 = load i32, ptr %572, align 4
  %574 = mul i64 %565, 128
  %575 = add i64 %574, %569
  %576 = getelementptr i32, ptr %556, i64 %575
  store i32 %573, ptr %576, align 4
  %577 = add i64 %569, 1
  br label %568

578:                                              ; preds = %568
  %579 = add i64 %565, 1
  br label %564

580:                                              ; preds = %564
  %581 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %481, 0
  %582 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %581, ptr %486, 1
  %583 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %582, i64 0, 2
  %584 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %583, i64 128, 3, 0
  %585 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %584, i64 1, 4, 0
  br label %586

586:                                              ; preds = %600, %580
  %587 = phi i64 [ %601, %600 ], [ 0, %580 ]
  %588 = icmp slt i64 %587, 32
  br i1 %588, label %589, label %602

589:                                              ; preds = %586
  br label %590

590:                                              ; preds = %593, %589
  %591 = phi i64 [ %599, %593 ], [ 0, %589 ]
  %592 = icmp slt i64 %591, 128
  br i1 %592, label %593, label %600

593:                                              ; preds = %590
  %594 = getelementptr i32, ptr %486, i64 %591
  %595 = load i32, ptr %594, align 4
  %596 = mul i64 %587, 128
  %597 = add i64 %596, %591
  %598 = getelementptr i32, ptr %543, i64 %597
  store i32 %595, ptr %598, align 4
  %599 = add i64 %591, 1
  br label %590

600:                                              ; preds = %590
  %601 = add i64 %587, 1
  br label %586

602:                                              ; preds = %586
  %603 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %604 = ptrtoint ptr %603 to i64
  %605 = add i64 %604, 63
  %606 = urem i64 %605, 64
  %607 = sub i64 %605, %606
  %608 = inttoptr i64 %607 to ptr
  %609 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %603, 0
  %610 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %609, ptr %608, 1
  %611 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %610, i64 0, 2
  %612 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %611, i64 32, 3, 0
  %613 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %612, i64 128, 3, 1
  %614 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %613, i64 128, 4, 0
  %615 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %614, i64 1, 4, 1
  br label %616

616:                                              ; preds = %637, %602
  %617 = phi i64 [ %638, %637 ], [ 0, %602 ]
  %618 = icmp slt i64 %617, 32
  br i1 %618, label %619, label %639

619:                                              ; preds = %616
  br label %620

620:                                              ; preds = %623, %619
  %621 = phi i64 [ %636, %623 ], [ 0, %619 ]
  %622 = icmp slt i64 %621, 128
  br i1 %622, label %623, label %637

623:                                              ; preds = %620
  %624 = mul i64 %617, 128
  %625 = add i64 %624, %621
  %626 = getelementptr i32, ptr %543, i64 %625
  %627 = load i32, ptr %626, align 4
  %628 = mul i64 %617, 128
  %629 = add i64 %628, %621
  %630 = getelementptr i32, ptr %556, i64 %629
  %631 = load i32, ptr %630, align 4
  %632 = add i32 %627, %631
  %633 = mul i64 %617, 128
  %634 = add i64 %633, %621
  %635 = getelementptr i32, ptr %608, i64 %634
  store i32 %632, ptr %635, align 4
  %636 = add i64 %621, 1
  br label %620

637:                                              ; preds = %620
  %638 = add i64 %617, 1
  br label %616

639:                                              ; preds = %616
  %640 = sext i32 %4 to i64
  %641 = call i64 @llvm.smax.i64(i64 %640, i64 0)
  %642 = call i64 @llvm.smin.i64(i64 %641, i64 16)
  %643 = sext i32 %6 to i64
  %644 = call i64 @llvm.smax.i64(i64 %643, i64 0)
  %645 = call i64 @llvm.smin.i64(i64 %644, i64 32)
  %646 = call i64 @llvm.smin.i64(i64 %642, i64 16)
  %647 = call i64 @llvm.smax.i64(i64 %646, i64 0)
  %648 = call i64 @llvm.smin.i64(i64 %645, i64 32)
  %649 = call i64 @llvm.smax.i64(i64 %648, i64 0)
  %650 = inttoptr i64 %1 to ptr
  %651 = mul i64 %649, %647
  %652 = getelementptr float, ptr null, i64 %651
  %653 = ptrtoint ptr %652 to i64
  %654 = add i64 %653, 64
  %655 = call ptr @malloc(i64 %654)
  %656 = ptrtoint ptr %655 to i64
  %657 = add i64 %656, 63
  %658 = urem i64 %657, 64
  %659 = sub i64 %657, %658
  %660 = inttoptr i64 %659 to ptr
  %661 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %655, 0
  %662 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %661, ptr %660, 1
  %663 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %662, i64 0, 2
  %664 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %663, i64 %647, 3, 0
  %665 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %664, i64 %649, 3, 1
  %666 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %665, i64 %649, 4, 0
  %667 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %666, i64 1, 4, 1
  %668 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 512) to i64), i64 64))
  %669 = ptrtoint ptr %668 to i64
  %670 = add i64 %669, 63
  %671 = urem i64 %670, 64
  %672 = sub i64 %670, %671
  %673 = inttoptr i64 %672 to ptr
  %674 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %668, 0
  %675 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %674, ptr %673, 1
  %676 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %675, i64 0, 2
  %677 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %676, i64 16, 3, 0
  %678 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %677, i64 32, 3, 1
  %679 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %678, i64 32, 4, 0
  %680 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %679, i64 1, 4, 1
  %681 = sext i32 %5 to i64
  %682 = call i64 @llvm.smax.i64(i64 %681, i64 0)
  %683 = call i64 @llvm.smin.i64(i64 %682, i64 128)
  %684 = call i64 @llvm.smin.i64(i64 %683, i64 128)
  %685 = call i64 @llvm.smax.i64(i64 %684, i64 0)
  %686 = inttoptr i64 %2 to ptr
  %687 = mul i64 %685, %649
  %688 = getelementptr float, ptr null, i64 %687
  %689 = ptrtoint ptr %688 to i64
  %690 = add i64 %689, 64
  %691 = call ptr @malloc(i64 %690)
  %692 = ptrtoint ptr %691 to i64
  %693 = add i64 %692, 63
  %694 = urem i64 %693, 64
  %695 = sub i64 %693, %694
  %696 = inttoptr i64 %695 to ptr
  %697 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %691, 0
  %698 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %697, ptr %696, 1
  %699 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %698, i64 0, 2
  %700 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %699, i64 %649, 3, 0
  %701 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %700, i64 %685, 3, 1
  %702 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %701, i64 %685, 4, 0
  %703 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %702, i64 1, 4, 1
  %704 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %705 = ptrtoint ptr %704 to i64
  %706 = add i64 %705, 63
  %707 = urem i64 %706, 64
  %708 = sub i64 %706, %707
  %709 = inttoptr i64 %708 to ptr
  %710 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %704, 0
  %711 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %710, ptr %709, 1
  %712 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %711, i64 0, 2
  %713 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %712, i64 32, 3, 0
  %714 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %713, i64 128, 3, 1
  %715 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %714, i64 128, 4, 0
  %716 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %715, i64 1, 4, 1
  %717 = mul i32 %10, 32
  %718 = mul i32 %11, 32
  %719 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %720 = ptrtoint ptr %719 to i64
  %721 = add i64 %720, 63
  %722 = urem i64 %721, 64
  %723 = sub i64 %721, %722
  %724 = inttoptr i64 %723 to ptr
  %725 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %719, 0
  %726 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %725, ptr %724, 1
  %727 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %726, i64 0, 2
  %728 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %727, i64 16, 3, 0
  %729 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %728, i64 128, 3, 1
  %730 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %729, i64 128, 4, 0
  %731 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %730, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %724, ptr %34, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 2048), i1 false)
  br label %732

732:                                              ; preds = %1041, %639
  %733 = phi i32 [ %1081, %1041 ], [ 0, %639 ]
  %734 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %1054, %1041 ], [ %731, %639 ]
  %735 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %1067, %1041 ], [ %386, %639 ]
  %736 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %1080, %1041 ], [ %615, %639 ]
  %737 = icmp slt i32 %733, %6
  br i1 %737, label %738, label %1082

738:                                              ; preds = %732
  %739 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %735, 1
  %740 = getelementptr i32, ptr %739, i64 0
  %741 = load i32, ptr %740, align 4
  %742 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %735, 1
  %743 = getelementptr i32, ptr %742, i64 32
  %744 = load i32, ptr %743, align 4
  %745 = sub i32 %744, %741
  %746 = sext i32 %745 to i64
  %747 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %735, 1
  %748 = getelementptr i32, ptr %747, i64 1
  %749 = load i32, ptr %748, align 4
  %750 = sub i32 %749, %741
  %751 = sext i32 %750 to i64
  %752 = sext i32 %741 to i64
  %753 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %650, 0
  %754 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %753, ptr %650, 1
  %755 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %754, i64 %752, 2
  %756 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %755, i64 %649, 3, 1
  %757 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %756, i64 %751, 4, 1
  %758 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %757, i64 %647, 3, 0
  %759 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %758, i64 %746, 4, 0
  br label %760

760:                                              ; preds = %782, %738
  %761 = phi i64 [ %783, %782 ], [ 0, %738 ]
  %762 = icmp slt i64 %761, %647
  br i1 %762, label %763, label %784

763:                                              ; preds = %760
  br label %764

764:                                              ; preds = %767, %763
  %765 = phi i64 [ %781, %767 ], [ 0, %763 ]
  %766 = icmp slt i64 %765, %649
  br i1 %766, label %767, label %782

767:                                              ; preds = %764
  %768 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %759, 1
  %769 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %759, 2
  %770 = getelementptr float, ptr %768, i64 %769
  %771 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %759, 4, 0
  %772 = mul i64 %761, %771
  %773 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %759, 4, 1
  %774 = mul i64 %765, %773
  %775 = add i64 %772, %774
  %776 = getelementptr float, ptr %770, i64 %775
  %777 = load float, ptr %776, align 4
  %778 = mul i64 %761, %649
  %779 = add i64 %778, %765
  %780 = getelementptr float, ptr %660, i64 %779
  store float %777, ptr %780, align 4
  %781 = add i64 %765, 1
  br label %764

782:                                              ; preds = %764
  %783 = add i64 %761, 1
  br label %760

784:                                              ; preds = %760
  br label %785

785:                                              ; preds = %797, %784
  %786 = phi i64 [ %798, %797 ], [ 0, %784 ]
  %787 = icmp slt i64 %786, 16
  br i1 %787, label %788, label %799

788:                                              ; preds = %785
  br label %789

789:                                              ; preds = %792, %788
  %790 = phi i64 [ %796, %792 ], [ 0, %788 ]
  %791 = icmp slt i64 %790, 32
  br i1 %791, label %792, label %797

792:                                              ; preds = %789
  %793 = mul i64 %786, 32
  %794 = add i64 %793, %790
  %795 = getelementptr float, ptr %673, i64 %794
  store float 0.000000e+00, ptr %795, align 4
  %796 = add i64 %790, 1
  br label %789

797:                                              ; preds = %789
  %798 = add i64 %786, 1
  br label %785

799:                                              ; preds = %785
  %800 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %668, 0
  %801 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %800, ptr %673, 1
  %802 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %801, i64 0, 2
  %803 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %802, i64 %647, 3, 0
  %804 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %803, i64 32, 4, 0
  %805 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %804, i64 %649, 3, 1
  %806 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %805, i64 1, 4, 1
  %807 = call ptr @llvm.stacksave.p0()
  %808 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %667, ptr %808, align 8
  %809 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %808, 1
  %810 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %806, ptr %810, align 8
  %811 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %810, 1
  %812 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %809, ptr %812, align 8
  %813 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %811, ptr %813, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %812, ptr %813)
  call void @llvm.stackrestore.p0(ptr %807)
  %814 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %736, 1
  %815 = getelementptr i32, ptr %814, i64 0
  %816 = load i32, ptr %815, align 4
  %817 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %736, 1
  %818 = getelementptr i32, ptr %817, i64 128
  %819 = load i32, ptr %818, align 4
  %820 = sub i32 %819, %816
  %821 = sext i32 %820 to i64
  %822 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %736, 1
  %823 = getelementptr i32, ptr %822, i64 1
  %824 = load i32, ptr %823, align 4
  %825 = sub i32 %824, %816
  %826 = sext i32 %825 to i64
  %827 = sext i32 %816 to i64
  %828 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %686, 0
  %829 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %828, ptr %686, 1
  %830 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %829, i64 %827, 2
  %831 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %830, i64 %685, 3, 1
  %832 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %831, i64 %826, 4, 1
  %833 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %832, i64 %649, 3, 0
  %834 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %833, i64 %821, 4, 0
  br label %835

835:                                              ; preds = %857, %799
  %836 = phi i64 [ %858, %857 ], [ 0, %799 ]
  %837 = icmp slt i64 %836, %649
  br i1 %837, label %838, label %859

838:                                              ; preds = %835
  br label %839

839:                                              ; preds = %842, %838
  %840 = phi i64 [ %856, %842 ], [ 0, %838 ]
  %841 = icmp slt i64 %840, %685
  br i1 %841, label %842, label %857

842:                                              ; preds = %839
  %843 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %834, 1
  %844 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %834, 2
  %845 = getelementptr float, ptr %843, i64 %844
  %846 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %834, 4, 0
  %847 = mul i64 %836, %846
  %848 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %834, 4, 1
  %849 = mul i64 %840, %848
  %850 = add i64 %847, %849
  %851 = getelementptr float, ptr %845, i64 %850
  %852 = load float, ptr %851, align 4
  %853 = mul i64 %836, %685
  %854 = add i64 %853, %840
  %855 = getelementptr float, ptr %696, i64 %854
  store float %852, ptr %855, align 4
  %856 = add i64 %840, 1
  br label %839

857:                                              ; preds = %839
  %858 = add i64 %836, 1
  br label %835

859:                                              ; preds = %835
  br label %860

860:                                              ; preds = %872, %859
  %861 = phi i64 [ %873, %872 ], [ 0, %859 ]
  %862 = icmp slt i64 %861, 32
  br i1 %862, label %863, label %874

863:                                              ; preds = %860
  br label %864

864:                                              ; preds = %867, %863
  %865 = phi i64 [ %871, %867 ], [ 0, %863 ]
  %866 = icmp slt i64 %865, 128
  br i1 %866, label %867, label %872

867:                                              ; preds = %864
  %868 = mul i64 %861, 128
  %869 = add i64 %868, %865
  %870 = getelementptr float, ptr %709, i64 %869
  store float 0.000000e+00, ptr %870, align 4
  %871 = add i64 %865, 1
  br label %864

872:                                              ; preds = %864
  %873 = add i64 %861, 1
  br label %860

874:                                              ; preds = %860
  %875 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %704, 0
  %876 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %875, ptr %709, 1
  %877 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %876, i64 0, 2
  %878 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %877, i64 %649, 3, 0
  %879 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %878, i64 128, 4, 0
  %880 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %879, i64 %685, 3, 1
  %881 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %880, i64 1, 4, 1
  %882 = call ptr @llvm.stacksave.p0()
  %883 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %703, ptr %883, align 8
  %884 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %883, 1
  %885 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %881, ptr %885, align 8
  %886 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %885, 1
  %887 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %884, ptr %887, align 8
  %888 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %886, ptr %888, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %887, ptr %888)
  call void @llvm.stackrestore.p0(ptr %882)
  %889 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %890 = ptrtoint ptr %889 to i64
  %891 = add i64 %890, 63
  %892 = urem i64 %891, 64
  %893 = sub i64 %891, %892
  %894 = inttoptr i64 %893 to ptr
  %895 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %889, 0
  %896 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %895, ptr %894, 1
  %897 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %896, i64 0, 2
  %898 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %897, i64 16, 3, 0
  %899 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %898, i64 128, 3, 1
  %900 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %899, i64 128, 4, 0
  %901 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %900, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %894, ptr %34, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 2048), i1 false)
  br label %902

902:                                              ; preds = %934, %874
  %903 = phi i64 [ %935, %934 ], [ 0, %874 ]
  %904 = icmp slt i64 %903, 16
  br i1 %904, label %905, label %936

905:                                              ; preds = %902
  br label %906

906:                                              ; preds = %932, %905
  %907 = phi i64 [ %933, %932 ], [ 0, %905 ]
  %908 = icmp slt i64 %907, 128
  br i1 %908, label %909, label %934

909:                                              ; preds = %906
  br label %910

910:                                              ; preds = %913, %909
  %911 = phi i64 [ %931, %913 ], [ 0, %909 ]
  %912 = icmp slt i64 %911, 32
  br i1 %912, label %913, label %932

913:                                              ; preds = %910
  %914 = mul i64 %903, 32
  %915 = add i64 %914, %911
  %916 = getelementptr float, ptr %673, i64 %915
  %917 = load float, ptr %916, align 4
  %918 = mul i64 %911, 128
  %919 = add i64 %918, %907
  %920 = getelementptr float, ptr %709, i64 %919
  %921 = load float, ptr %920, align 4
  %922 = mul i64 %903, 128
  %923 = add i64 %922, %907
  %924 = getelementptr float, ptr %894, i64 %923
  %925 = load float, ptr %924, align 4
  %926 = fmul float %917, %921
  %927 = fadd float %925, %926
  %928 = mul i64 %903, 128
  %929 = add i64 %928, %907
  %930 = getelementptr float, ptr %894, i64 %929
  store float %927, ptr %930, align 4
  %931 = add i64 %911, 1
  br label %910

932:                                              ; preds = %910
  %933 = add i64 %907, 1
  br label %906

934:                                              ; preds = %906
  %935 = add i64 %903, 1
  br label %902

936:                                              ; preds = %902
  br label %937

937:                                              ; preds = %959, %936
  %938 = phi i64 [ %960, %959 ], [ 0, %936 ]
  %939 = icmp slt i64 %938, 16
  br i1 %939, label %940, label %961

940:                                              ; preds = %937
  br label %941

941:                                              ; preds = %944, %940
  %942 = phi i64 [ %958, %944 ], [ 0, %940 ]
  %943 = icmp slt i64 %942, 128
  br i1 %943, label %944, label %959

944:                                              ; preds = %941
  %945 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %734, 1
  %946 = mul i64 %938, 128
  %947 = add i64 %946, %942
  %948 = getelementptr float, ptr %945, i64 %947
  %949 = load float, ptr %948, align 4
  %950 = mul i64 %938, 128
  %951 = add i64 %950, %942
  %952 = getelementptr float, ptr %894, i64 %951
  %953 = load float, ptr %952, align 4
  %954 = fadd float %949, %953
  %955 = mul i64 %938, 128
  %956 = add i64 %955, %942
  %957 = getelementptr float, ptr %21, i64 %956
  store float %954, ptr %957, align 4
  %958 = add i64 %942, 1
  br label %941

959:                                              ; preds = %941
  %960 = add i64 %938, 1
  br label %937

961:                                              ; preds = %937
  br label %962

962:                                              ; preds = %974, %961
  %963 = phi i64 [ %975, %974 ], [ 0, %961 ]
  %964 = icmp slt i64 %963, 16
  br i1 %964, label %965, label %976

965:                                              ; preds = %962
  br label %966

966:                                              ; preds = %969, %965
  %967 = phi i64 [ %973, %969 ], [ 0, %965 ]
  %968 = icmp slt i64 %967, 32
  br i1 %968, label %969, label %974

969:                                              ; preds = %966
  %970 = mul i64 %963, 32
  %971 = add i64 %970, %967
  %972 = getelementptr i32, ptr %314, i64 %971
  store i32 %717, ptr %972, align 4
  %973 = add i64 %967, 1
  br label %966

974:                                              ; preds = %966
  %975 = add i64 %963, 1
  br label %962

976:                                              ; preds = %962
  br label %977

977:                                              ; preds = %999, %976
  %978 = phi i64 [ %1000, %999 ], [ 0, %976 ]
  %979 = icmp slt i64 %978, 16
  br i1 %979, label %980, label %1001

980:                                              ; preds = %977
  br label %981

981:                                              ; preds = %984, %980
  %982 = phi i64 [ %998, %984 ], [ 0, %980 ]
  %983 = icmp slt i64 %982, 32
  br i1 %983, label %984, label %999

984:                                              ; preds = %981
  %985 = mul i64 %978, 32
  %986 = add i64 %985, %982
  %987 = getelementptr i32, ptr %314, i64 %986
  %988 = load i32, ptr %987, align 4
  %989 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %735, 1
  %990 = mul i64 %978, 32
  %991 = add i64 %990, %982
  %992 = getelementptr i32, ptr %989, i64 %991
  %993 = load i32, ptr %992, align 4
  %994 = add i32 %988, %993
  %995 = mul i64 %978, 32
  %996 = add i64 %995, %982
  %997 = getelementptr i32, ptr %314, i64 %996
  store i32 %994, ptr %997, align 4
  %998 = add i64 %982, 1
  br label %981

999:                                              ; preds = %981
  %1000 = add i64 %978, 1
  br label %977

1001:                                             ; preds = %977
  br label %1002

1002:                                             ; preds = %1014, %1001
  %1003 = phi i64 [ %1015, %1014 ], [ 0, %1001 ]
  %1004 = icmp slt i64 %1003, 32
  br i1 %1004, label %1005, label %1016

1005:                                             ; preds = %1002
  br label %1006

1006:                                             ; preds = %1009, %1005
  %1007 = phi i64 [ %1013, %1009 ], [ 0, %1005 ]
  %1008 = icmp slt i64 %1007, 128
  br i1 %1008, label %1009, label %1014

1009:                                             ; preds = %1006
  %1010 = mul i64 %1003, 128
  %1011 = add i64 %1010, %1007
  %1012 = getelementptr i32, ptr %543, i64 %1011
  store i32 %718, ptr %1012, align 4
  %1013 = add i64 %1007, 1
  br label %1006

1014:                                             ; preds = %1006
  %1015 = add i64 %1003, 1
  br label %1002

1016:                                             ; preds = %1002
  br label %1017

1017:                                             ; preds = %1039, %1016
  %1018 = phi i64 [ %1040, %1039 ], [ 0, %1016 ]
  %1019 = icmp slt i64 %1018, 32
  br i1 %1019, label %1020, label %1041

1020:                                             ; preds = %1017
  br label %1021

1021:                                             ; preds = %1024, %1020
  %1022 = phi i64 [ %1038, %1024 ], [ 0, %1020 ]
  %1023 = icmp slt i64 %1022, 128
  br i1 %1023, label %1024, label %1039

1024:                                             ; preds = %1021
  %1025 = mul i64 %1018, 128
  %1026 = add i64 %1025, %1022
  %1027 = getelementptr i32, ptr %543, i64 %1026
  %1028 = load i32, ptr %1027, align 4
  %1029 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %736, 1
  %1030 = mul i64 %1018, 128
  %1031 = add i64 %1030, %1022
  %1032 = getelementptr i32, ptr %1029, i64 %1031
  %1033 = load i32, ptr %1032, align 4
  %1034 = add i32 %1028, %1033
  %1035 = mul i64 %1018, 128
  %1036 = add i64 %1035, %1022
  %1037 = getelementptr i32, ptr %543, i64 %1036
  store i32 %1034, ptr %1037, align 4
  %1038 = add i64 %1022, 1
  br label %1021

1039:                                             ; preds = %1021
  %1040 = add i64 %1018, 1
  br label %1017

1041:                                             ; preds = %1017
  %1042 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2048) to i64), i64 64))
  %1043 = ptrtoint ptr %1042 to i64
  %1044 = add i64 %1043, 63
  %1045 = urem i64 %1044, 64
  %1046 = sub i64 %1044, %1045
  %1047 = inttoptr i64 %1046 to ptr
  %1048 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1042, 0
  %1049 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1048, ptr %1047, 1
  %1050 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1049, i64 0, 2
  %1051 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1050, i64 16, 3, 0
  %1052 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1051, i64 128, 3, 1
  %1053 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1052, i64 128, 4, 0
  %1054 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1053, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %1047, ptr %21, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 2048), i1 false)
  %1055 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 512) to i64), i64 64))
  %1056 = ptrtoint ptr %1055 to i64
  %1057 = add i64 %1056, 63
  %1058 = urem i64 %1057, 64
  %1059 = sub i64 %1057, %1058
  %1060 = inttoptr i64 %1059 to ptr
  %1061 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1055, 0
  %1062 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1061, ptr %1060, 1
  %1063 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1062, i64 0, 2
  %1064 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1063, i64 16, 3, 0
  %1065 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1064, i64 32, 3, 1
  %1066 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1065, i64 32, 4, 0
  %1067 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1066, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %1060, ptr %314, i64 mul (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i64 512), i1 false)
  %1068 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %1069 = ptrtoint ptr %1068 to i64
  %1070 = add i64 %1069, 63
  %1071 = urem i64 %1070, 64
  %1072 = sub i64 %1070, %1071
  %1073 = inttoptr i64 %1072 to ptr
  %1074 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1068, 0
  %1075 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1074, ptr %1073, 1
  %1076 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1075, i64 0, 2
  %1077 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1076, i64 32, 3, 0
  %1078 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1077, i64 128, 3, 1
  %1079 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1078, i64 128, 4, 0
  %1080 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1079, i64 1, 4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %1073, ptr %543, i64 mul (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i64 4096), i1 false)
  %1081 = add i32 %733, 32
  br label %732

1082:                                             ; preds = %732
  %1083 = sext i32 %4 to i64
  %1084 = call i64 @llvm.smax.i64(i64 %1083, i64 0)
  %1085 = call i64 @llvm.smin.i64(i64 %1084, i64 16)
  %1086 = sext i32 %5 to i64
  %1087 = call i64 @llvm.smax.i64(i64 %1086, i64 0)
  %1088 = call i64 @llvm.smin.i64(i64 %1087, i64 128)
  %1089 = call i64 @llvm.smin.i64(i64 %1085, i64 16)
  %1090 = call i64 @llvm.smax.i64(i64 %1089, i64 0)
  %1091 = call i64 @llvm.smin.i64(i64 %1088, i64 128)
  %1092 = call i64 @llvm.smax.i64(i64 %1091, i64 0)
  %1093 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, 1
  %1094 = load i32, ptr %1093, align 4
  %1095 = mul i32 %1094, %8
  %1096 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, 1
  %1097 = load i32, ptr %1096, align 4
  %1098 = mul i32 %1097, %7
  %1099 = add i32 %1095, %1098
  %1100 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, 1
  %1101 = getelementptr i32, ptr %1100, i32 1
  %1102 = load i32, ptr %1101, align 4
  %1103 = mul i32 %1102, %7
  %1104 = add i32 %1095, %1103
  %1105 = sub i32 %1104, %1099
  %1106 = sext i32 %1105 to i64
  %1107 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, 1
  %1108 = getelementptr i32, ptr %1107, i32 1
  %1109 = load i32, ptr %1108, align 4
  %1110 = mul i32 %1109, %8
  %1111 = add i32 %1110, %1098
  %1112 = sub i32 %1111, %1099
  %1113 = sext i32 %1112 to i64
  %1114 = sext i32 %1099 to i64
  %1115 = inttoptr i64 %0 to ptr
  %1116 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1115, 0
  %1117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1116, ptr %1115, 1
  %1118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1117, i64 %1114, 2
  %1119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1118, i64 %1092, 3, 1
  %1120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1119, i64 %1113, 4, 1
  %1121 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1120, i64 %1090, 3, 0
  %1122 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1121, i64 %1106, 4, 0
  %1123 = mul i64 %1092, %1090
  %1124 = getelementptr float, ptr null, i64 %1123
  %1125 = ptrtoint ptr %1124 to i64
  %1126 = add i64 %1125, 64
  %1127 = call ptr @malloc(i64 %1126)
  %1128 = ptrtoint ptr %1127 to i64
  %1129 = add i64 %1128, 63
  %1130 = urem i64 %1129, 64
  %1131 = sub i64 %1129, %1130
  %1132 = inttoptr i64 %1131 to ptr
  %1133 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1127, 0
  %1134 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1133, ptr %1132, 1
  %1135 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1134, i64 0, 2
  %1136 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1135, i64 %1090, 3, 0
  %1137 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1136, i64 %1092, 3, 1
  %1138 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1137, i64 %1092, 4, 0
  %1139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1138, i64 1, 4, 1
  br label %1140

1140:                                             ; preds = %1162, %1082
  %1141 = phi i64 [ %1163, %1162 ], [ 0, %1082 ]
  %1142 = icmp slt i64 %1141, %1090
  br i1 %1142, label %1143, label %1164

1143:                                             ; preds = %1140
  br label %1144

1144:                                             ; preds = %1147, %1143
  %1145 = phi i64 [ %1161, %1147 ], [ 0, %1143 ]
  %1146 = icmp slt i64 %1145, %1092
  br i1 %1146, label %1147, label %1162

1147:                                             ; preds = %1144
  %1148 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1122, 1
  %1149 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1122, 2
  %1150 = getelementptr float, ptr %1148, i64 %1149
  %1151 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1122, 4, 0
  %1152 = mul i64 %1141, %1151
  %1153 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1122, 4, 1
  %1154 = mul i64 %1145, %1153
  %1155 = add i64 %1152, %1154
  %1156 = getelementptr float, ptr %1150, i64 %1155
  %1157 = load float, ptr %1156, align 4
  %1158 = mul i64 %1141, %1092
  %1159 = add i64 %1158, %1145
  %1160 = getelementptr float, ptr %1132, i64 %1159
  store float %1157, ptr %1160, align 4
  %1161 = add i64 %1145, 1
  br label %1144

1162:                                             ; preds = %1144
  %1163 = add i64 %1141, 1
  br label %1140

1164:                                             ; preds = %1140
  %1165 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %29, 0
  %1166 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1165, ptr %34, 1
  %1167 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1166, i64 0, 2
  %1168 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1167, i64 %1090, 3, 0
  %1169 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1168, i64 128, 4, 0
  %1170 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1169, i64 %1092, 3, 1
  %1171 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1170, i64 1, 4, 1
  %1172 = call ptr @llvm.stacksave.p0()
  %1173 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %1139, ptr %1173, align 8
  %1174 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %1173, 1
  %1175 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %1171, ptr %1175, align 8
  %1176 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %1175, 1
  %1177 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1174, ptr %1177, align 8
  %1178 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1176, ptr %1178, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %1177, ptr %1178)
  call void @llvm.stackrestore.p0(ptr %1172)
  br label %1179

1179:                                             ; preds = %1201, %1164
  %1180 = phi i64 [ %1202, %1201 ], [ 0, %1164 ]
  %1181 = icmp slt i64 %1180, 16
  br i1 %1181, label %1182, label %1203

1182:                                             ; preds = %1179
  br label %1183

1183:                                             ; preds = %1186, %1182
  %1184 = phi i64 [ %1200, %1186 ], [ 0, %1182 ]
  %1185 = icmp slt i64 %1184, 128
  br i1 %1185, label %1186, label %1201

1186:                                             ; preds = %1183
  %1187 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %734, 1
  %1188 = mul i64 %1180, 128
  %1189 = add i64 %1188, %1184
  %1190 = getelementptr float, ptr %1187, i64 %1189
  %1191 = load float, ptr %1190, align 4
  %1192 = mul i64 %1180, 128
  %1193 = add i64 %1192, %1184
  %1194 = getelementptr float, ptr %34, i64 %1193
  %1195 = load float, ptr %1194, align 4
  %1196 = fadd float %1191, %1195
  %1197 = mul i64 %1180, 128
  %1198 = add i64 %1197, %1184
  %1199 = getelementptr float, ptr %21, i64 %1198
  store float %1196, ptr %1199, align 4
  %1200 = add i64 %1184, 1
  br label %1183

1201:                                             ; preds = %1183
  %1202 = add i64 %1180, 1
  br label %1179

1203:                                             ; preds = %1179
  %1204 = mul i32 %1094, %14
  %1205 = mul i32 %1097, %13
  %1206 = add i32 %1204, %1205
  %1207 = mul i32 %1102, %13
  %1208 = add i32 %1204, %1207
  %1209 = sub i32 %1208, %1206
  %1210 = sext i32 %1209 to i64
  %1211 = mul i32 %1109, %14
  %1212 = add i32 %1211, %1205
  %1213 = sub i32 %1212, %1206
  %1214 = sext i32 %1213 to i64
  %1215 = sext i32 %1206 to i64
  %1216 = inttoptr i64 %3 to ptr
  %1217 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1216, 0
  %1218 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1217, ptr %1216, 1
  %1219 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1218, i64 %1215, 2
  %1220 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1219, i64 %1092, 3, 1
  %1221 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1220, i64 %1214, 4, 1
  %1222 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1221, i64 %1090, 3, 0
  %1223 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1222, i64 %1210, 4, 0
  %1224 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %1225 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1224, ptr %21, 1
  %1226 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1225, i64 0, 2
  %1227 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1226, i64 %1090, 3, 0
  %1228 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1227, i64 128, 4, 0
  %1229 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1228, i64 %1092, 3, 1
  %1230 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1229, i64 1, 4, 1
  %1231 = call ptr @llvm.stacksave.p0()
  %1232 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %1230, ptr %1232, align 8
  %1233 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %1232, 1
  %1234 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %1223, ptr %1234, align 8
  %1235 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %1234, 1
  %1236 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1233, ptr %1236, align 8
  %1237 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1235, ptr %1237, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %1236, ptr %1237)
  call void @llvm.stackrestore.p0(ptr %1231)
  ret void
}

define void @_mlir_ciface_addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) {
  call void @addmm_kernel_0d1d2d3d4c5678c910c1112c1314c(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
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
