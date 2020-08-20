; ModuleID = 'E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/hls/conv_core/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@Conv_str = internal unnamed_addr constant [5 x i8] c"Conv\00"
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_6 = trunc i9 %empty to i8
  ret i8 %empty_6
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_7 = trunc i32 %empty to i8
  ret i8 %empty_7
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i30
  ret i30 %empty_8
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i19.i32.i32(i19, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_9 = shl i9 1, %empty
  %empty_10 = and i9 %0, %empty_9
  %empty_11 = icmp ne i9 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i16
  %empty_12 = shl i16 1, %empty
  %empty_13 = and i16 %0, %empty_12
  %empty_14 = icmp ne i16 %empty_13, 0
  ret i1 %empty_14
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_15 = zext i1 %1 to i9
  %empty_16 = shl i9 %empty, 1
  %empty_17 = or i9 %empty_16, %empty_15
  ret i9 %empty_17
}

declare void @_GLOBAL__I_a() nounwind

define void @Conv(float* %gmem, i16 %CHin_V, i16 %Hin_V, i16 %Win_V, i16 %CHout_V, i8 %Kx_V, i8 %Ky_V, i8 %Sx_V, i8 %Sy_V, i1 %mode_V, i1 %relu_en_V, i32 %feature_in, i32 %W, i32 %bias, i32 %feature_out) {
_ifconv:
  %feature_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_out)
  %bias_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bias)
  %W_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %W)
  %feature_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_in)
  %relu_en_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %relu_en_V)
  %mode_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %mode_V)
  %Sy_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Sy_V)
  %Sx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Sx_V)
  %Ky_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Ky_V)
  %Kx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Kx_V)
  %CHout_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHout_V)
  %Win_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Win_V)
  %Hin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Hin_V)
  %CHin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHin_V)
  %feature_out7 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_out_read, i32 2, i32 31)
  %tmp_2 = zext i30 %feature_out7 to i32
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bias_read, i32 2, i32 31)
  %tmp_10_cast = zext i30 %tmp_1 to i31
  %W3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %W_read, i32 2, i32 31)
  %tmp_5 = zext i30 %W3 to i32
  %feature_in1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_in_read, i32 2, i32 31)
  %tmp_8 = zext i30 %feature_in1 to i32
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHin_V), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Hin_V), !map !157
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Win_V), !map !161
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHout_V), !map !165
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Kx_V), !map !169
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Ky_V), !map !173
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Sx_V), !map !177
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Sy_V), !map !181
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %mode_V), !map !185
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %relu_en_V), !map !189
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Conv_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_out, [10 x i8]* @mode5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle6, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %bias, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle4, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %W, [10 x i8]* @mode1, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle2, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_in, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %relu_en_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHout_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Sx_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Hin_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHin_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Kx_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %mode_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Sy_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Ky_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Win_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_2_cast = zext i8 %Kx_V_read to i9
  %r_V_tr = add i9 -1, %tmp_2_cast
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_tr, i32 8)
  %p_neg9 = sub i9 1, %tmp_2_cast
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %p_neg9, i32 1, i32 8)
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %r_V_tr, i32 1, i32 8)
  %tmp_6 = sub i8 0, %tmp_3
  %pad_x_V = select i1 %tmp_10, i8 %tmp_6, i8 %tmp_11
  %tmp_24_cast = zext i8 %Ky_V_read to i9
  %r_V_1_tr = add i9 -1, %tmp_24_cast
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_1_tr, i32 8)
  %p_neg = sub i9 1, %tmp_24_cast
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %p_neg, i32 1, i32 8)
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %r_V_1_tr, i32 1, i32 8)
  %tmp_19 = sub i8 0, %tmp_15
  %pad_y_V = select i1 %tmp_13, i8 %tmp_19, i8 %tmp_17
  %p_s = select i1 %mode_V_read, i8 %pad_x_V, i8 0
  %p_1 = select i1 %mode_V_read, i8 %pad_y_V, i8 0
  %r_V_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %p_s, i1 false)
  %r_V_2_cast = zext i9 %r_V_2 to i17
  %lhs_V_2_cast = zext i16 %Win_V_read to i17
  %r_V_3 = add i17 %lhs_V_2_cast, %r_V_2_cast
  %r_V_3_cast = zext i17 %r_V_3 to i18
  %rhs_V_2_cast = zext i8 %Kx_V_read to i18
  %r_V_4 = sub i18 %r_V_3_cast, %rhs_V_2_cast
  %r_V_4_cast = sext i18 %r_V_4 to i19
  %tmp_tr = zext i8 %Sx_V_read to i19
  %tmp_21 = sdiv i19 %r_V_4_cast, %tmp_tr
  %tmp_22 = trunc i19 %tmp_21 to i16
  %Wout_V = add i16 1, %tmp_22
  %r_V_6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %p_1, i1 false)
  %r_V_6_cast = zext i9 %r_V_6 to i17
  %lhs_V_4_cast = zext i16 %Hin_V_read to i17
  %r_V_7 = add i17 %lhs_V_4_cast, %r_V_6_cast
  %r_V_7_cast = zext i17 %r_V_7 to i18
  %rhs_V_5_cast = zext i8 %Ky_V_read to i18
  %r_V_8 = sub i18 %r_V_7_cast, %rhs_V_5_cast
  %r_V_8_cast = sext i18 %r_V_8 to i19
  %tmp_2_tr = zext i8 %Sy_V_read to i19
  %tmp_23 = sdiv i19 %r_V_8_cast, %tmp_2_tr
  %tmp_4 = zext i16 %Wout_V to i32
  %tmp_24 = trunc i19 %tmp_23 to i16
  %tmp_7 = add i16 1, %tmp_24
  %tmp_9 = zext i8 %p_1 to i16
  %tmp_s = zext i8 %p_s to i16
  %tmp_26 = zext i16 %CHout_V_read to i32
  %tmp_12 = zext i8 %Sy_V_read to i16
  %tmp_16 = zext i8 %Sx_V_read to i16
  %tmp_20 = zext i16 %Win_V_read to i32
  %rhs_V = zext i16 %CHin_V_read to i32
  %tmp_21_cast9 = zext i8 %Kx_V_read to i16
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader1133
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ifconv
  %i_op_assign_s = phi i16 [ 0, %_ifconv ], [ %cout, %.loopexit.loopexit ]
  %i_op_assign_13_cast8 = zext i16 %i_op_assign_s to i32
  %i_op_assign_13_cast8_1 = zext i16 %i_op_assign_s to i31
  %exitcond5 = icmp eq i16 %i_op_assign_s, %CHout_V_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %cout = add i16 %i_op_assign_s, 1
  br i1 %exitcond5, label %4, label %.preheader1133.preheader

