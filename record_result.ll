; ModuleID = 'test.cpp' 
source_filename = "test.cpp" 
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128" 
target triple = "arm64-apple-macosx12.0.0" 
; 새로운 전역 str 작성 시작
@__const_culry._Z10p_functionPv-data.addr = private unnamed_addr constant [28 x i8] c"_Z10p_functionPv-data.addr \00", align 1 
@__const_culry.i8p = private unnamed_addr constant [5 x i8] c"i8p \00", align 1 
@__const_culry._Z10p_functionPv-pid = private unnamed_addr constant [22 x i8] c"_Z10p_functionPv-pid \00", align 1 
@__const_culry.i32 = private unnamed_addr constant [5 x i8] c"i32 \00", align 1 
@__const_culry._Z10p_functionPv-tid = private unnamed_addr constant [22 x i8] c"_Z10p_functionPv-tid \00", align 1 
@__const_culry.struct._opaque_pthread_tp = private unnamed_addr constant [27 x i8] c"struct._opaque_pthread_tp \00", align 1 
@__const_culry._Z10p_functionPv-thread_name = private unnamed_addr constant [30 x i8] c"_Z10p_functionPv-thread_name \00", align 1 
@__const_culry._Z10p_functionPv-i = private unnamed_addr constant [20 x i8] c"_Z10p_functionPv-i \00", align 1 
@__const_culry._Z10p_functionPv-num1 = private unnamed_addr constant [23 x i8] c"_Z10p_functionPv-num1 \00", align 1 
@__const_culry._Z10p_functionPv-retval = private unnamed_addr constant [25 x i8] c"_Z10p_functionPv-retval \00", align 1 
@__const_culry.main-pthread = private unnamed_addr constant [14 x i8] c"main-pthread \00", align 1 
@__const_culry.main-arrayidx7 = private unnamed_addr constant [16 x i8] c"main-arrayidx7 \00", align 1 
@__const_culry.main-arrayidx9 = private unnamed_addr constant [16 x i8] c"main-arrayidx9 \00", align 1 
@__const_culry.main-arrayidx11 = private unnamed_addr constant [17 x i8] c"main-arrayidx11 \00", align 1 
@__const_culry.main-num1 = private unnamed_addr constant [11 x i8] c"main-num1 \00", align 1 
@__const_culry.main-num2 = private unnamed_addr constant [11 x i8] c"main-num2 \00", align 1 
@__const_culry.main-num3 = private unnamed_addr constant [11 x i8] c"main-num3 \00", align 1 
; 새로운 전역 str 작성 종료

%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] } 
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* } 
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] } 

@.str = private unnamed_addr constant [38 x i8] c"thread name : %s, tid : %x, pid : %u\0A\00", align 1 
@__const.main.p1 = private unnamed_addr constant [9 x i8] c"thread_1\00", align 1 
@__const.main.p2 = private unnamed_addr constant [11 x i8] c"thread_222\00", align 1 
@__const.main.p3 = private unnamed_addr constant [13 x i8] c"thread_33333\00", align 1 
@.str.1 = private unnamed_addr constant [12 x i8] c"endddddddd\0A\00", align 1 

; Function Attrs: noinline optnone ssp uwtable 
define i8* @_Z10p_functionPv(i8* %data) #0 !dbg !984 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %retval = alloca i8*, align 8 
  %data.addr = alloca i8*, align 8 
  %pid = alloca i32, align 4 
  %tid = alloca %struct._opaque_pthread_t*, align 8 
  %thread_name = alloca i8*, align 8 
  %i = alloca i32, align 4 
  %num1 = alloca i32, align 4 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i8* %data, i8** %data.addr, align 8 
%openFile_1 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_1, %struct.__sFILE** @file, align 8 
%temp_OpenFile_1 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_1 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_1_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_1) 
%var_1_value = load i8*, i8** %data.addr, align 4 
%temp_KeyWord_1_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_1_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__const_culry._Z10p_functionPv-data.addr, i64 0, i64 0)) 
%temp_ValTYpe_1_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i8p, i64 0, i64 0)) 
%temp_varVal_1_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8* %var_1_value) 
%temp_varPtr_1_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8** %data.addr) 
%temp_varLine_1_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 0) 
%temp_varColnum_1_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 0) 
%closeFile_1 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !988, metadata !DIExpression()), !dbg !989 
  call void @llvm.dbg.declare(metadata i32* %pid, metadata !990, metadata !DIExpression()), !dbg !995 
  call void @llvm.dbg.declare(metadata %struct._opaque_pthread_t** %tid, metadata !996, metadata !DIExpression()), !dbg !1017 
  %call = call i32 @getpid(), !dbg !1018 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %call, i32* %pid, align 4, !dbg !1019 
%openFile_2 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_2, %struct.__sFILE** @file, align 8 
%temp_OpenFile_2 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_2 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_2_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_2) 
%var_2_value = load i32, i32* %pid, align 4 
%temp_KeyWord_2_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_2_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__const_culry._Z10p_functionPv-pid, i64 0, i64 0)) 
%temp_ValTYpe_2_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_2_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_2_value) 
%temp_varPtr_2_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %pid) 
%temp_varLine_2_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 19) 
%temp_varColnum_2_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_2 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %call1 = call %struct._opaque_pthread_t* @pthread_self(), !dbg !1020 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store %struct._opaque_pthread_t* %call1, %struct._opaque_pthread_t** %tid, align 8, !dbg !1021 
%openFile_3 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_3, %struct.__sFILE** @file, align 8 
%temp_OpenFile_3 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_3 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_3_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_3) 
%var_3_value = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %tid, align 4 
%temp_KeyWord_3_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_3_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__const_culry._Z10p_functionPv-tid, i64 0, i64 0)) 
%temp_ValTYpe_3_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__const_culry.struct._opaque_pthread_tp, i64 0, i64 0)) 
%temp_varVal_3_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t* %var_3_value) 
%temp_varPtr_3_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t** %tid) 
%temp_varLine_3_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 20) 
%temp_varColnum_3_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_3 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  call void @llvm.dbg.declare(metadata i8** %thread_name, metadata !1022, metadata !DIExpression()), !dbg !1023 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %0 = load i8*, i8** %data.addr, align 8, !dbg !1024 
%openFile_4 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_4, %struct.__sFILE** @file, align 8 
%temp_OpenFile_4 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_4 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_4_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_4) 
%var_4_value = load i8*, i8** %data.addr, align 4 
%temp_KeyWord_4_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_4_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__const_culry._Z10p_functionPv-data.addr, i64 0, i64 0)) 
%temp_ValTYpe_4_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i8p, i64 0, i64 0)) 
%temp_varVal_4_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8* %var_4_value) 
%temp_varPtr_4_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8** %data.addr) 
%temp_varLine_4_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 22) 
%temp_varColnum_4_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 31) 
%closeFile_4 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i8* %0, i8** %thread_name, align 8, !dbg !1023 
%openFile_5 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_5, %struct.__sFILE** @file, align 8 
%temp_OpenFile_5 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_5 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_5_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_5) 
%var_5_value = load i8*, i8** %thread_name, align 4 
%temp_KeyWord_5_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_5_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__const_culry._Z10p_functionPv-thread_name, i64 0, i64 0)) 
%temp_ValTYpe_5_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i8p, i64 0, i64 0)) 
%temp_varVal_5_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8* %var_5_value) 
%temp_varPtr_5_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8** %thread_name) 
%temp_varLine_5_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 22) 
%temp_varColnum_5_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 9) 
%closeFile_5 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1025, metadata !DIExpression()), !dbg !1026 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 0, i32* %i, align 4, !dbg !1026 
%openFile_6 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_6, %struct.__sFILE** @file, align 8 
%temp_OpenFile_6 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_6 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_6_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_6) 
%var_6_value = load i32, i32* %i, align 4 
%temp_KeyWord_6_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_6_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__const_culry._Z10p_functionPv-i, i64 0, i64 0)) 
%temp_ValTYpe_6_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_6_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_6_value) 
%temp_varPtr_6_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %i) 
%temp_varLine_6_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 23) 
%temp_varColnum_6_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_6 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  br label %while.cond, !dbg !1027 

while.cond:                                       ; preds = %while.body, %entry 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %1 = load i32, i32* %i, align 4, !dbg !1028 
%openFile_7 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_7, %struct.__sFILE** @file, align 8 
%temp_OpenFile_7 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_7 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_7_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_7) 
%var_7_value = load i32, i32* %i, align 4 
%temp_KeyWord_7_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_7_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__const_culry._Z10p_functionPv-i, i64 0, i64 0)) 
%temp_ValTYpe_7_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_7_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_7_value) 
%temp_varPtr_7_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %i) 
%temp_varLine_7_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 25) 
%temp_varColnum_7_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 9) 
%closeFile_7 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %cmp = icmp slt i32 %1, 10, !dbg !1029 
  br i1 %cmp, label %while.body, label %while.end, !dbg !1027 

while.body:                                       ; preds = %while.cond 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %2 = load i8*, i8** %thread_name, align 8, !dbg !1030 
%openFile_8 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_8, %struct.__sFILE** @file, align 8 
%temp_OpenFile_8 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_8 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_8_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_8) 
%var_8_value = load i8*, i8** %thread_name, align 4 
%temp_KeyWord_8_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_8_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__const_culry._Z10p_functionPv-thread_name, i64 0, i64 0)) 
%temp_ValTYpe_8_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i8p, i64 0, i64 0)) 
%temp_varVal_8_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8* %var_8_value) 
%temp_varPtr_8_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8** %thread_name) 
%temp_varLine_8_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27) 
%temp_varColnum_8_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 54) 
%closeFile_8 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %tid, align 8, !dbg !1032 
%openFile_9 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_9, %struct.__sFILE** @file, align 8 
%temp_OpenFile_9 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_9 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_9_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_9) 
%var_9_value = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %tid, align 4 
%temp_KeyWord_9_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_9_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__const_culry._Z10p_functionPv-tid, i64 0, i64 0)) 
%temp_ValTYpe_9_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__const_culry.struct._opaque_pthread_tp, i64 0, i64 0)) 
%temp_varVal_9_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t* %var_9_value) 
%temp_varPtr_9_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t** %tid) 
%temp_varLine_9_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27) 
%temp_varColnum_9_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 67) 
%closeFile_9 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %4 = load i32, i32* %pid, align 4, !dbg !1033 
%openFile_10 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_10, %struct.__sFILE** @file, align 8 
%temp_OpenFile_10 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_10 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_10_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_10) 
%var_10_value = load i32, i32* %pid, align 4 
%temp_KeyWord_10_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_10_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__const_culry._Z10p_functionPv-pid, i64 0, i64 0)) 
%temp_ValTYpe_10_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_10_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_10_value) 
%temp_varPtr_10_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %pid) 
%temp_varLine_10_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27) 
%temp_varColnum_10_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 86) 
%closeFile_10 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %2, %struct._opaque_pthread_t* %3, i32 %4), !dbg !1034 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %5 = load i32, i32* %i, align 4, !dbg !1035 
%openFile_11 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_11, %struct.__sFILE** @file, align 8 
%temp_OpenFile_11 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_11 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_11_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_11) 
%var_11_value = load i32, i32* %i, align 4 
%temp_KeyWord_11_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_11_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__const_culry._Z10p_functionPv-i, i64 0, i64 0)) 
%temp_ValTYpe_11_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_11_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_11_value) 
%temp_varPtr_11_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %i) 
%temp_varLine_11_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 28) 
%temp_varColnum_11_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 6) 
%closeFile_11 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %inc = add nsw i32 %5, 1, !dbg !1035 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %inc, i32* %i, align 4, !dbg !1035 
%openFile_12 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_12, %struct.__sFILE** @file, align 8 
%temp_OpenFile_12 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_12 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_12_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_12) 
%var_12_value = load i32, i32* %i, align 4 
%temp_KeyWord_12_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_12_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__const_culry._Z10p_functionPv-i, i64 0, i64 0)) 
%temp_ValTYpe_12_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_12_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_12_value) 
%temp_varPtr_12_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %i) 
%temp_varLine_12_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 28) 
%temp_varColnum_12_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 6) 
%closeFile_12 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  br label %while.cond, !dbg !1027, !llvm.loop !1036 

while.end:                                        ; preds = %while.cond 
  call void @llvm.dbg.declare(metadata i32* %num1, metadata !1038, metadata !DIExpression()), !dbg !1039 
  %call3 = call i32 @rand(), !dbg !1040 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %call3, i32* %num1, align 4, !dbg !1039 
%openFile_13 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_13, %struct.__sFILE** @file, align 8 
%temp_OpenFile_13 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_13 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_13_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_13) 
%var_13_value = load i32, i32* %num1, align 4 
%temp_KeyWord_13_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_13_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__const_culry._Z10p_functionPv-num1, i64 0, i64 0)) 
%temp_ValTYpe_13_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_13_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_13_value) 
%temp_varPtr_13_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num1) 
%temp_varLine_13_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 32) 
%temp_varColnum_13_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_13 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %6 = load i8*, i8** %retval, align 8, !dbg !1041 
%openFile_14 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_14, %struct.__sFILE** @file, align 8 
%temp_OpenFile_14 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_14 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_14_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_14) 
%var_14_value = load i8*, i8** %retval, align 4 
%temp_KeyWord_14_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_14_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__const_culry._Z10p_functionPv-retval, i64 0, i64 0)) 
%temp_ValTYpe_14_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i8p, i64 0, i64 0)) 
%temp_varVal_14_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8* %var_14_value) 
%temp_varPtr_14_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i8** %retval) 
%temp_varLine_14_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 36) 
%temp_varColnum_14_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 1) 
%closeFile_14 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  ret i8* %6, !dbg !1041 
} 

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn 
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1 

declare i32 @getpid() #2 

declare %struct._opaque_pthread_t* @pthread_self() #2 

declare i32 @printf(i8*, ...) #2 

declare i32 @rand() #2 

