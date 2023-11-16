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

; declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #111946

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




