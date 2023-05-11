; ModuleID = 'test.cc'
source_filename = "test.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%class.Circle = type <{ %class.Shape, float, [4 x i8] }>
%class.Shape = type { i32 (...)** }

@.str = private unnamed_addr constant [9 x i8] c"add : %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sub : %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mul : %d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"circle area : %f\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z3addii(i32 %_a, i32 %_b) #0 {
entry:
  %_a.addr = alloca i32, align 4
  %_b.addr = alloca i32, align 4
  store i32 %_a, i32* %_a.addr, align 4
  store i32 %_b, i32* %_b.addr, align 4
  %0 = load i32, i32* %_a.addr, align 4
  %1 = load i32, i32* %_b.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z3subii(i32 %_a, i32 %_b) #0 {
entry:
  %_a.addr = alloca i32, align 4
  %_b.addr = alloca i32, align 4
  store i32 %_a, i32* %_a.addr, align 4
  store i32 %_b, i32* %_b.addr, align 4
  %0 = load i32, i32* %_a.addr, align 4
  %1 = load i32, i32* %_b.addr, align 4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z3mulii(i32 %_a, i32 %_b) #0 {
entry:
  %_a.addr = alloca i32, align 4
  %_b.addr = alloca i32, align 4
  store i32 %_a, i32* %_a.addr, align 4
  store i32 %_b, i32* %_b.addr, align 4
  %0 = load i32, i32* %_a.addr, align 4
  %1 = load i32, i32* %_b.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %add_result = alloca i32, align 4
  %sub_result = alloca i32, align 4
  %mul_result = alloca i32, align 4
  %circle = alloca %class.Circle*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %circle_area = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 13, i32* %x, align 4
  store i32 3, i32* %y, align 4
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %y, align 4
  %call = call i32 @_Z3addii(i32 %0, i32 %1)
  store i32 %call, i32* %add_result, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %call1 = call i32 @_Z3subii(i32 %2, i32 %3)
  store i32 %call1, i32* %sub_result, align 4
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  %call2 = call i32 @_Z3mulii(i32 %4, i32 %5)
  store i32 %call2, i32* %mul_result, align 4
  %call3 = call noalias nonnull i8* @_Znwm(i64 16) #5
  %6 = bitcast i8* %call3 to %class.Circle*
  %call4 = invoke %class.Circle* @_ZN6CircleC1Ef(%class.Circle* %6, float 3.000000e+00)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %class.Circle* %6, %class.Circle** %circle, align 8
  %7 = load %class.Circle*, %class.Circle** %circle, align 8
  %8 = bitcast %class.Circle* %7 to float (%class.Circle*)***
  %vtable = load float (%class.Circle*)**, float (%class.Circle*)*** %8, align 8
  %vfn = getelementptr inbounds float (%class.Circle*)*, float (%class.Circle*)** %vtable, i64 0
  %9 = load float (%class.Circle*)*, float (%class.Circle*)** %vfn, align 8
  %call5 = call float %9(%class.Circle* %7)
  store float %call5, float* %circle_area, align 4
  %10 = load i32, i32* %add_result, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %11 = load i32, i32* %sub_result, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %12 = load i32, i32* %mul_result, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %13 = load float, float* %circle_area, align 4
  %conv = fpext float %13 to double
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), double %conv)
  ret i32 0

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call3) #6
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val10
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) #2

declare %class.Circle* @_ZN6CircleC1Ef(%class.Circle* returned, float) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { builtin allocsize(0) }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.102)"}