; Function Attrs: noinline norecurse optnone ssp uwtable 
define i32 @main() #3 !dbg !1042 { 
entry: 
call void @__cxx_global_var_init_culry() 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %retval = alloca i32, align 4 
  %pthread = alloca [2 x %struct._opaque_pthread_t*], align 8 
  %thr_id = alloca i32, align 4 
  %status = alloca i32, align 4 
  %p1 = alloca [9 x i8], align 1 
  %p2 = alloca [11 x i8], align 1 
  %p3 = alloca [13 x i8], align 1 
  %num1 = alloca i32, align 4 
  %num2 = alloca i32, align 4 
  %num3 = alloca i32, align 4 
  call void @llvm.dbg.declare(metadata [2 x %struct._opaque_pthread_t*]* %pthread, metadata !1043, metadata !DIExpression()), !dbg !1047 
  call void @llvm.dbg.declare(metadata i32* %thr_id, metadata !1048, metadata !DIExpression()), !dbg !1049 
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1050, metadata !DIExpression()), !dbg !1051 
  call void @llvm.dbg.declare(metadata [9 x i8]* %p1, metadata !1052, metadata !DIExpression()), !dbg !1056 
  %0 = bitcast [9 x i8]* %p1 to i8*, !dbg !1056 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.p1, i32 0, i32 0), i64 9, i1 false), !dbg !1056 
  call void @llvm.dbg.declare(metadata [11 x i8]* %p2, metadata !1057, metadata !DIExpression()), !dbg !1061 
  %1 = bitcast [11 x i8]* %p2 to i8*, !dbg !1061 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.p2, i32 0, i32 0), i64 11, i1 false), !dbg !1061 
  call void @llvm.dbg.declare(metadata [13 x i8]* %p3, metadata !1062, metadata !DIExpression()), !dbg !1066 
  %2 = bitcast [13 x i8]* %p3 to i8*, !dbg !1066 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.main.p3, i32 0, i32 0), i64 13, i1 false), !dbg !1066 
  %arrayidx = getelementptr inbounds [2 x %struct._opaque_pthread_t*], [2 x %struct._opaque_pthread_t*]* %pthread, i64 0, i64 0, !dbg !1067 
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 0, !dbg !1068 
  %call = call i32 @pthread_create(%struct._opaque_pthread_t** %arrayidx, %struct._opaque_pthread_attr_t* null, i8* (i8*)* @_Z10p_functionPv, i8* %arraydecay), !dbg !1069 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %call, i32* %thr_id, align 4, !dbg !1070 
%openFile_15 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_15, %struct.__sFILE** @file, align 8 
%temp_OpenFile_15 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_15 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_15_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_15) 
%var_15_value = load i32, i32* %thr_id, align 4 
%temp_KeyWord_15_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_15_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__const_culry.main-pthread, i64 0, i64 0)) 
%temp_ValTYpe_15_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_isPointerArr_15_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.userKeyWord_isPointerArr, i32 0, i32 0)) 
%temp_ArrayIndex_15_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 0) 
%temp_varVal_15_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_15_value) 
%temp_varPtr_15_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), [2 x %struct._opaque_pthread_t*]* %pthread) 
%temp_varLine_15_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 49) 
%temp_varColnum_15_9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 10) 
%closeFile_15 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %arrayidx1 = getelementptr inbounds [2 x %struct._opaque_pthread_t*], [2 x %struct._opaque_pthread_t*]* %pthread, i64 0, i64 1, !dbg !1071 
  %arraydecay2 = getelementptr inbounds [11 x i8], [11 x i8]* %p2, i64 0, i64 0, !dbg !1072 
  %call3 = call i32 @pthread_create(%struct._opaque_pthread_t** %arrayidx1, %struct._opaque_pthread_attr_t* null, i8* (i8*)* @_Z10p_functionPv, i8* %arraydecay2), !dbg !1073 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %call3, i32* %thr_id, align 4, !dbg !1074 
%openFile_16 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_16, %struct.__sFILE** @file, align 8 
%temp_OpenFile_16 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_16 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_16_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_16) 
%var_16_value = load i32, i32* %thr_id, align 4 
%temp_KeyWord_16_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_16_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__const_culry.main-pthread, i64 0, i64 0)) 
%temp_ValTYpe_16_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_isPointerArr_16_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.userKeyWord_isPointerArr, i32 0, i32 0)) 
%temp_ArrayIndex_16_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 1) 
%temp_varVal_16_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_16_value) 
%temp_varPtr_16_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), [2 x %struct._opaque_pthread_t*]* %pthread) 
%temp_varLine_16_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 50) 
%temp_varColnum_16_9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 10) 
%closeFile_16 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %arrayidx4 = getelementptr inbounds [2 x %struct._opaque_pthread_t*], [2 x %struct._opaque_pthread_t*]* %pthread, i64 0, i64 2, !dbg !1075 
  %arraydecay5 = getelementptr inbounds [13 x i8], [13 x i8]* %p3, i64 0, i64 0, !dbg !1076 
  %call6 = call i32 @pthread_create(%struct._opaque_pthread_t** %arrayidx4, %struct._opaque_pthread_attr_t* null, i8* (i8*)* @_Z10p_functionPv, i8* %arraydecay5), !dbg !1077 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %call6, i32* %thr_id, align 4, !dbg !1078 
%openFile_17 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_17, %struct.__sFILE** @file, align 8 
%temp_OpenFile_17 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_17 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_17_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_17) 
%var_17_value = load i32, i32* %thr_id, align 4 
%temp_KeyWord_17_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_17_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__const_culry.main-pthread, i64 0, i64 0)) 
%temp_ValTYpe_17_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_isPointerArr_17_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.userKeyWord_isPointerArr, i32 0, i32 0)) 
%temp_ArrayIndex_17_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 2) 
%temp_varVal_17_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_17_value) 
%temp_varPtr_17_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), [2 x %struct._opaque_pthread_t*]* %pthread) 
%temp_varLine_17_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 51) 
%temp_varColnum_17_9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 10) 
%closeFile_17 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %arrayidx7 = getelementptr inbounds [2 x %struct._opaque_pthread_t*], [2 x %struct._opaque_pthread_t*]* %pthread, i64 0, i64 0, !dbg !1079 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %arrayidx7, align 8, !dbg !1079 
%openFile_18 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_18, %struct.__sFILE** @file, align 8 
%temp_OpenFile_18 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_18 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_18_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_18) 
%var_18_value = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %arrayidx7, align 4 
%temp_KeyWord_18_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_18_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__const_culry.main-arrayidx7, i64 0, i64 0)) 
%temp_ValTYpe_18_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__const_culry.struct._opaque_pthread_tp, i64 0, i64 0)) 
%temp_varVal_18_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t* %var_18_value) 
%temp_varPtr_18_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t** %arrayidx7) 
%temp_varLine_18_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 54) 
%temp_varColnum_18_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 16) 
%closeFile_18 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %4 = bitcast i32* %status to i8**, !dbg !1080 
  %call8 = call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %3, i8** %4), !dbg !1081 
  %arrayidx9 = getelementptr inbounds [2 x %struct._opaque_pthread_t*], [2 x %struct._opaque_pthread_t*]* %pthread, i64 0, i64 1, !dbg !1082 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %arrayidx9, align 8, !dbg !1082 
%openFile_19 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_19, %struct.__sFILE** @file, align 8 
%temp_OpenFile_19 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_19 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_19_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_19) 
%var_19_value = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %arrayidx9, align 4 
%temp_KeyWord_19_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_19_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__const_culry.main-arrayidx9, i64 0, i64 0)) 
%temp_ValTYpe_19_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__const_culry.struct._opaque_pthread_tp, i64 0, i64 0)) 
%temp_varVal_19_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t* %var_19_value) 
%temp_varPtr_19_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t** %arrayidx9) 
%temp_varLine_19_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 55) 
%temp_varColnum_19_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 16) 
%closeFile_19 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %6 = bitcast i32* %status to i8**, !dbg !1083 
  %call10 = call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %5, i8** %6), !dbg !1084 
  %arrayidx11 = getelementptr inbounds [2 x %struct._opaque_pthread_t*], [2 x %struct._opaque_pthread_t*]* %pthread, i64 0, i64 2, !dbg !1085 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %arrayidx11, align 8, !dbg !1085 
%openFile_20 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_20, %struct.__sFILE** @file, align 8 
%temp_OpenFile_20 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_20 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_20_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_20) 
%var_20_value = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %arrayidx11, align 4 
%temp_KeyWord_20_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_20_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__const_culry.main-arrayidx11, i64 0, i64 0)) 
%temp_ValTYpe_20_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__const_culry.struct._opaque_pthread_tp, i64 0, i64 0)) 
%temp_varVal_20_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t* %var_20_value) 
%temp_varPtr_20_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %struct._opaque_pthread_t** %arrayidx11) 
%temp_varLine_20_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 56) 
%temp_varColnum_20_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 16) 
%closeFile_20 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %8 = bitcast i32* %status to i8**, !dbg !1086 
  %call12 = call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %7, i8** %8), !dbg !1087 
  call void @llvm.dbg.declare(metadata i32* %num1, metadata !1088, metadata !DIExpression()), !dbg !1089 
  %call13 = call i32 @rand(), !dbg !1090 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %call13, i32* %num1, align 4, !dbg !1089 
%openFile_21 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_21, %struct.__sFILE** @file, align 8 
%temp_OpenFile_21 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_21 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_21_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_21) 
%var_21_value = load i32, i32* %num1, align 4 
%temp_KeyWord_21_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_21_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const_culry.main-num1, i64 0, i64 0)) 
%temp_ValTYpe_21_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_21_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_21_value) 
%temp_varPtr_21_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num1) 
%temp_varLine_21_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 58) 
%temp_varColnum_21_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_21 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  call void @llvm.dbg.declare(metadata i32* %num2, metadata !1091, metadata !DIExpression()), !dbg !1092 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 10, i32* %num2, align 4, !dbg !1092 
%openFile_22 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_22, %struct.__sFILE** @file, align 8 
%temp_OpenFile_22 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_22 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_22_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_22) 
%var_22_value = load i32, i32* %num2, align 4 
%temp_KeyWord_22_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_22_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const_culry.main-num2, i64 0, i64 0)) 
%temp_ValTYpe_22_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_22_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_22_value) 
%temp_varPtr_22_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num2) 
%temp_varLine_22_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 59) 
%temp_varColnum_22_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_22 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  call void @llvm.dbg.declare(metadata i32* %num3, metadata !1093, metadata !DIExpression()), !dbg !1094 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %9 = load i32, i32* %num1, align 4, !dbg !1095 
%openFile_23 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_23, %struct.__sFILE** @file, align 8 
%temp_OpenFile_23 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_23 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_23_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_23) 
%var_23_value = load i32, i32* %num1, align 4 
%temp_KeyWord_23_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_23_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const_culry.main-num1, i64 0, i64 0)) 
%temp_ValTYpe_23_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_23_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_23_value) 
%temp_varPtr_23_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num1) 
%temp_varLine_23_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 60) 
%temp_varColnum_23_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 14) 
%closeFile_23 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  %10 = load i32, i32* %num2, align 4, !dbg !1096 
%openFile_24 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_24, %struct.__sFILE** @file, align 8 
%temp_OpenFile_24 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_24 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_24_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_24) 
%var_24_value = load i32, i32* %num2, align 4 
%temp_KeyWord_24_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_ValName_24_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const_culry.main-num2, i64 0, i64 0)) 
%temp_ValTYpe_24_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_24_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_24_value) 
%temp_varPtr_24_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num2) 
%temp_varLine_24_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 60) 
%temp_varColnum_24_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 21) 
%closeFile_24 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %add = add nsw i32 %9, %10, !dbg !1097 
call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mute) 
  store i32 %add, i32* %num3, align 4, !dbg !1094 
%openFile_25 = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
store %struct.__sFILE* %openFile_25, %struct.__sFILE** @file, align 8 
%temp_OpenFile_25 = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
%thread_id_25 = call %struct._opaque_pthread_t* @pthread_self() 
%temp_ThreadID_25_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), %struct._opaque_pthread_t* %thread_id_25) 
%var_25_value = load i32, i32* %num3, align 4 
%temp_KeyWord_25_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_ValName_25_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const_culry.main-num3, i64 0, i64 0)) 
%temp_ValTYpe_25_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__const_culry.i32, i64 0, i64 0)) 
%temp_varVal_25_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_25_value) 
%temp_varPtr_25_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num3) 
%temp_varLine_25_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 60) 
%temp_varColnum_25_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %temp_OpenFile_25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 7) 
%closeFile_25 = call i32 @fclose(%struct.__sFILE* %loadfile) 
call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mute) #3 
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !1098 
  ret i32 0, !dbg !1099 
} 

; Function Attrs: argmemonly nofree nounwind willreturn 
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4 

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #2 

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) #2 

