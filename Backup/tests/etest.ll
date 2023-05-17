; ModuleID = 'etest.cc'
source_filename = "etest.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::__non_trivial_if" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"zzzz\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8


; FILE * file = fopen("test.txt", "w+");
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
@file = global %struct.__sFILE* null, align 8
@.str.openfile = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.write = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cc, i8* null }]

define internal void @__cxx_global_var_init() #333 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.write, i64 0, i64 0))
  store %struct.__sFILE* %call, %struct.__sFILE** @file, align 8
  ret void
}
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #222

define internal void @_GLOBAL__sub_I_main.cc() #333 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222


;비교를 위한 전역변수 선언
;int tempint;
;float tempfloat;
@tempint = global i32 0, align 4
@tempfloat = global float 0.000000e+00, align 4

;변수명 출력
@__const.main.var_1_name = private unnamed_addr constant [6 x i8] c"xxxxx\00", align 1
@__const.main.var_2_name = private unnamed_addr constant [6 x i8] c"yyyyy\00", align 1
@__const.main.var_3_name = private unnamed_addr constant [6 x i8] c"zzzzz\00", align 1

;op type
@.str.op_declare = private unnamed_addr constant [9 x i8] c"declare\0A\00", align 1
@.str.op_operation = private unnamed_addr constant [11 x i8] c"operation\0A\00", align 1
@.str.op_add = private unnamed_addr constant [5 x i8] c"add\0A\00", align 1
@.str.op_mul = private unnamed_addr constant [5 x i8] c"mul\0A\00", align 1
@.str.op_sub = private unnamed_addr constant [5 x i8] c"sub\0A\00", align 1

;출력문 형식
@.str.print_str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.print_int = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.print_ptr = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1

;typeinfo 
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

@.str.int = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
@.str.float = private unnamed_addr constant [7 x i8] c"float\0A\00", align 1
@.str.char = private unnamed_addr constant [6 x i8] c"char\0A\00", align 1


;======================================================================
;======================================================================


; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %xxxxx = alloca i32, align 4
  %yyyyy = alloca i32, align 4
  %zzzzz = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %xxxxx, align 4
  store i32 3, i32* %yyyyy, align 4
  store i32 5, i32* %zzzzz, align 4


;===========================aaaaaaaaaa=======================
;======================================================================
%loadfile = load %struct.__sFILE*, %struct.__sFILE** @file, align 8

%var_1_value = load i32, i32* %xxxxx, align 4
  %var_1_name_ptr = alloca [6 x i8], align 1
  %temp_var_1_name = bitcast [6 x i8]* %var_1_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_1_name, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.var_1_name, i32 0, i32 0), i64 5, i1 false)
%var_1_name = getelementptr inbounds [6 x i8], [6 x i8]* %var_1_name_ptr, i64 0, i64 0
  %call11 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  %call2 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  %cmptype1 = icmp eq i8* %call11, %call2
  br i1 %cmptype1, label %if.then1, label %if.end1
if.then1:                                          ; preds = %entry
%var_1_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  br label %if.end1
if.end1:

%var_2_value = load i32, i32* %yyyyy, align 4
  %var_2_name_ptr = alloca [6 x i8], align 1
  %temp_var_2_name = bitcast [6 x i8]* %var_2_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_2_name, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.var_2_name, i32 0, i32 0), i64 5, i1 false)
%var_2_name = getelementptr inbounds [6 x i8], [6 x i8]* %var_2_name_ptr, i64 0, i64 0
  %call3 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  %call4 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  %cmptype2 = icmp eq i8* %call3, %call4
  br i1 %cmptype2, label %if.then2, label %if.end2
if.then2:                                          ; preds = %entry
%var_2_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  br label %if.end2
if.end2:  

%var_3_value = load i32, i32* %zzzzz, align 4
  %var_3_name_ptr = alloca [6 x i8], align 1
  %temp_var_3_name = bitcast [6 x i8]* %var_3_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_3_name, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.var_3_name, i32 0, i32 0), i64 5, i1 false)