.preheader1133.preheader:                         ; preds = %.loopexit
  %bias6_sum = add i31 %tmp_10_cast, %i_op_assign_13_cast8_1
  %bias6_sum_cast = zext i31 %bias6_sum to i32
  %gmem_addr = getelementptr inbounds float* %gmem, i32 %bias6_sum_cast
  br label %.preheader1133

.preheader1133.loopexit:                          ; preds = %.preheader1132
  br label %.preheader1133

.preheader1133:                                   ; preds = %.preheader1133.loopexit, %.preheader1133.preheader
  %i_op_assign_9 = phi i16 [ 0, %.preheader1133.preheader ], [ %i, %.preheader1133.loopexit ]
  %phi_mul1 = phi i16 [ 0, %.preheader1133.preheader ], [ %next_mul1, %.preheader1133.loopexit ]
  %next_mul1 = add i16 %phi_mul1, %tmp_12
  %i_op_assign_9_cast7 = zext i16 %i_op_assign_9 to i32
  %exitcond1 = icmp eq i16 %i_op_assign_9, %tmp_7
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %i = add i16 %i_op_assign_9, 1
  br i1 %exitcond1, label %.loopexit.loopexit, label %.preheader1132.preheader

.preheader1132.preheader:                         ; preds = %.preheader1133
  %tmp_14 = sub i16 %phi_mul1, %tmp_9
  %p_2 = mul i32 %i_op_assign_9_cast7, %tmp_4
  br label %.preheader1132

.preheader1132:                                   ; preds = %3, %.preheader1132.preheader
  %i_op_assign_1 = phi i16 [ %j, %3 ], [ 0, %.preheader1132.preheader ]
  %phi_mul2 = phi i16 [ %next_mul2, %3 ], [ 0, %.preheader1132.preheader ]
  %next_mul2 = add i16 %phi_mul2, %tmp_16
  %i_op_assign_11_cast6 = zext i16 %i_op_assign_1 to i32
  %exitcond = icmp eq i16 %i_op_assign_1, %Wout_V
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %j = add i16 %i_op_assign_1, 1
  br i1 %exitcond, label %.preheader1133.loopexit, label %.preheader1131.preheader