attributes #0 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn } 
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #3 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #4 = { argmemonly nofree nounwind willreturn } 

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10} 
!llvm.dbg.cu = !{!11} 
!llvm.ident = !{!983} 

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]} 
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
!11 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !12, producer: "Apple clang version 14.0.0 (clang-1400.0.29.202)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, imports: !19, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk") 
!12 = !DIFile(filename: "test.cpp", directory: "/Users/han/Github/llvm-project/build/tests") 
!13 = !{!14, !16, !17, !18} 
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64) 
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char) 
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned) 
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64) 
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64) 
!19 = !{!20, !45, !60, !65, !68, !70, !77, !83, !89, !96, !100, !104, !108, !113, !118, !123, !127, !131, !135, !140, !144, !148, !153, !157, !161, !165, !169, !174, !178, !180, !184, !186, !195, !199, !204, !208, !212, !216, !220, !222, !226, !232, !236, !240, !246, !251, !255, !258, !261, !265, !269, !272, !275, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !312, !315, !318, !321, !323, !328, !330, !334, !338, !340, !342, !346, !350, !354, !356, !360, !365, !369, !373, !375, !377, !379, !381, !383, !385, !389, !393, !398, !399, !403, !418, !422, !426, !431, !436, !442, !448, !452, !454, !458, !513, !514, !515, !521, !523, !527, !531, !535, !537, !541, !545, !549, !557, !559, !563, !567, !571, !573, !577, !581, !585, !587, !589, !591, !595, !599, !604, !608, !614, !618, !622, !624, !626, !628, !632, !636, !640, !642, !644, !648, !652, !654, !656, !660, !664, !666, !670, !672, !674, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !709, !714, !719, !724, !726, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !751, !755, !759, !761, !765, !769, !771, !772, !773, !774, !775, !780, !782, !786, !790, !794, !798, !800, !804, !808, !812, !816, !820, !824, !826, !828, !832, !837, !841, !845, !849, !853, !857, !861, !865, !869, !871, !873, !877, !879, !883, !887, !892, !894, !896, !898, !902, !906, !910, !912, !916, !918, !920, !922, !924, !928, !932, !934, !940, !945, !949, !953, !958, !963, !967, !971, !975, !979, !981} 
!20 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !21, file: !44, line: 51) 
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nullptr_t", scope: !23, file: !22, line: 23, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !25, identifier: "_ZTSNSt3__19nullptr_tE") 
!22 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__nullptr", directory: "") 
!23 = !DINamespace(name: "__1", scope: !24, exportSymbols: true) 
!24 = !DINamespace(name: "std", scope: null) 
!25 = !{!26, !27, !31, !39} 
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !21, file: !22, line: 25, baseType: !17, size: 64) 
!27 = !DISubprogram(name: "nullptr_t", scope: !21, file: !22, line: 29, type: !28, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!28 = !DISubroutineType(types: !29) 
!29 = !{null, !30} 
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!31 = !DISubprogram(name: "nullptr_t", scope: !21, file: !22, line: 30, type: !32, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!32 = !DISubroutineType(types: !33) 
!33 = !{null, !30, !34} 
!34 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !35, size: 64, extraData: !36) 
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed) 
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !21, file: !22, line: 27, size: 32, flags: DIFlagTypePassByValue, elements: !37, identifier: "_ZTSNSt3__19nullptr_t5__natE") 
!37 = !{!38} 
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__for_bool_", scope: !36, file: !22, line: 27, baseType: !35, size: 32) 
!39 = !DISubprogram(name: "operator int std::nullptr_t::__nat::*", linkageName: "_ZNKSt3__19nullptr_tcvMNS0_5__natEiEv", scope: !21, file: !22, line: 32, type: !40, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!40 = !DISubroutineType(types: !41) 
!41 = !{!34, !42} 
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21) 
!44 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/stddef.h", directory: "") 
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !46, file: !59, line: 42) 
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !47, line: 32, baseType: !48) 
!47 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mbstate_t.h", directory: "") 
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !49, line: 59, baseType: !50) 
!49 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/arm/_types.h", directory: "") 
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !49, line: 57, baseType: !51) 
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !49, line: 54, size: 1024, flags: DIFlagTypePassByValue, elements: !52, identifier: "_ZTS11__mbstate_t") 
!52 = !{!53, !57} 
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !51, file: !49, line: 55, baseType: !54, size: 1024) 
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !55) 
!55 = !{!56} 
!56 = !DISubrange(count: 128) 
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !51, file: !49, line: 56, baseType: !58, size: 64) 
!58 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed) 
!59 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__mbstate_t.h", directory: "") 
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !61, file: !64, line: 49) 
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !62, line: 35, baseType: !63) 
!62 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/14.0.0/include/stddef.h", directory: "") 
!63 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed) 
!64 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstddef", directory: "") 
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !66, file: !64, line: 50) 
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 46, baseType: !67) 
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned) 
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !66, file: !69, line: 99) 
!69 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdlib", directory: "") 
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !71, file: !69, line: 100) 
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !72, line: 86, baseType: !73) 
!72 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h", directory: "") 
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 83, size: 64, flags: DIFlagTypePassByValue, elements: !74, identifier: "_ZTS5div_t") 
!74 = !{!75, !76} 
!75 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !73, file: !72, line: 84, baseType: !35, size: 32) 
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !73, file: !72, line: 85, baseType: !35, size: 32, offset: 32) 
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !78, file: !69, line: 101) 
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !72, line: 91, baseType: !79) 
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 88, size: 128, flags: DIFlagTypePassByValue, elements: !80, identifier: "_ZTS6ldiv_t") 
!80 = !{!81, !82} 
!81 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !79, file: !72, line: 89, baseType: !63, size: 64) 
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !79, file: !72, line: 90, baseType: !63, size: 64, offset: 64) 
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !84, file: !69, line: 103) 
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !72, line: 97, baseType: !85) 
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 94, size: 128, flags: DIFlagTypePassByValue, elements: !86, identifier: "_ZTS7lldiv_t") 
!86 = !{!87, !88} 
!87 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !85, file: !72, line: 95, baseType: !58, size: 64) 
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !85, file: !72, line: 96, baseType: !58, size: 64, offset: 64) 
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !90, file: !69, line: 105) 
!90 = !DISubprogram(name: "atof", scope: !72, file: !72, line: 134, type: !91, flags: DIFlagPrototyped, spFlags: 0) 
!91 = !DISubroutineType(types: !92) 
!92 = !{!93, !94} 
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float) 
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64) 
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15) 
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !97, file: !69, line: 106) 
!97 = !DISubprogram(name: "atoi", scope: !72, file: !72, line: 135, type: !98, flags: DIFlagPrototyped, spFlags: 0) 
!98 = !DISubroutineType(types: !99) 
!99 = !{!35, !94} 
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !101, file: !69, line: 107) 
!101 = !DISubprogram(name: "atol", scope: !72, file: !72, line: 136, type: !102, flags: DIFlagPrototyped, spFlags: 0) 
!102 = !DISubroutineType(types: !103) 
!103 = !{!63, !94} 
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !105, file: !69, line: 109) 
!105 = !DISubprogram(name: "atoll", scope: !72, file: !72, line: 139, type: !106, flags: DIFlagPrototyped, spFlags: 0) 
!106 = !DISubroutineType(types: !107) 
!107 = !{!58, !94} 
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !109, file: !69, line: 111) 
!109 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !72, file: !72, line: 165, type: !110, flags: DIFlagPrototyped, spFlags: 0) 
!110 = !DISubroutineType(types: !111) 
!111 = !{!93, !94, !112} 
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64) 
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !114, file: !69, line: 112) 
!114 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !72, file: !72, line: 166, type: !115, flags: DIFlagPrototyped, spFlags: 0) 
!115 = !DISubroutineType(types: !116) 
!116 = !{!117, !94, !112} 
!117 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float) 
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !119, file: !69, line: 113) 
!119 = !DISubprogram(name: "strtold", scope: !72, file: !72, line: 169, type: !120, flags: DIFlagPrototyped, spFlags: 0) 
!120 = !DISubroutineType(types: !121) 
!121 = !{!122, !94, !112} 
!122 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float) 
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !124, file: !69, line: 114) 
!124 = !DISubprogram(name: "strtol", scope: !72, file: !72, line: 167, type: !125, flags: DIFlagPrototyped, spFlags: 0) 
!125 = !DISubroutineType(types: !126) 
!126 = !{!63, !94, !112, !35} 
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !128, file: !69, line: 116) 
!128 = !DISubprogram(name: "strtoll", scope: !72, file: !72, line: 172, type: !129, flags: DIFlagPrototyped, spFlags: 0) 
!129 = !DISubroutineType(types: !130) 
!130 = !{!58, !94, !112, !35} 
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !132, file: !69, line: 118) 
!132 = !DISubprogram(name: "strtoul", scope: !72, file: !72, line: 175, type: !133, flags: DIFlagPrototyped, spFlags: 0) 
!133 = !DISubroutineType(types: !134) 
!134 = !{!67, !94, !112, !35} 
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !136, file: !69, line: 120) 
!136 = !DISubprogram(name: "strtoull", scope: !72, file: !72, line: 178, type: !137, flags: DIFlagPrototyped, spFlags: 0) 
!137 = !DISubroutineType(types: !138) 
!138 = !{!139, !94, !112, !35} 
!139 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned) 
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !141, file: !69, line: 122) 
!141 = !DISubprogram(name: "rand", scope: !72, file: !72, line: 162, type: !142, flags: DIFlagPrototyped, spFlags: 0) 
!142 = !DISubroutineType(types: !143) 
!143 = !{!35} 
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !145, file: !69, line: 123) 
!145 = !DISubprogram(name: "srand", scope: !72, file: !72, line: 164, type: !146, flags: DIFlagPrototyped, spFlags: 0) 
!146 = !DISubroutineType(types: !147) 
!147 = !{null, !16} 
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !149, file: !69, line: 124) 
!149 = !DISubprogram(name: "calloc", scope: !150, file: !150, line: 41, type: !151, flags: DIFlagPrototyped, spFlags: 0) 
!150 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h", directory: "") 
!151 = !DISubroutineType(types: !152) 
!152 = !{!17, !66, !66} 
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !154, file: !69, line: 125) 
!154 = !DISubprogram(name: "free", scope: !150, file: !150, line: 42, type: !155, flags: DIFlagPrototyped, spFlags: 0) 
!155 = !DISubroutineType(types: !156) 
!156 = !{null, !17} 
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !158, file: !69, line: 126) 
!158 = !DISubprogram(name: "malloc", scope: !150, file: !150, line: 40, type: !159, flags: DIFlagPrototyped, spFlags: 0) 
!159 = !DISubroutineType(types: !160) 
!160 = !{!17, !66} 
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !162, file: !69, line: 127) 
!162 = !DISubprogram(name: "realloc", scope: !150, file: !150, line: 43, type: !163, flags: DIFlagPrototyped, spFlags: 0) 
!163 = !DISubroutineType(types: !164) 
!164 = !{!17, !17, !66} 
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !166, file: !69, line: 128) 
!166 = !DISubprogram(name: "abort", scope: !72, file: !72, line: 131, type: !167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!167 = !DISubroutineType(types: !168) 
!168 = !{null} 
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !170, file: !69, line: 129) 
!170 = !DISubprogram(name: "atexit", scope: !72, file: !72, line: 133, type: !171, flags: DIFlagPrototyped, spFlags: 0) 
!171 = !DISubroutineType(types: !172) 
!172 = !{!35, !173} 
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64) 
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !175, file: !69, line: 130) 
!175 = !DISubprogram(name: "exit", scope: !72, file: !72, line: 145, type: !176, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!176 = !DISubroutineType(types: !177) 
!177 = !{null, !35} 
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !179, file: !69, line: 131) 
!179 = !DISubprogram(name: "_Exit", scope: !72, file: !72, line: 191, type: !176, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !181, file: !69, line: 133) 
!181 = !DISubprogram(name: "getenv", scope: !72, file: !72, line: 147, type: !182, flags: DIFlagPrototyped, spFlags: 0) 
!182 = !DISubroutineType(types: !183) 
!183 = !{!14, !94} 
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !185, file: !69, line: 134) 
!185 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !72, file: !72, line: 184, type: !98, flags: DIFlagPrototyped, spFlags: 0) 
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !187, file: !69, line: 136) 
!187 = !DISubprogram(name: "bsearch", scope: !72, file: !72, line: 141, type: !188, flags: DIFlagPrototyped, spFlags: 0) 
!188 = !DISubroutineType(types: !189) 
!189 = !{!17, !190, !190, !66, !66, !192} 
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64) 
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null) 
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64) 
!193 = !DISubroutineType(types: !194) 
!194 = !{!35, !190, !190} 
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !196, file: !69, line: 137) 
!196 = !DISubprogram(name: "qsort", scope: !72, file: !72, line: 160, type: !197, flags: DIFlagPrototyped, spFlags: 0) 
!197 = !DISubroutineType(types: !198) 
!198 = !{null, !17, !66, !66, !192} 
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !200, file: !69, line: 138) 
!200 = !DISubprogram(name: "abs", linkageName: "_ZL3abse", scope: !201, file: !201, line: 127, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!201 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/stdlib.h", directory: "") 
!202 = !DISubroutineType(types: !203) 
!203 = !{!122, !122} 
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !205, file: !69, line: 139) 
!205 = !DISubprogram(name: "labs", scope: !72, file: !72, line: 148, type: !206, flags: DIFlagPrototyped, spFlags: 0) 
!206 = !DISubroutineType(types: !207) 
!207 = !{!63, !63} 
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !209, file: !69, line: 141) 
!209 = !DISubprogram(name: "llabs", scope: !72, file: !72, line: 152, type: !210, flags: DIFlagPrototyped, spFlags: 0) 
!210 = !DISubroutineType(types: !211) 
!211 = !{!58, !58} 
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !213, file: !69, line: 143) 
!213 = !DISubprogram(name: "div", linkageName: "_ZL3divxx", scope: !201, file: !201, line: 146, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!214 = !DISubroutineType(types: !215) 
!215 = !{!84, !58, !58} 
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !217, file: !69, line: 144) 
!217 = !DISubprogram(name: "ldiv", scope: !72, file: !72, line: 149, type: !218, flags: DIFlagPrototyped, spFlags: 0) 
!218 = !DISubroutineType(types: !219) 
!219 = !{!78, !63, !63} 
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !221, file: !69, line: 146) 
!221 = !DISubprogram(name: "lldiv", scope: !72, file: !72, line: 153, type: !214, flags: DIFlagPrototyped, spFlags: 0) 
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !223, file: !69, line: 148) 
!223 = !DISubprogram(name: "mblen", scope: !72, file: !72, line: 156, type: !224, flags: DIFlagPrototyped, spFlags: 0) 
!224 = !DISubroutineType(types: !225) 
!225 = !{!35, !94, !66} 
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !227, file: !69, line: 149) 
!227 = !DISubprogram(name: "mbtowc", scope: !72, file: !72, line: 158, type: !228, flags: DIFlagPrototyped, spFlags: 0) 
!228 = !DISubroutineType(types: !229) 
!229 = !{!35, !230, !94, !66} 
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64) 
!231 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed) 
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !233, file: !69, line: 150) 
!233 = !DISubprogram(name: "wctomb", scope: !72, file: !72, line: 188, type: !234, flags: DIFlagPrototyped, spFlags: 0) 
!234 = !DISubroutineType(types: !235) 
!235 = !{!35, !14, !231} 
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !237, file: !69, line: 151) 
!237 = !DISubprogram(name: "mbstowcs", scope: !72, file: !72, line: 157, type: !238, flags: DIFlagPrototyped, spFlags: 0) 
!238 = !DISubroutineType(types: !239) 
!239 = !{!66, !230, !94, !66} 
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !241, file: !69, line: 152) 
!241 = !DISubprogram(name: "wcstombs", scope: !72, file: !72, line: 187, type: !242, flags: DIFlagPrototyped, spFlags: 0) 
!242 = !DISubroutineType(types: !243) 
!243 = !{!66, !14, !244, !66} 
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64) 
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231) 
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !247, file: !250, line: 152) 
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !248, line: 30, baseType: !249) 
!248 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h", directory: "") 
!249 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char) 
!250 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdint", directory: "") 
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !252, file: !250, line: 153) 
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !253, line: 30, baseType: !254) 
!253 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h", directory: "") 
!254 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed) 
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !256, file: !250, line: 154) 
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !257, line: 30, baseType: !35) 
!257 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "") 
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !259, file: !250, line: 155) 
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !260, line: 30, baseType: !58) 
!260 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h", directory: "") 
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !262, file: !250, line: 157) 
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !263, line: 31, baseType: !264) 
!263 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "") 
!264 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char) 
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !266, file: !250, line: 158) 
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !267, line: 31, baseType: !268) 
!267 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "") 
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned) 
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !270, file: !250, line: 159) 
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !271, line: 31, baseType: !16) 
!271 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "") 
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !273, file: !250, line: 160) 
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !274, line: 31, baseType: !139) 
!274 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "") 
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !276, file: !250, line: 162) 
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !277, line: 29, baseType: !247) 
!277 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h", directory: "") 
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !279, file: !250, line: 163) 
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !277, line: 30, baseType: !252) 
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !281, file: !250, line: 164) 
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !277, line: 31, baseType: !256) 
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !283, file: !250, line: 165) 
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !277, line: 32, baseType: !259) 
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !285, file: !250, line: 167) 
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !277, line: 33, baseType: !262) 
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !287, file: !250, line: 168) 
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !277, line: 34, baseType: !266) 
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !289, file: !250, line: 169) 
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !277, line: 35, baseType: !270) 
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !291, file: !250, line: 170) 
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !277, line: 36, baseType: !273) 
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !293, file: !250, line: 172) 
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !277, line: 40, baseType: !247) 
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !295, file: !250, line: 173) 
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !277, line: 41, baseType: !252) 
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !297, file: !250, line: 174) 
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !277, line: 42, baseType: !256) 
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !299, file: !250, line: 175) 
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !277, line: 43, baseType: !259) 
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !301, file: !250, line: 177) 
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !277, line: 44, baseType: !262) 
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !303, file: !250, line: 178) 
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !277, line: 45, baseType: !266) 
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !305, file: !250, line: 179) 
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !277, line: 46, baseType: !270) 
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !307, file: !250, line: 180) 
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !277, line: 47, baseType: !273) 
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !309, file: !250, line: 182) 
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !310, line: 32, baseType: !311) 
!310 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h", directory: "") 
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !49, line: 27, baseType: !63) 
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !313, file: !250, line: 183) 
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !314, line: 34, baseType: !67) 
!314 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "") 
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !316, file: !250, line: 185) 
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !317, line: 32, baseType: !63) 
!317 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h", directory: "") 
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !319, file: !250, line: 186) 
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !320, line: 32, baseType: !67) 
!320 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "") 
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !66, file: !322, line: 68) 
!322 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstring", directory: "") 
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !324, file: !322, line: 69) 
!324 = !DISubprogram(name: "memcpy", scope: !325, file: !325, line: 72, type: !326, flags: DIFlagPrototyped, spFlags: 0) 
!325 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h", directory: "") 
!326 = !DISubroutineType(types: !327) 
!327 = !{!17, !17, !190, !66} 
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !329, file: !322, line: 70) 
!329 = !DISubprogram(name: "memmove", scope: !325, file: !325, line: 73, type: !326, flags: DIFlagPrototyped, spFlags: 0) 
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !331, file: !322, line: 71) 
!331 = !DISubprogram(name: "strcpy", scope: !325, file: !325, line: 79, type: !332, flags: DIFlagPrototyped, spFlags: 0) 
!332 = !DISubroutineType(types: !333) 
!333 = !{!14, !14, !94} 
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !335, file: !322, line: 72) 
!335 = !DISubprogram(name: "strncpy", scope: !325, file: !325, line: 85, type: !336, flags: DIFlagPrototyped, spFlags: 0) 
!336 = !DISubroutineType(types: !337) 
!337 = !{!14, !14, !94, !66} 
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !339, file: !322, line: 73) 
!339 = !DISubprogram(name: "strcat", scope: !325, file: !325, line: 75, type: !332, flags: DIFlagPrototyped, spFlags: 0) 
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !341, file: !322, line: 74) 
!341 = !DISubprogram(name: "strncat", scope: !325, file: !325, line: 83, type: !336, flags: DIFlagPrototyped, spFlags: 0) 
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !343, file: !322, line: 75) 
!343 = !DISubprogram(name: "memcmp", scope: !325, file: !325, line: 71, type: !344, flags: DIFlagPrototyped, spFlags: 0) 
!344 = !DISubroutineType(types: !345) 
!345 = !{!35, !190, !190, !66} 
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !347, file: !322, line: 76) 
!347 = !DISubprogram(name: "strcmp", scope: !325, file: !325, line: 77, type: !348, flags: DIFlagPrototyped, spFlags: 0) 
!348 = !DISubroutineType(types: !349) 
!349 = !{!35, !94, !94} 
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !351, file: !322, line: 77) 
!351 = !DISubprogram(name: "strncmp", scope: !325, file: !325, line: 84, type: !352, flags: DIFlagPrototyped, spFlags: 0) 
!352 = !DISubroutineType(types: !353) 
!353 = !{!35, !94, !94, !66} 
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !355, file: !322, line: 78) 
!355 = !DISubprogram(name: "strcoll", scope: !325, file: !325, line: 78, type: !348, flags: DIFlagPrototyped, spFlags: 0) 
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !357, file: !322, line: 79) 
!357 = !DISubprogram(name: "strxfrm", scope: !325, file: !325, line: 91, type: !358, flags: DIFlagPrototyped, spFlags: 0) 
!358 = !DISubroutineType(types: !359) 
!359 = !{!66, !14, !94, !66} 
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !361, file: !322, line: 80) 
!361 = !DISubprogram(name: "memchr", linkageName: "_ZL6memchrUa9enable_ifIXLb1EEEPvim", scope: !362, file: !362, line: 98, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!362 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/string.h", directory: "") 
!363 = !DISubroutineType(types: !364) 
!364 = !{!17, !17, !35, !66} 
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !366, file: !322, line: 81) 
!366 = !DISubprogram(name: "strchr", linkageName: "_ZL6strchrUa9enable_ifIXLb1EEEPci", scope: !362, file: !362, line: 77, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!367 = !DISubroutineType(types: !368) 
!368 = !{!14, !14, !35} 
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !370, file: !322, line: 82) 
!370 = !DISubprogram(name: "strcspn", scope: !325, file: !325, line: 80, type: !371, flags: DIFlagPrototyped, spFlags: 0) 
!371 = !DISubroutineType(types: !372) 
!372 = !{!66, !94, !94} 
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !374, file: !322, line: 83) 
!374 = !DISubprogram(name: "strpbrk", linkageName: "_ZL7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !362, file: !362, line: 84, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !376, file: !322, line: 84) 
!376 = !DISubprogram(name: "strrchr", linkageName: "_ZL7strrchrUa9enable_ifIXLb1EEEPci", scope: !362, file: !362, line: 91, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !378, file: !322, line: 85) 
!378 = !DISubprogram(name: "strspn", scope: !325, file: !325, line: 88, type: !371, flags: DIFlagPrototyped, spFlags: 0) 
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !380, file: !322, line: 86) 
!380 = !DISubprogram(name: "strstr", linkageName: "_ZL6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !362, file: !362, line: 105, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !382, file: !322, line: 88) 
!382 = !DISubprogram(name: "strtok", scope: !325, file: !325, line: 90, type: !332, flags: DIFlagPrototyped, spFlags: 0) 
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !384, file: !322, line: 90) 
!384 = !DISubprogram(name: "memset", scope: !325, file: !325, line: 74, type: !363, flags: DIFlagPrototyped, spFlags: 0) 
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !386, file: !322, line: 91) 
!386 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !325, file: !325, line: 81, type: !387, flags: DIFlagPrototyped, spFlags: 0) 
!387 = !DISubroutineType(types: !388) 
!388 = !{!14, !35} 
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !390, file: !322, line: 92) 
!390 = !DISubprogram(name: "strlen", scope: !325, file: !325, line: 82, type: !391, flags: DIFlagPrototyped, spFlags: 0) 
!391 = !DISubroutineType(types: !392) 
!392 = !{!66, !94} 
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !394, file: !397, line: 75) 
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !395, line: 31, baseType: !396) 
!395 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h", directory: "") 
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !49, line: 95, baseType: !67) 
!397 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/ctime", directory: "") 
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !66, file: !397, line: 77) 
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !400, file: !397, line: 79) 
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !401, line: 31, baseType: !402) 
!401 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h", directory: "") 
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !49, line: 98, baseType: !63) 
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !404, file: !397, line: 80) 
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !405, line: 75, size: 448, flags: DIFlagTypePassByValue, elements: !406, identifier: "_ZTS2tm") 
!405 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h", directory: "") 
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417} 
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !404, file: !405, line: 76, baseType: !35, size: 32) 
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !404, file: !405, line: 77, baseType: !35, size: 32, offset: 32) 
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !404, file: !405, line: 78, baseType: !35, size: 32, offset: 64) 
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !404, file: !405, line: 79, baseType: !35, size: 32, offset: 96) 
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !404, file: !405, line: 80, baseType: !35, size: 32, offset: 128) 
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !404, file: !405, line: 81, baseType: !35, size: 32, offset: 160) 
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !404, file: !405, line: 82, baseType: !35, size: 32, offset: 192) 
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !404, file: !405, line: 83, baseType: !35, size: 32, offset: 224) 
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !404, file: !405, line: 84, baseType: !35, size: 32, offset: 256) 
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !404, file: !405, line: 85, baseType: !63, size: 64, offset: 320) 
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !404, file: !405, line: 86, baseType: !14, size: 64, offset: 384) 
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !419, file: !397, line: 84) 
!419 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !405, file: !405, line: 109, type: !420, flags: DIFlagPrototyped, spFlags: 0) 
!420 = !DISubroutineType(types: !421) 
!421 = !{!394} 
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !423, file: !397, line: 85) 
!423 = !DISubprogram(name: "difftime", scope: !405, file: !405, line: 111, type: !424, flags: DIFlagPrototyped, spFlags: 0) 
!424 = !DISubroutineType(types: !425) 
!425 = !{!93, !400, !400} 
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !427, file: !397, line: 86) 
!427 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !405, file: !405, line: 115, type: !428, flags: DIFlagPrototyped, spFlags: 0) 
!428 = !DISubroutineType(types: !429) 
!429 = !{!400, !430} 
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64) 
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !432, file: !397, line: 87) 
!432 = !DISubprogram(name: "time", scope: !405, file: !405, line: 118, type: !433, flags: DIFlagPrototyped, spFlags: 0) 
!433 = !DISubroutineType(types: !434) 
!434 = !{!400, !435} 
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64) 
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !437, file: !397, line: 89) 
!437 = !DISubprogram(name: "asctime", scope: !405, file: !405, line: 108, type: !438, flags: DIFlagPrototyped, spFlags: 0) 
!438 = !DISubroutineType(types: !439) 
!439 = !{!14, !440} 
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64) 
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404) 
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !443, file: !397, line: 90) 
!443 = !DISubprogram(name: "ctime", scope: !405, file: !405, line: 110, type: !444, flags: DIFlagPrototyped, spFlags: 0) 
!444 = !DISubroutineType(types: !445) 
!445 = !{!14, !446} 
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64) 
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400) 
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !449, file: !397, line: 91) 
!449 = !DISubprogram(name: "gmtime", scope: !405, file: !405, line: 113, type: !450, flags: DIFlagPrototyped, spFlags: 0) 
!450 = !DISubroutineType(types: !451) 
!451 = !{!430, !446} 
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !453, file: !397, line: 92) 
!453 = !DISubprogram(name: "localtime", scope: !405, file: !405, line: 114, type: !450, flags: DIFlagPrototyped, spFlags: 0) 
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !455, file: !397, line: 94) 
!455 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !405, file: !405, line: 116, type: !456, flags: DIFlagPrototyped, spFlags: 0) 
!456 = !DISubroutineType(types: !457) 
!457 = !{!66, !14, !66, !94, !440} 
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !459, file: !512, line: 107) 
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !460, line: 157, baseType: !461) 
!460 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h", directory: "") 
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !460, line: 126, size: 1216, flags: DIFlagTypePassByValue, elements: !462, identifier: "_ZTS7__sFILE") 
!462 = !{!463, !465, !466, !467, !468, !469, !474, !475, !476, !480, !484, !492, !496, !497, !500, !501, !505, !509, !510, !511} 
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !461, file: !460, line: 127, baseType: !464, size: 64) 
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64) 
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !461, file: !460, line: 128, baseType: !35, size: 32, offset: 64) 
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !461, file: !460, line: 129, baseType: !35, size: 32, offset: 96) 
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !461, file: !460, line: 130, baseType: !254, size: 16, offset: 128) 
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !461, file: !460, line: 131, baseType: !254, size: 16, offset: 144) 
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !461, file: !460, line: 132, baseType: !470, size: 128, offset: 192) 
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !460, line: 92, size: 128, flags: DIFlagTypePassByValue, elements: !471, identifier: "_ZTS6__sbuf") 
!471 = !{!472, !473} 
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !470, file: !460, line: 93, baseType: !464, size: 64) 
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !470, file: !460, line: 94, baseType: !35, size: 32, offset: 64) 
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !461, file: !460, line: 133, baseType: !35, size: 32, offset: 320) 
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !461, file: !460, line: 136, baseType: !17, size: 64, offset: 384) 
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !461, file: !460, line: 137, baseType: !477, size: 64, offset: 448) 
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64) 
!478 = !DISubroutineType(types: !479) 
!479 = !{!35, !17} 
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !461, file: !460, line: 138, baseType: !481, size: 64, offset: 512) 
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64) 
!482 = !DISubroutineType(types: !483) 
!483 = !{!35, !17, !14, !35} 
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !461, file: !460, line: 139, baseType: !485, size: 64, offset: 576) 
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64) 
!486 = !DISubroutineType(types: !487) 
!487 = !{!488, !17, !488, !35} 
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !460, line: 81, baseType: !489) 
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !490, line: 71, baseType: !491) 
!490 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "") 
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 24, baseType: !58) 
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !461, file: !460, line: 140, baseType: !493, size: 64, offset: 640) 
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64) 
!494 = !DISubroutineType(types: !495) 
!495 = !{!35, !17, !94, !35} 
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !461, file: !460, line: 143, baseType: !470, size: 128, offset: 704) 
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !461, file: !460, line: 144, baseType: !498, size: 64, offset: 832) 
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64) 
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !460, line: 98, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8__sFILEX") 
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !461, file: !460, line: 145, baseType: !35, size: 32, offset: 896) 
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !461, file: !460, line: 148, baseType: !502, size: 24, offset: 928) 
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 24, elements: !503) 
!503 = !{!504} 
!504 = !DISubrange(count: 3) 
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !461, file: !460, line: 149, baseType: !506, size: 8, offset: 952) 
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 8, elements: !507) 
!507 = !{!508} 
!508 = !DISubrange(count: 1) 
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !461, file: !460, line: 152, baseType: !470, size: 128, offset: 960) 
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !461, file: !460, line: 155, baseType: !35, size: 32, offset: 1088) 
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !461, file: !460, line: 156, baseType: !488, size: 64, offset: 1152) 
!512 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdio", directory: "") 
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !488, file: !512, line: 108) 
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !66, file: !512, line: 109) 
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !516, file: !512, line: 111) 
!516 = !DISubprogram(name: "fclose", scope: !517, file: !517, line: 143, type: !518, flags: DIFlagPrototyped, spFlags: 0) 
!517 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h", directory: "") 
!518 = !DISubroutineType(types: !519) 
!519 = !{!35, !520} 
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64) 
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !522, file: !512, line: 112) 
!522 = !DISubprogram(name: "fflush", scope: !517, file: !517, line: 146, type: !518, flags: DIFlagPrototyped, spFlags: 0) 
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !524, file: !512, line: 113) 
!524 = !DISubprogram(name: "setbuf", scope: !517, file: !517, line: 183, type: !525, flags: DIFlagPrototyped, spFlags: 0) 
!525 = !DISubroutineType(types: !526) 
!526 = !{null, !520, !14} 
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !528, file: !512, line: 114) 
!528 = !DISubprogram(name: "setvbuf", scope: !517, file: !517, line: 184, type: !529, flags: DIFlagPrototyped, spFlags: 0) 
!529 = !DISubroutineType(types: !530) 
!530 = !{!35, !520, !14, !35, !66} 
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !532, file: !512, line: 115) 
!532 = !DISubprogram(name: "fprintf", scope: !517, file: !517, line: 155, type: !533, flags: DIFlagPrototyped, spFlags: 0) 
!533 = !DISubroutineType(types: !534) 
!534 = !{!35, !520, !94, null} 
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !536, file: !512, line: 116) 
!536 = !DISubprogram(name: "fscanf", scope: !517, file: !517, line: 161, type: !533, flags: DIFlagPrototyped, spFlags: 0) 
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !538, file: !512, line: 117) 
!538 = !DISubprogram(name: "snprintf", scope: !517, file: !517, line: 344, type: !539, flags: DIFlagPrototyped, spFlags: 0) 
!539 = !DISubroutineType(types: !540) 
!540 = !{!35, !14, !66, !94, null} 
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !542, file: !512, line: 118) 
!542 = !DISubprogram(name: "sprintf", scope: !517, file: !517, line: 190, type: !543, flags: DIFlagPrototyped, spFlags: 0) 
!543 = !DISubroutineType(types: !544) 
!544 = !{!35, !14, !94, null} 
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !546, file: !512, line: 119) 
!546 = !DISubprogram(name: "sscanf", scope: !517, file: !517, line: 192, type: !547, flags: DIFlagPrototyped, spFlags: 0) 
!547 = !DISubroutineType(types: !548) 
!548 = !{!35, !94, !94, null} 
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !550, file: !512, line: 120) 
!550 = !DISubprogram(name: "vfprintf", scope: !517, file: !517, line: 202, type: !551, flags: DIFlagPrototyped, spFlags: 0) 
!551 = !DISubroutineType(types: !552) 
!552 = !{!35, !520, !94, !553} 
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !554, line: 32, baseType: !555) 
!554 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h", directory: "") 
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !49, line: 76, baseType: !556) 
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !12, baseType: !14) 
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !558, file: !512, line: 121) 
!558 = !DISubprogram(name: "vfscanf", scope: !517, file: !517, line: 345, type: !551, flags: DIFlagPrototyped, spFlags: 0) 
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !560, file: !512, line: 122) 
!560 = !DISubprogram(name: "vsscanf", scope: !517, file: !517, line: 348, type: !561, flags: DIFlagPrototyped, spFlags: 0) 
!561 = !DISubroutineType(types: !562) 
!562 = !{!35, !94, !94, !553} 
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !564, file: !512, line: 123) 
!564 = !DISubprogram(name: "vsnprintf", scope: !517, file: !517, line: 347, type: !565, flags: DIFlagPrototyped, spFlags: 0) 
!565 = !DISubroutineType(types: !566) 
!566 = !{!35, !14, !66, !94, !553} 
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !568, file: !512, line: 124) 
!568 = !DISubprogram(name: "vsprintf", scope: !517, file: !517, line: 209, type: !569, flags: DIFlagPrototyped, spFlags: 0) 
!569 = !DISubroutineType(types: !570) 
!570 = !{!35, !14, !94, !553} 
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !572, file: !512, line: 125) 
!572 = !DISubprogram(name: "fgetc", scope: !517, file: !517, line: 147, type: !518, flags: DIFlagPrototyped, spFlags: 0) 
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !574, file: !512, line: 126) 
!574 = !DISubprogram(name: "fgets", scope: !517, file: !517, line: 149, type: !575, flags: DIFlagPrototyped, spFlags: 0) 
!575 = !DISubroutineType(types: !576) 
!576 = !{!14, !14, !35, !520} 
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !578, file: !512, line: 127) 
!578 = !DISubprogram(name: "fputc", scope: !517, file: !517, line: 156, type: !579, flags: DIFlagPrototyped, spFlags: 0) 
!579 = !DISubroutineType(types: !580) 
!580 = !{!35, !35, !520} 
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !582, file: !512, line: 128) 
!582 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !517, file: !517, line: 157, type: !583, flags: DIFlagPrototyped, spFlags: 0) 
!583 = !DISubroutineType(types: !584) 
!584 = !{!35, !94, !520} 
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !586, file: !512, line: 129) 
!586 = !DISubprogram(name: "getc", scope: !517, file: !517, line: 166, type: !518, flags: DIFlagPrototyped, spFlags: 0) 
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !588, file: !512, line: 130) 
!588 = !DISubprogram(name: "putc", scope: !517, file: !517, line: 176, type: !579, flags: DIFlagPrototyped, spFlags: 0) 
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !590, file: !512, line: 131) 
!590 = !DISubprogram(name: "ungetc", scope: !517, file: !517, line: 201, type: !579, flags: DIFlagPrototyped, spFlags: 0) 
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !592, file: !512, line: 132) 
!592 = !DISubprogram(name: "fread", scope: !517, file: !517, line: 158, type: !593, flags: DIFlagPrototyped, spFlags: 0) 
!593 = !DISubroutineType(types: !594) 
!594 = !{!66, !17, !66, !66, !520} 
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !596, file: !512, line: 133) 
!596 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !517, file: !517, line: 165, type: !597, flags: DIFlagPrototyped, spFlags: 0) 
!597 = !DISubroutineType(types: !598) 
!598 = !{!66, !190, !66, !66, !520} 
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !600, file: !512, line: 135) 
!600 = !DISubprogram(name: "fgetpos", scope: !517, file: !517, line: 148, type: !601, flags: DIFlagPrototyped, spFlags: 0) 
!601 = !DISubroutineType(types: !602) 
!602 = !{!35, !520, !603} 
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64) 
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !605, file: !512, line: 137) 
!605 = !DISubprogram(name: "fseek", scope: !517, file: !517, line: 162, type: !606, flags: DIFlagPrototyped, spFlags: 0) 
!606 = !DISubroutineType(types: !607) 
!607 = !{!35, !520, !63, !35} 
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !609, file: !512, line: 139) 
!609 = !DISubprogram(name: "fsetpos", scope: !517, file: !517, line: 163, type: !610, flags: DIFlagPrototyped, spFlags: 0) 
!610 = !DISubroutineType(types: !611) 
!611 = !{!35, !520, !612} 
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64) 
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488) 
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !615, file: !512, line: 141) 
!615 = !DISubprogram(name: "ftell", scope: !517, file: !517, line: 164, type: !616, flags: DIFlagPrototyped, spFlags: 0) 
!616 = !DISubroutineType(types: !617) 
!617 = !{!63, !520} 
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !619, file: !512, line: 142) 
!619 = !DISubprogram(name: "rewind", scope: !517, file: !517, line: 181, type: !620, flags: DIFlagPrototyped, spFlags: 0) 
!620 = !DISubroutineType(types: !621) 
!621 = !{null, !520} 
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !623, file: !512, line: 143) 
!623 = !DISubprogram(name: "clearerr", scope: !517, file: !517, line: 142, type: !620, flags: DIFlagPrototyped, spFlags: 0) 
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !625, file: !512, line: 144) 
!625 = !DISubprogram(name: "feof", scope: !517, file: !517, line: 144, type: !518, flags: DIFlagPrototyped, spFlags: 0) 
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !627, file: !512, line: 145) 
!627 = !DISubprogram(name: "ferror", scope: !517, file: !517, line: 145, type: !518, flags: DIFlagPrototyped, spFlags: 0) 
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !629, file: !512, line: 146) 
!629 = !DISubprogram(name: "perror", scope: !517, file: !517, line: 174, type: !630, flags: DIFlagPrototyped, spFlags: 0) 
!630 = !DISubroutineType(types: !631) 
!631 = !{null, !94} 
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !633, file: !512, line: 149) 
!633 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !517, file: !517, line: 153, type: !634, flags: DIFlagPrototyped, spFlags: 0) 
!634 = !DISubroutineType(types: !635) 
!635 = !{!520, !94, !94} 
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !637, file: !512, line: 150) 
!637 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !517, file: !517, line: 159, type: !638, flags: DIFlagPrototyped, spFlags: 0) 
!638 = !DISubroutineType(types: !639) 
!639 = !{!520, !94, !94, !520} 
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !641, file: !512, line: 152) 
!641 = !DISubprogram(name: "remove", scope: !517, file: !517, line: 179, type: !98, flags: DIFlagPrototyped, spFlags: 0) 
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !643, file: !512, line: 154) 
!643 = !DISubprogram(name: "rename", scope: !517, file: !517, line: 180, type: !348, flags: DIFlagPrototyped, spFlags: 0) 
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !645, file: !512, line: 155) 
!645 = !DISubprogram(name: "tmpfile", scope: !517, file: !517, line: 193, type: !646, flags: DIFlagPrototyped, spFlags: 0) 
!646 = !DISubroutineType(types: !647) 
!647 = !{!520} 
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !649, file: !512, line: 156) 
!649 = !DISubprogram(name: "tmpnam", scope: !517, file: !517, line: 199, type: !650, flags: DIFlagPrototyped, spFlags: 0) 
!650 = !DISubroutineType(types: !651) 
!651 = !{!14, !14} 
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !653, file: !512, line: 160) 
!653 = !DISubprogram(name: "getchar", scope: !517, file: !517, line: 167, type: !142, flags: DIFlagPrototyped, spFlags: 0) 
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !655, file: !512, line: 162) 
!655 = !DISubprogram(name: "gets", scope: !517, file: !517, line: 172, type: !650, flags: DIFlagPrototyped, spFlags: 0) 
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !657, file: !512, line: 164) 
!657 = !DISubprogram(name: "scanf", scope: !517, file: !517, line: 182, type: !658, flags: DIFlagPrototyped, spFlags: 0) 
!658 = !DISubroutineType(types: !659) 
!659 = !{!35, !94, null} 
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !661, file: !512, line: 165) 
!661 = !DISubprogram(name: "vscanf", scope: !517, file: !517, line: 346, type: !662, flags: DIFlagPrototyped, spFlags: 0) 
!662 = !DISubroutineType(types: !663) 
!663 = !{!35, !94, !553} 
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !665, file: !512, line: 169) 
!665 = !DISubprogram(name: "printf", scope: !517, file: !517, line: 175, type: !658, flags: DIFlagPrototyped, spFlags: 0) 
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !667, file: !512, line: 170) 
!667 = !DISubprogram(name: "putchar", scope: !517, file: !517, line: 177, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!668 = !DISubroutineType(types: !669) 
!669 = !{!35, !35} 
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !671, file: !512, line: 171) 
!671 = !DISubprogram(name: "puts", scope: !517, file: !517, line: 178, type: !98, flags: DIFlagPrototyped, spFlags: 0) 
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !673, file: !512, line: 172) 
!673 = !DISubprogram(name: "vprintf", scope: !517, file: !517, line: 203, type: !662, flags: DIFlagPrototyped, spFlags: 0) 
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !675, file: !677, line: 103) 
!675 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !676, file: !676, line: 212, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!676 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctype.h", directory: "") 
!677 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cctype", directory: "") 
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !679, file: !677, line: 104) 
!679 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !676, file: !676, line: 218, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !681, file: !677, line: 105) 
!681 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !676, file: !676, line: 224, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !683, file: !677, line: 106) 
!683 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !676, file: !676, line: 230, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !685, file: !677, line: 107) 
!685 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !676, file: !676, line: 237, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !687, file: !677, line: 108) 
!687 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !676, file: !676, line: 243, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !689, file: !677, line: 109) 
!689 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !676, file: !676, line: 249, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !691, file: !677, line: 110) 
!691 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !676, file: !676, line: 255, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !693, file: !677, line: 111) 
!693 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !676, file: !676, line: 261, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !695, file: !677, line: 112) 
!695 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !676, file: !676, line: 267, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !697, file: !677, line: 113) 
!697 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !676, file: !676, line: 273, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !699, file: !677, line: 114) 
!699 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !676, file: !676, line: 280, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !701, file: !677, line: 115) 
!701 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !676, file: !676, line: 292, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !703, file: !677, line: 116) 
!703 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !676, file: !676, line: 298, type: !668, flags: DIFlagPrototyped, spFlags: 0) 
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !705, file: !708, line: 63) 
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !706, line: 32, baseType: !707) 
!706 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h", directory: "") 
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !49, line: 90, baseType: !35) 
!708 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cwctype", directory: "") 
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !710, file: !708, line: 64) 
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !711, line: 32, baseType: !712) 
!711 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_wctrans_t.h", directory: "") 
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !713, line: 41, baseType: !35) 
!713 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h", directory: "") 
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !715, file: !708, line: 65) 
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !716, line: 32, baseType: !717) 
!716 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_wctype_t.h", directory: "") 
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !713, line: 43, baseType: !718) 
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 23, baseType: !16) 
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !720, file: !708, line: 66) 
!720 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !721, file: !721, line: 51, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!721 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_wctype.h", directory: "") 
!722 = !DISubroutineType(types: !723) 
!723 = !{!35, !705} 
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !725, file: !708, line: 67) 
!725 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !721, file: !721, line: 57, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !727, file: !708, line: 68) 
!727 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !728, file: !728, line: 50, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!728 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/wctype.h", directory: "") 
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !730, file: !708, line: 69) 
!730 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !721, file: !721, line: 63, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !732, file: !708, line: 70) 
!732 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !721, file: !721, line: 75, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !734, file: !708, line: 71) 
!734 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !721, file: !721, line: 81, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !736, file: !708, line: 72) 
!736 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !721, file: !721, line: 87, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !738, file: !708, line: 73) 
!738 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !721, file: !721, line: 93, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !740, file: !708, line: 74) 
!740 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !721, file: !721, line: 99, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !742, file: !708, line: 75) 
!742 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !721, file: !721, line: 105, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !744, file: !708, line: 76) 
!744 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !721, file: !721, line: 111, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !746, file: !708, line: 77) 
!746 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !721, file: !721, line: 117, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !748, file: !708, line: 78) 
!748 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !721, file: !721, line: 69, type: !749, flags: DIFlagPrototyped, spFlags: 0) 
!749 = !DISubroutineType(types: !750) 
!750 = !{!35, !705, !715} 
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !752, file: !708, line: 79) 
!752 = !DISubprogram(name: "wctype", scope: !721, file: !721, line: 157, type: !753, flags: DIFlagPrototyped, spFlags: 0) 
!753 = !DISubroutineType(types: !754) 
!754 = !{!715, !94} 
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !756, file: !708, line: 80) 
!756 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !721, file: !721, line: 123, type: !757, flags: DIFlagPrototyped, spFlags: 0) 
!757 = !DISubroutineType(types: !758) 
!758 = !{!705, !705} 
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !760, file: !708, line: 81) 
!760 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !721, file: !721, line: 129, type: !757, flags: DIFlagPrototyped, spFlags: 0) 
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !762, file: !708, line: 82) 
!762 = !DISubprogram(name: "towctrans", scope: !728, file: !728, line: 121, type: !763, flags: DIFlagPrototyped, spFlags: 0) 
!763 = !DISubroutineType(types: !764) 
!764 = !{!705, !705, !710} 
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !766, file: !708, line: 83) 
!766 = !DISubprogram(name: "wctrans", scope: !728, file: !728, line: 123, type: !767, flags: DIFlagPrototyped, spFlags: 0) 
!767 = !DISubroutineType(types: !768) 
!768 = !{!710, !94} 
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !46, file: !770, line: 115) 
!770 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cwchar", directory: "") 
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !66, file: !770, line: 116) 
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !404, file: !770, line: 117) 
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !705, file: !770, line: 118) 
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !459, file: !770, line: 119) 
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !776, file: !770, line: 120) 
!776 = !DISubprogram(name: "fwprintf", scope: !777, file: !777, line: 103, type: !778, flags: DIFlagPrototyped, spFlags: 0) 
!777 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/wchar.h", directory: "") 
!778 = !DISubroutineType(types: !779) 
!779 = !{!35, !520, !244, null} 
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !781, file: !770, line: 121) 
!781 = !DISubprogram(name: "fwscanf", scope: !777, file: !777, line: 104, type: !778, flags: DIFlagPrototyped, spFlags: 0) 
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !783, file: !770, line: 122) 
!783 = !DISubprogram(name: "swprintf", scope: !777, file: !777, line: 115, type: !784, flags: DIFlagPrototyped, spFlags: 0) 
!784 = !DISubroutineType(types: !785) 
!785 = !{!35, !230, !66, !244, null} 
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !787, file: !770, line: 123) 
!787 = !DISubprogram(name: "vfwprintf", scope: !777, file: !777, line: 118, type: !788, flags: DIFlagPrototyped, spFlags: 0) 
!788 = !DISubroutineType(types: !789) 
!789 = !{!35, !520, !244, !555} 
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !791, file: !770, line: 124) 
!791 = !DISubprogram(name: "vswprintf", scope: !777, file: !777, line: 120, type: !792, flags: DIFlagPrototyped, spFlags: 0) 
!792 = !DISubroutineType(types: !793) 
!793 = !{!35, !230, !66, !244, !555} 
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !795, file: !770, line: 125) 
!795 = !DISubprogram(name: "swscanf", scope: !777, file: !777, line: 116, type: !796, flags: DIFlagPrototyped, spFlags: 0) 
!796 = !DISubroutineType(types: !797) 
!797 = !{!35, !244, !244, null} 
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !799, file: !770, line: 126) 
!799 = !DISubprogram(name: "vfwscanf", scope: !777, file: !777, line: 170, type: !788, flags: DIFlagPrototyped, spFlags: 0) 
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !801, file: !770, line: 127) 
!801 = !DISubprogram(name: "vswscanf", scope: !777, file: !777, line: 172, type: !802, flags: DIFlagPrototyped, spFlags: 0) 
!802 = !DISubroutineType(types: !803) 
!803 = !{!35, !244, !244, !555} 
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !805, file: !770, line: 128) 
!805 = !DISubprogram(name: "fgetwc", scope: !777, file: !777, line: 98, type: !806, flags: DIFlagPrototyped, spFlags: 0) 
!806 = !DISubroutineType(types: !807) 
!807 = !{!705, !520} 
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !809, file: !770, line: 129) 
!809 = !DISubprogram(name: "fgetws", scope: !777, file: !777, line: 99, type: !810, flags: DIFlagPrototyped, spFlags: 0) 
!810 = !DISubroutineType(types: !811) 
!811 = !{!230, !230, !35, !520} 
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !813, file: !770, line: 130) 
!813 = !DISubprogram(name: "fputwc", scope: !777, file: !777, line: 100, type: !814, flags: DIFlagPrototyped, spFlags: 0) 
!814 = !DISubroutineType(types: !815) 
!815 = !{!705, !231, !520} 
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !817, file: !770, line: 131) 
!817 = !DISubprogram(name: "fputws", scope: !777, file: !777, line: 101, type: !818, flags: DIFlagPrototyped, spFlags: 0) 
!818 = !DISubroutineType(types: !819) 
!819 = !{!35, !244, !520} 
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !821, file: !770, line: 132) 
!821 = !DISubprogram(name: "fwide", scope: !777, file: !777, line: 102, type: !822, flags: DIFlagPrototyped, spFlags: 0) 
!822 = !DISubroutineType(types: !823) 
!823 = !{!35, !520, !35} 
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !825, file: !770, line: 133) 
!825 = !DISubprogram(name: "getwc", scope: !777, file: !777, line: 105, type: !806, flags: DIFlagPrototyped, spFlags: 0) 
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !827, file: !770, line: 134) 
!827 = !DISubprogram(name: "putwc", scope: !777, file: !777, line: 113, type: !814, flags: DIFlagPrototyped, spFlags: 0) 
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !829, file: !770, line: 135) 
!829 = !DISubprogram(name: "ungetwc", scope: !777, file: !777, line: 117, type: !830, flags: DIFlagPrototyped, spFlags: 0) 
!830 = !DISubroutineType(types: !831) 
!831 = !{!705, !705, !520} 
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !833, file: !770, line: 136) 
!833 = !DISubprogram(name: "wcstod", scope: !777, file: !777, line: 144, type: !834, flags: DIFlagPrototyped, spFlags: 0) 
!834 = !DISubroutineType(types: !835) 
!835 = !{!93, !244, !836} 
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64) 
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !838, file: !770, line: 137) 
!838 = !DISubprogram(name: "wcstof", scope: !777, file: !777, line: 175, type: !839, flags: DIFlagPrototyped, spFlags: 0) 
!839 = !DISubroutineType(types: !840) 
!840 = !{!117, !244, !836} 
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !842, file: !770, line: 138) 
!842 = !DISubprogram(name: "wcstold", scope: !777, file: !777, line: 177, type: !843, flags: DIFlagPrototyped, spFlags: 0) 
!843 = !DISubroutineType(types: !844) 
!844 = !{!122, !244, !836} 
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !846, file: !770, line: 139) 
!846 = !DISubprogram(name: "wcstol", scope: !777, file: !777, line: 147, type: !847, flags: DIFlagPrototyped, spFlags: 0) 
!847 = !DISubroutineType(types: !848) 
!848 = !{!63, !244, !836, !35} 
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !850, file: !770, line: 141) 
!850 = !DISubprogram(name: "wcstoll", scope: !777, file: !777, line: 180, type: !851, flags: DIFlagPrototyped, spFlags: 0) 
!851 = !DISubroutineType(types: !852) 
!852 = !{!58, !244, !836, !35} 
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !854, file: !770, line: 143) 
!854 = !DISubprogram(name: "wcstoul", scope: !777, file: !777, line: 149, type: !855, flags: DIFlagPrototyped, spFlags: 0) 
!855 = !DISubroutineType(types: !856) 
!856 = !{!67, !244, !836, !35} 
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !858, file: !770, line: 145) 
!858 = !DISubprogram(name: "wcstoull", scope: !777, file: !777, line: 182, type: !859, flags: DIFlagPrototyped, spFlags: 0) 
!859 = !DISubroutineType(types: !860) 
!860 = !{!139, !244, !836, !35} 
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !862, file: !770, line: 147) 
!862 = !DISubprogram(name: "wcscpy", scope: !777, file: !777, line: 128, type: !863, flags: DIFlagPrototyped, spFlags: 0) 
!863 = !DISubroutineType(types: !864) 
!864 = !{!230, !230, !244} 
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !866, file: !770, line: 148) 
!866 = !DISubprogram(name: "wcsncpy", scope: !777, file: !777, line: 135, type: !867, flags: DIFlagPrototyped, spFlags: 0) 
!867 = !DISubroutineType(types: !868) 
!868 = !{!230, !230, !244, !66} 
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !870, file: !770, line: 149) 
!870 = !DISubprogram(name: "wcscat", scope: !777, file: !777, line: 124, type: !863, flags: DIFlagPrototyped, spFlags: 0) 
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !872, file: !770, line: 150) 
!872 = !DISubprogram(name: "wcsncat", scope: !777, file: !777, line: 133, type: !867, flags: DIFlagPrototyped, spFlags: 0) 
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !874, file: !770, line: 151) 
!874 = !DISubprogram(name: "wcscmp", scope: !777, file: !777, line: 126, type: !875, flags: DIFlagPrototyped, spFlags: 0) 
!875 = !DISubroutineType(types: !876) 
!876 = !{!35, !244, !244} 
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !878, file: !770, line: 152) 
!878 = !DISubprogram(name: "wcscoll", scope: !777, file: !777, line: 127, type: !875, flags: DIFlagPrototyped, spFlags: 0) 
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !880, file: !770, line: 153) 
!880 = !DISubprogram(name: "wcsncmp", scope: !777, file: !777, line: 134, type: !881, flags: DIFlagPrototyped, spFlags: 0) 
!881 = !DISubroutineType(types: !882) 
!882 = !{!35, !244, !244, !66} 
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !884, file: !770, line: 154) 
!884 = !DISubprogram(name: "wcsxfrm", scope: !777, file: !777, line: 142, type: !885, flags: DIFlagPrototyped, spFlags: 0) 
!885 = !DISubroutineType(types: !886) 
!886 = !{!66, !230, !244, !66} 
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !888, file: !770, line: 155) 
!888 = !DISubprogram(name: "wcschr", linkageName: "_ZL6wcschrUa9enable_ifIXLb1EEEPww", scope: !889, file: !889, line: 145, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!889 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/wchar.h", directory: "") 
!890 = !DISubroutineType(types: !891) 
!891 = !{!230, !230, !231} 
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !893, file: !770, line: 156) 
!893 = !DISubprogram(name: "wcspbrk", linkageName: "_ZL7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !889, file: !889, line: 152, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !895, file: !770, line: 157) 
!895 = !DISubprogram(name: "wcsrchr", linkageName: "_ZL7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !889, file: !889, line: 159, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !897, file: !770, line: 158) 
!897 = !DISubprogram(name: "wcsstr", linkageName: "_ZL6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !889, file: !889, line: 166, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !899, file: !770, line: 159) 
!899 = !DISubprogram(name: "wmemchr", linkageName: "_ZL7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !889, file: !889, line: 173, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!900 = !DISubroutineType(types: !901) 
!901 = !{!230, !230, !231, !66} 
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !903, file: !770, line: 160) 
!903 = !DISubprogram(name: "wcscspn", scope: !777, file: !777, line: 129, type: !904, flags: DIFlagPrototyped, spFlags: 0) 
!904 = !DISubroutineType(types: !905) 
!905 = !{!66, !244, !244} 
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !907, file: !770, line: 161) 
!907 = !DISubprogram(name: "wcslen", scope: !777, file: !777, line: 132, type: !908, flags: DIFlagPrototyped, spFlags: 0) 
!908 = !DISubroutineType(types: !909) 
!909 = !{!66, !244} 
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !911, file: !770, line: 162) 
!911 = !DISubprogram(name: "wcsspn", scope: !777, file: !777, line: 140, type: !904, flags: DIFlagPrototyped, spFlags: 0) 
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !913, file: !770, line: 163) 
!913 = !DISubprogram(name: "wcstok", scope: !777, file: !777, line: 145, type: !914, flags: DIFlagPrototyped, spFlags: 0) 
!914 = !DISubroutineType(types: !915) 
!915 = !{!230, !230, !244, !836} 
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !917, file: !770, line: 164) 
!917 = !DISubprogram(name: "wmemcmp", scope: !777, file: !777, line: 151, type: !881, flags: DIFlagPrototyped, spFlags: 0) 
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !919, file: !770, line: 165) 
!919 = !DISubprogram(name: "wmemcpy", scope: !777, file: !777, line: 152, type: !867, flags: DIFlagPrototyped, spFlags: 0) 
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !921, file: !770, line: 166) 
!921 = !DISubprogram(name: "wmemmove", scope: !777, file: !777, line: 153, type: !867, flags: DIFlagPrototyped, spFlags: 0) 
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !923, file: !770, line: 167) 
!923 = !DISubprogram(name: "wmemset", scope: !777, file: !777, line: 154, type: !900, flags: DIFlagPrototyped, spFlags: 0) 
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !925, file: !770, line: 168) 
!925 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !777, file: !777, line: 130, type: !926, flags: DIFlagPrototyped, spFlags: 0) 
!926 = !DISubroutineType(types: !927) 
!927 = !{!66, !230, !66, !244, !440} 
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !929, file: !770, line: 169) 
!929 = !DISubprogram(name: "btowc", scope: !777, file: !777, line: 97, type: !930, flags: DIFlagPrototyped, spFlags: 0) 
!930 = !DISubroutineType(types: !931) 
!931 = !{!705, !35} 
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !933, file: !770, line: 170) 
!933 = !DISubprogram(name: "wctob", scope: !777, file: !777, line: 143, type: !722, flags: DIFlagPrototyped, spFlags: 0) 
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !935, file: !770, line: 171) 
!935 = !DISubprogram(name: "mbsinit", scope: !777, file: !777, line: 110, type: !936, flags: DIFlagPrototyped, spFlags: 0) 
!936 = !DISubroutineType(types: !937) 
!937 = !{!35, !938} 
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64) 
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46) 
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !941, file: !770, line: 172) 
!941 = !DISubprogram(name: "mbrlen", scope: !777, file: !777, line: 107, type: !942, flags: DIFlagPrototyped, spFlags: 0) 
!942 = !DISubroutineType(types: !943) 
!943 = !{!66, !94, !66, !944} 
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64) 
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !946, file: !770, line: 173) 
!946 = !DISubprogram(name: "mbrtowc", scope: !777, file: !777, line: 108, type: !947, flags: DIFlagPrototyped, spFlags: 0) 
!947 = !DISubroutineType(types: !948) 
!948 = !{!66, !230, !94, !66, !944} 
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !950, file: !770, line: 174) 
!950 = !DISubprogram(name: "wcrtomb", scope: !777, file: !777, line: 123, type: !951, flags: DIFlagPrototyped, spFlags: 0) 
!951 = !DISubroutineType(types: !952) 
!952 = !{!66, !14, !231, !944} 
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !954, file: !770, line: 175) 
!954 = !DISubprogram(name: "mbsrtowcs", scope: !777, file: !777, line: 111, type: !955, flags: DIFlagPrototyped, spFlags: 0) 
!955 = !DISubroutineType(types: !956) 
!956 = !{!66, !230, !957, !66, !944} 
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64) 
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !959, file: !770, line: 176) 
!959 = !DISubprogram(name: "wcsrtombs", scope: !777, file: !777, line: 138, type: !960, flags: DIFlagPrototyped, spFlags: 0) 
!960 = !DISubroutineType(types: !961) 
!961 = !{!66, !14, !962, !66, !944} 
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64) 
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !964, file: !770, line: 179) 
!964 = !DISubprogram(name: "getwchar", scope: !777, file: !777, line: 106, type: !965, flags: DIFlagPrototyped, spFlags: 0) 
!965 = !DISubroutineType(types: !966) 
!966 = !{!705} 
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !968, file: !770, line: 180) 
!968 = !DISubprogram(name: "vwscanf", scope: !777, file: !777, line: 174, type: !969, flags: DIFlagPrototyped, spFlags: 0) 
!969 = !DISubroutineType(types: !970) 
!970 = !{!35, !244, !555} 
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !972, file: !770, line: 181) 
!972 = !DISubprogram(name: "wscanf", scope: !777, file: !777, line: 156, type: !973, flags: DIFlagPrototyped, spFlags: 0) 
!973 = !DISubroutineType(types: !974) 
!974 = !{!35, !244, null} 
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !976, file: !770, line: 185) 
!976 = !DISubprogram(name: "putwchar", scope: !777, file: !777, line: 114, type: !977, flags: DIFlagPrototyped, spFlags: 0) 
!977 = !DISubroutineType(types: !978) 
!978 = !{!705, !231} 
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !980, file: !770, line: 186) 
!980 = !DISubprogram(name: "vwprintf", scope: !777, file: !777, line: 122, type: !969, flags: DIFlagPrototyped, spFlags: 0) 
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !982, file: !770, line: 187) 
!982 = !DISubprogram(name: "wprintf", scope: !777, file: !777, line: 155, type: !973, flags: DIFlagPrototyped, spFlags: 0) 
!983 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.202)"} 
!984 = distinct !DISubprogram(name: "p_function", linkageName: "_Z10p_functionPv", scope: !12, file: !12, line: 14, type: !985, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !987) 
!985 = !DISubroutineType(types: !986) 
!986 = !{!17, !17} 
!987 = !{} 
!988 = !DILocalVariable(name: "data", arg: 1, scope: !984, file: !12, line: 14, type: !17) 
!989 = !DILocation(line: 14, column: 25, scope: !984) 
!990 = !DILocalVariable(name: "pid", scope: !984, file: !12, line: 16, type: !991) 
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !992, line: 31, baseType: !993) 
!992 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h", directory: "") 
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pid_t", file: !490, line: 72, baseType: !994) 
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !49, line: 22, baseType: !35) 
!995 = !DILocation(line: 16, column: 9, scope: !984) 
!996 = !DILocalVariable(name: "tid", scope: !984, file: !12, line: 17, type: !997) 
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !998, line: 31, baseType: !999) 
!998 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h", directory: "") 
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !1000, line: 118, baseType: !1001) 
!1000 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h", directory: "") 
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64) 
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !1000, line: 103, size: 65536, flags: DIFlagTypePassByValue, elements: !1003, identifier: "_ZTS17_opaque_pthread_t") 
!1003 = !{!1004, !1005, !1013} 
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1002, file: !1000, line: 104, baseType: !63, size: 64) 
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !1002, file: !1000, line: 105, baseType: !1006, size: 64, offset: 64) 
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64) 
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !1000, line: 57, size: 192, flags: DIFlagTypePassByValue, elements: !1008, identifier: "_ZTS28__darwin_pthread_handler_rec") 
!1008 = !{!1009, !1011, !1012} 
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !1007, file: !1000, line: 58, baseType: !1010, size: 64) 
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64) 
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !1007, file: !1000, line: 59, baseType: !17, size: 64, offset: 64) 
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1007, file: !1000, line: 60, baseType: !1006, size: 64, offset: 128) 
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1002, file: !1000, line: 106, baseType: !1014, size: 65408, offset: 128) 
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 65408, elements: !1015) 
!1015 = !{!1016} 
!1016 = !DISubrange(count: 8176) 
!1017 = !DILocation(line: 17, column: 13, scope: !984) 
!1018 = !DILocation(line: 19, column: 9, scope: !984) 
!1019 = !DILocation(line: 19, column: 7, scope: !984) 
!1020 = !DILocation(line: 20, column: 9, scope: !984) 
!1021 = !DILocation(line: 20, column: 7, scope: !984) 
!1022 = !DILocalVariable(name: "thread_name", scope: !984, file: !12, line: 22, type: !14) 
!1023 = !DILocation(line: 22, column: 9, scope: !984) 
!1024 = !DILocation(line: 22, column: 31, scope: !984) 
!1025 = !DILocalVariable(name: "i", scope: !984, file: !12, line: 23, type: !35) 
!1026 = !DILocation(line: 23, column: 7, scope: !984) 
!1027 = !DILocation(line: 25, column: 3, scope: !984) 
!1028 = !DILocation(line: 25, column: 9, scope: !984) 
!1029 = !DILocation(line: 25, column: 10, scope: !984) 
!1030 = !DILocation(line: 27, column: 54, scope: !1031) 
!1031 = distinct !DILexicalBlock(scope: !984, file: !12, line: 26, column: 3) 
!1032 = !DILocation(line: 27, column: 67, scope: !1031) 
!1033 = !DILocation(line: 27, column: 86, scope: !1031) 
!1034 = !DILocation(line: 27, column: 5, scope: !1031) 
!1035 = !DILocation(line: 28, column: 6, scope: !1031) 
!1036 = distinct !{!1036, !1027, !1037} 
!1037 = !DILocation(line: 30, column: 3, scope: !984) 
!1038 = !DILocalVariable(name: "num1", scope: !984, file: !12, line: 32, type: !35) 
!1039 = !DILocation(line: 32, column: 7, scope: !984) 
!1040 = !DILocation(line: 32, column: 14, scope: !984) 
!1041 = !DILocation(line: 36, column: 1, scope: !984) 
!1042 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 38, type: !142, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !987) 
!1043 = !DILocalVariable(name: "pthread", scope: !1042, file: !12, line: 40, type: !1044) 
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 128, elements: !1045) 
!1045 = !{!1046} 
!1046 = !DISubrange(count: 2) 
!1047 = !DILocation(line: 40, column: 13, scope: !1042) 
!1048 = !DILocalVariable(name: "thr_id", scope: !1042, file: !12, line: 41, type: !35) 
!1049 = !DILocation(line: 41, column: 7, scope: !1042) 
!1050 = !DILocalVariable(name: "status", scope: !1042, file: !12, line: 42, type: !35) 
!1051 = !DILocation(line: 42, column: 7, scope: !1042) 
!1052 = !DILocalVariable(name: "p1", scope: !1042, file: !12, line: 43, type: !1053) 
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !1054) 
!1054 = !{!1055} 
!1055 = !DISubrange(count: 9) 
!1056 = !DILocation(line: 43, column: 8, scope: !1042) 
!1057 = !DILocalVariable(name: "p2", scope: !1042, file: !12, line: 44, type: !1058) 
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !1059) 
!1059 = !{!1060} 
!1060 = !DISubrange(count: 11) 
!1061 = !DILocation(line: 44, column: 8, scope: !1042) 
!1062 = !DILocalVariable(name: "p3", scope: !1042, file: !12, line: 45, type: !1063) 
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !1064) 
!1064 = !{!1065} 
!1065 = !DISubrange(count: 13) 
!1066 = !DILocation(line: 45, column: 8, scope: !1042) 
!1067 = !DILocation(line: 49, column: 28, scope: !1042) 
!1068 = !DILocation(line: 49, column: 65, scope: !1042) 
!1069 = !DILocation(line: 49, column: 12, scope: !1042) 
!1070 = !DILocation(line: 49, column: 10, scope: !1042) 
!1071 = !DILocation(line: 50, column: 28, scope: !1042) 
!1072 = !DILocation(line: 50, column: 66, scope: !1042) 
!1073 = !DILocation(line: 50, column: 12, scope: !1042) 
!1074 = !DILocation(line: 50, column: 10, scope: !1042) 
!1075 = !DILocation(line: 51, column: 28, scope: !1042) 
!1076 = !DILocation(line: 51, column: 66, scope: !1042) 
!1077 = !DILocation(line: 51, column: 12, scope: !1042) 
!1078 = !DILocation(line: 51, column: 10, scope: !1042) 
!1079 = !DILocation(line: 54, column: 16, scope: !1042) 
!1080 = !DILocation(line: 54, column: 28, scope: !1042) 
!1081 = !DILocation(line: 54, column: 3, scope: !1042) 
!1082 = !DILocation(line: 55, column: 16, scope: !1042) 
!1083 = !DILocation(line: 55, column: 28, scope: !1042) 
!1084 = !DILocation(line: 55, column: 3, scope: !1042) 
!1085 = !DILocation(line: 56, column: 16, scope: !1042) 
!1086 = !DILocation(line: 56, column: 28, scope: !1042) 
!1087 = !DILocation(line: 56, column: 3, scope: !1042) 
!1088 = !DILocalVariable(name: "num1", scope: !1042, file: !12, line: 58, type: !35) 
!1089 = !DILocation(line: 58, column: 7, scope: !1042) 
!1090 = !DILocation(line: 58, column: 14, scope: !1042) 
!1091 = !DILocalVariable(name: "num2", scope: !1042, file: !12, line: 59, type: !35) 
!1092 = !DILocation(line: 59, column: 7, scope: !1042) 
!1093 = !DILocalVariable(name: "num3", scope: !1042, file: !12, line: 60, type: !35) 
!1094 = !DILocation(line: 60, column: 7, scope: !1042) 
!1095 = !DILocation(line: 60, column: 14, scope: !1042) 
!1096 = !DILocation(line: 60, column: 21, scope: !1042) 
!1097 = !DILocation(line: 60, column: 19, scope: !1042) 
!1098 = !DILocation(line: 62, column: 3, scope: !1042) 
!1099 = !DILocation(line: 64, column: 3, scope: !1042) 
; record_above.ll File Write Start 
;====================================================================== 
;====================================================================== 