%var_3_name = getelementptr inbounds [6 x i8], [6 x i8]* %var_3_name_ptr, i64 0, i64 0
  %call5 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  %call6 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  %cmptype3 = icmp eq i8* %call5, %call6
  br i1 %cmptype3, label %if.then3, label %if.end3
if.then3:                                          ; preds = %entry
%var_3_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888
  br label %if.end3
if.end3:  

  ;; write xxxxx info
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_name)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_type)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %var_1_value)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i64 0, i64 0), i32* %xxxxx)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 8)

;; write y info
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_2_name)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_2_type)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %var_2_value)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i64 0, i64 0), i32* %yyyyy)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 9)

;; write z info
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_3_name)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_3_type)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %var_3_value)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i64 0, i64 0), i32* %zzzzz)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 10)


;======================================================================
;======================================================================


  %aa = load i32, i32* %zzzzz, align 4
  %add = add nsw i32 5, %aa
  store i32 %add, i32* %zzzzz, align 4
  %var_3_value_2 = load i32, i32* %zzzzz, align 4
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %var_3_value_2)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))

;; write add info
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.op_operation, i64 0, i64 0))
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.op_add, i64 0, i64 0))
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_name)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_2_name)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_3_name)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %var_3_value_2)
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 12)

  ret i32 0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str) #1 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i8*, i8** %__str.addr, align 8
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #7
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %1, i64 %call)
  ret %"class.std::__1::basic_ostream"* %call1
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str, i64 %__len) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %call = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* %__s, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call3, label %if.then, label %if.end29

if.then:                                          ; preds = %invoke.cont2
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %call4 = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %1) #7
  %2 = load i8*, i8** %__str.addr, align 8
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %3 to i8**
  %vtable = load i8*, i8** %4, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %5 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %5, align 8
  %6 = bitcast %"class.std::__1::basic_ostream"* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %vbase.offset
  %7 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*
  %call6 = invoke i32 @_ZNKSt3__18ios_base5flagsB6v15006Ev(%"class.std::__1::ios_base"* %7)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %if.then
  %and = and i32 %call6, 176
  %cmp = icmp eq i32 %and, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont5
  %8 = load i8*, i8** %__str.addr, align 8
  %9 = load i64, i64* %__len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont5
  %10 = load i8*, i8** %__str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr7, %cond.true ], [ %10, %cond.false ]
  %11 = load i8*, i8** %__str.addr, align 8
  %12 = load i64, i64* %__len.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %14 = bitcast %"class.std::__1::basic_ostream"* %13 to i8**
  %vtable9 = load i8*, i8** %14, align 8
  %vbase.offset.ptr10 = getelementptr i8, i8* %vtable9, i64 -24
  %15 = bitcast i8* %vbase.offset.ptr10 to i64*
  %vbase.offset11 = load i64, i64* %15, align 8
  %16 = bitcast %"class.std::__1::basic_ostream"* %13 to i8*
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %vbase.offset11
  %17 = bitcast i8* %add.ptr12 to %"class.std::__1::ios_base"*
  %18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %19 = bitcast %"class.std::__1::basic_ostream"* %18 to i8**
  %vtable13 = load i8*, i8** %19, align 8
  %vbase.offset.ptr14 = getelementptr i8, i8* %vtable13, i64 -24
  %20 = bitcast i8* %vbase.offset.ptr14 to i64*
  %vbase.offset15 = load i64, i64* %20, align 8
  %21 = bitcast %"class.std::__1::basic_ostream"* %18 to i8*
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %vbase.offset15
  %22 = bitcast i8* %add.ptr16 to %"class.std::__1::basic_ios"*
  %call18 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev(%"class.std::__1::basic_ios"* %22)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %cond.end
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0
  %23 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %23 to i64
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, i8* %2, i8* %cond, i8* %add.ptr8, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %17, i8 signext %call18)
          to label %invoke.cont19 unwind label %lpad1

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.dive21 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call20 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive21, align 8
  %call22 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev(%"class.std::__1::ostreambuf_iterator"* %ref.tmp) #7
  br i1 %call22, label %if.then23, label %if.end

