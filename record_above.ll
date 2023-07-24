;======================================================================
;======================================================================


; FILE * file = fopen("test.txt", "w+");  
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
@file = global %struct.__sFILE* null, align 8
@.str.openfile = private unnamed_addr constant [11 x i8] c"record.txt\00", align 1
@.str.write = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cc, i8* null }]

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
@__const.main.var_1_name = private unnamed_addr constant [10 x i8] c"randomNum\00", align 1
@__const.main.var_2_name = private unnamed_addr constant [10 x i8] c"userInput\00", align 1
@__const.main.var_3_name = private unnamed_addr constant [11 x i8] c"thread_Cnt\00", align 1

@__const.main.var_5_name = private unnamed_addr constant [7 x i8] c"divNum\00", align 1
@__const.main.var_6_name = private unnamed_addr constant [8 x i8] c"message\00", align 1
@__const.main.var_7_name = private unnamed_addr constant [7 x i8] c"result\00", align 1
@__const.main.var_8_name = private unnamed_addr constant [8 x i8] c"tempnum\00", align 1

; userKeyWord
@.str.userKeyWord_isArr = private unnamed_addr constant [7 x i8] c"isArr \00", align 1
@.str.userKeyWord_isStringStart = private unnamed_addr constant [13 x i8] c"StringStart \00", align 1
@.str.userKeyWord_isStringEnd = private unnamed_addr constant [11 x i8] c"StringEnd \00", align 1

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


; char
@.str.print_i8 = private unnamed_addr constant [4 x i8] c"%c \00", align 1

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

@.str.i8 = private unnamed_addr constant [6 x i8]  c"char \00", align 1
@.str.i16 = private unnamed_addr constant [7 x i8]  c"short \00", align 1
@.str.i32 = private unnamed_addr constant [5 x i8]  c"int \00", align 1
@.str.i32p = private unnamed_addr constant [6 x i8]  c"int* \00", align 1
@.str.i32pp = private unnamed_addr constant [7 x i8]  c"int** \00", align 1
@.str.i64 = private unnamed_addr constant [15 x i8] c"long_long_int \00", align 1

@.str.float = private unnamed_addr constant [7 x i8]  c"float \00", align 1
@.str.double = private unnamed_addr constant [8 x i8]  c"double \00", align 1

;@.str.char = private unnamed_addr constant [6 x i8] c"char \00", align 1
@.str.string = private unnamed_addr constant [8 x i8] c"string \00", align 1

define internal void @_GLOBAL__sub_I_main.cc() #333 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

define internal void @__cxx_global_var_init() #333 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.write, i64 0, i64 0))
  store %struct.__sFILE* %call, %struct.__sFILE** @file, align 8
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #222

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64_culry(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #100009


attributes #100009 = { argmemonly nofree nounwind willreturn }
attributes #555555 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10000003 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #10000007 = { nounwind }

; ;======================================================================
; ;======================================================================