; FILE * file = fopen("test.txt", "w+");  
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 } 
%struct.__sFILEX = type opaque 
%struct.__sbuf = type { i8*, i32 } 
@file = global %struct.__sFILE* null, align 8 
@.str.openfile = private unnamed_addr constant [11 x i8] c"record.txt\00", align 1 
@.str.write = private unnamed_addr constant [3 x i8] c"w+\00", align 1 
@.str.continue = private unnamed_addr constant [3 x i8] c"a+\00", align 1 

;##################################################################################### 
;##################################################################################### 
; multi thread 동작시 올바른 값을 보장하기 위해 critical section 생성 
%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t } 
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] } 

@mute = global %"class.std::__1::mutex" zeroinitializer, align 8 
@__dso_handle = external hidden global i8 

; Function Attrs: noinline ssp uwtable 
define internal void @__cxx_global_var_init_culry() #111940 section "__TEXT,__StaticInit,regular,pure_instructions" { 
entry: 

  %openFile_init = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.write, i64 0, i64 0)) 

  %call = call %"class.std::__1::mutex"* @_ZNSt3__15mutexC1Ev(%"class.std::__1::mutex"* @mute) #111943 
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::__1::mutex"* (%"class.std::__1::mutex"*)* @_ZNSt3__15mutexD1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::mutex"* @mute to i8*), i8* @__dso_handle) #111943 
  ret void 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"class.std::__1::mutex"* @_ZNSt3__15mutexC1Ev(%"class.std::__1::mutex"* returned %this) unnamed_addr #111941 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::mutex"*, align 8 
  store %"class.std::__1::mutex"* %this, %"class.std::__1::mutex"** %this.addr, align 8 
  %this1 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %this.addr, align 8 
  %call = call %"class.std::__1::mutex"* @_ZNSt3__15mutexC2Ev(%"class.std::__1::mutex"* %this1) #111943 
  ret %"class.std::__1::mutex"* %this1 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"class.std::__1::mutex"* @_ZNSt3__15mutexC2Ev(%"class.std::__1::mutex"* returned %this) unnamed_addr #111941 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::mutex"*, align 8 
  store %"class.std::__1::mutex"* %this, %"class.std::__1::mutex"** %this.addr, align 8 
  %this1 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %this.addr, align 8 
  %__m_ = getelementptr inbounds %"class.std::__1::mutex", %"class.std::__1::mutex"* %this1, i32 0, i32 0 
  %__sig = getelementptr inbounds %struct._opaque_pthread_mutex_t, %struct._opaque_pthread_mutex_t* %__m_, i32 0, i32 0 
  store i64 850045863, i64* %__sig, align 8 
  %__opaque = getelementptr inbounds %struct._opaque_pthread_mutex_t, %struct._opaque_pthread_mutex_t* %__m_, i32 0, i32 1 
  %0 = bitcast [56 x i8]* %__opaque to i8* 
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false) 
  %arrayinit.begin = getelementptr inbounds [56 x i8], [56 x i8]* %__opaque, i64 0, i64 0 
  ret %"class.std::__1::mutex"* %this1 
} 