if.then23:                                        ; preds = %invoke.cont19
  %24 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %25 = bitcast %"class.std::__1::basic_ostream"* %24 to i8**
  %vtable24 = load i8*, i8** %25, align 8
  %vbase.offset.ptr25 = getelementptr i8, i8* %vtable24, i64 -24
  %26 = bitcast i8* %vbase.offset.ptr25 to i64*
  %vbase.offset26 = load i64, i64* %26, align 8
  %27 = bitcast %"class.std::__1::basic_ostream"* %24 to i8*
  %add.ptr27 = getelementptr inbounds i8, i8* %27, i64 %vbase.offset26
  %28 = bitcast i8* %add.ptr27 to %"class.std::__1::basic_ios"*
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej(%"class.std::__1::basic_ios"* %28, i32 5)
          to label %invoke.cont28 unwind label %lpad1

invoke.cont28:                                    ; preds = %if.then23
  br label %if.end

lpad:                                             ; preds = %if.end29, %entry
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %cond.end, %if.then, %invoke.cont
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot, align 4
  %call33 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont32 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont28, %invoke.cont19
  br label %if.end29

if.end29:                                         ; preds = %if.end, %invoke.cont2
  %call31 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %if.end29
  br label %try.cont

invoke.cont32:                                    ; preds = %lpad1
  br label %catch

catch:                                            ; preds = %invoke.cont32, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %35 = call i8* @__cxa_begin_catch(i8* %exn) #7
  %36 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %37 = bitcast %"class.std::__1::basic_ostream"* %36 to i8**
  %vtable34 = load i8*, i8** %37, align 8
  %vbase.offset.ptr35 = getelementptr i8, i8* %vtable34, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr35 to i64*
  %vbase.offset36 = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::__1::basic_ostream"* %36 to i8*
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 %vbase.offset36
  %40 = bitcast i8* %add.ptr37 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %40)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont39, %invoke.cont30
  %41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  ret %"class.std::__1::basic_ostream"* %41

lpad38:                                           ; preds = %catch
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont40 unwind label %terminate.lpad

invoke.cont40:                                    ; preds = %lpad38
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont40
  %exn41 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn41, 0
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val42

