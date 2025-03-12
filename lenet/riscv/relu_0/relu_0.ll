; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @triton__0d1d2de(i64 %0, i64 %1, i32 %2) {
  %4 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %5, 63
  %7 = urem i64 %6, 64
  %8 = sub i64 %6, %7
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %9, 1
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 0, 2
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 4096, 3, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0
  %15 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 63
  %18 = urem i64 %17, 64
  %19 = sub i64 %17, %18
  %20 = inttoptr i64 %19 to ptr
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, ptr %20, 1
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 0, 2
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 4096, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0
  br label %26

26:                                               ; preds = %29, %3
  %27 = phi i64 [ %31, %29 ], [ 0, %3 ]
  %28 = icmp slt i64 %27, 4096
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr float, ptr %20, i64 %27
  store float 0.000000e+00, ptr %30, align 4
  %31 = add i64 %27, 1
  br label %26

32:                                               ; preds = %26
  %33 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %34 = ptrtoint ptr %33 to i64
  %35 = add i64 %34, 63
  %36 = urem i64 %35, 64
  %37 = sub i64 %35, %36
  %38 = inttoptr i64 %37 to ptr
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %33, 0
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, ptr %38, 1
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 0, 2
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 4096, 3, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 1, 4, 0
  %44 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %45 = ptrtoint ptr %44 to i64
  %46 = add i64 %45, 63
  %47 = urem i64 %46, 64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to ptr
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %44, 0
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, ptr %49, 1
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 0, 2
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 4096, 3, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, i64 1, 4, 0
  br label %55

55:                                               ; preds = %58, %32
  %56 = phi i64 [ %60, %58 ], [ 0, %32 ]
  %57 = icmp slt i64 %56, 4096
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr i32, ptr %49, i64 %56
  store i32 576, ptr %59, align 4
  %60 = add i64 %56, 1
  br label %55

61:                                               ; preds = %55
  %62 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %63 = ptrtoint ptr %62 to i64
  %64 = add i64 %63, 63
  %65 = urem i64 %64, 64
  %66 = sub i64 %64, %65
  %67 = inttoptr i64 %66 to ptr
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %62, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, ptr %67, 1
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 0, 2
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 4096, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 1, 4, 0
  br label %73

73:                                               ; preds = %77, %61
  %74 = phi i64 [ %81, %77 ], [ 0, %61 ]
  %75 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %75, %77 ], [ %72, %61 ]
  %76 = icmp slt i64 %74, 4096
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = trunc i64 %74 to i32
  %79 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, 1
  %80 = getelementptr i32, ptr %79, i64 %74
  store i32 %78, ptr %80, align 4
  %81 = add i64 %74, 1
  br label %73

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %86, %82
  %84 = phi i64 [ %88, %86 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 4096
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr i32, ptr %38, i64 %84
  store i32 0, ptr %87, align 4
  %88 = add i64 %84, 1
  br label %83

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %93, %89
  %91 = phi i64 [ %101, %93 ], [ 0, %89 ]
  %92 = icmp slt i64 %91, 4096
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = getelementptr i32, ptr %38, i64 %91
  %95 = load i32, ptr %94, align 4
  %96 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, 1
  %97 = getelementptr i32, ptr %96, i64 %91
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %95, %98
  %100 = getelementptr i32, ptr %38, i64 %91
  store i32 %99, ptr %100, align 4
  %101 = add i64 %91, 1
  br label %90

102:                                              ; preds = %90
  %103 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 3456) to i64), i64 64))
  %104 = ptrtoint ptr %103 to i64
  %105 = add i64 %104, 63
  %106 = urem i64 %105, 64
  %107 = sub i64 %105, %106
  %108 = inttoptr i64 %107 to ptr
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %103, 0
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, ptr %108, 1
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, i64 0, 2
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %111, i64 3456, 3, 0
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, i64 1, 4, 0
  br label %114

114:                                              ; preds = %117, %102
  %115 = phi i64 [ %119, %117 ], [ 0, %102 ]
  %116 = icmp slt i64 %115, 3456
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr i1, ptr %108, i64 %115
  store i1 true, ptr %118, align 1
  %119 = add i64 %115, 1
  br label %114

120:                                              ; preds = %114
  %121 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 4096) to i64), i64 64))
  %122 = ptrtoint ptr %121 to i64
  %123 = add i64 %122, 63
  %124 = urem i64 %123, 64
  %125 = sub i64 %123, %124
  %126 = inttoptr i64 %125 to ptr
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %121, 0
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, ptr %126, 1
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, i64 0, 2
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, i64 4096, 3, 0
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, i64 1, 4, 0
  br label %132

132:                                              ; preds = %135, %120
  %133 = phi i64 [ %137, %135 ], [ 0, %120 ]
  %134 = icmp slt i64 %133, 4096
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = getelementptr i1, ptr %126, i64 %133
  store i1 false, ptr %136, align 1
  %137 = add i64 %133, 1
  br label %132