; Function Attrs: noinline ssp uwtable 
; define internal void @_GLOBAL__sub_I_test.cpp() #111940 section "__TEXT,__StaticInit,regular,pure_instructions" { 
; entry: 
;   call void @__cxx_global_var_init() 
;   ret void 
; } 
;##################################################################################### 
;##################################################################################### 

@__const_culry.tmpName = private unnamed_addr constant [9 x i8] c"NotRocd \00", align 1 
@__const_culry.string = private unnamed_addr constant [8 x i8] c"string \00", align 1 

; ; #include <string> 
; %"class.std::__1::basic_string.1000009.100001" = type { %"class.std::__1::__compressed_pair.100001" } 
; %"class.std::__1::__compressed_pair.100001" = type { %"struct.std::__1::__compressed_pair_elem.100001" } 
; %"struct.std::__1::__compressed_pair_elem.100001" = type { %"struct.std::__1::basic_string<char>::__rep.100001" } 
; %"struct.std::__1::basic_string<char>::__rep.100001" = type { %union.anon.100001 } 
; %union.anon.100001 = type { %"struct.std::__1::basic_string<char>::__long.100001" } 
; %"struct.std::__1::basic_string<char>::__long.100001" = type { i8*, i64, i64 } 
; %"struct.std::__1::__default_init_tag.100001" = type { i8 } 
; %"class.std::__1::__basic_string_common.100001" = type { i8 } 
; %"struct.std::__1::__compressed_pair_elem.100002" = type { i8 } 
; %"class.std::__1::allocator.100001" = type { i8 } 
; %"struct.std::__1::__non_trivial_if.100001" = type { i8 } 