.preheader1131.preheader:                         ; preds = %.preheader1132
  %tmp_18 = sub i16 %phi_mul2, %tmp_s
  br label %.preheader1131

.preheader1131.loopexit:                          ; preds = %.preheader1130
  br label %.preheader1131

.preheader1131:                                   ; preds = %.preheader1131.loopexit, %.preheader1131.preheader
  %sum = phi float [ 0.000000e+00, %.preheader1131.preheader ], [ %sum_1, %.preheader1131.loopexit ]
  %i_op_assign_2 = phi i8 [ 0, %.preheader1131.preheader ], [ %ii, %.preheader1131.loopexit ]
  %phi_mul = phi i16 [ 0, %.preheader1131.preheader ], [ %next_mul, %.preheader1131.loopexit ]
  %next_mul = add i16 %phi_mul, %tmp_21_cast9
  %i_op_assign_10_cast5 = zext i8 %i_op_assign_2 to i16
  %exitcond2 = icmp eq i8 %i_op_assign_2, %Ky_V_read
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 255, i64 0)
  %ii = add i8 %i_op_assign_2, 1
  br i1 %exitcond2, label %3, label %.preheader1130.preheader

.preheader1130.preheader:                         ; preds = %.preheader1131
  %h_V = add i16 %i_op_assign_10_cast5, %tmp_14
  %lhs_V = sext i16 %h_V to i32
  %lhs_V_cast = sext i16 %h_V to i17
  %tmp_27 = mul i32 %tmp_20, %lhs_V
  %slt = icmp slt i17 %lhs_V_cast, %lhs_V_4_cast
  %rev = xor i1 %slt, true
  br label %.preheader1130

.preheader1130.loopexit:                          ; preds = %.preheader
  br label %.preheader1130.backedge

.preheader1130:                                   ; preds = %.preheader1130.backedge, %.preheader1130.preheader
  %sum_1 = phi float [ %sum, %.preheader1130.preheader ], [ %sum_1_be, %.preheader1130.backedge ]
  %i_op_assign_3 = phi i8 [ 0, %.preheader1130.preheader ], [ %jj, %.preheader1130.backedge ]
  %i_op_assign_12_cast3 = zext i8 %i_op_assign_3 to i16
  %exitcond3 = icmp eq i8 %i_op_assign_3, %Kx_V_read
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 255, i64 0)
  %jj = add i8 %i_op_assign_3, 1
  br i1 %exitcond3, label %.preheader1131.loopexit, label %0

; <label>:0                                       ; preds = %.preheader1130
  %w_V = add i16 %i_op_assign_12_cast3, %tmp_18
  %tmp_31 = or i16 %w_V, %h_V
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %tmp_31, i32 15)
  %brmerge = or i1 %tmp_37, %rev
  br i1 %brmerge, label %.preheader1130.backedge, label %1

; <label>:1                                       ; preds = %0
  %lhs_V_1 = sext i16 %w_V to i32
  %lhs_V_1_cast = sext i16 %w_V to i17
  %tmp_32 = icmp slt i17 %lhs_V_1_cast, %lhs_V_2_cast
  br i1 %tmp_32, label %.preheader.preheader, label %.preheader1130.backedge

.preheader1130.backedge:                          ; preds = %1, %0, %.preheader1130.loopexit
  %sum_1_be = phi float [ %sum_1, %0 ], [ %sum_1, %1 ], [ %sum_2, %.preheader1130.loopexit ]
  br label %.preheader1130

.preheader.preheader:                             ; preds = %1
  %tmp = add i32 %tmp_27, %lhs_V_1
  %tmp3 = mul i32 %tmp, %rhs_V
  %tmp4 = add i16 %i_op_assign_12_cast3, %phi_mul
  %tmp4_cast = zext i16 %tmp4 to i32
  %tmp5 = mul i32 %tmp4_cast, %rhs_V
  br label %.preheader