138:                                              ; preds = %132
  %139 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %121, 0
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, ptr %126, 1
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, i64 0, 2
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, i64 3456, 3, 0
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %126, ptr %108, i64 mul (i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 1) to i64), i64 3456), i1 false)
  %144 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64), i64 64))
  %145 = ptrtoint ptr %144 to i64
  %146 = add i64 %145, 63
  %147 = urem i64 %146, 64
  %148 = sub i64 %146, %147
  %149 = inttoptr i64 %148 to ptr
  %150 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %144, 0
  %151 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %150, ptr %149, 1
  %152 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %151, i64 0, 2
  %153 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %152, i64 4096, 3, 0
  %154 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %153, i64 1, 4, 0
  br label %155

155:                                              ; preds = %158, %138
  %156 = phi i64 [ %165, %158 ], [ 0, %138 ]
  %157 = icmp slt i64 %156, 4096
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = getelementptr i32, ptr %38, i64 %156
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i32, ptr %49, i64 %156
  %162 = load i32, ptr %161, align 4
  %163 = sdiv i32 %160, %162
  %164 = getelementptr i32, ptr %149, i64 %156
  store i32 %163, ptr %164, align 4
  %165 = add i64 %156, 1
  br label %155

166:                                              ; preds = %155
  %167 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, 1
  %168 = load i32, ptr %167, align 4
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %0 to ptr
  %171 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %170, 0
  %172 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %171, ptr %170, 1
  %173 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %172, i64 %169, 2
  %174 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %173, i64 3456, 3, 0
  %175 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %174, i64 1, 4, 0
  %176 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64), i64 64))
  %177 = ptrtoint ptr %176 to i64
  %178 = add i64 %177, 63
  %179 = urem i64 %178, 64
  %180 = sub i64 %178, %179
  %181 = inttoptr i64 %180 to ptr
  %182 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %176, 0
  %183 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %182, ptr %181, 1
  %184 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %183, i64 0, 2
  %185 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %184, i64 3456, 3, 0
  %186 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %185, i64 1, 4, 0
  br label %187

187:                                              ; preds = %190, %166
  %188 = phi i64 [ %197, %190 ], [ 0, %166 ]
  %189 = icmp slt i64 %188, 3456
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %175, 1
  %192 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %175, 2
  %193 = getelementptr float, ptr %191, i64 %192
  %194 = getelementptr float, ptr %193, i64 %188
  %195 = load float, ptr %194, align 4
  %196 = getelementptr float, ptr %181, i64 %188
  store float %195, ptr %196, align 4
  %197 = add i64 %188, 1
  br label %187

198:                                              ; preds = %187
  %199 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %200 = ptrtoint ptr %199 to i64
  %201 = add i64 %200, 63
  %202 = urem i64 %201, 64
  %203 = sub i64 %201, %202
  %204 = inttoptr i64 %203 to ptr
  %205 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %199, 0
  %206 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %205, ptr %204, 1
  %207 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %206, i64 0, 2
  %208 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %207, i64 4096, 3, 0
  %209 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %208, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %204, ptr %20, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 4096), i1 false)
  %210 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %199, 0
  %211 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %210, ptr %204, 1
  %212 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %211, i64 0, 2
  %213 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %212, i64 3456, 3, 0
  %214 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %213, i64 1, 4, 0
  call void @llvm.memcpy.p0.p0.i64(ptr %204, ptr %181, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 3456), i1 false)
  br label %215

215:                                              ; preds = %218, %198
  %216 = phi i64 [ %220, %218 ], [ 0, %198 ]
  %217 = icmp slt i64 %216, 4096
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = getelementptr i32, ptr %38, i64 %216
  store i32 0, ptr %219, align 4
  %220 = add i64 %216, 1
  br label %215

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %225, %221
  %223 = phi i64 [ %232, %225 ], [ 0, %221 ]
  %224 = icmp slt i64 %223, 4096
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = getelementptr i32, ptr %149, i64 %223
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i32, ptr %38, i64 %223
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %227, %229
  %231 = getelementptr i32, ptr %38, i64 %223
  store i32 %230, ptr %231, align 4
  %232 = add i64 %223, 1
  br label %222

233:                                              ; preds = %222
  %234 = inttoptr i64 %1 to ptr
  %235 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %234, 0
  %236 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %235, ptr %234, 1
  %237 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %236, i64 0, 2
  %238 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %237, i64 9223372036854775807, 3, 0
  %239 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %238, i64 1, 4, 0
  %240 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64), i64 64))
  %241 = ptrtoint ptr %240 to i64
  %242 = add i64 %241, 63
  %243 = urem i64 %242, 64
  %244 = sub i64 %242, %243
  %245 = inttoptr i64 %244 to ptr
  %246 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %240, 0
  %247 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %246, ptr %245, 1
  %248 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %247, i64 0, 2
  %249 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %248, i64 4096, 3, 0
  %250 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %249, i64 1, 3, 1
  %251 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %250, i64 1, 4, 0
  %252 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %251, i64 1, 4, 1
  br label %253