terminate.lpad:                                   ; preds = %lpad38, %lpad1
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #8
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #3 align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  ret i64 %call
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* returned, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev(%"class.std::__1::basic_ostream<char>::sentry"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ostream<char>::sentry"*, align 8
  store %"class.std::__1::basic_ostream<char>::sentry"* %this, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ostream<char>::sentry"*, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8
  %__ok_ = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", %"class.std::__1::basic_ostream<char>::sentry"* %this1, i32 0, i32 0
  %0 = load i8, i8* %__ok_, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %__iob, i8 signext %__fl) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca i8*, align 8
  %__op.addr = alloca i8*, align 8
  %__oe.addr = alloca i8*, align 8
  %__iob.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__s.coerce to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  store i8* %__ob, i8** %__ob.addr, align 8
  store i8* %__op, i8** %__op.addr, align 8
  store i8* %__oe, i8** %__oe.addr, align 8
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  store i8 %__fl, i8* %__fl.addr, align 1
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %__oe.addr, align 8
  %4 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %__sz, align 8
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  %call = call i64 @_ZNKSt3__18ios_base5widthB6v15006Ev(%"class.std::__1::ios_base"* %5)
  store i64 %call, i64* %__ns, align 8
  %6 = load i64, i64* %__ns, align 8
  %7 = load i64, i64* %__sz, align 8
  %cmp1 = icmp sgt i64 %6, %7
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i64, i64* %__sz, align 8
  %9 = load i64, i64* %__ns, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, i64* %__ns, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %10 = load i8*, i8** %__op.addr, align 8
  %11 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %11 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, i64* %__np, align 8
  %12 = load i64, i64* %__np, align 8
  %cmp7 = icmp sgt i64 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %13 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8
  %14 = load i8*, i8** %__ob.addr, align 8
  %15 = load i64, i64* %__np, align 8
  %call10 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %13, i8* %14, i64 %15)
  %16 = load i64, i64* %__np, align 8
  %cmp11 = icmp ne i64 %call10, %16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8
  %17 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %18 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %19 = load i64, i64* %__ns, align 8
  %cmp16 = icmp sgt i64 %19, 0
  br i1 %cmp16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end15
  %20 = load i64, i64* %__ns, align 8
  %21 = load i8, i8* %__fl.addr, align 1
  %call18 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc(%"class.std::__1::basic_string"* %__sp, i64 %20, i8 signext %21)
  %__sbuf_19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %22 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_19, align 8
  %call20 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev(%"class.std::__1::basic_string"* %__sp) #7
  %23 = load i64, i64* %__ns, align 8
  %call21 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %22, i8* %call20, i64 %23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %24 = load i64, i64* %__ns, align 8
  %cmp22 = icmp ne i64 %call21, %24
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %invoke.cont
  %__sbuf_24 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_24, align 8
  %25 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %26 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  %call28 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
          to label %invoke.cont27 unwind label %terminate.lpad

if.end25:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23
  %call26 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29

invoke.cont27:                                    ; preds = %lpad
  br label %eh.resume

if.end29:                                         ; preds = %cleanup.cont, %if.end15
  %30 = load i8*, i8** %__oe.addr, align 8
  %31 = load i8*, i8** %__op.addr, align 8
  %sub.ptr.lhs.cast30 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %31 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  store i64 %sub.ptr.sub32, i64* %__np, align 8
  %32 = load i64, i64* %__np, align 8
  %cmp33 = icmp sgt i64 %32, 0
  br i1 %cmp33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end29
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %33 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8
  %34 = load i8*, i8** %__op.addr, align 8
  %35 = load i64, i64* %__np, align 8
  %call36 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %33, i8* %34, i64 %35)
  %36 = load i64, i64* %__np, align 8
  %cmp37 = icmp ne i64 %call36, %36
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %__sbuf_39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_39, align 8
  %37 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %38 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  br label %return

if.end40:                                         ; preds = %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end29
  %39 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  %call42 = call i64 @_ZNSt3__18ios_base5widthB6v15006El(%"class.std::__1::ios_base"* %39, i64 0)
  %40 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %41 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  br label %return

return:                                           ; preds = %if.end41, %if.then38, %cleanup, %if.then12, %if.then
  %coerce.dive43 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0
  %42 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive43, align 8
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %42 to i64
  ret i64 %coerce.val.pi

eh.resume:                                        ; preds = %invoke.cont27
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val44 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val44

