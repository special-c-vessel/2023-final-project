; ModuleID = 'testValueNumbering.cc'
source_filename = "testValueNumbering.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_Z5test6iiiii(i32 %c, i32 %d, i32 %e, i32 %i, i32 %j) #0 !dbg !14 {
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
  %tempfloat = alloca float, align 4
  %tempfloat2 = alloca float, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %d, i32* %d.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %d.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 %e, i32* %e.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %e.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 %j, i32* %j.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %j.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %a, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 10, i32* %a, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %b, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 40, i32* %b, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %t1, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = load i32, i32* %i.addr, align 4, !dbg !35
  %1 = load i32, i32* %j.addr, align 4, !dbg !36
  %mul = mul nsw i32 %0, %1, !dbg !37
  store i32 %mul, i32* %t1, align 4, !dbg !34
  %2 = load i32, i32* %t1, align 4, !dbg !38
  %add = add nsw i32 %2, 40, !dbg !39
  store i32 %add, i32* %c.addr, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %t2, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 150, i32* %t2, align 4, !dbg !42
  %3 = load i32, i32* %c.addr, align 4, !dbg !43
  %mul1 = mul nsw i32 150, %3, !dbg !44
  store i32 %mul1, i32* %d.addr, align 4, !dbg !45
  %4 = load i32, i32* %i.addr, align 4, !dbg !46
  store i32 %4, i32* %e.addr, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %t3, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = load i32, i32* %i.addr, align 4, !dbg !50
  %6 = load i32, i32* %j.addr, align 4, !dbg !51
  %mul2 = mul nsw i32 %5, %6, !dbg !52
  store i32 %mul2, i32* %t3, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %t4, metadata !53, metadata !DIExpression()), !dbg !54
  %7 = load i32, i32* %i.addr, align 4, !dbg !55
  %mul3 = mul nsw i32 %7, 10, !dbg !56
  store i32 %mul3, i32* %t4, align 4, !dbg !54
  %8 = load i32, i32* %t1, align 4, !dbg !57
  %9 = load i32, i32* %t4, align 4, !dbg !58
  %add4 = add nsw i32 %8, %9, !dbg !59
  store i32 %add4, i32* %c.addr, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata float* %tempfloat, metadata !61, metadata !DIExpression()), !dbg !63
  store float 0x4014666660000000, float* %tempfloat, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata float* %tempfloat2, metadata !64, metadata !DIExpression()), !dbg !65
  store float 0x4018666660000000, float* %tempfloat2, align 4, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.dbg.cu = !{!11}
!llvm.ident = !{!13}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 3]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !12, producer: "Apple clang version 14.0.0 (clang-1400.0.29.102)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!12 = !DIFile(filename: "testValueNumbering.cc", directory: "/Users/han/GitHub/llvm-project/build/tests")
!13 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.102)"}
!14 = distinct !DISubprogram(name: "test6", linkageName: "_Z5test6iiiii", scope: !12, file: !12, line: 1, type: !15, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "c", arg: 1, scope: !14, file: !12, line: 1, type: !17)
!20 = !DILocation(line: 1, column: 16, scope: !14)
!21 = !DILocalVariable(name: "d", arg: 2, scope: !14, file: !12, line: 1, type: !17)
!22 = !DILocation(line: 1, column: 23, scope: !14)
!23 = !DILocalVariable(name: "e", arg: 3, scope: !14, file: !12, line: 1, type: !17)
!24 = !DILocation(line: 1, column: 30, scope: !14)
!25 = !DILocalVariable(name: "i", arg: 4, scope: !14, file: !12, line: 1, type: !17)
!26 = !DILocation(line: 1, column: 37, scope: !14)
!27 = !DILocalVariable(name: "j", arg: 5, scope: !14, file: !12, line: 1, type: !17)
!28 = !DILocation(line: 1, column: 44, scope: !14)
!29 = !DILocalVariable(name: "a", scope: !14, file: !12, line: 3, type: !17)
!30 = !DILocation(line: 3, column: 9, scope: !14)
!31 = !DILocalVariable(name: "b", scope: !14, file: !12, line: 4, type: !17)
!32 = !DILocation(line: 4, column: 9, scope: !14)
!33 = !DILocalVariable(name: "t1", scope: !14, file: !12, line: 5, type: !17)
!34 = !DILocation(line: 5, column: 9, scope: !14)
!35 = !DILocation(line: 5, column: 14, scope: !14)
!36 = !DILocation(line: 5, column: 18, scope: !14)
!37 = !DILocation(line: 5, column: 16, scope: !14)
!38 = !DILocation(line: 6, column: 9, scope: !14)
!39 = !DILocation(line: 6, column: 12, scope: !14)
!40 = !DILocation(line: 6, column: 7, scope: !14)
!41 = !DILocalVariable(name: "t2", scope: !14, file: !12, line: 7, type: !17)
!42 = !DILocation(line: 7, column: 9, scope: !14)
!43 = !DILocation(line: 8, column: 15, scope: !14)
!44 = !DILocation(line: 8, column: 13, scope: !14)
!45 = !DILocation(line: 8, column: 7, scope: !14)
!46 = !DILocation(line: 9, column: 9, scope: !14)
!47 = !DILocation(line: 9, column: 7, scope: !14)
!48 = !DILocalVariable(name: "t3", scope: !14, file: !12, line: 10, type: !17)
!49 = !DILocation(line: 10, column: 9, scope: !14)
!50 = !DILocation(line: 10, column: 14, scope: !14)
!51 = !DILocation(line: 10, column: 18, scope: !14)
!52 = !DILocation(line: 10, column: 16, scope: !14)
!53 = !DILocalVariable(name: "t4", scope: !14, file: !12, line: 11, type: !17)
!54 = !DILocation(line: 11, column: 9, scope: !14)
!55 = !DILocation(line: 11, column: 14, scope: !14)
!56 = !DILocation(line: 11, column: 16, scope: !14)
!57 = !DILocation(line: 12, column: 9, scope: !14)
!58 = !DILocation(line: 12, column: 14, scope: !14)
!59 = !DILocation(line: 12, column: 12, scope: !14)
!60 = !DILocation(line: 12, column: 7, scope: !14)
!61 = !DILocalVariable(name: "tempfloat", scope: !14, file: !12, line: 15, type: !62)
!62 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!63 = !DILocation(line: 15, column: 11, scope: !14)
!64 = !DILocalVariable(name: "tempfloat2", scope: !14, file: !12, line: 16, type: !62)
!65 = !DILocation(line: 16, column: 11, scope: !14)
!66 = !DILocation(line: 17, column: 1, scope: !14)