; %"struct.std::__1::basic_string<char>::__short.100001" = type { [23 x i8], %struct.anon.100001 } 
; %struct.anon.100001 = type { i8 } 

; 비교를 위한 전역변수 선언 
;int tempint; 
;float tempfloat; 
@tempint = global i32 0, align 4 
@tempfloat = global float 0.000000e+00, align 4 

; 변수명 출력	// 지우면 culry_record3.cpp 에서 탐지 못함, 변수명 이후부터 쓰기 시작하기 때문 
; @__const.main.var_1_name = private unnamed_addr constant [10 x i8] c"randomNum\00", align 1 
; @__const.main.var_2_name = private unnamed_addr constant [10 x i8] c"userInput\00", align 1 
; @__const.main.var_3_name = private unnamed_addr constant [11 x i8] c"thread_Cnt\00", align 1 

; @__const.main.var_5_name = private unnamed_addr constant [7 x i8] c"divNum\00", align 1 
; @__const.main.var_6_name = private unnamed_addr constant [8 x i8] c"message\00", align 1 
; @__const.main.var_7_name = private unnamed_addr constant [7 x i8] c"result\00", align 1 
; @__const.main.var_8_name = private unnamed_addr constant [8 x i8] c"tempnum\00", align 1 

; userKeyWord 
@.str.userKeyWord_isArr = private unnamed_addr constant [7 x i8] c"isArr \00", align 1 
@.str.userKeyWord_isPointerArr = private unnamed_addr constant [14 x i8] c"isPointerArr \00", align 1 
@.str.userKeyWord_isStringStart = private unnamed_addr constant [13 x i8] c"StringStart \00", align 1 
@.str.userKeyWord_isStringEnd = private unnamed_addr constant [11 x i8] c"StringEnd \00", align 1 
@.str.userKeyWord_pushBack = private unnamed_addr constant [11 x i8] c"push_back \00", align 1 
@.str.userKeyWord_popBack = private unnamed_addr constant [10 x i8] c"pop_back \00", align 1 