253:                                              ; preds = %264, %233
  %254 = phi i64 [ %265, %264 ], [ 0, %233 ]
  %255 = icmp slt i64 %254, 4096
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %260, %256
  %258 = phi i64 [ %263, %260 ], [ 0, %256 ]
  %259 = icmp slt i64 %258, 1
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = add i64 %254, %258
  %262 = getelementptr float, ptr %245, i64 %261
  store float 0.000000e+00, ptr %262, align 4
  %263 = add i64 %258, 1
  br label %257

264:                                              ; preds = %257
  %265 = add i64 %254, 1
  br label %253

266:                                              ; preds = %253
  %267 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %33, 0
  %268 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %267, ptr %38, 1
  %269 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %268, i64 0, 2
  %270 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %269, i64 4096, 3, 0
  %271 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %270, i64 1, 4, 0
  %272 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %271, i64 1, 3, 1
  %273 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %272, i64 1, 4, 1
  br label %274

274:                                              ; preds = %295, %266
  %275 = phi i64 [ %296, %295 ], [ 0, %266 ]
  %276 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %294, %295 ], [ %252, %266 ]
  %277 = icmp slt i64 %275, 4096
  br i1 %277, label %278, label %297

278:                                              ; preds = %274
  %279 = getelementptr i1, ptr %126, i64 %275
  %280 = load i1, ptr %279, align 1
  br i1 %280, label %281, label %292

281:                                              ; preds = %278
  %282 = add i64 %275, 0
  %283 = getelementptr i32, ptr %38, i64 %282
  %284 = load i32, ptr %283, align 4
  %285 = sext i32 %284 to i64
  %286 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %239, 1
  %287 = getelementptr float, ptr %286, i64 %285
  %288 = load float, ptr %287, align 4
  %289 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 1
  %290 = add i64 %275, 0
  %291 = getelementptr float, ptr %289, i64 %290
  store float %288, ptr %291, align 4
  br label %293

292:                                              ; preds = %278
  br label %293

293:                                              ; preds = %281, %292
  %294 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ %276, %292 ], [ %276, %281 ]
  br label %295

295:                                              ; preds = %293
  %296 = add i64 %275, 1
  br label %274

297:                                              ; preds = %274
  %298 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 0
  %299 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 1
  %300 = insertvalue { ptr, ptr, i64 } undef, ptr %298, 0
  %301 = insertvalue { ptr, ptr, i64 } %300, ptr %299, 1
  %302 = insertvalue { ptr, ptr, i64 } %301, i64 0, 2
  %303 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 2
  %304 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 3, 0
  %305 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 3, 1
  %306 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 4, 0
  %307 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, 4, 1
  %308 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %298, 0
  %309 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %308, ptr %299, 1
  %310 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %309, i64 0, 2
  %311 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %310, i64 4096, 3, 0
  %312 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %311, i64 1, 4, 0
  br label %313

313:                                              ; preds = %316, %297
  %314 = phi i64 [ %323, %316 ], [ 0, %297 ]
  %315 = icmp slt i64 %314, 4096
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = getelementptr float, ptr %204, i64 %314
  %318 = load float, ptr %317, align 4
  %319 = getelementptr float, ptr %299, i64 %314
  %320 = load float, ptr %319, align 4
  %321 = fadd float %318, %320
  %322 = getelementptr float, ptr %9, i64 %314
  store float %321, ptr %322, align 4
  %323 = add i64 %314, 1
  br label %313

324:                                              ; preds = %313
  br label %325

325:                                              ; preds = %328, %324
  %326 = phi i64 [ %335, %328 ], [ 0, %324 ]
  %327 = icmp slt i64 %326, 4096
  br i1 %327, label %328, label %336

328:                                              ; preds = %325
  %329 = getelementptr float, ptr %9, i64 %326
  %330 = load float, ptr %329, align 4
  %331 = getelementptr float, ptr %20, i64 %326
  %332 = load float, ptr %331, align 4
  %333 = call float @llvm.maximum.f32(float %330, float %332)
  %334 = getelementptr float, ptr %9, i64 %326
  store float %333, ptr %334, align 4
  %335 = add i64 %326, 1
  br label %325

336:                                              ; preds = %325
  %337 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %170, 0
  %338 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, ptr %170, 1
  %339 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %338, i64 %169, 2
  %340 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %339, i64 3456, 3, 0
  %341 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %340, i64 1, 4, 0
  %342 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %4, 0
  %343 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %342, ptr %9, 1
  %344 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %343, i64 0, 2
  %345 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %344, i64 3456, 3, 0
  %346 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %345, i64 1, 4, 0
  %347 = call ptr @llvm.stacksave()
  %348 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %346, ptr %348, align 8
  %349 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %348, 1
  %350 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %341, ptr %350, align 8
  %351 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %350, 1
  %352 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %349, ptr %352, align 8
  %353 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %351, ptr %353, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %352, ptr %353)
  call void @llvm.stackrestore(ptr %347)
  ret void
}

define void @_mlir_ciface_triton__0d1d2de(i64 %0, i64 %1, i32 %2) {
  call void @triton__0d1d2de(i64 %0, i64 %1, i32 %2)
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