terminate.lpad:                                   ; preds = %lpad
  %43 = landingpad { i8*, i32 }
          catch i8* null
  %44 = extractvalue { i8*, i32 } %43, 0
  call void @__clang_call_terminate(i8* %44) #8
  unreachable

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %call = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0) #7
  ret %"class.std::__1::ostreambuf_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNKSt3__18ios_base5flagsB6v15006Ev(%"class.std::__1::ios_base"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 1
  %0 = load i32, i32* %__fmtflags_, align 8
  ret i32 %0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev(%"class.std::__1::basic_ios"* %this) #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #7
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %0 = load i32, i32* %__fill_, align 8
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call, i32 %0) #7
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec(%"class.std::__1::basic_ios"* %this1, i8 signext 32)
  %conv = sext i8 %call3 to i32
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  store i32 %conv, i32* %__fill_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %1 = load i32, i32* %__fill_5, align 8
  %conv6 = trunc i32 %1 to i8
  ret i8 %conv6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev(%"class.std::__1::ostreambuf_iterator"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej(%"class.std::__1::basic_ios"* %this, i32 %__state) #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store i32 %__state, i32* %__state.addr, align 4
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %1 = load i32, i32* %__state.addr, align 4
  call void @_ZNSt3__18ios_base8setstateB6v15006Ej(%"class.std::__1::ios_base"* %0, i32 %1)
  ret void
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* returned) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #7
  call void @_ZSt9terminatev() #8
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #2

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__18ios_base5widthB6v15006Ev(%"class.std::__1::ios_base"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  %0 = load i64, i64* %__width_, align 8
  ret i64 %0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %this, i8* %__s, i64 %__n) #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = bitcast %"class.std::__1::basic_streambuf"* %this1 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %2, align 8
  %vfn = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable, i64 12
  %3 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn, align 8
  %call = call i64 %3(%"class.std::__1::basic_streambuf"* %this1, i8* %0, i64 %1)
  ret i64 %call
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load i8, i8* %__c.addr, align 1
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1)
  ret %"class.std::__1::basic_string"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #7
  %call2 = call i8* @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_(i8* %call) #7
  ret i8* %call2
}

declare %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned) unnamed_addr #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__18ios_base5widthB6v15006El(%"class.std::__1::ios_base"* %this, i64 %__wide) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__wide.addr = alloca i64, align 8
  %__r = alloca i64, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  store i64 %__wide, i64* %__wide.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  %0 = load i64, i64* %__width_, align 8
  store i64 %0, i64* %__r, align 8
  %1 = load i64, i64* %__wide.addr, align 8
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  store i64 %1, i64* %__width_2, align 8
  %2 = load i64, i64* %__r, align 8
  ret i64 %2
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__r_, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2)
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load i8, i8* %__c.addr, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1)
  call void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %this1)
  ret %"class.std::__1::basic_string"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %this1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1)
  ret %"class.std::__1::__compressed_pair"* %this1
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %__c) #3 {
entry:
  %__c.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %__c, %"class.std::__1::basic_string"** %__c.addr, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %agg.tmp3 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1) #7
  %call2 = call %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %0)
  %2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %call4 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %3) #7
  %call5 = call %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %2)
  ret %"class.std::__1::__compressed_pair"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t) #3 {