@.str.userKeyWord_isStruct = private unnamed_addr constant [10 x i8] c"isStruct \00", align 1 

@.str.userKeyWord_enter = private unnamed_addr constant [2 x i8] c"\0A\00", align 1 

; keyWord 
@.str.op_declare = private unnamed_addr constant [9 x i8] c"declare \00", align 1 
@.str.op_store = private unnamed_addr constant [7 x i8] c"store \00", align 1 
@.str.op_call = private unnamed_addr constant [6 x i8] c"call \00", align 1 
@.str.op_load = private unnamed_addr constant [6 x i8] c"load \00", align 1 

@.str.op_operation = private unnamed_addr constant [11 x i8] c"operation\0A\00", align 1 
@.str.op_add = private unnamed_addr constant [5 x i8] c"add\0A\00", align 1 
@.str.op_mul = private unnamed_addr constant [5 x i8] c"mul\0A\00", align 1 
@.str.op_sub = private unnamed_addr constant [5 x i8] c"sub\0A\00", align 1 

; 출력문 형식 
@.str.print_string = private unnamed_addr constant [4 x i8] c"%s \00", align 1 
@.str.print_string_name = private unnamed_addr constant [3 x i8] c"%s\00", align 1 

; line, col 사용을 위해 
@.str.print_int = private unnamed_addr constant [4 x i8] c"%d \00", align 1 
@.str.print_int_space = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1 

