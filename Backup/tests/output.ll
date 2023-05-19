; ModuleID = 'testValueNumbering.ll'
source_filename = "testValueNumbering.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

@0 = private unnamed_addr constant [24 x i8] c"add operation detected\0A\00", align 1
@1 = private unnamed_addr constant [24 x i8] c"add operation detected\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_Z5test6iiiii(i32 %c, i32 %d, i32 %e, i32 %i, i32 %j) #0 {
entry:
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 10, i32* %a, align 4
  store i32 40, i32* %b, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %t1, align 4
  %2 = load i32, i32* %t1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0))
  %add = add nsw i32 %2, 40
  store i32 %add, i32* %c.addr, align 4
  store i32 150, i32* %t2, align 4
  %4 = load i32, i32* %c.addr, align 4
  %mul1 = mul nsw i32 150, %4
  store i32 %mul1, i32* %d.addr, align 4
  %5 = load i32, i32* %i.addr, align 4
  store i32 %5, i32* %e.addr, align 4
  %6 = load i32, i32* %i.addr, align 4
  %7 = load i32, i32* %j.addr, align 4
  %mul2 = mul nsw i32 %6, %7
  store i32 %mul2, i32* %t3, align 4
  %8 = load i32, i32* %i.addr, align 4
  %mul3 = mul nsw i32 %8, 10
  store i32 %mul3, i32* %t4, align 4
  %9 = load i32, i32* %t1, align 4
  %10 = load i32, i32* %t4, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @1, i32 0, i32 0))
  %add4 = add nsw i32 %9, %10
  store i32 %add4, i32* %c.addr, align 4
  ret void
}

declare i32 @printf(i8*, ...)

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