.preheader:                                       ; preds = %2, %.preheader.preheader
  %sum_2 = phi float [ %sum_5, %2 ], [ %sum_1, %.preheader.preheader ]
  %i_op_assign = phi i16 [ %cin, %2 ], [ 0, %.preheader.preheader ]
  %i_op_assign_cast1 = zext i16 %i_op_assign to i32
  %exitcond4 = icmp eq i16 %i_op_assign, %CHin_V_read
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %cin = add i16 %i_op_assign, 1
  br i1 %exitcond4, label %.preheader1130.loopexit, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_33 = add i32 %tmp3, %i_op_assign_cast1
  %feature_in2_sum9 = add i32 %tmp_8, %tmp_33
  %gmem_addr_2 = getelementptr inbounds float* %gmem, i32 %feature_in2_sum9
  %gmem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_2, i32 1)
  %gmem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_2)
  %tmp6 = add i32 %tmp5, %i_op_assign_cast1
  %tmp7 = mul i32 %tmp6, %tmp_26
  %tmp_35 = add i32 %tmp7, %i_op_assign_13_cast8
  %W4_sum = add i32 %tmp_5, %tmp_35
  %gmem_addr_3 = getelementptr inbounds float* %gmem, i32 %W4_sum
  %gmem_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_3, i32 1)
  %gmem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_3)
  %tp = fmul float %gmem_addr_2_read, %gmem_addr_3_read
  %sum_5 = fadd float %sum_2, %tp
  br label %.preheader

; <label>:3                                       ; preds = %.preheader1131
  %gmem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr, i32 1)
  %gmem_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr)
  %sum_3 = fadd float %sum, %gmem_addr_read
  %sum_5_to_int = bitcast float %sum_3 to i32
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_5_to_int, i32 23, i32 30)
  %tmp_29 = trunc i32 %sum_5_to_int to i23
  %notlhs = icmp ne i8 %tmp_28, -1
  %notrhs = icmp eq i23 %tmp_29, 0
  %tmp_30 = or i1 %notrhs, %notlhs
  %tmp_34 = fcmp olt float %sum_3, 0.000000e+00
  %tmp_36 = and i1 %tmp_30, %tmp_34
  %or_cond = and i1 %tmp_36, %relu_en_V_read
  %sum_4 = select i1 %or_cond, float 0.000000e+00, float %sum_3
  %tmp1 = add i32 %p_2, %i_op_assign_11_cast6
  %tmp2 = mul i32 %tmp1, %tmp_26
  %tmp_25 = add i32 %tmp2, %i_op_assign_13_cast8
  %feature_out8_sum = add i32 %tmp_25, %tmp_2
  %gmem_addr_1 = getelementptr inbounds float* %gmem, i32 %feature_out8_sum
  %gmem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_addr_1, float %sum_4, i4 -1)
  %gmem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_addr_1)
  br label %.preheader1132