; bool 
@.str.print_i1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1 

; char 
@.str.print_i8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1 

; short 
@.str.print_i16 = private unnamed_addr constant [4 x i8] c"%d \00", align 1 

; int 
@.str.print_i32 = private unnamed_addr constant [4 x i8] c"%d \00", align 1 

;long int 

; long long int 
@.str.print_i64 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1 


@.str.print_float = private unnamed_addr constant [4 x i8] c"%f \00", align 1 
@.str.print_double = private unnamed_addr constant [5 x i8] c"%lf \00", align 1 


@.str.print_ptr = private unnamed_addr constant [4 x i8] c"%p \00", align 1 
@.str.print_chr = private unnamed_addr constant [4 x i8] c"%c \00", align 1 

; typeinfo 
%"class.std::type_info" = type { i32 (...)**, i64 } 
@_ZTIi = external constant i8* 

define linkonce_odr hidden i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* %this) #444 align 2 { 
entry: 
  %__v.addr.i = alloca i64, align 8 
  %this.addr = alloca %"class.std::type_info"*, align 8 
  store %"class.std::type_info"* %this, %"class.std::type_info"** %this.addr, align 8 
  %this1 = load %"class.std::type_info"*, %"class.std::type_info"** %this.addr, align 8 
  %__type_name = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1 
  %0 = load i64, i64* %__type_name, align 8 
  store i64 %0, i64* %__v.addr.i, align 8 
  %1 = load i64, i64* %__v.addr.i, align 8 
  %and.i = and i64 %1, 9223372036854775807 
  %2 = inttoptr i64 %and.i to i8* 
  ret i8* %2 
} 

@.str.i1 = private unnamed_addr constant [6 x i8]  c"bool \00", align 1 
@.str.i8 = private unnamed_addr constant [6 x i8]  c"char \00", align 1 
@.str.i16 = private unnamed_addr constant [7 x i8]  c"short \00", align 1 
@.str.i32 = private unnamed_addr constant [5 x i8]  c"int \00", align 1 
@.str.i64 = private unnamed_addr constant [15 x i8] c"long_long_int \00", align 1 
@.str.float = private unnamed_addr constant [7 x i8]  c"float \00", align 1 
@.str.double = private unnamed_addr constant [8 x i8]  c"double \00", align 1 
;@.str.char = private unnamed_addr constant [6 x i8] c"char \00", align 1 

@.str.string = private unnamed_addr constant [8 x i8] c"string \00", align 1 

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #222 


; declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222 
; declare i32 @fclose(%struct.__sFILE*) #222 

; Function Attrs: argmemonly nofree nounwind willreturn 
declare void @llvm.memcpy.p0i8.p0i8.i64_culry(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #100009 


; mutex ################################################ 
declare void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"*) #111945 
declare void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"*) #111942 
declare %"class.std::__1::mutex"* @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"* returned) unnamed_addr #111942 
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #111943 
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #111946 

attributes #111940 = { noinline ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #111941 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #111942 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #111943 = { nounwind } 
attributes #111944 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #111945 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #111946 = { argmemonly nofree nounwind willreturn writeonly } 

;################################################ 

attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #6 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #724 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #100009 = { argmemonly nofree nounwind willreturn } 
attributes #555555 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #10000003 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #10000007 = { nounwind } 



; ;====================================================================== 
; ;====================================================================== 




@.str.i1p = private unnamed_addr constant [5 x i8]  c"i1p \00", align 1 
@.str.i8p = private unnamed_addr constant [5 x i8]  c"i8p \00", align 1 
@.str.i16p = private unnamed_addr constant [6 x i8]  c"i16p \00", align 1 
@.str.i32p = private unnamed_addr constant [6 x i8]  c"i32p \00", align 1 
@.str.i64p = private unnamed_addr constant [6 x i8]  c"i64p \00", align 1 
@.str.floatp = private unnamed_addr constant [8 x i8]  c"floatp \00", align 1 
@.str.doublep = private unnamed_addr constant [9 x i8]  c"doublep \00", align 1 
; record_above.ll File Write End 
; =========================================================== 
; =================   writeDeclare start =================   
; =========================================================== 
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" } 
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" } 
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" } 
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon } 
%struct.anon = type { i8 } 
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon } 
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" } 
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 } 
 @llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cc, i8* null }] 
define internal void @_GLOBAL__sub_I_main.cc() #333 section "__TEXT,__StaticInit,regular,pure_instructions" { 
entry: 
call void @__cxx_global_var_init() 
ret void 
} 

define internal void @__cxx_global_var_init() #333 section "__TEXT,__StaticInit,regular,pure_instructions" { 
entry: 
%call = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.write, i64 0, i64 0)) 
store %struct.__sFILE* %call, %struct.__sFILE** @file, align 8 
ret void 
} 
declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222 
declare i32 @fclose(%struct.__sFILE*) #222 
; =========================================================== 
; =================   writeDeclare end   =================   
; =========================================================== 