entry:
  %__t.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %__t, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  ret %"struct.std::__1::__default_init_tag"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* returned %this) unnamed_addr #3 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::__compressed_pair_elem"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* returned %this) unnamed_addr #3 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %1 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  %call = call %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2B6v15006Ev(%"class.std::__1::allocator"* %1) #7
  ret %"struct.std::__1::__compressed_pair_elem.0"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2B6v15006Ev(%"class.std::__1::allocator"* returned %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::allocator"* %this1 to %"struct.std::__1::__non_trivial_if"*
  %call = call %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev(%"struct.std::__1::__non_trivial_if"* %0) #7
  ret %"class.std::__1::allocator"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev(%"struct.std::__1::__non_trivial_if"* returned %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__non_trivial_if"*, align 8
  store %"struct.std::__1::__non_trivial_if"* %this, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__non_trivial_if"*, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8
  ret %"struct.std::__1::__non_trivial_if"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_(i8* %__p) #3 {
entry:
  %__p.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev(%"class.std::__1::basic_string"* %this1) #7
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNSt3__130__libcpp_is_constant_evaluatedEv() #7
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #7
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call2, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 2
  %bf.load = load i8, i8* %__is_long_, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %tobool = icmp ne i8 %bf.lshr, 0
  store i1 %tobool, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #7
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 0
  %1 = load i8*, i8** %__data_, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #7
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_(i8* nonnull align 1 dereferenceable(1) %arrayidx) #7
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__130__libcpp_is_constant_evaluatedEv() #3 {
entry:
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev(%"struct.std::__1::__compressed_pair_elem"* %0) #7
  ret %"struct.std::__1::basic_string<char>::__rep"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev(%"struct.std::__1::__compressed_pair_elem"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_(i8* nonnull align 1 dereferenceable(1) %__r) #3 align 2 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8
  %0 = load i8*, i8** %__r.addr, align 8
  %call = call i8* @_ZNSt3__19addressofB6v15006IKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %0) #7
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__19addressofB6v15006IKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %__x) #3 {
entry:
  %__x.addr = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr, align 8
  %0 = load i8*, i8** %__x.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1 to %"struct.std::__1::iterator"*
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %2 = bitcast %"class.std::__1::basic_ostream"* %1 to i8**
  %vtable = load i8*, i8** %2, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset
  %5 = bitcast i8* %add.ptr to %"class.std::__1::basic_ios"*
  %call = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev(%"class.std::__1::basic_ios"* %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_streambuf"* %call, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  ret %"class.std::__1::ostreambuf_iterator"* %this1

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %filter.dispatch

filter.dispatch:                                  ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__cxa_call_unexpected(i8* %exn) #9
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev(%"class.std::__1::basic_ios"* %this) #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %call = call i8* @_ZNKSt3__18ios_base5rdbufB6v15006Ev(%"class.std::__1::ios_base"* %0)
  %1 = bitcast i8* %call to %"class.std::__1::basic_streambuf"*
  ret %"class.std::__1::basic_streambuf"* %1
}

declare void @__cxa_call_unexpected(i8*)

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__18ios_base5rdbufB6v15006Ev(%"class.std::__1::ios_base"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 6
  %0 = load i8*, i8** %__rdbuf_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #3 align 2 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  store i32 %__c2, i32* %__c2.addr, align 4
  %0 = load i32, i32* %__c1.addr, align 4
  %1 = load i32, i32* %__c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #3 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec(%"class.std::__1::basic_ios"* %this, i8 signext %__c) #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8 %ref.tmp, %"class.std::__1::ios_base"* %0)
  %call = invoke nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %__c.addr, align 1
  %call3 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15006Ec(%"class.std::__1::ctype"* %call, i8 signext %1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp)
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %call6 = invoke %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont5
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #8
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %__l) #1 {
entry:
  %__l.addr = alloca %"class.std::__1::locale"*, align 8
  store %"class.std::__1::locale"* %__l, %"class.std::__1::locale"** %__l.addr, align 8
  %0 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr, align 8
  %call = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %0, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  %1 = bitcast %"class.std::__1::locale::facet"* %call to %"class.std::__1::ctype"*
  ret %"class.std::__1::ctype"* %1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8, %"class.std::__1::ios_base"*) #2

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15006Ec(%"class.std::__1::ctype"* %this, i8 signext %__c) #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::ctype"* %this, %"class.std::__1::ctype"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr, align 8
  %0 = load i8, i8* %__c.addr, align 1
  %1 = bitcast %"class.std::__1::ctype"* %this1 to i8 (%"class.std::__1::ctype"*, i8)***
  %vtable = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %1, align 8
  %vfn = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable, i64 7
  %2 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn, align 8
  %call = call signext i8 %2(%"class.std::__1::ctype"* %this1, i8 signext %0)
  ret i8 %call
}

declare %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* returned) unnamed_addr #2

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12)) #2

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15006Ej(%"class.std::__1::ios_base"* %this, i32 %__state) #1 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  store i32 %__state, i32* %__state.addr, align 4
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 4
  %0 = load i32, i32* %__rdstate_, align 8
  %1 = load i32, i32* %__state.addr, align 4
  %or = or i32 %0, %1
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1, i32 %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #2

; Function Attrs: nounwind
declare i64 @strlen(i8*) #6

attributes #0 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

attributes #999 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #111 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #222 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #333 = { noinline ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #444 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #666 = { argmemonly nofree nounwind willreturn }
attributes #888 = { nounwind }

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