; <label>:4                                       ; preds = %.loopexit
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !19, !7, !25, !7, !7, !7, !28, !28, !30, !30, !32, !7, !7, !7, !34, !34, !36, !36, !7, !7, !38, !40, !7, !7, !7, !28, !28, !42, !42, !44, !7, !7, !7, !34, !34, !46, !46, !48, !7, !7, !7, !36, !36, !50, !50, !52, !7, !7, !7, !54, !54, !34, !34, !56, !59, !7, !7, !7, !54, !54, !61, !61, !63, !7, !7, !7, !54, !54, !65, !65, !7, !67, !69, !7, !7, !7, !28, !28, !71, !71, !73, !7, !7, !7, !28, !28, !34, !34, !75, !7, !7, !7, !54, !54, !28, !28, !77, !7, !7, !54, !54, !79, !79, !81, !83, !85, !86, !86, !7, !7, !88, !90, !7, !7, !7, !28, !28, !92, !92, !94, !7, !7, !7, !96, !96, !65, !65, !7, !7, !98, !98, !7, !7, !100, !102, !104, !7, !7, !7, !28, !28, !86, !86, !106, !108, !96, !96, !110, !54, !54, !112, !114, !7, !7, !7, !96, !96, !28, !28, !7, !7, !116, !116, !7, !7, !118, !120, !7, !7, !7, !122, !124, !7, !7, !7, !28, !28, !96, !96, !126, !126, !128, !130, !85, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!132}
!axi4.master.portmap = !{!139}
!axi4.slave.bundlemap = !{!140, !141, !142, !143}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<1>", metadata !"ap_uint<1>", metadata !"Dtype_f*", metadata !"Dtype_w*", metadata !"Dtype_w*", metadata !"Dtype_f*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"CHin", metadata !"Hin", metadata !"Win", metadata !"CHout", metadata !"Kx", metadata !"Ky", metadata !"Sx", metadata !"Sy", metadata !"mode", metadata !"relu_en", metadata !"feature_in", metadata !"W", metadata !"bias", metadata !"feature_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<32, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!28 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !24, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!30 = metadata !{null, metadata !20, metadata !21, metadata !31, metadata !23, metadata !24, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!32 = metadata !{null, metadata !14, metadata !15, metadata !33, metadata !17, metadata !27, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<48, true> &"}
!34 = metadata !{null, metadata !20, metadata !21, metadata !35, metadata !23, metadata !24, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!36 = metadata !{null, metadata !20, metadata !21, metadata !37, metadata !23, metadata !24, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!38 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !18, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<74, true> &", metadata !"int"}
!40 = metadata !{null, metadata !14, metadata !15, metadata !41, metadata !17, metadata !27, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<74, true> &", metadata !"const ap_int_base<32, true> &"}
!42 = metadata !{null, metadata !20, metadata !21, metadata !43, metadata !23, metadata !24, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<74, true> &"}
!44 = metadata !{null, metadata !14, metadata !15, metadata !45, metadata !17, metadata !27, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<73, true> &", metadata !"const ap_int_base<48, true> &"}
!46 = metadata !{null, metadata !20, metadata !21, metadata !47, metadata !23, metadata !24, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<73, true> &"}
!48 = metadata !{null, metadata !14, metadata !15, metadata !49, metadata !17, metadata !27, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<72, true> &", metadata !"const ap_int_base<64, true> &"}
!50 = metadata !{null, metadata !20, metadata !21, metadata !51, metadata !23, metadata !24, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<72, true> &"}
!52 = metadata !{null, metadata !14, metadata !15, metadata !53, metadata !17, metadata !27, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<16, false> &"}
!54 = metadata !{null, metadata !20, metadata !21, metadata !55, metadata !23, metadata !24, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!56 = metadata !{null, metadata !14, metadata !15, metadata !57, metadata !17, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<16, false> &"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!59 = metadata !{null, metadata !14, metadata !15, metadata !60, metadata !17, metadata !27, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &", metadata !"const ap_int_base<16, false> &"}
!61 = metadata !{null, metadata !20, metadata !21, metadata !62, metadata !23, metadata !24, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!63 = metadata !{null, metadata !14, metadata !15, metadata !64, metadata !17, metadata !27, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &", metadata !"const ap_int_base<16, false> &"}
!65 = metadata !{null, metadata !20, metadata !21, metadata !66, metadata !23, metadata !24, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &"}
!67 = metadata !{null, metadata !14, metadata !15, metadata !68, metadata !17, metadata !18, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"int"}
!69 = metadata !{null, metadata !14, metadata !15, metadata !70, metadata !17, metadata !27, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"const ap_int_base<32, true> &"}
!71 = metadata !{null, metadata !20, metadata !21, metadata !72, metadata !23, metadata !24, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &"}
!73 = metadata !{null, metadata !14, metadata !15, metadata !74, metadata !17, metadata !27, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<32, true> &"}
!75 = metadata !{null, metadata !14, metadata !15, metadata !76, metadata !17, metadata !27, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<16, false> &"}
!77 = metadata !{null, metadata !14, metadata !15, metadata !78, metadata !17, metadata !27, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<16, false> &"}
!79 = metadata !{null, metadata !20, metadata !21, metadata !80, metadata !23, metadata !24, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!81 = metadata !{null, metadata !20, metadata !21, metadata !55, metadata !23, metadata !82, metadata !6}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!83 = metadata !{null, metadata !14, metadata !15, metadata !84, metadata !17, metadata !27, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"int"}
!85 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !82, metadata !6}
!86 = metadata !{null, metadata !20, metadata !21, metadata !87, metadata !23, metadata !24, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &"}
!88 = metadata !{null, metadata !14, metadata !15, metadata !89, metadata !17, metadata !18, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &", metadata !"int"}
!90 = metadata !{null, metadata !14, metadata !15, metadata !91, metadata !17, metadata !27, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &", metadata !"const ap_int_base<32, true> &"}
!92 = metadata !{null, metadata !20, metadata !21, metadata !93, metadata !23, metadata !24, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &"}
!94 = metadata !{null, metadata !14, metadata !15, metadata !95, metadata !17, metadata !27, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &", metadata !"const ap_int_base<8, false> &"}
!96 = metadata !{null, metadata !20, metadata !21, metadata !97, metadata !23, metadata !24, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!98 = metadata !{null, metadata !20, metadata !21, metadata !99, metadata !23, metadata !24, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<43, true> &"}
!100 = metadata !{null, metadata !20, metadata !21, metadata !101, metadata !23, metadata !82, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!102 = metadata !{null, metadata !14, metadata !15, metadata !103, metadata !17, metadata !18, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &", metadata !"int"}
!104 = metadata !{null, metadata !14, metadata !15, metadata !105, metadata !17, metadata !27, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &", metadata !"const ap_int_base<32, true> &"}
!106 = metadata !{null, metadata !14, metadata !15, metadata !107, metadata !17, metadata !27, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &", metadata !"const ap_int_base<8, false> &"}
!108 = metadata !{null, metadata !14, metadata !15, metadata !109, metadata !17, metadata !27, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &", metadata !"const ap_int_base<8, false> &"}
!110 = metadata !{null, metadata !14, metadata !15, metadata !111, metadata !17, metadata !27, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<40, true> &"}
!112 = metadata !{null, metadata !14, metadata !15, metadata !113, metadata !17, metadata !58, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<8, false> &"}
!114 = metadata !{null, metadata !14, metadata !15, metadata !115, metadata !17, metadata !27, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<8, false> &"}
!116 = metadata !{null, metadata !20, metadata !21, metadata !117, metadata !23, metadata !24, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &"}
!118 = metadata !{null, metadata !14, metadata !15, metadata !119, metadata !17, metadata !18, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!120 = metadata !{null, metadata !14, metadata !15, metadata !121, metadata !17, metadata !27, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!122 = metadata !{null, metadata !14, metadata !15, metadata !123, metadata !17, metadata !18, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!124 = metadata !{null, metadata !14, metadata !15, metadata !125, metadata !17, metadata !27, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!126 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !127, metadata !6}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!128 = metadata !{null, metadata !20, metadata !21, metadata !129, metadata !23, metadata !82, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!130 = metadata !{null, metadata !14, metadata !15, metadata !131, metadata !17, metadata !27, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!132 = metadata !{metadata !133, [1 x i32]* @llvm_global_ctors_0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 31, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"llvm.global_ctors.0", metadata !137, metadata !"", i32 0, i32 31}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 0, i32 1}
!139 = metadata !{metadata !"gmem", metadata !"feature_in", metadata !"READONLY", metadata !"W", metadata !"READONLY", metadata !"bias", metadata !"READONLY", metadata !"feature_out", metadata !"WRITEONLY"}
!140 = metadata !{metadata !"feature_in", metadata !""}
!141 = metadata !{metadata !"W", metadata !""}
!142 = metadata !{metadata !"bias", metadata !""}
!143 = metadata !{metadata !"feature_out", metadata !""}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 31, metadata !146}
!146 = metadata !{metadata !147, metadata !148, metadata !149, metadata !150}
!147 = metadata !{metadata !"feature_in", metadata !137, metadata !"float", i32 0, i32 31}
!148 = metadata !{metadata !"W", metadata !137, metadata !"float", i32 0, i32 31}
!149 = metadata !{metadata !"bias", metadata !137, metadata !"float", i32 0, i32 31}
!150 = metadata !{metadata !"feature_out", metadata !137, metadata !"float", i32 0, i32 31}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 15, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"CHin.V", metadata !155, metadata !"uint16", i32 0, i32 15}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 0, i32 0}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 15, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"Hin.V", metadata !155, metadata !"uint16", i32 0, i32 15}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 15, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"Win.V", metadata !155, metadata !"uint16", i32 0, i32 15}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 15, metadata !167}
!167 = metadata !{metadata !168}
!168 = metadata !{metadata !"CHout.V", metadata !155, metadata !"uint16", i32 0, i32 15}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 7, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"Kx.V", metadata !155, metadata !"uint8", i32 0, i32 7}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 7, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"Ky.V", metadata !155, metadata !"uint8", i32 0, i32 7}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 0, i32 7, metadata !179}
!179 = metadata !{metadata !180}
!180 = metadata !{metadata !"Sx.V", metadata !155, metadata !"uint8", i32 0, i32 7}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 7, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"Sy.V", metadata !155, metadata !"uint8", i32 0, i32 7}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 0, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"mode.V", metadata !155, metadata !"uint1", i32 0, i32 0}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 0, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"relu_en.V", metadata !155, metadata !"uint1", i32 0, i32 0}
