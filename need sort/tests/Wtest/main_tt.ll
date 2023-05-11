; ModuleID = 'main.cc'
source_filename = "main.cc"
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
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

;======================================================================
;======================================================================
; FILE * file = fopen("test.txt", "w+");
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str.openfile = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.write = private unnamed_addr constant [3 x i8] c"w+\00", align 1

;비교를 위한 전역변수 선언
;int tempint;
;float tempfloat;
@tempint = global i32 0, align 4
@tempfloat = global float 0.000000e+00, align 4

;변수명 출력
@__const.main.var_1_name = private unnamed_addr constant [5 x i8] c"xxxx\00", align 1

;op type
@.str.op_declare = private unnamed_addr constant [9 x i8] c"declare\0A\00", align 1
@.str.op_sum = private unnamed_addr constant [5 x i8] c"sum\0A\00", align 1
@.str.op_mul = private unnamed_addr constant [5 x i8] c"mul\0A\00", align 1
@.str.op_sub = private unnamed_addr constant [5 x i8] c"sub\0A\00", align 1


;출력문 형식
@.str.print_str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.print_int = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.print_ptr = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1

;typeinfo 
%"class.std::type_info" = type { i32 (...)**, i64 }
@_ZTIi = external constant i8*

@.str.int = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
@.str.float = private unnamed_addr constant [7 x i8] c"float\0A\00", align 1
@.str.char = private unnamed_addr constant [6 x i8] c"char\0A\00", align 1

;======================================================================
;======================================================================

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 !dbg !2726 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !2727

  ; open file ============================================
  %file = alloca %struct.__sFILE*, align 8
  store i32 0, i32* %retval, align 4
  %callfile = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.write, i64 0, i64 0))
  store %struct.__sFILE* %callfile, %struct.__sFILE** %file, align 8
  %loadfile = load %struct.__sFILE*, %struct.__sFILE** %file, align 8, !dbg !85


  ;함수 선언
  ;int xxxx = 5;
  %xxxx = alloca i32, align 4
  store i32 5, i32* %xxxx, align 4

  ;;op 
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))

  ;char str222[] = GET_NAME(xxxx);
  %var_1_name = alloca [5 x i8], align 1
  %temp_var_1_name = bitcast [5 x i8]* %var_1_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_1_name, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.var_1_name, i32 0, i32 0), i64 5, i1 false)

  ;fprintf(file, "%s\n", str222);
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %var_1_name, i64 0, i64 0
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %arraydecay)

  ;if(typeid(xxxx).name() == typeid(tempint).name())
  ;  {
  ;      cout << "int" << "\n";
  ;      fprintf(file, "%s\n", typeid(xxxx).name());
  ;  }

  ; typeid(xxxx).name();
  ;%temp_val_1_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #7 
  ;%val_1_type = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* %temp_val_1_type)

  ;if(typeid(xxxx).name() == typeid(tempint).name())
  %call11 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #8
  %call22 = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #8

  %cmptype = icmp eq i8* %call11, %call22
  br i1 %cmptype, label %if.then, label %if.end

  ;      cout << "int" << "\n";
  ;      fprintf(file, "%s\n", typeid(xxxx).name());
if.then:                                          ; preds = %entry
  ;%printInt = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.int, i64 0, i64 0))
  %var_1_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #8
  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_type)
  br label %if.end

if.end:    

  ;fprintf(file, "%d\n", xxxx);
  %var_1_value = load i32, i32* %xxxx, align 4
  %call_var_1_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %var_1_value)

  ;fprintf(file, "%p\n", &xxxx);
  %call_var_1_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i64 0, i64 0), i32* %xxxx)

  ret i32 0, !dbg !2728
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str) #1 !dbg !2729 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i8* %__str, i8** %__str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2737
  %1 = load i8*, i8** %__str.addr, align 8, !dbg !2738
  %2 = load i8*, i8** %__str.addr, align 8, !dbg !2739
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #8, !dbg !2740
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %1, i64 %call), !dbg !2741
  ret %"class.std::__1::basic_ostream"* %call1, !dbg !2742
}

;======================================================================
;======================================================================
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #4
declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* %this) #3 align 2 {
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
;======================================================================
;======================================================================
; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2



; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str, i64 %__len) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1144 {
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
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !2743, metadata !DIExpression()), !dbg !2744
  store i8* %__str, i8** %__str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 %__len, i64* %__len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__len.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char>::sentry"* %__s, metadata !2749, metadata !DIExpression()), !dbg !2775
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2776
  %call = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* %__s, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %lpad, !dbg !2775

invoke.cont:                                      ; preds = %entry
  %call3 = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont2 unwind label %lpad1, !dbg !2777

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call3, label %if.then, label %if.end29, !dbg !2779

if.then:                                          ; preds = %invoke.cont2
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2780
  %call4 = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %1) #8, !dbg !2783
  %2 = load i8*, i8** %__str.addr, align 8, !dbg !2784
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2785
  %4 = bitcast %"class.std::__1::basic_ostream"* %3 to i8**, !dbg !2785
  %vtable = load i8*, i8** %4, align 8, !dbg !2785
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !2785
  %5 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !2785
  %vbase.offset = load i64, i64* %5, align 8, !dbg !2785
  %6 = bitcast %"class.std::__1::basic_ostream"* %3 to i8*, !dbg !2785
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %vbase.offset, !dbg !2785
  %7 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*, !dbg !2785
  %call6 = invoke i32 @_ZNKSt3__18ios_base5flagsB6v15006Ev(%"class.std::__1::ios_base"* %7)
          to label %invoke.cont5 unwind label %lpad1, !dbg !2786

invoke.cont5:                                     ; preds = %if.then
  %and = and i32 %call6, 176, !dbg !2787
  %cmp = icmp eq i32 %and, 32, !dbg !2788
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2789

cond.true:                                        ; preds = %invoke.cont5
  %8 = load i8*, i8** %__str.addr, align 8, !dbg !2790
  %9 = load i64, i64* %__len.addr, align 8, !dbg !2791
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !2792
  br label %cond.end, !dbg !2789

cond.false:                                       ; preds = %invoke.cont5
  %10 = load i8*, i8** %__str.addr, align 8, !dbg !2793
  br label %cond.end, !dbg !2789

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr7, %cond.true ], [ %10, %cond.false ], !dbg !2789
  %11 = load i8*, i8** %__str.addr, align 8, !dbg !2794
  %12 = load i64, i64* %__len.addr, align 8, !dbg !2795
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !2796
  %13 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2797
  %14 = bitcast %"class.std::__1::basic_ostream"* %13 to i8**, !dbg !2797
  %vtable9 = load i8*, i8** %14, align 8, !dbg !2797
  %vbase.offset.ptr10 = getelementptr i8, i8* %vtable9, i64 -24, !dbg !2797
  %15 = bitcast i8* %vbase.offset.ptr10 to i64*, !dbg !2797
  %vbase.offset11 = load i64, i64* %15, align 8, !dbg !2797
  %16 = bitcast %"class.std::__1::basic_ostream"* %13 to i8*, !dbg !2797
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %vbase.offset11, !dbg !2797
  %17 = bitcast i8* %add.ptr12 to %"class.std::__1::ios_base"*, !dbg !2797
  %18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2798
  %19 = bitcast %"class.std::__1::basic_ostream"* %18 to i8**, !dbg !2798
  %vtable13 = load i8*, i8** %19, align 8, !dbg !2798
  %vbase.offset.ptr14 = getelementptr i8, i8* %vtable13, i64 -24, !dbg !2798
  %20 = bitcast i8* %vbase.offset.ptr14 to i64*, !dbg !2798
  %vbase.offset15 = load i64, i64* %20, align 8, !dbg !2798
  %21 = bitcast %"class.std::__1::basic_ostream"* %18 to i8*, !dbg !2798
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %vbase.offset15, !dbg !2798
  %22 = bitcast i8* %add.ptr16 to %"class.std::__1::basic_ios"*, !dbg !2798
  %call18 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev(%"class.std::__1::basic_ios"* %22)
          to label %invoke.cont17 unwind label %lpad1, !dbg !2799

invoke.cont17:                                    ; preds = %cond.end
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0, !dbg !2800
  %23 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8, !dbg !2800
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %23 to i64, !dbg !2800
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, i8* %2, i8* %cond, i8* %add.ptr8, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %17, i8 signext %call18)
          to label %invoke.cont19 unwind label %lpad1, !dbg !2800

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.dive21 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0, !dbg !2800
  %coerce.val.ip = inttoptr i64 %call20 to %"class.std::__1::basic_streambuf"*, !dbg !2800
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive21, align 8, !dbg !2800
  %call22 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev(%"class.std::__1::ostreambuf_iterator"* %ref.tmp) #8, !dbg !2801
  br i1 %call22, label %if.then23, label %if.end, !dbg !2802

if.then23:                                        ; preds = %invoke.cont19
  %24 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2803
  %25 = bitcast %"class.std::__1::basic_ostream"* %24 to i8**, !dbg !2803
  %vtable24 = load i8*, i8** %25, align 8, !dbg !2803
  %vbase.offset.ptr25 = getelementptr i8, i8* %vtable24, i64 -24, !dbg !2803
  %26 = bitcast i8* %vbase.offset.ptr25 to i64*, !dbg !2803
  %vbase.offset26 = load i64, i64* %26, align 8, !dbg !2803
  %27 = bitcast %"class.std::__1::basic_ostream"* %24 to i8*, !dbg !2803
  %add.ptr27 = getelementptr inbounds i8, i8* %27, i64 %vbase.offset26, !dbg !2803
  %28 = bitcast i8* %add.ptr27 to %"class.std::__1::basic_ios"*, !dbg !2803
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej(%"class.std::__1::basic_ios"* %28, i32 5)
          to label %invoke.cont28 unwind label %lpad1, !dbg !2804

invoke.cont28:                                    ; preds = %if.then23
  br label %if.end, !dbg !2803

lpad:                                             ; preds = %if.end29, %entry
  %29 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2805
  %30 = extractvalue { i8*, i32 } %29, 0, !dbg !2805
  store i8* %30, i8** %exn.slot, align 8, !dbg !2805
  %31 = extractvalue { i8*, i32 } %29, 1, !dbg !2805
  store i32 %31, i32* %ehselector.slot, align 4, !dbg !2805
  br label %catch, !dbg !2805

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %cond.end, %if.then, %invoke.cont
  %32 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2806
  %33 = extractvalue { i8*, i32 } %32, 0, !dbg !2806
  store i8* %33, i8** %exn.slot, align 8, !dbg !2806
  %34 = extractvalue { i8*, i32 } %32, 1, !dbg !2806
  store i32 %34, i32* %ehselector.slot, align 4, !dbg !2806
  %call33 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont32 unwind label %terminate.lpad, !dbg !2807

if.end:                                           ; preds = %invoke.cont28, %invoke.cont19
  br label %if.end29, !dbg !2808

if.end29:                                         ; preds = %if.end, %invoke.cont2
  %call31 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont30 unwind label %lpad, !dbg !2807

invoke.cont30:                                    ; preds = %if.end29
  br label %try.cont, !dbg !2809

invoke.cont32:                                    ; preds = %lpad1
  br label %catch, !dbg !2807

catch:                                            ; preds = %invoke.cont32, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2809
  %35 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !2809
  %36 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2810
  %37 = bitcast %"class.std::__1::basic_ostream"* %36 to i8**, !dbg !2810
  %vtable34 = load i8*, i8** %37, align 8, !dbg !2810
  %vbase.offset.ptr35 = getelementptr i8, i8* %vtable34, i64 -24, !dbg !2810
  %38 = bitcast i8* %vbase.offset.ptr35 to i64*, !dbg !2810
  %vbase.offset36 = load i64, i64* %38, align 8, !dbg !2810
  %39 = bitcast %"class.std::__1::basic_ostream"* %36 to i8*, !dbg !2810
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 %vbase.offset36, !dbg !2810
  %40 = bitcast i8* %add.ptr37 to %"class.std::__1::ios_base"*, !dbg !2810
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %40)
          to label %invoke.cont39 unwind label %lpad38, !dbg !2812

invoke.cont39:                                    ; preds = %catch
  call void @__cxa_end_catch(), !dbg !2813
  br label %try.cont, !dbg !2813

try.cont:                                         ; preds = %invoke.cont39, %invoke.cont30
  %41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2814
  ret %"class.std::__1::basic_ostream"* %41, !dbg !2815

lpad38:                                           ; preds = %catch
  %42 = landingpad { i8*, i32 }
          cleanup, !dbg !2816
  %43 = extractvalue { i8*, i32 } %42, 0, !dbg !2816
  store i8* %43, i8** %exn.slot, align 8, !dbg !2816
  %44 = extractvalue { i8*, i32 } %42, 1, !dbg !2816
  store i32 %44, i32* %ehselector.slot, align 4, !dbg !2816
  invoke void @__cxa_end_catch()
          to label %invoke.cont40 unwind label %terminate.lpad, !dbg !2813

invoke.cont40:                                    ; preds = %lpad38
  br label %eh.resume, !dbg !2813

eh.resume:                                        ; preds = %invoke.cont40
  %exn41 = load i8*, i8** %exn.slot, align 8, !dbg !2813
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2813
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn41, 0, !dbg !2813
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2813
  resume { i8*, i32 } %lpad.val42, !dbg !2813

terminate.lpad:                                   ; preds = %lpad38, %lpad1
  %45 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2807
  %46 = extractvalue { i8*, i32 } %45, 0, !dbg !2807
  call void @__clang_call_terminate(i8* %46) #9, !dbg !2807
  unreachable, !dbg !2807
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #3 align 2 !dbg !2817 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2820
  %call = call i64 @strlen(i8* %0) #8, !dbg !2821
  ret i64 %call, !dbg !2822
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* returned, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev(%"class.std::__1::basic_ostream<char>::sentry"* %this) #3 align 2 !dbg !2823 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ostream<char>::sentry"*, align 8
  store %"class.std::__1::basic_ostream<char>::sentry"* %this, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, metadata !2824, metadata !DIExpression()), !dbg !2826
  %this1 = load %"class.std::__1::basic_ostream<char>::sentry"*, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8
  %__ok_ = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", %"class.std::__1::basic_ostream<char>::sentry"* %this1, i32 0, i32 0, !dbg !2827
  %0 = load i8, i8* %__ok_, align 8, !dbg !2827
  %tobool = trunc i8 %0 to i1, !dbg !2827
  ret i1 %tobool, !dbg !2828
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %__iob, i8 signext %__fl) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2829 {
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
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* %__s, metadata !2833, metadata !DIExpression()), !dbg !2834
  store i8* %__ob, i8** %__ob.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__ob.addr, metadata !2835, metadata !DIExpression()), !dbg !2836
  store i8* %__op, i8** %__op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__op.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i8* %__oe, i8** %__oe.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__oe.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %__iob.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  store i8 %__fl, i8* %__fl.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__fl.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2845
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !2845
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null, !dbg !2847
  br i1 %cmp, label %if.then, label %if.end, !dbg !2848

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2849
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2849
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !dbg !2849
  br label %return, !dbg !2850

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__sz, metadata !2851, metadata !DIExpression()), !dbg !2852
  %3 = load i8*, i8** %__oe.addr, align 8, !dbg !2853
  %4 = load i8*, i8** %__ob.addr, align 8, !dbg !2854
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64, !dbg !2855
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64, !dbg !2855
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2855
  store i64 %sub.ptr.sub, i64* %__sz, align 8, !dbg !2852
  call void @llvm.dbg.declare(metadata i64* %__ns, metadata !2856, metadata !DIExpression()), !dbg !2857
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !2858
  %call = call i64 @_ZNKSt3__18ios_base5widthB6v15006Ev(%"class.std::__1::ios_base"* %5), !dbg !2859
  store i64 %call, i64* %__ns, align 8, !dbg !2857
  %6 = load i64, i64* %__ns, align 8, !dbg !2860
  %7 = load i64, i64* %__sz, align 8, !dbg !2862
  %cmp1 = icmp sgt i64 %6, %7, !dbg !2863
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2864

if.then2:                                         ; preds = %if.end
  %8 = load i64, i64* %__sz, align 8, !dbg !2865
  %9 = load i64, i64* %__ns, align 8, !dbg !2866
  %sub = sub nsw i64 %9, %8, !dbg !2866
  store i64 %sub, i64* %__ns, align 8, !dbg !2866
  br label %if.end3, !dbg !2867

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8, !dbg !2868
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  call void @llvm.dbg.declare(metadata i64* %__np, metadata !2869, metadata !DIExpression()), !dbg !2870
  %10 = load i8*, i8** %__op.addr, align 8, !dbg !2871
  %11 = load i8*, i8** %__ob.addr, align 8, !dbg !2872
  %sub.ptr.lhs.cast4 = ptrtoint i8* %10 to i64, !dbg !2873
  %sub.ptr.rhs.cast5 = ptrtoint i8* %11 to i64, !dbg !2873
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !2873
  store i64 %sub.ptr.sub6, i64* %__np, align 8, !dbg !2870
  %12 = load i64, i64* %__np, align 8, !dbg !2874
  %cmp7 = icmp sgt i64 %12, 0, !dbg !2876
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !2877

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2878
  %13 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8, !dbg !2878
  %14 = load i8*, i8** %__ob.addr, align 8, !dbg !2881
  %15 = load i64, i64* %__np, align 8, !dbg !2882
  %call10 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %13, i8* %14, i64 %15), !dbg !2883
  %16 = load i64, i64* %__np, align 8, !dbg !2884
  %cmp11 = icmp ne i64 %call10, %16, !dbg !2885
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !2886

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2887
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8, !dbg !2889
  %17 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2890
  %18 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !2890
  br label %return, !dbg !2891

if.end14:                                         ; preds = %if.then8
  br label %if.end15, !dbg !2892

if.end15:                                         ; preds = %if.end14, %if.end3
  %19 = load i64, i64* %__ns, align 8, !dbg !2893
  %cmp16 = icmp sgt i64 %19, 0, !dbg !2895
  br i1 %cmp16, label %if.then17, label %if.end29, !dbg !2896

if.then17:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"* %__sp, metadata !2897, metadata !DIExpression()), !dbg !2899
  %20 = load i64, i64* %__ns, align 8, !dbg !2900
  %21 = load i8, i8* %__fl.addr, align 1, !dbg !2901
  %call18 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc(%"class.std::__1::basic_string"* %__sp, i64 %20, i8 signext %21), !dbg !2899
  %__sbuf_19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2902
  %22 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_19, align 8, !dbg !2902
  %call20 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev(%"class.std::__1::basic_string"* %__sp) #8, !dbg !2904
  %23 = load i64, i64* %__ns, align 8, !dbg !2905
  %call21 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %22, i8* %call20, i64 %23)
          to label %invoke.cont unwind label %lpad, !dbg !2906

invoke.cont:                                      ; preds = %if.then17
  %24 = load i64, i64* %__ns, align 8, !dbg !2907
  %cmp22 = icmp ne i64 %call21, %24, !dbg !2908
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !2909

if.then23:                                        ; preds = %invoke.cont
  %__sbuf_24 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2910
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_24, align 8, !dbg !2912
  %25 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2913
  %26 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false), !dbg !2913
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2914

lpad:                                             ; preds = %if.then17
  %27 = landingpad { i8*, i32 }
          cleanup, !dbg !2915
  %28 = extractvalue { i8*, i32 } %27, 0, !dbg !2915
  store i8* %28, i8** %exn.slot, align 8, !dbg !2915
  %29 = extractvalue { i8*, i32 } %27, 1, !dbg !2915
  store i32 %29, i32* %ehselector.slot, align 4, !dbg !2915
  %call28 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
          to label %invoke.cont27 unwind label %terminate.lpad, !dbg !2916

if.end25:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !2916
  br label %cleanup, !dbg !2916

cleanup:                                          ; preds = %if.end25, %if.then23
  %call26 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp), !dbg !2916
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29, !dbg !2917

invoke.cont27:                                    ; preds = %lpad
  br label %eh.resume, !dbg !2916

if.end29:                                         ; preds = %cleanup.cont, %if.end15
  %30 = load i8*, i8** %__oe.addr, align 8, !dbg !2918
  %31 = load i8*, i8** %__op.addr, align 8, !dbg !2919
  %sub.ptr.lhs.cast30 = ptrtoint i8* %30 to i64, !dbg !2920
  %sub.ptr.rhs.cast31 = ptrtoint i8* %31 to i64, !dbg !2920
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31, !dbg !2920
  store i64 %sub.ptr.sub32, i64* %__np, align 8, !dbg !2921
  %32 = load i64, i64* %__np, align 8, !dbg !2922
  %cmp33 = icmp sgt i64 %32, 0, !dbg !2924
  br i1 %cmp33, label %if.then34, label %if.end41, !dbg !2925

if.then34:                                        ; preds = %if.end29
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2926
  %33 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8, !dbg !2926
  %34 = load i8*, i8** %__op.addr, align 8, !dbg !2929
  %35 = load i64, i64* %__np, align 8, !dbg !2930
  %call36 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %33, i8* %34, i64 %35), !dbg !2931
  %36 = load i64, i64* %__np, align 8, !dbg !2932
  %cmp37 = icmp ne i64 %call36, %36, !dbg !2933
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !2934

if.then38:                                        ; preds = %if.then34
  %__sbuf_39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2935
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_39, align 8, !dbg !2937
  %37 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2938
  %38 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false), !dbg !2938
  br label %return, !dbg !2939

if.end40:                                         ; preds = %if.then34
  br label %if.end41, !dbg !2940

if.end41:                                         ; preds = %if.end40, %if.end29
  %39 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !2941
  %call42 = call i64 @_ZNSt3__18ios_base5widthB6v15006El(%"class.std::__1::ios_base"* %39, i64 0), !dbg !2942
  %40 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2943
  %41 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false), !dbg !2943
  br label %return, !dbg !2944

return:                                           ; preds = %if.end41, %if.then38, %cleanup, %if.then12, %if.then
  %coerce.dive43 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0, !dbg !2945
  %42 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive43, align 8, !dbg !2945
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %42 to i64, !dbg !2945
  ret i64 %coerce.val.pi, !dbg !2945

eh.resume:                                        ; preds = %invoke.cont27
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2916
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2916
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2916
  %lpad.val44 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2916
  resume { i8*, i32 } %lpad.val44, !dbg !2916

terminate.lpad:                                   ; preds = %lpad
  %43 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2916
  %44 = extractvalue { i8*, i32 } %43, 0, !dbg !2916
  call void @__clang_call_terminate(i8* %44) #9, !dbg !2916
  unreachable, !dbg !2916

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #3 align 2 !dbg !2946 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr, metadata !2947, metadata !DIExpression()), !dbg !2949
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr, metadata !2950, metadata !DIExpression()), !dbg !2951
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8, !dbg !2952
  %call = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0) #8, !dbg !2952
  ret %"class.std::__1::ostreambuf_iterator"* %this1, !dbg !2953
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNKSt3__18ios_base5flagsB6v15006Ev(%"class.std::__1::ios_base"* %this) #3 align 2 !dbg !2954 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !2955, metadata !DIExpression()), !dbg !2957
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 1, !dbg !2958
  %0 = load i32, i32* %__fmtflags_, align 8, !dbg !2958
  ret i32 %0, !dbg !2959
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev(%"class.std::__1::basic_ios"* %this) #1 align 2 !dbg !2960 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !2961, metadata !DIExpression()), !dbg !2963
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #8, !dbg !2964
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2, !dbg !2966
  %0 = load i32, i32* %__fill_, align 8, !dbg !2966
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call, i32 %0) #8, !dbg !2967
  br i1 %call2, label %if.then, label %if.end, !dbg !2968

if.then:                                          ; preds = %entry
  %call3 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec(%"class.std::__1::basic_ios"* %this1, i8 signext 32), !dbg !2969
  %conv = sext i8 %call3 to i32, !dbg !2969
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2, !dbg !2970
  store i32 %conv, i32* %__fill_4, align 8, !dbg !2971
  br label %if.end, !dbg !2970

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2, !dbg !2972
  %1 = load i32, i32* %__fill_5, align 8, !dbg !2972
  %conv6 = trunc i32 %1 to i8, !dbg !2972
  ret i8 %conv6, !dbg !2973
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev(%"class.std::__1::ostreambuf_iterator"* %this) #3 align 2 !dbg !2974 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr, metadata !2975, metadata !DIExpression()), !dbg !2977
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0, !dbg !2978
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !2978
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null, !dbg !2979
  ret i1 %cmp, !dbg !2980
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej(%"class.std::__1::basic_ios"* %this, i32 %__state) #1 align 2 !dbg !2981 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !2982, metadata !DIExpression()), !dbg !2984
  store i32 %__state, i32* %__state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !2985, metadata !DIExpression()), !dbg !2986
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*, !dbg !2987
  %1 = load i32, i32* %__state.addr, align 4, !dbg !2988
  call void @_ZNSt3__18ios_base8setstateB6v15006Ej(%"class.std::__1::ios_base"* %0, i32 %1), !dbg !2987
  ret void, !dbg !2989
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* returned) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #5 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8
  call void @_ZSt9terminatev() #9
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #4

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__18ios_base5widthB6v15006Ev(%"class.std::__1::ios_base"* %this) #3 align 2 !dbg !2990 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !2991, metadata !DIExpression()), !dbg !2992
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3, !dbg !2993
  %0 = load i64, i64* %__width_, align 8, !dbg !2993
  ret i64 %0, !dbg !2994
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %this, i8* %__s, i64 %__n) #1 align 2 !dbg !2995 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3000, metadata !DIExpression()), !dbg !3001
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !3002
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3003
  %2 = bitcast %"class.std::__1::basic_streambuf"* %this1 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !3004
  %vtable = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %2, align 8, !dbg !3004
  %vfn = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable, i64 12, !dbg !3004
  %3 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn, align 8, !dbg !3004
  %call = call i64 %3(%"class.std::__1::basic_streambuf"* %this1, i8* %0, i64 %1), !dbg !3004
  ret i64 %call, !dbg !3005
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #1 align 2 !dbg !3006 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3007, metadata !DIExpression()), !dbg !3009
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  store i8 %__c, i8* %__c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3012, metadata !DIExpression()), !dbg !3013
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !3014
  %1 = load i8, i8* %__c.addr, align 1, !dbg !3014
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1), !dbg !3014
  ret %"class.std::__1::basic_string"* %this1, !dbg !3015
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3016 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3017, metadata !DIExpression()), !dbg !3019
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #8, !dbg !3020
  %call2 = call i8* @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_(i8* %call) #8, !dbg !3021
  ret i8* %call2, !dbg !3022
}

declare %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned) unnamed_addr #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__18ios_base5widthB6v15006El(%"class.std::__1::ios_base"* %this, i64 %__wide) #3 align 2 !dbg !3023 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__wide.addr = alloca i64, align 8
  %__r = alloca i64, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3024, metadata !DIExpression()), !dbg !3026
  store i64 %__wide, i64* %__wide.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__wide.addr, metadata !3027, metadata !DIExpression()), !dbg !3028
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__r, metadata !3029, metadata !DIExpression()), !dbg !3030
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3, !dbg !3031
  %0 = load i64, i64* %__width_, align 8, !dbg !3031
  store i64 %0, i64* %__r, align 8, !dbg !3030
  %1 = load i64, i64* %__wide.addr, align 8, !dbg !3032
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3, !dbg !3033
  store i64 %1, i64* %__width_2, align 8, !dbg !3034
  %2 = load i64, i64* %__r, align 8, !dbg !3035
  ret i64 %2, !dbg !3036
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #1 align 2 !dbg !3037 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3038, metadata !DIExpression()), !dbg !3039
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  store i8 %__c, i8* %__c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3044
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__r_, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2), !dbg !3044
  %0 = load i64, i64* %__n.addr, align 8, !dbg !3045
  %1 = load i8, i8* %__c.addr, align 1, !dbg !3047
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1), !dbg !3048
  call void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %this1), !dbg !3049
  ret %"class.std::__1::basic_string"* %this1, !dbg !3050
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #1 align 2 !dbg !3051 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t1.addr, metadata !3061, metadata !DIExpression()), !dbg !3062
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t2.addr, metadata !3063, metadata !DIExpression()), !dbg !3064
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8, !dbg !3065
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8, !dbg !3065
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %this1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1), !dbg !3065
  ret %"class.std::__1::__compressed_pair"* %this1, !dbg !3066
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %__c) #3 !dbg !3067 {
entry:
  %__c.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %__c, %"class.std::__1::basic_string"** %__c.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %__c.addr, metadata !3073, metadata !DIExpression()), !dbg !3074
  ret void, !dbg !3075
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #1 align 2 !dbg !3076 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %agg.tmp3 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t1.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t2.addr, metadata !3081, metadata !DIExpression()), !dbg !3082
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !3083
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8, !dbg !3084
  %call = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1) #8, !dbg !3085
  %call2 = call %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %0), !dbg !3086
  %2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*, !dbg !3083
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8, !dbg !3087
  %call4 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %3) #8, !dbg !3088
  %call5 = call %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %2), !dbg !3089
  ret %"class.std::__1::__compressed_pair"* %this1, !dbg !3090
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t) #3 !dbg !3091 {
entry:
  %__t.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %__t, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t.addr, metadata !3098, metadata !DIExpression()), !dbg !3099
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8, !dbg !3100
  ret %"struct.std::__1::__default_init_tag"* %0, !dbg !3101
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* returned %this) unnamed_addr #3 align 2 !dbg !3102 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"* %0, metadata !3105, metadata !DIExpression()), !dbg !3106
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !3107
  ret %"struct.std::__1::__compressed_pair_elem"* %this1, !dbg !3108
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* returned %this) unnamed_addr #3 align 2 !dbg !3109 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"* %0, metadata !3112, metadata !DIExpression()), !dbg !3113
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %1 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*, !dbg !3114
  %call = call %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2B6v15006Ev(%"class.std::__1::allocator"* %1) #8, !dbg !3115
  ret %"struct.std::__1::__compressed_pair_elem.0"* %this1, !dbg !3116
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2B6v15006Ev(%"class.std::__1::allocator"* returned %this) unnamed_addr #3 align 2 !dbg !3117 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::allocator"** %this.addr, metadata !3118, metadata !DIExpression()), !dbg !3120
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::allocator"* %this1 to %"struct.std::__1::__non_trivial_if"*, !dbg !3121
  %call = call %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev(%"struct.std::__1::__non_trivial_if"* %0) #8, !dbg !3122
  ret %"class.std::__1::allocator"* %this1, !dbg !3121
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev(%"struct.std::__1::__non_trivial_if"* returned %this) unnamed_addr #3 align 2 !dbg !3123 {
entry:
  %this.addr = alloca %"struct.std::__1::__non_trivial_if"*, align 8
  store %"struct.std::__1::__non_trivial_if"* %this, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__non_trivial_if"** %this.addr, metadata !3124, metadata !DIExpression()), !dbg !3126
  %this1 = load %"struct.std::__1::__non_trivial_if"*, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8
  ret %"struct.std::__1::__non_trivial_if"* %this1, !dbg !3127
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_(i8* %__p) #3 !dbg !3128 {
entry:
  %__p.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !3136
  ret i8* %0, !dbg !3137
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3138 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3139, metadata !DIExpression()), !dbg !3140
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev(%"class.std::__1::basic_string"* %this1) #8, !dbg !3141
  br i1 %call, label %cond.true, label %cond.false, !dbg !3141

cond.true:                                        ; preds = %entry
  %call2 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #8, !dbg !3142
  br label %cond.end, !dbg !3141

cond.false:                                       ; preds = %entry
  %call3 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #8, !dbg !3143
  br label %cond.end, !dbg !3141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ %call3, %cond.false ], !dbg !3141
  ret i8* %cond, !dbg !3144
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3145 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3146, metadata !DIExpression()), !dbg !3147
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNSt3__130__libcpp_is_constant_evaluatedEv() #8, !dbg !3148
  br i1 %call, label %if.then, label %if.end, !dbg !3150

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !3151
  br label %return, !dbg !3151

if.end:                                           ; preds = %entry
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3152
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3153
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call2, i32 0, i32 0, !dbg !3154
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*, !dbg !3154
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 2, !dbg !3155
  %bf.load = load i8, i8* %__is_long_, align 1, !dbg !3155
  %bf.lshr = lshr i8 %bf.load, 7, !dbg !3155
  %tobool = icmp ne i8 %bf.lshr, 0, !dbg !3152
  store i1 %tobool, i1* %retval, align 1, !dbg !3156
  br label %return, !dbg !3156

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval, align 1, !dbg !3157
  ret i1 %1, !dbg !3157
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3158 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3159, metadata !DIExpression()), !dbg !3160
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3161
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3162
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !3163
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*, !dbg !3163
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 0, !dbg !3164
  %1 = load i8*, i8** %__data_, align 8, !dbg !3164
  ret i8* %1, !dbg !3165
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3166 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3167, metadata !DIExpression()), !dbg !3168
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3169
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3170
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !3171
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*, !dbg !3171
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 0, !dbg !3172
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0, !dbg !3169
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_(i8* nonnull align 1 dereferenceable(1) %arrayidx) #8, !dbg !3173
  ret i8* %call2, !dbg !3174
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__130__libcpp_is_constant_evaluatedEv() #3 !dbg !3175 {
entry:
  ret i1 false, !dbg !3179
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %this) #3 align 2 !dbg !3180 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !3181, metadata !DIExpression()), !dbg !3183
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !3184
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev(%"struct.std::__1::__compressed_pair_elem"* %0) #8, !dbg !3185
  ret %"struct.std::__1::basic_string<char>::__rep"* %call, !dbg !3186
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev(%"struct.std::__1::__compressed_pair_elem"* %this) #3 align 2 !dbg !3187 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !3188, metadata !DIExpression()), !dbg !3190
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !3191
  ret %"struct.std::__1::basic_string<char>::__rep"* %__value_, !dbg !3192
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_(i8* nonnull align 1 dereferenceable(1) %__r) #3 align 2 !dbg !3193 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !3213
  %call = call i8* @_ZNSt3__19addressofB6v15006IKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %0) #8, !dbg !3214
  ret i8* %call, !dbg !3215
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__19addressofB6v15006IKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %__x) #3 !dbg !3216 {
entry:
  %__x.addr = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__x.addr, metadata !3220, metadata !DIExpression()), !dbg !3221
  %0 = load i8*, i8** %__x.addr, align 8, !dbg !3222
  ret i8* %0, !dbg !3223
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3224 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr, metadata !3225, metadata !DIExpression()), !dbg !3226
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1 to %"struct.std::__1::iterator"*, !dbg !3229
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0, !dbg !3230
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8, !dbg !3231
  %2 = bitcast %"class.std::__1::basic_ostream"* %1 to i8**, !dbg !3231
  %vtable = load i8*, i8** %2, align 8, !dbg !3231
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !3231
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !3231
  %vbase.offset = load i64, i64* %3, align 8, !dbg !3231
  %4 = bitcast %"class.std::__1::basic_ostream"* %1 to i8*, !dbg !3231
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !3231
  %5 = bitcast i8* %add.ptr to %"class.std::__1::basic_ios"*, !dbg !3231
  %call = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev(%"class.std::__1::basic_ios"* %5)
          to label %invoke.cont unwind label %lpad, !dbg !3232

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_streambuf"* %call, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !3230
  ret %"class.std::__1::ostreambuf_iterator"* %this1, !dbg !3233

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer, !dbg !3233
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3233
  store i8* %7, i8** %exn.slot, align 8, !dbg !3233
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3233
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !3233
  br label %filter.dispatch, !dbg !3233

filter.dispatch:                                  ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3233
  call void @__cxa_call_unexpected(i8* %exn) #10, !dbg !3233
  unreachable, !dbg !3233
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev(%"class.std::__1::basic_ios"* %this) #1 align 2 !dbg !3234 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !3235, metadata !DIExpression()), !dbg !3236
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*, !dbg !3237
  %call = call i8* @_ZNKSt3__18ios_base5rdbufB6v15006Ev(%"class.std::__1::ios_base"* %0), !dbg !3237
  %1 = bitcast i8* %call to %"class.std::__1::basic_streambuf"*, !dbg !3238
  ret %"class.std::__1::basic_streambuf"* %1, !dbg !3239
}

declare void @__cxa_call_unexpected(i8*)

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__18ios_base5rdbufB6v15006Ev(%"class.std::__1::ios_base"* %this) #3 align 2 !dbg !3240 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3241, metadata !DIExpression()), !dbg !3242
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 6, !dbg !3243
  %0 = load i8*, i8** %__rdbuf_, align 8, !dbg !3243
  ret i8* %0, !dbg !3244
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #3 align 2 !dbg !3245 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__c1.addr, metadata !3246, metadata !DIExpression()), !dbg !3247
  store i32 %__c2, i32* %__c2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__c2.addr, metadata !3248, metadata !DIExpression()), !dbg !3249
  %0 = load i32, i32* %__c1.addr, align 4, !dbg !3250
  %1 = load i32, i32* %__c2.addr, align 4, !dbg !3251
  %cmp = icmp eq i32 %0, %1, !dbg !3252
  ret i1 %cmp, !dbg !3253
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #3 align 2 !dbg !3254 {
entry:
  ret i32 -1, !dbg !3255
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec(%"class.std::__1::basic_ios"* %this, i8 signext %__c) #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3256 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8 %__c, i8* %__c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*, !dbg !3261
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8 %ref.tmp, %"class.std::__1::ios_base"* %0), !dbg !3261
  %call = invoke nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3262

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %__c.addr, align 1, !dbg !3263
  %call3 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15006Ec(%"class.std::__1::ctype"* %call, i8 signext %1)
          to label %invoke.cont2 unwind label %lpad, !dbg !3264

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp), !dbg !3265
  ret i8 %call3, !dbg !3265

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3266
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3266
  store i8* %3, i8** %exn.slot, align 8, !dbg !3266
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3266
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3266
  %call6 = invoke %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp)
          to label %invoke.cont5 unwind label %terminate.lpad, !dbg !3265

invoke.cont5:                                     ; preds = %lpad
  br label %eh.resume, !dbg !3265

eh.resume:                                        ; preds = %invoke.cont5
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3265
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3265
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3265
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3265
  resume { i8*, i32 } %lpad.val7, !dbg !3265

terminate.lpad:                                   ; preds = %lpad
  %5 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3265
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !3265
  call void @__clang_call_terminate(i8* %6) #9, !dbg !3265
  unreachable, !dbg !3265
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %__l) #1 !dbg !3267 {
entry:
  %__l.addr = alloca %"class.std::__1::locale"*, align 8
  store %"class.std::__1::locale"* %__l, %"class.std::__1::locale"** %__l.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::locale"** %__l.addr, metadata !3362, metadata !DIExpression()), !dbg !3363
  %0 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr, align 8, !dbg !3364
  %call = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %0, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE), !dbg !3365
  %1 = bitcast %"class.std::__1::locale::facet"* %call to %"class.std::__1::ctype"*, !dbg !3366
  ret %"class.std::__1::ctype"* %1, !dbg !3367
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8, %"class.std::__1::ios_base"*) #4

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15006Ec(%"class.std::__1::ctype"* %this, i8 signext %__c) #1 align 2 !dbg !3368 {
entry:
  %this.addr = alloca %"class.std::__1::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::ctype"* %this, %"class.std::__1::ctype"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ctype"** %this.addr, metadata !3369, metadata !DIExpression()), !dbg !3371
  store i8 %__c, i8* %__c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  %this1 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr, align 8
  %0 = load i8, i8* %__c.addr, align 1, !dbg !3374
  %1 = bitcast %"class.std::__1::ctype"* %this1 to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !3375
  %vtable = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %1, align 8, !dbg !3375
  %vfn = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable, i64 7, !dbg !3375
  %2 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn, align 8, !dbg !3375
  %call = call signext i8 %2(%"class.std::__1::ctype"* %this1, i8 signext %0), !dbg !3375
  ret i8 %call, !dbg !3376
}

declare %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* returned) unnamed_addr #4

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12)) #4

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15006Ej(%"class.std::__1::ios_base"* %this, i32 %__state) #1 align 2 !dbg !3377 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3378, metadata !DIExpression()), !dbg !3379
  store i32 %__state, i32* %__state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !3380, metadata !DIExpression()), !dbg !3381
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 4, !dbg !3382
  %0 = load i32, i32* %__rdstate_, align 8, !dbg !3382
  %1 = load i32, i32* %__state.addr, align 4, !dbg !3383
  %or = or i32 %0, %1, !dbg !3384
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1, i32 %or), !dbg !3385
  ret void, !dbg !3386
}

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #4

; Function Attrs: nounwind
declare i64 @strlen(i8*) #7

attributes #0 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.dbg.cu = !{!11}
!llvm.ident = !{!2725}

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
!11 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !12, producer: "Apple clang version 14.0.0 (clang-1400.0.29.102)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !1141, imports: !1505, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!12 = !DIFile(filename: "main.cc", directory: "/Users/han/GitHub/llvm-project/build/tests/Wtest")
!13 = !{!14, !1136}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !16, file: !15, line: 318, baseType: !29, size: 32, elements: !1132, identifier: "_ZTSNSt3__18ios_base5eventE")
!15 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/ios", directory: "")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !17, file: !15, line: 241, size: 1088, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !19, vtableHolder: !16)
!17 = !DINamespace(name: "__1", scope: !18, exportSymbols: true)
!18 = !DINamespace(name: "std", scope: null)
!19 = !{!20, !26, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !50, !51, !52, !53, !56, !57, !58, !59, !60, !61, !62, !67, !68, !69, !70, !72, !73, !80, !82, !88, !89, !92, !94, !95, !96, !98, !99, !100, !105, !109, !110, !113, !116, !119, !122, !123, !124, !1069, !1072, !1073, !1077, !1081, !1084, !1087, !1091, !1094, !1097, !1100, !1103, !1104, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1119, !1122, !1123, !1126, !1127, !1130, !1131}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ios_base", scope: !15, file: !15, baseType: !21, size: 64, flags: DIFlagArtificial)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "boolalpha", scope: !16, file: !15, line: 247, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !16, file: !15, line: 246, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !16, file: !15, line: 248, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !16, file: !15, line: 249, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !16, file: !15, line: 250, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !16, file: !15, line: 251, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !16, file: !15, line: 252, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "oct", scope: !16, file: !15, line: 253, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !16, file: !15, line: 254, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "scientific", scope: !16, file: !15, line: 255, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "showbase", scope: !16, file: !15, line: 256, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "showpoint", scope: !16, file: !15, line: 257, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "showpos", scope: !16, file: !15, line: 258, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2048)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "skipws", scope: !16, file: !15, line: 259, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "unitbuf", scope: !16, file: !15, line: 260, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "uppercase", scope: !16, file: !15, line: 261, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "adjustfield", scope: !16, file: !15, line: 262, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 176)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "basefield", scope: !16, file: !15, line: 263, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 74)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "floatfield", scope: !16, file: !15, line: 264, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 260)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "badbit", scope: !16, file: !15, line: 267, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !16, file: !15, line: 266, baseType: !29)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "eofbit", scope: !16, file: !15, line: 268, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "failbit", scope: !16, file: !15, line: 269, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "goodbit", scope: !16, file: !15, line: 270, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "app", scope: !16, file: !15, line: 273, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "openmode", scope: !16, file: !15, line: 272, baseType: !29)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ate", scope: !16, file: !15, line: 274, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !16, file: !15, line: 275, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !16, file: !15, line: 276, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !16, file: !15, line: 277, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "trunc", scope: !16, file: !15, line: 278, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__fmtflags_", scope: !16, file: !15, line: 379, baseType: !28, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__precision_", scope: !16, file: !15, line: 380, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !17, file: !15, line: 239, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !65, line: 35, baseType: !66)
!65 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/14.0.0/include/stddef.h", directory: "")
!66 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__width_", scope: !16, file: !15, line: 381, baseType: !63, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__rdstate_", scope: !16, file: !15, line: 382, baseType: !49, size: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__exceptions_", scope: !16, file: !15, line: 383, baseType: !49, size: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__rdbuf_", scope: !16, file: !15, line: 384, baseType: !71, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !16, file: !15, line: 385, baseType: !71, size: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__fn_", scope: !16, file: !15, line: 386, baseType: !74, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback", scope: !16, file: !15, line: 319, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !14, !79, !25}
!79 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__index_", scope: !16, file: !15, line: 387, baseType: !81, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__event_size_", scope: !16, file: !15, line: 388, baseType: !83, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 31, baseType: !85)
!84 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !86, line: 70, baseType: !87)
!86 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm/_types.h", directory: "")
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__event_cap_", scope: !16, file: !15, line: 389, baseType: !83, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__xindex_", scope: !16, file: !15, line: 393, baseType: !90, flags: DIFlagStaticMember)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !17, file: !91, line: 1726, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__16atomicIiEE")
!91 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/atomic", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_", scope: !16, file: !15, line: 397, baseType: !93, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_size_", scope: !16, file: !15, line: 398, baseType: !83, size: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_cap_", scope: !16, file: !15, line: 399, baseType: !83, size: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_", scope: !16, file: !15, line: 400, baseType: !97, size: 64, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_size_", scope: !16, file: !15, line: 401, baseType: !83, size: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_cap_", scope: !16, file: !15, line: 402, baseType: !83, size: 64, offset: 1024)
!100 = !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsB6v15006Ev", scope: !16, file: !15, line: 294, type: !101, scopeLine: 294, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!28, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!105 = !DISubprogram(name: "flags", linkageName: "_ZNSt3__18ios_base5flagsB6v15006Ej", scope: !16, file: !15, line: 295, type: !106, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!28, !108, !28}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfB6v15006Ej", scope: !16, file: !15, line: 296, type: !106, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!110 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfB6v15006Ejj", scope: !16, file: !15, line: 297, type: !111, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!28, !108, !28, !28}
!113 = !DISubprogram(name: "unsetf", linkageName: "_ZNSt3__18ios_base6unsetfB6v15006Ej", scope: !16, file: !15, line: 298, type: !114, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !108, !28}
!116 = !DISubprogram(name: "precision", linkageName: "_ZNKSt3__18ios_base9precisionB6v15006Ev", scope: !16, file: !15, line: 300, type: !117, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{!63, !103}
!119 = !DISubprogram(name: "precision", linkageName: "_ZNSt3__18ios_base9precisionB6v15006El", scope: !16, file: !15, line: 301, type: !120, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!63, !108, !63}
!122 = !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthB6v15006Ev", scope: !16, file: !15, line: 302, type: !117, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthB6v15006El", scope: !16, file: !15, line: 303, type: !120, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__18ios_base5imbueERKNS_6localeE", scope: !16, file: !15, line: 306, type: !125, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !108, !150}
!127 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "locale", scope: !17, file: !128, line: 122, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !129, identifier: "_ZTSNSt3__16localeE")
!128 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__locale", directory: "")
!129 = !{!130, !133, !134, !135, !136, !137, !138, !139, !140, !143, !147, !152, !158, !945, !948, !951, !954, !955, !958, !962, !965, !966, !969, !972, !1017, !1021, !1064}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "none", scope: !127, file: !128, line: 132, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "category", scope: !127, file: !128, line: 129, baseType: !25)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "collate", scope: !127, file: !128, line: 133, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !127, file: !128, line: 134, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "monetary", scope: !127, file: !128, line: 135, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "numeric", scope: !127, file: !128, line: 136, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !127, file: !128, line: 137, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !127, file: !128, line: 138, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !127, file: !128, line: 139, baseType: !131, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__locale_", scope: !127, file: !128, line: 175, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_class_type, name: "__imp", scope: !127, file: !128, line: 174, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__16locale5__impE")
!143 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 142, type: !144, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!147 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 143, type: !148, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !146, !150}
!150 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!152 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 144, type: !153, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !146, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!158 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 145, type: !159, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !146, !161}
!161 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !17, file: !164, line: 249, baseType: !165)
!164 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/iosfwd", directory: "")
!165 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !17, file: !166, line: 655, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !167, templateParams: !943, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!166 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/string", directory: "")
!167 = !{!168, !240, !371, !372, !380, !383, !386, !391, !394, !397, !400, !403, !406, !409, !410, !599, !603, !608, !611, !617, !622, !623, !624, !629, !634, !635, !636, !637, !638, !639, !640, !643, !644, !645, !646, !649, !652, !653, !654, !655, !656, !657, !660, !665, !670, !671, !672, !673, !674, !675, !676, !679, !682, !683, !686, !687, !690, !691, !694, !697, !698, !699, !700, !701, !702, !703, !704, !707, !710, !713, !716, !719, !722, !725, !728, !731, !734, !737, !740, !743, !746, !749, !752, !755, !758, !761, !765, !768, !771, !774, !775, !778, !781, !784, !787, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !813, !816, !819, !822, !825, !828, !829, !830, !831, !832, !835, !836, !837, !840, !844, !847, !848, !849, !850, !851, !852, !853, !854, !857, !860, !865, !866, !867, !868, !869, !870, !873, !876, !879, !880, !881, !884, !887, !888, !891, !892, !910, !925, !926, !929, !932, !933, !934, !935, !938, !939, !942}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__endian_factor", scope: !165, file: !166, line: 724, baseType: !169, flags: DIFlagStaticMember, extraData: i64 1)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !165, file: !166, line: 664, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !173, file: !172, line: 238, baseType: !239)
!172 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/allocator_traits.h", directory: "")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !17, file: !172, line: 229, size: 8, flags: DIFlagTypePassByValue, elements: !174, templateParams: !237, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE")
!174 = !{!175, !234}
!175 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateB6v15006ERS2_m", scope: !173, file: !172, line: 261, type: !176, scopeLine: 261, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !232, !171}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !173, file: !172, line: 233, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !181, file: !180, line: 134, baseType: !201)
!180 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/allocator.h", directory: "")
!181 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !17, file: !180, line: 87, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !182, templateParams: !230, identifier: "_ZTSNSt3__19allocatorIcEE")
!182 = !{!183, !194, !198, !202, !205, !212, !218, !223, !227}
!183 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !181, baseType: !184, extraData: i32 0)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__non_trivial_if<true, std::__1::allocator<char> >", scope: !17, file: !180, line: 76, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !185, templateParams: !190, identifier: "_ZTSNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEE")
!185 = !{!186}
!186 = !DISubprogram(name: "__non_trivial_if", scope: !184, file: !180, line: 78, type: !187, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!190 = !{!191, !193}
!191 = !DITemplateValueParameter(name: "_Cond", type: !192, value: i8 1)
!192 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!193 = !DITemplateTypeParameter(name: "_Unique", type: !181)
!194 = !DISubprogram(name: "allocator", scope: !181, file: !180, line: 99, type: !195, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!198 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateB6v15006Em", scope: !181, file: !180, line: 106, type: !199, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !197, !83}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!202 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateB6v15006EPcm", scope: !181, file: !180, line: 124, type: !203, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !197, !201, !83}
!205 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressB6v15006ERc", scope: !181, file: !180, line: 145, type: !206, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!179, !208, !210}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !181, file: !180, line: 136, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !157, size: 64)
!212 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressB6v15006ERKc", scope: !181, file: !180, line: 149, type: !213, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !208, !216}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !181, file: !180, line: 135, baseType: !155)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !181, file: !180, line: 137, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 64)
!218 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateB6v15006EmPKv", scope: !181, file: !180, line: 154, type: !219, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!201, !197, !83, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeB6v15006Ev", scope: !181, file: !180, line: 158, type: !224, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !208}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !180, line: 92, baseType: !83)
!227 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyB6v15006EPc", scope: !181, file: !180, line: 169, type: !228, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !197, !179}
!230 = !{!231}
!231 = !DITemplateTypeParameter(name: "_Tp", type: !157)
!232 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !173, file: !172, line: 231, baseType: !181)
!234 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB6v15006ERS2_Pcm", scope: !173, file: !172, line: 281, type: !235, scopeLine: 281, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !232, !178, !171}
!237 = !{!238}
!238 = !DITemplateTypeParameter(name: "_Alloc", type: !181)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !181, file: !180, line: 92, baseType: !83)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !165, file: !166, line: 785, baseType: !241, size: 192)
!241 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !17, file: !242, line: 83, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !243, templateParams: !368, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE")
!242 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/compressed_pair.h", directory: "")
!243 = !{!244, !310, !340, !344, !349, !352, !355, !360, !364}
!244 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !241, baseType: !245, extraData: i32 0)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !17, file: !242, line: 30, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !246, templateParams: !306, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE")
!246 = !{!247, !283, !289, !293, !298}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !245, file: !242, line: 53, baseType: !248, size: 192, flags: DIFlagPrivate)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !165, file: !166, line: 775, size: 192, flags: DIFlagTypePassByValue, elements: !249, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !166, line: 777, baseType: !251, size: 192)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !166, line: 777, size: 192, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !252, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E")
!252 = !{!253, !261, !276}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !251, file: !166, line: 779, baseType: !254, size: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !165, file: !166, line: 689, size: 192, flags: DIFlagTypePassByValue, elements: !255, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE")
!255 = !{!256, !258, !259, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !254, file: !166, line: 691, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !165, file: !166, line: 668, baseType: !178)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !254, file: !166, line: 692, baseType: !170, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !254, file: !166, line: 693, baseType: !170, size: 63, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__is_long_", scope: !254, file: !166, line: 694, baseType: !170, size: 1, offset: 191, flags: DIFlagBitField, extraData: i64 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !251, file: !166, line: 780, baseType: !262, size: 192)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !165, file: !166, line: 700, size: 192, flags: DIFlagTypePassByValue, elements: !263, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE")
!263 = !{!264, !269, !274, !275}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !262, file: !166, line: 702, baseType: !265, size: 184)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 184, elements: !267)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !165, file: !166, line: 661, baseType: !157)
!267 = !{!268}
!268 = !DISubrange(count: 23)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__padding_", scope: !262, file: !166, line: 703, baseType: !270, offset: 184)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, elements: !272)
!271 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!272 = !{!273}
!273 = !DISubrange(count: 0)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !262, file: !166, line: 704, baseType: !271, size: 7, offset: 184, flags: DIFlagBitField, extraData: i64 184)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__is_long_", scope: !262, file: !166, line: 705, baseType: !271, size: 1, offset: 191, flags: DIFlagBitField, extraData: i64 184)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !251, file: !166, line: 781, baseType: !277, size: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !165, file: !166, line: 770, size: 192, flags: DIFlagTypePassByValue, elements: !278, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !277, file: !166, line: 772, baseType: !280, size: 192)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 192, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DISubprogram(name: "__compressed_pair_elem", scope: !245, file: !242, line: 35, type: !284, scopeLine: 35, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286, !287}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__default_init_tag", scope: !17, file: !242, line: 26, size: 8, flags: DIFlagTypePassByValue, elements: !288, identifier: "_ZTSNSt3__118__default_init_tagE")
!288 = !{}
!289 = !DISubprogram(name: "__compressed_pair_elem", scope: !245, file: !242, line: 36, type: !290, scopeLine: 36, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !286, !292}
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__value_init_tag", scope: !17, file: !242, line: 27, size: 8, flags: DIFlagTypePassByValue, elements: !288, identifier: "_ZTSNSt3__116__value_init_tagE")
!293 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev", scope: !245, file: !242, line: 49, type: !294, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !286}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !245, file: !242, line: 32, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !248, size: 64)
!298 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev", scope: !245, file: !242, line: 50, type: !299, scopeLine: 50, flags: DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !304}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !245, file: !242, line: 33, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!306 = !{!307, !308, !309}
!307 = !DITemplateTypeParameter(name: "_Tp", type: !248)
!308 = !DITemplateValueParameter(name: "_Idx", type: !25, value: i32 0)
!309 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !192, value: i8 0)
!310 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !241, baseType: !311, extraData: i32 0)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !17, file: !242, line: 57, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !312, templateParams: !336, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE")
!312 = !{!313, !314, !318, !321, !324, !329}
!313 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !311, baseType: !181, flags: DIFlagPrivate, extraData: i32 0)
!314 = !DISubprogram(name: "__compressed_pair_elem", scope: !311, file: !242, line: 63, type: !315, scopeLine: 63, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!318 = !DISubprogram(name: "__compressed_pair_elem", scope: !311, file: !242, line: 64, type: !319, scopeLine: 64, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !317, !287}
!321 = !DISubprogram(name: "__compressed_pair_elem", scope: !311, file: !242, line: 65, type: !322, scopeLine: 65, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !317, !292}
!324 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15006Ev", scope: !311, file: !242, line: 78, type: !325, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !317}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !311, file: !242, line: 59, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!329 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15006Ev", scope: !311, file: !242, line: 79, type: !330, scopeLine: 79, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !311, file: !242, line: 60, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !209, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!336 = !{!337, !338, !339}
!337 = !DITemplateTypeParameter(name: "_Tp", type: !181)
!338 = !DITemplateValueParameter(name: "_Idx", type: !25, value: i32 1)
!339 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !192, value: i8 1)
!340 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev", scope: !241, file: !242, line: 120, type: !341, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!296, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!344 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev", scope: !241, file: !242, line: 125, type: !345, scopeLine: 125, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{!301, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!349 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15006Ev", scope: !241, file: !242, line: 130, type: !350, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!327, !343}
!352 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15006Ev", scope: !241, file: !242, line: 135, type: !353, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!332, !347}
!355 = !DISubprogram(name: "__get_first_base", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E16__get_first_baseB6v15006EPS8_", scope: !241, file: !242, line: 140, type: !356, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!360 = !DISubprogram(name: "__get_second_base", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E17__get_second_baseB6v15006EPS8_", scope: !241, file: !242, line: 144, type: !361, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{!363, !359}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!364 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapB6v15006ERS8_", scope: !241, file: !242, line: 149, type: !365, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !343, !367}
!367 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !241, size: 64)
!368 = !{!369, !370}
!369 = !DITemplateTypeParameter(name: "_T1", type: !248)
!370 = !DITemplateTypeParameter(name: "_T2", type: !181)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !165, file: !166, line: 811, baseType: !169, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!372 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 791, type: !373, scopeLine: 791, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !376, !170, !377}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_size_tag", scope: !17, file: !166, line: 645, size: 8, flags: DIFlagTypePassByValue, elements: !288, identifier: "_ZTSNSt3__124__uninitialized_size_tagE")
!377 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !165, file: !166, line: 662, baseType: !181)
!380 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 813, type: !381, scopeLine: 813, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !375}
!383 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 816, type: !384, scopeLine: 816, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !375, !377}
!386 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 823, type: !387, scopeLine: 823, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !375, !389}
!389 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!391 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 824, type: !392, scopeLine: 824, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !375, !389, !377}
!394 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 856, type: !395, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !375, !155, !170}
!397 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 858, type: !398, scopeLine: 858, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !375, !155, !170, !333}
!400 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 860, type: !401, scopeLine: 860, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !375, !170, !157}
!403 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 867, type: !404, scopeLine: 867, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !375, !389, !170, !170, !333}
!406 = !DISubprogram(name: "basic_string", scope: !165, file: !166, line: 870, type: !407, scopeLine: 870, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !375, !389, !170, !333}
!409 = !DISubprogram(name: "~basic_string", scope: !165, file: !166, line: 900, type: !381, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!410 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB6v15006Ev", scope: !165, file: !166, line: 903, type: !411, scopeLine: 903, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!413, !598}
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !165, file: !166, line: 659, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !17, file: !415, line: 267, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !416, templateParams: !546, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE")
!415 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/string_view", directory: "")
!416 = !{!417, !420, !424, !425, !429, !434, !438, !441, !444, !450, !451, !452, !453, !459, !460, !461, !462, !465, !466, !467, !470, !474, !475, !478, !479, !482, !485, !486, !489, !493, !496, !499, !502, !505, !508, !511, !514, !517, !520, !523, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !414, file: !415, line: 282, baseType: !418, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !415, line: 280, baseType: !83)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !414, file: !415, line: 726, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !414, file: !415, line: 271, baseType: !157)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !414, file: !415, line: 727, baseType: !419, size: 64, offset: 64)
!425 = !DISubprogram(name: "basic_string_view", scope: !414, file: !415, line: 292, type: !426, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!429 = !DISubprogram(name: "basic_string_view", scope: !414, file: !415, line: 295, type: !430, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !428, !432}
!432 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!434 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSB6v15006ERKS3_", scope: !414, file: !415, line: 298, type: !435, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !428, !432}
!437 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !414, size: 64)
!438 = !DISubprogram(name: "basic_string_view", scope: !414, file: !415, line: 301, type: !439, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !428, !155, !419}
!441 = !DISubprogram(name: "basic_string_view", scope: !414, file: !415, line: 339, type: !442, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !428, !155}
!444 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB6v15006Ev", scope: !414, file: !415, line: 348, type: !445, scopeLine: 348, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !414, file: !415, line: 276, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !414, file: !415, line: 273, baseType: !155)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!450 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB6v15006Ev", scope: !414, file: !415, line: 351, type: !445, scopeLine: 351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!451 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB6v15006Ev", scope: !414, file: !415, line: 354, type: !445, scopeLine: 354, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!452 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB6v15006Ev", scope: !414, file: !415, line: 357, type: !445, scopeLine: 357, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!453 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginB6v15006Ev", scope: !414, file: !415, line: 360, type: !454, scopeLine: 360, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !449}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !414, file: !415, line: 278, baseType: !457)
!457 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !17, file: !458, line: 43, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE")
!458 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/reverse_iterator.h", directory: "")
!459 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendB6v15006Ev", scope: !414, file: !415, line: 363, type: !454, scopeLine: 363, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!460 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginB6v15006Ev", scope: !414, file: !415, line: 366, type: !454, scopeLine: 366, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!461 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendB6v15006Ev", scope: !414, file: !415, line: 369, type: !454, scopeLine: 369, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!462 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB6v15006Ev", scope: !414, file: !415, line: 373, type: !463, scopeLine: 373, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!419, !449}
!465 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthB6v15006Ev", scope: !414, file: !415, line: 376, type: !463, scopeLine: 376, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!466 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeB6v15006Ev", scope: !414, file: !415, line: 379, type: !463, scopeLine: 379, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!467 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyB6v15006Ev", scope: !414, file: !415, line: 382, type: !468, scopeLine: 382, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!192, !449}
!470 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixB6v15006Em", scope: !414, file: !415, line: 386, type: !471, scopeLine: 386, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !449, !419}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !414, file: !415, line: 275, baseType: !217)
!474 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atB6v15006Em", scope: !414, file: !415, line: 391, type: !471, scopeLine: 391, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!475 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontB6v15006Ev", scope: !414, file: !415, line: 399, type: !476, scopeLine: 399, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!473, !449}
!478 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backB6v15006Ev", scope: !414, file: !415, line: 405, type: !476, scopeLine: 405, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!479 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB6v15006Ev", scope: !414, file: !415, line: 411, type: !480, scopeLine: 411, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!448, !449}
!482 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixB6v15006Em", scope: !414, file: !415, line: 415, type: !483, scopeLine: 415, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !428, !419}
!485 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixB6v15006Em", scope: !414, file: !415, line: 423, type: !483, scopeLine: 423, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!486 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapB6v15006ERS3_", scope: !414, file: !415, line: 430, type: !487, scopeLine: 430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !428, !437}
!489 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyB6v15006EPcmm", scope: !414, file: !415, line: 442, type: !490, scopeLine: 442, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !449, !201, !419, !419}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !414, file: !415, line: 280, baseType: !83)
!493 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB6v15006Emm", scope: !414, file: !415, line: 452, type: !494, scopeLine: 452, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!414, !449, !419, !419}
!496 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !414, file: !415, line: 459, type: !497, scopeLine: 459, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!25, !449, !414}
!499 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareB6v15006EmmS3_", scope: !414, file: !415, line: 469, type: !500, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!25, !449, !419, !419, !414}
!502 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareB6v15006EmmS3_mm", scope: !414, file: !415, line: 475, type: !503, scopeLine: 475, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!25, !449, !419, !419, !414, !419, !419}
!505 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareB6v15006EPKc", scope: !414, file: !415, line: 482, type: !506, scopeLine: 482, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!25, !449, !155}
!508 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareB6v15006EmmPKc", scope: !414, file: !415, line: 488, type: !509, scopeLine: 488, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!25, !449, !419, !419, !155}
!511 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareB6v15006EmmPKcm", scope: !414, file: !415, line: 494, type: !512, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!25, !449, !419, !419, !155, !419}
!514 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB6v15006ES3_m", scope: !414, file: !415, line: 501, type: !515, scopeLine: 501, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!492, !449, !414, !419}
!517 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB6v15006Ecm", scope: !414, file: !415, line: 509, type: !518, scopeLine: 509, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!492, !449, !157, !419}
!520 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB6v15006EPKcmm", scope: !414, file: !415, line: 516, type: !521, scopeLine: 516, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!492, !449, !155, !419, !419}
!523 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB6v15006EPKcm", scope: !414, file: !415, line: 524, type: !524, scopeLine: 524, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!492, !449, !155, !419}
!526 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindB6v15006ES3_m", scope: !414, file: !415, line: 533, type: !515, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindB6v15006Ecm", scope: !414, file: !415, line: 541, type: !518, scopeLine: 541, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!528 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindB6v15006EPKcmm", scope: !414, file: !415, line: 548, type: !521, scopeLine: 548, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!529 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindB6v15006EPKcm", scope: !414, file: !415, line: 556, type: !524, scopeLine: 556, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!530 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB6v15006ES3_m", scope: !414, file: !415, line: 565, type: !515, scopeLine: 565, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!531 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB6v15006Ecm", scope: !414, file: !415, line: 573, type: !518, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!532 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB6v15006EPKcmm", scope: !414, file: !415, line: 577, type: !521, scopeLine: 577, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!533 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB6v15006EPKcm", scope: !414, file: !415, line: 585, type: !524, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!534 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofB6v15006ES3_m", scope: !414, file: !415, line: 594, type: !515, scopeLine: 594, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!535 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofB6v15006Ecm", scope: !414, file: !415, line: 602, type: !518, scopeLine: 602, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!536 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofB6v15006EPKcmm", scope: !414, file: !415, line: 606, type: !521, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!537 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofB6v15006EPKcm", scope: !414, file: !415, line: 614, type: !524, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!538 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofB6v15006ES3_m", scope: !414, file: !415, line: 623, type: !515, scopeLine: 623, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!539 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofB6v15006Ecm", scope: !414, file: !415, line: 631, type: !518, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!540 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofB6v15006EPKcmm", scope: !414, file: !415, line: 638, type: !521, scopeLine: 638, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofB6v15006EPKcm", scope: !414, file: !415, line: 646, type: !524, scopeLine: 646, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!542 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofB6v15006ES3_m", scope: !414, file: !415, line: 655, type: !515, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!543 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofB6v15006Ecm", scope: !414, file: !415, line: 663, type: !518, scopeLine: 663, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofB6v15006EPKcmm", scope: !414, file: !415, line: 670, type: !521, scopeLine: 670, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!545 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofB6v15006EPKcm", scope: !414, file: !415, line: 678, type: !524, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!546 = !{!547, !548}
!547 = !DITemplateTypeParameter(name: "_CharT", type: !157)
!548 = !DITemplateTypeParameter(name: "_Traits", type: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !17, file: !550, line: 189, size: 8, flags: DIFlagTypePassByValue, elements: !551, templateParams: !597, identifier: "_ZTSNSt3__111char_traitsIcEE")
!550 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__string/char_traits.h", directory: "")
!551 = !{!552, !559, !562, !563, !567, !570, !573, !577, !578, !581, !585, !588, !591, !594}
!552 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !549, file: !550, line: 198, type: !553, scopeLine: 198, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555, !557}
!555 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !549, file: !550, line: 191, baseType: !157)
!557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!559 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !549, file: !550, line: 199, type: !560, scopeLine: 199, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!192, !556, !556}
!562 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !549, file: !550, line: 201, type: !560, scopeLine: 201, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!563 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !549, file: !550, line: 205, type: !564, scopeLine: 205, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!25, !566, !566, !83}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!567 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !549, file: !550, line: 207, type: !568, scopeLine: 207, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!83, !566}
!570 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !549, file: !550, line: 222, type: !571, scopeLine: 222, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!566, !566, !83, !557}
!573 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !549, file: !550, line: 225, type: !574, scopeLine: 225, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !576, !566, !83}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!577 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !549, file: !550, line: 230, type: !574, scopeLine: 230, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!578 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !549, file: !550, line: 238, type: !579, scopeLine: 238, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!576, !576, !83, !556}
!581 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !549, file: !550, line: 243, type: !582, scopeLine: 243, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{!584, !584}
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !549, file: !550, line: 192, baseType: !25)
!585 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !549, file: !550, line: 245, type: !586, scopeLine: 245, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!586 = !DISubroutineType(types: !587)
!587 = !{!556, !584}
!588 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !549, file: !550, line: 247, type: !589, scopeLine: 247, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!584, !556}
!591 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !549, file: !550, line: 249, type: !592, scopeLine: 249, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{!192, !584, !584}
!594 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !549, file: !550, line: 251, type: !595, scopeLine: 251, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{!584}
!597 = !{!547}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!599 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !165, file: !166, line: 905, type: !600, scopeLine: 905, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !375, !389}
!602 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !165, size: 64)
!603 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB6v15006EPKc", scope: !165, file: !166, line: 922, type: !604, scopeLine: 922, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{!602, !375, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!608 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !165, file: !166, line: 926, type: !609, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!602, !375, !266}
!611 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15006Ev", scope: !165, file: !166, line: 929, type: !612, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !375}
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !165, file: !166, line: 679, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !17, file: !616, line: 27, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__111__wrap_iterIPcEE")
!616 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/wrap_iter.h", directory: "")
!617 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15006Ev", scope: !165, file: !166, line: 932, type: !618, scopeLine: 932, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !598}
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !165, file: !166, line: 680, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !17, file: !616, line: 27, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE")
!622 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15006Ev", scope: !165, file: !166, line: 935, type: !612, scopeLine: 935, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!623 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15006Ev", scope: !165, file: !166, line: 938, type: !618, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!624 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginB6v15006Ev", scope: !165, file: !166, line: 942, type: !625, scopeLine: 942, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !375}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !165, file: !166, line: 681, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !17, file: !458, line: 43, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE")
!629 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginB6v15006Ev", scope: !165, file: !166, line: 945, type: !630, scopeLine: 945, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!632, !598}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !165, file: !166, line: 682, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !17, file: !458, line: 43, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE")
!634 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendB6v15006Ev", scope: !165, file: !166, line: 948, type: !625, scopeLine: 948, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!635 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendB6v15006Ev", scope: !165, file: !166, line: 951, type: !630, scopeLine: 951, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!636 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginB6v15006Ev", scope: !165, file: !166, line: 955, type: !618, scopeLine: 955, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!637 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendB6v15006Ev", scope: !165, file: !166, line: 958, type: !618, scopeLine: 958, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!638 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginB6v15006Ev", scope: !165, file: !166, line: 961, type: !630, scopeLine: 961, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!639 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendB6v15006Ev", scope: !165, file: !166, line: 964, type: !630, scopeLine: 964, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!640 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15006Ev", scope: !165, file: !166, line: 967, type: !641, scopeLine: 967, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!170, !598}
!643 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15006Ev", scope: !165, file: !166, line: 969, type: !641, scopeLine: 969, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!644 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB6v15006Ev", scope: !165, file: !166, line: 970, type: !641, scopeLine: 970, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!645 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB6v15006Ev", scope: !165, file: !166, line: 971, type: !641, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!646 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !165, file: !166, line: 975, type: !647, scopeLine: 975, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !375, !170, !266}
!649 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB6v15006Em", scope: !165, file: !166, line: 976, type: !650, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !375, !170}
!652 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !165, file: !166, line: 978, type: !650, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!653 = !DISubprogram(name: "__resize_default_init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__resize_default_initB6v15006Em", scope: !165, file: !166, line: 989, type: !650, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!654 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveB6v15006Ev", scope: !165, file: !166, line: 991, type: !381, scopeLine: 991, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!655 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitB6v15006Ev", scope: !165, file: !166, line: 992, type: !381, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!656 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB6v15006Ev", scope: !165, file: !166, line: 993, type: !381, scopeLine: 993, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!657 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB6v15006Ev", scope: !165, file: !166, line: 996, type: !658, scopeLine: 996, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!192, !598}
!660 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB6v15006Em", scope: !165, file: !166, line: 999, type: !661, scopeLine: 999, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!663, !598, !170}
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !165, file: !166, line: 667, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !607, size: 64)
!665 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB6v15006Em", scope: !165, file: !166, line: 1000, type: !666, scopeLine: 1000, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!668, !375, !170}
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !165, file: !166, line: 666, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !266, size: 64)
!670 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !165, file: !166, line: 1002, type: !661, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!671 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !165, file: !166, line: 1003, type: !666, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!672 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15006ERKS5_", scope: !165, file: !166, line: 1005, type: !600, scopeLine: 1005, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!673 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15006EPKc", scope: !165, file: !166, line: 1021, type: !604, scopeLine: 1021, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!674 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15006Ec", scope: !165, file: !166, line: 1025, type: !609, scopeLine: 1025, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!675 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendB6v15006ERKS5_", scope: !165, file: !166, line: 1036, type: !600, scopeLine: 1036, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!676 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !165, file: !166, line: 1046, type: !677, scopeLine: 1046, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!677 = !DISubroutineType(types: !678)
!678 = !{!602, !375, !389, !170, !170}
!679 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !165, file: !166, line: 1057, type: !680, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!680 = !DISubroutineType(types: !681)
!681 = !{!602, !375, !606, !170}
!682 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !165, file: !166, line: 1058, type: !604, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!683 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !165, file: !166, line: 1059, type: !684, scopeLine: 1059, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!602, !375, !170, !266}
!686 = !DISubprogram(name: "__append_default_init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__append_default_initB6v15006Em", scope: !165, file: !166, line: 1062, type: !650, scopeLine: 1062, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!687 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !165, file: !166, line: 1092, type: !688, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !375, !266}
!690 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB6v15006Ev", scope: !165, file: !166, line: 1093, type: !381, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!691 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontB6v15006Ev", scope: !165, file: !166, line: 1094, type: !692, scopeLine: 1094, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!668, !375}
!694 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontB6v15006Ev", scope: !165, file: !166, line: 1095, type: !695, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!663, !598}
!697 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB6v15006Ev", scope: !165, file: !166, line: 1096, type: !692, scopeLine: 1096, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!698 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB6v15006Ev", scope: !165, file: !166, line: 1097, type: !695, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!699 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignB6v15006ERKS5_", scope: !165, file: !166, line: 1108, type: !600, scopeLine: 1108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!700 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !165, file: !166, line: 1115, type: !677, scopeLine: 1115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!701 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !165, file: !166, line: 1125, type: !680, scopeLine: 1125, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!702 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !165, file: !166, line: 1126, type: !604, scopeLine: 1126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!703 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !165, file: !166, line: 1127, type: !684, scopeLine: 1127, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!704 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertB6v15006EmRKS5_", scope: !165, file: !166, line: 1150, type: !705, scopeLine: 1150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!602, !375, !170, !389}
!707 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !165, file: !166, line: 1171, type: !708, scopeLine: 1171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!602, !375, !170, !389, !170, !170}
!710 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !165, file: !166, line: 1172, type: !711, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!602, !375, !170, !606, !170}
!713 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !165, file: !166, line: 1173, type: !714, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!602, !375, !170, !606}
!716 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !165, file: !166, line: 1174, type: !717, scopeLine: 1174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!717 = !DISubroutineType(types: !718)
!718 = !{!602, !375, !170, !170, !266}
!719 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !165, file: !166, line: 1175, type: !720, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!614, !375, !620, !266}
!722 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertB6v15006ENS_11__wrap_iterIPKcEEmc", scope: !165, file: !166, line: 1177, type: !723, scopeLine: 1177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!614, !375, !620, !170, !266}
!725 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !165, file: !166, line: 1200, type: !726, scopeLine: 1200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!602, !375, !170, !170}
!728 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseB6v15006ENS_11__wrap_iterIPKcEE", scope: !165, file: !166, line: 1202, type: !729, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!729 = !DISubroutineType(types: !730)
!730 = !{!614, !375, !620}
!731 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseB6v15006ENS_11__wrap_iterIPKcEES9_", scope: !165, file: !166, line: 1204, type: !732, scopeLine: 1204, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!614, !375, !620, !620}
!734 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceB6v15006EmmRKS5_", scope: !165, file: !166, line: 1207, type: !735, scopeLine: 1207, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!602, !375, !170, !170, !389}
!737 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !165, file: !166, line: 1218, type: !738, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!602, !375, !170, !170, !389, !170, !170}
!740 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !165, file: !166, line: 1228, type: !741, scopeLine: 1228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!602, !375, !170, !170, !606, !170}
!743 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !165, file: !166, line: 1229, type: !744, scopeLine: 1229, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!744 = !DISubroutineType(types: !745)
!745 = !{!602, !375, !170, !170, !606}
!746 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !165, file: !166, line: 1230, type: !747, scopeLine: 1230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{!602, !375, !170, !170, !170, !266}
!749 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceB6v15006ENS_11__wrap_iterIPKcEES9_RKS5_", scope: !165, file: !166, line: 1232, type: !750, scopeLine: 1232, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!602, !375, !620, !620, !389}
!752 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceB6v15006ENS_11__wrap_iterIPKcEES9_S8_m", scope: !165, file: !166, line: 1244, type: !753, scopeLine: 1244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!602, !375, !620, !620, !606, !170}
!755 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceB6v15006ENS_11__wrap_iterIPKcEES9_S8_", scope: !165, file: !166, line: 1246, type: !756, scopeLine: 1246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!602, !375, !620, !620, !606}
!758 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceB6v15006ENS_11__wrap_iterIPKcEES9_mc", scope: !165, file: !166, line: 1248, type: !759, scopeLine: 1248, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!759 = !DISubroutineType(types: !760)
!760 = !{!602, !375, !620, !620, !170, !266}
!761 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !165, file: !166, line: 1263, type: !762, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!170, !598, !764, !170, !170}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!765 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15006Emm", scope: !165, file: !166, line: 1265, type: !766, scopeLine: 1265, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!165, !598, !170, !170}
!768 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapB6v15006ERS5_", scope: !165, file: !166, line: 1268, type: !769, scopeLine: 1268, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !375, !602}
!771 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15006Ev", scope: !165, file: !166, line: 1277, type: !772, scopeLine: 1277, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!606, !598}
!774 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev", scope: !165, file: !166, line: 1279, type: !772, scopeLine: 1279, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!775 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15006Ev", scope: !165, file: !166, line: 1286, type: !776, scopeLine: 1286, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!379, !598}
!778 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB6v15006ERKS5_m", scope: !165, file: !166, line: 1289, type: !779, scopeLine: 1289, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!779 = !DISubroutineType(types: !780)
!780 = !{!170, !598, !389, !170}
!781 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !165, file: !166, line: 1300, type: !782, scopeLine: 1300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!782 = !DISubroutineType(types: !783)
!783 = !{!170, !598, !606, !170, !170}
!784 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB6v15006EPKcm", scope: !165, file: !166, line: 1302, type: !785, scopeLine: 1302, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!170, !598, !606, !170}
!787 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !165, file: !166, line: 1303, type: !788, scopeLine: 1303, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{!170, !598, !266, !170}
!790 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindB6v15006ERKS5_m", scope: !165, file: !166, line: 1306, type: !779, scopeLine: 1306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!791 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !165, file: !166, line: 1317, type: !782, scopeLine: 1317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!792 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindB6v15006EPKcm", scope: !165, file: !166, line: 1319, type: !785, scopeLine: 1319, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!793 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !165, file: !166, line: 1320, type: !788, scopeLine: 1320, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!794 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofB6v15006ERKS5_m", scope: !165, file: !166, line: 1323, type: !779, scopeLine: 1323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!795 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !165, file: !166, line: 1334, type: !782, scopeLine: 1334, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!796 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofB6v15006EPKcm", scope: !165, file: !166, line: 1336, type: !785, scopeLine: 1336, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!797 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofB6v15006Ecm", scope: !165, file: !166, line: 1338, type: !788, scopeLine: 1338, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!798 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofB6v15006ERKS5_m", scope: !165, file: !166, line: 1341, type: !779, scopeLine: 1341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!799 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !165, file: !166, line: 1352, type: !782, scopeLine: 1352, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!800 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofB6v15006EPKcm", scope: !165, file: !166, line: 1354, type: !785, scopeLine: 1354, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!801 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofB6v15006Ecm", scope: !165, file: !166, line: 1356, type: !788, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!802 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB6v15006ERKS5_m", scope: !165, file: !166, line: 1359, type: !779, scopeLine: 1359, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!803 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !165, file: !166, line: 1370, type: !782, scopeLine: 1370, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!804 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB6v15006EPKcm", scope: !165, file: !166, line: 1372, type: !785, scopeLine: 1372, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!805 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB6v15006Ecm", scope: !165, file: !166, line: 1374, type: !788, scopeLine: 1374, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!806 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB6v15006ERKS5_m", scope: !165, file: !166, line: 1377, type: !779, scopeLine: 1377, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!807 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !165, file: !166, line: 1388, type: !782, scopeLine: 1388, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!808 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB6v15006EPKcm", scope: !165, file: !166, line: 1390, type: !785, scopeLine: 1390, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!809 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB6v15006Ecm", scope: !165, file: !166, line: 1392, type: !788, scopeLine: 1392, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!810 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15006ERKS5_", scope: !165, file: !166, line: 1395, type: !811, scopeLine: 1395, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!25, !598, !389}
!813 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15006EmmRKS5_", scope: !165, file: !166, line: 1416, type: !814, scopeLine: 1416, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!25, !598, !170, !170, !389}
!816 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !165, file: !166, line: 1418, type: !817, scopeLine: 1418, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!25, !598, !170, !170, !389, !170, !170}
!819 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !165, file: !166, line: 1429, type: !820, scopeLine: 1429, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!25, !598, !606}
!822 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !165, file: !166, line: 1430, type: !823, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!25, !598, !170, !170, !606}
!825 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !165, file: !166, line: 1432, type: !826, scopeLine: 1432, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{!25, !598, !170, !170, !606, !170}
!828 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsB6v15006Ev", scope: !165, file: !166, line: 1474, type: !658, scopeLine: 1474, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!829 = !DISubprogram(name: "__clear_and_shrink", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__clear_and_shrinkB6v15006Ev", scope: !165, file: !166, line: 1476, type: !381, scopeLine: 1476, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!830 = !DISubprogram(name: "__shrink_or_extend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__shrink_or_extendB6v15006Em", scope: !165, file: !166, line: 1493, type: !650, scopeLine: 1493, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev", scope: !165, file: !166, line: 1496, type: !658, scopeLine: 1496, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DISubprogram(name: "__begin_lifetime", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__begin_lifetimeB6v15006EPcm", scope: !165, file: !166, line: 1502, type: !833, scopeLine: 1502, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !257, !170}
!835 = !DISubprogram(name: "__default_init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15006Ev", scope: !165, file: !166, line: 1514, type: !381, scopeLine: 1514, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DISubprogram(name: "__deallocate_constexpr", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__deallocate_constexprB6v15006Ev", scope: !165, file: !166, line: 1526, type: !381, scopeLine: 1526, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DISubprogram(name: "__fits_in_sso", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB6v15006Em", scope: !165, file: !166, line: 1531, type: !838, scopeLine: 1531, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!838 = !DISubroutineType(types: !839)
!839 = !{!192, !170}
!840 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15006Ev", scope: !165, file: !166, line: 1563, type: !841, scopeLine: 1563, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!843, !375}
!843 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !379, size: 64)
!844 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15006Ev", scope: !165, file: !166, line: 1564, type: !845, scopeLine: 1564, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{!377, !598}
!847 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15006Em", scope: !165, file: !166, line: 1567, type: !650, scopeLine: 1567, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15006Ev", scope: !165, file: !166, line: 1574, type: !641, scopeLine: 1574, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB6v15006Em", scope: !165, file: !166, line: 1580, type: !650, scopeLine: 1580, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15006Ev", scope: !165, file: !166, line: 1583, type: !641, scopeLine: 1583, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB6v15006Em", scope: !165, file: !166, line: 1586, type: !650, scopeLine: 1586, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capB6v15006Em", scope: !165, file: !166, line: 1590, type: !650, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB6v15006Ev", scope: !165, file: !166, line: 1596, type: !641, scopeLine: 1596, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerB6v15006EPc", scope: !165, file: !166, line: 1601, type: !855, scopeLine: 1601, flags: DIFlagPrototyped, spFlags: 0)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !375, !257}
!857 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev", scope: !165, file: !166, line: 1604, type: !858, scopeLine: 1604, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{!257, !375}
!860 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev", scope: !165, file: !166, line: 1607, type: !861, scopeLine: 1607, flags: DIFlagPrototyped, spFlags: 0)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !598}
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !165, file: !166, line: 669, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !173, file: !172, line: 234, baseType: !215)
!865 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev", scope: !165, file: !166, line: 1610, type: !858, scopeLine: 1610, flags: DIFlagPrototyped, spFlags: 0)
!866 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev", scope: !165, file: !166, line: 1613, type: !861, scopeLine: 1613, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev", scope: !165, file: !166, line: 1616, type: !858, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev", scope: !165, file: !166, line: 1619, type: !861, scopeLine: 1619, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15006Ev", scope: !165, file: !166, line: 1623, type: !381, scopeLine: 1623, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendB6v15006Em", scope: !165, file: !166, line: 1633, type: !871, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!170, !170}
!873 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !165, file: !166, line: 1648, type: !874, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !375, !606, !170, !170}
!876 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !165, file: !166, line: 1650, type: !877, scopeLine: 1650, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !375, !606, !170}
!879 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !165, file: !166, line: 1652, type: !647, scopeLine: 1652, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DISubprogram(name: "__init_copy_ctor_external", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm", scope: !165, file: !166, line: 1662, type: !877, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: 0)
!881 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !165, file: !166, line: 1681, type: !882, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !375, !170, !170, !170, !170, !170, !170}
!884 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !165, file: !166, line: 1684, type: !885, scopeLine: 1684, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !375, !170, !170, !170, !170, !170, !170, !606}
!887 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB6v15006Em", scope: !165, file: !166, line: 1695, type: !650, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DISubprogram(name: "__erase_external_with_move", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__erase_external_with_moveEmm", scope: !165, file: !166, line: 1699, type: !889, scopeLine: 1699, flags: DIFlagPrototyped, spFlags: 0)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !375, !170, !170}
!891 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocB6v15006ERKS5_", scope: !165, file: !166, line: 1702, type: !387, scopeLine: 1702, flags: DIFlagPrototyped, spFlags: 0)
!892 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocB6v15006ERKS5_NS_17integral_constantIbLb1EEE", scope: !165, file: !166, line: 1707, type: !893, scopeLine: 1707, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !375, !389, !895}
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !17, file: !896, line: 37, baseType: !897)
!896 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__type_traits/integral_constant.h", directory: "")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !17, file: !896, line: 21, size: 8, flags: DIFlagTypePassByValue, elements: !898, templateParams: !907, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE")
!898 = !{!899, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !897, file: !896, line: 23, baseType: !900, flags: DIFlagStaticMember, extraData: i1 true)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!901 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbB6v15006Ev", scope: !897, file: !896, line: 27, type: !902, scopeLine: 27, flags: DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !897, file: !896, line: 24, baseType: !192)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!907 = !{!908, !909}
!908 = !DITemplateTypeParameter(name: "_Tp", type: !192)
!909 = !DITemplateValueParameter(name: "__v", type: !192, value: i8 1)
!910 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocB6v15006ERKS5_NS_17integral_constantIbLb0EEE", scope: !165, file: !166, line: 1733, type: !911, scopeLine: 1733, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !375, !389, !913}
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !17, file: !896, line: 38, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !17, file: !896, line: 21, size: 8, flags: DIFlagTypePassByValue, elements: !915, templateParams: !923, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE")
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !914, file: !896, line: 23, baseType: !900, flags: DIFlagStaticMember, extraData: i1 false)
!917 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbB6v15006Ev", scope: !914, file: !896, line: 27, type: !918, scopeLine: 27, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DISubroutineType(types: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !914, file: !896, line: 24, baseType: !192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!923 = !{!908, !924}
!924 = !DITemplateValueParameter(name: "__v", type: !192, value: i8 0)
!925 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15006ERS5_", scope: !165, file: !166, line: 1751, type: !769, scopeLine: 1751, flags: DIFlagPrototyped, spFlags: 0)
!926 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15006ERS5_NS_17integral_constantIbLb1EEE", scope: !165, file: !166, line: 1759, type: !927, scopeLine: 1759, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !375, !602, !895}
!929 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15006ERS5_NS_17integral_constantIbLb0EEE", scope: !165, file: !166, line: 1766, type: !930, scopeLine: 1766, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !375, !602, !913}
!932 = !DISubprogram(name: "__assign_external", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKc", scope: !165, file: !166, line: 1770, type: !604, scopeLine: 1770, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DISubprogram(name: "__assign_external", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm", scope: !165, file: !166, line: 1771, type: !680, scopeLine: 1771, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DISubprogram(name: "__assign_short", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm", scope: !165, file: !166, line: 1774, type: !680, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DISubprogram(name: "__null_terminate_at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB6v15006EPcm", scope: !165, file: !166, line: 1784, type: !936, scopeLine: 1784, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!602, !375, !764, !170}
!938 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastB6v15006Em", scope: !165, file: !166, line: 1791, type: !650, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev", scope: !165, file: !166, line: 1804, type: !940, scopeLine: 1804, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !598}
!942 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB6v15006Ev", scope: !165, file: !166, line: 1809, type: !940, scopeLine: 1809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!943 = !{!547, !548, !944}
!944 = !DITemplateTypeParameter(name: "_Allocator", type: !181)
!945 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 146, type: !946, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !146, !150, !155, !132}
!948 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 147, type: !949, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !146, !150, !161, !132}
!951 = !DISubprogram(name: "locale", scope: !127, file: !128, line: 150, type: !952, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !146, !150, !150, !132}
!954 = !DISubprogram(name: "~locale", scope: !127, file: !128, line: 152, type: !144, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!955 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16localeaSERKS0_", scope: !127, file: !128, line: 154, type: !956, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!150, !146, !150}
!958 = !DISubprogram(name: "name", linkageName: "_ZNKSt3__16locale4nameEv", scope: !127, file: !128, line: 161, type: !959, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!959 = !DISubroutineType(types: !960)
!960 = !{!163, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!962 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt3__16localeeqERKS0_", scope: !127, file: !128, line: 162, type: !963, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!963 = !DISubroutineType(types: !964)
!964 = !{!192, !961, !150}
!965 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt3__16localeneERKS0_", scope: !127, file: !128, line: 163, type: !963, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!966 = !DISubprogram(name: "global", linkageName: "_ZNSt3__16locale6globalERKS0_", scope: !127, file: !128, line: 170, type: !967, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!967 = !DISubroutineType(types: !968)
!968 = !{!127, !150}
!969 = !DISubprogram(name: "classic", linkageName: "_ZNSt3__16locale7classicEv", scope: !127, file: !128, line: 171, type: !970, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!970 = !DISubroutineType(types: !971)
!971 = !{!150}
!972 = !DISubprogram(name: "__install_ctor", linkageName: "_ZNSt3__16locale14__install_ctorERKS0_PNS0_5facetEl", scope: !127, file: !128, line: 177, type: !973, scopeLine: 177, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !146, !150, !975, !66}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "facet", scope: !127, file: !128, line: 186, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !977, vtableHolder: !979)
!977 = !{!978, !1009, !1013, !1016}
!978 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !976, baseType: !979, flags: DIFlagPublic, extraData: i32 0)
!979 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count", scope: !17, file: !980, line: 147, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !981, vtableHolder: !979)
!980 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/shared_ptr.h", directory: "")
!981 = !{!982, !983, !984, !990, !994, !997, !998, !1001, !1002, !1005}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$__shared_count", scope: !980, file: !980, baseType: !21, size: 64, flags: DIFlagArtificial)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__shared_owners_", scope: !979, file: !980, line: 153, baseType: !66, size: 64, offset: 64, flags: DIFlagProtected)
!984 = !DISubprogram(name: "__shared_count", scope: !979, file: !980, line: 149, type: !985, scopeLine: 149, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !987, !988}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!988 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!990 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__shared_countaSERKS0_", scope: !979, file: !980, line: 150, type: !991, scopeLine: 150, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!993, !987, !988}
!993 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !979, size: 64)
!994 = !DISubprogram(name: "~__shared_count", scope: !979, file: !980, line: 154, type: !995, scopeLine: 154, containingType: !979, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !987}
!997 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__114__shared_count16__on_zero_sharedEv", scope: !979, file: !980, line: 156, type: !995, scopeLine: 156, containingType: !979, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!998 = !DISubprogram(name: "__shared_count", scope: !979, file: !980, line: 160, type: !999, scopeLine: 160, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !987, !66}
!1001 = !DISubprogram(name: "__add_shared", linkageName: "_ZNSt3__114__shared_count12__add_sharedB6v15006Ev", scope: !979, file: !980, line: 168, type: !995, scopeLine: 168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1002 = !DISubprogram(name: "__release_shared", linkageName: "_ZNSt3__114__shared_count16__release_sharedB6v15006Ev", scope: !979, file: !980, line: 172, type: !1003, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!192, !987}
!1005 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt3__114__shared_count9use_countB6v15006Ev", scope: !979, file: !980, line: 181, type: !1006, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!66, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1009 = !DISubprogram(name: "facet", scope: !976, file: !128, line: 191, type: !1010, scopeLine: 191, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !83}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1013 = !DISubprogram(name: "~facet", scope: !976, file: !128, line: 194, type: !1014, scopeLine: 194, containingType: !976, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !1012}
!1016 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__16locale5facet16__on_zero_sharedEv", scope: !976, file: !128, line: 199, type: !1014, scopeLine: 199, containingType: !976, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1017 = !DISubprogram(name: "__global", linkageName: "_ZNSt3__16locale8__globalEv", scope: !127, file: !128, line: 178, type: !1018, scopeLine: 178, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !127, size: 64)
!1021 = !DISubprogram(name: "has_facet", linkageName: "_ZNKSt3__16locale9has_facetERNS0_2idE", scope: !127, file: !128, line: 179, type: !1022, scopeLine: 179, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!192, !961, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !127, file: !128, line: 202, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1026, identifier: "_ZTSNSt3__16locale2idE")
!1026 = !{!1027, !1046, !1049, !1050, !1054, !1059, !1060, !1061}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__flag_", scope: !1025, file: !128, line: 204, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_flag", scope: !17, file: !1029, line: 573, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1030, identifier: "_ZTSNSt3__19once_flagE")
!1029 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/mutex", directory: "")
!1030 = !{!1031, !1033, !1037, !1042}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "__state_", scope: !1028, file: !1029, line: 588, baseType: !1032, size: 64, flags: DIFlagPrivate)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "_State_type", scope: !1028, file: !1029, line: 584, baseType: !87)
!1033 = !DISubprogram(name: "once_flag", scope: !1028, file: !1029, line: 577, type: !1034, scopeLine: 577, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1037 = !DISubprogram(name: "once_flag", scope: !1028, file: !1029, line: 578, type: !1038, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !1036, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1042 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__19once_flagaSERKS0_", scope: !1028, file: !1029, line: 579, type: !1043, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045, !1036, !1040}
!1045 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1028, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1025, file: !128, line: 205, baseType: !1047, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1048, line: 30, baseType: !25)
!1048 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "")
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__next_id", scope: !1025, file: !128, line: 207, baseType: !1047, flags: DIFlagStaticMember)
!1050 = !DISubprogram(name: "id", scope: !1025, file: !128, line: 209, type: !1051, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1054 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16locale2idaSERKS1_", scope: !1025, file: !128, line: 210, type: !1055, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1053, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1059 = !DISubprogram(name: "id", scope: !1025, file: !128, line: 211, type: !1055, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1060 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__16locale2id6__initEv", scope: !1025, file: !128, line: 214, type: !1051, scopeLine: 214, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__16locale2id5__getEv", scope: !1025, file: !128, line: 216, type: !1062, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!66, !1053}
!1064 = !DISubprogram(name: "use_facet", linkageName: "_ZNKSt3__16locale9use_facetERNS0_2idE", scope: !127, file: !128, line: 180, type: !1065, scopeLine: 180, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1067, !961, !1024}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!1069 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__18ios_base6getlocEv", scope: !16, file: !15, line: 307, type: !1070, scopeLine: 307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!127, !103}
!1072 = !DISubprogram(name: "xalloc", linkageName: "_ZNSt3__18ios_base6xallocEv", scope: !16, file: !15, line: 310, type: !23, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1073 = !DISubprogram(name: "iword", linkageName: "_ZNSt3__18ios_base5iwordEi", scope: !16, file: !15, line: 311, type: !1074, scopeLine: 311, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1076, !108, !25}
!1076 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64)
!1077 = !DISubprogram(name: "pword", linkageName: "_ZNSt3__18ios_base5pwordEi", scope: !16, file: !15, line: 312, type: !1078, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!1080, !108, !25}
!1080 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64)
!1081 = !DISubprogram(name: "~ios_base", scope: !16, file: !15, line: 315, type: !1082, scopeLine: 315, containingType: !16, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !108}
!1084 = !DISubprogram(name: "register_callback", linkageName: "_ZNSt3__18ios_base17register_callbackEPFvNS0_5eventERS0_iEi", scope: !16, file: !15, line: 320, type: !1085, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !108, !75, !25}
!1087 = !DISubprogram(name: "ios_base", scope: !16, file: !15, line: 322, type: !1088, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !108, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !104, size: 64)
!1091 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__18ios_baseaSERKS0_", scope: !16, file: !15, line: 323, type: !1092, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!79, !108, !1090}
!1094 = !DISubprogram(name: "sync_with_stdio", linkageName: "_ZNSt3__18ios_base15sync_with_stdioEb", scope: !16, file: !15, line: 325, type: !1095, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!192, !192}
!1097 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__18ios_base7rdstateB6v15006Ev", scope: !16, file: !15, line: 327, type: !1098, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!49, !103}
!1100 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__18ios_base5clearEj", scope: !16, file: !15, line: 328, type: !1101, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !108, !49}
!1103 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateB6v15006Ej", scope: !16, file: !15, line: 329, type: !1101, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1104 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__18ios_base4goodB6v15006Ev", scope: !16, file: !15, line: 331, type: !1105, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!192, !103}
!1107 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__18ios_base3eofB6v15006Ev", scope: !16, file: !15, line: 332, type: !1105, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1108 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__18ios_base4failB6v15006Ev", scope: !16, file: !15, line: 333, type: !1105, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1109 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__18ios_base3badB6v15006Ev", scope: !16, file: !15, line: 334, type: !1105, scopeLine: 334, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1110 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__18ios_base10exceptionsB6v15006Ev", scope: !16, file: !15, line: 336, type: !1098, scopeLine: 336, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1111 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__18ios_base10exceptionsB6v15006Ej", scope: !16, file: !15, line: 337, type: !1101, scopeLine: 337, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1112 = !DISubprogram(name: "__set_badbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv", scope: !16, file: !15, line: 339, type: !1082, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1113 = !DISubprogram(name: "__set_failbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base34__set_failbit_and_consider_rethrowEv", scope: !16, file: !15, line: 340, type: !1082, scopeLine: 340, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1114 = !DISubprogram(name: "__setstate_nothrow", linkageName: "_ZNSt3__18ios_base18__setstate_nothrowB6v15006Ej", scope: !16, file: !15, line: 343, type: !1101, scopeLine: 343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1115 = !DISubprogram(name: "ios_base", scope: !16, file: !15, line: 353, type: !1082, scopeLine: 353, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1116 = !DISubprogram(name: "init", linkageName: "_ZNSt3__18ios_base4initEPv", scope: !16, file: !15, line: 356, type: !1117, scopeLine: 356, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !108, !71}
!1119 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufB6v15006Ev", scope: !16, file: !15, line: 357, type: !1120, scopeLine: 357, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!71, !103}
!1122 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__18ios_base5rdbufB6v15006EPv", scope: !16, file: !15, line: 360, type: !1117, scopeLine: 360, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1123 = !DISubprogram(name: "__call_callbacks", linkageName: "_ZNSt3__18ios_base16__call_callbacksENS0_5eventE", scope: !16, file: !15, line: 366, type: !1124, scopeLine: 366, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !108, !14}
!1126 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__18ios_base7copyfmtERKS0_", scope: !16, file: !15, line: 367, type: !1088, scopeLine: 367, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1127 = !DISubprogram(name: "move", linkageName: "_ZNSt3__18ios_base4moveERS0_", scope: !16, file: !15, line: 368, type: !1128, scopeLine: 368, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !108, !79}
!1130 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__18ios_base4swapERS0_", scope: !16, file: !15, line: 369, type: !1128, scopeLine: 369, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1131 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__18ios_base9set_rdbufB6v15006EPv", scope: !16, file: !15, line: 372, type: !1117, scopeLine: 372, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIEnumerator(name: "erase_event", value: 0, isUnsigned: true)
!1134 = !DIEnumerator(name: "imbue_event", value: 1, isUnsigned: true)
!1135 = !DIEnumerator(name: "copyfmt_event", value: 2, isUnsigned: true)
!1136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "seekdir", scope: !16, file: !15, line: 280, baseType: !29, size: 32, elements: !1137, identifier: "_ZTSNSt3__18ios_base7seekdirE")
!1137 = !{!1138, !1139, !1140}
!1138 = !DIEnumerator(name: "beg", value: 0, isUnsigned: true)
!1139 = !DIEnumerator(name: "cur", value: 1, isUnsigned: true)
!1140 = !DIEnumerator(name: "end", value: 2, isUnsigned: true)
!1141 = !{!1142, !1184, !584, !16}
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1144, file: !1143, line: 762, baseType: !1463)
!1143 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/ostream", directory: "")
!1144 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !17, file: !1143, line: 752, type: !1145, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !546, retainedNodes: !288)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1147, !1147, !155, !83}
!1147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !17, file: !1143, line: 1185, size: 1280, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1149, vtableHolder: !1148, templateParams: !546)
!1149 = !{!1150, !1347, !1348, !1352, !1355, !1359, !1362, !1365, !1370, !1373, !1379, !1385, !1391, !1394, !1398, !1402, !1405, !1408, !1411, !1414, !1417, !1421, !1425, !1429, !1433, !1436, !1439, !1443, !1448, !1451, !1455, !1458, !1462}
!1150 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1148, baseType: !1151, offset: 24, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!1151 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !17, file: !1152, line: 494, size: 1216, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1153, vtableHolder: !16, templateParams: !546)
!1152 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/streambuf", directory: "")
!1153 = !{!1154, !1155, !1157, !1159, !1164, !1167, !1170, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1300, !1303, !1306, !1309, !1312, !1315, !1320, !1324, !1327, !1330, !1333, !1336, !1337, !1338, !1341, !1345, !1346}
!1154 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1151, baseType: !16, flags: DIFlagPublic, extraData: i32 0)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1151, file: !15, line: 688, baseType: !1156, size: 64, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1151, file: !15, line: 689, baseType: !1158, size: 32, offset: 1152)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1151, file: !15, line: 612, baseType: !584)
!1159 = !DISubprogram(name: "operator void *", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvPvB6v15006Ev", scope: !1151, file: !15, line: 623, type: !1160, scopeLine: 623, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!71, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1164 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntB6v15006Ev", scope: !1151, file: !15, line: 629, type: !1165, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!192, !1162}
!1167 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateB6v15006Ev", scope: !1151, file: !15, line: 630, type: !1168, scopeLine: 630, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!49, !1162}
!1170 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15006Ej", scope: !1151, file: !15, line: 631, type: !1171, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173, !49}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1174 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej", scope: !1151, file: !15, line: 632, type: !1171, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1175 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB6v15006Ev", scope: !1151, file: !15, line: 633, type: !1165, scopeLine: 633, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1176 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofB6v15006Ev", scope: !1151, file: !15, line: 634, type: !1165, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1177 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB6v15006Ev", scope: !1151, file: !15, line: 635, type: !1165, scopeLine: 635, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1178 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badB6v15006Ev", scope: !1151, file: !15, line: 636, type: !1165, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1179 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB6v15006Ev", scope: !1151, file: !15, line: 638, type: !1168, scopeLine: 638, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1180 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB6v15006Ej", scope: !1151, file: !15, line: 639, type: !1171, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1181 = !DISubprogram(name: "basic_ios", scope: !1151, file: !15, line: 643, type: !1182, scopeLine: 643, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1173, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !17, file: !1152, line: 491, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1186, vtableHolder: !1185, templateParams: !546)
!1186 = !{!1187, !1188, !1189, !1192, !1193, !1194, !1195, !1196, !1197, !1201, !1204, !1209, !1212, !1223, !1226, !1229, !1232, !1236, !1237, !1238, !1241, !1244, !1245, !1246, !1251, !1252, !1256, !1260, !1263, !1266, !1267, !1268, !1271, !1274, !1275, !1276, !1277, !1278, !1281, !1284, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1298, !1299}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1152, file: !1152, baseType: !21, size: 64, flags: DIFlagArtificial)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1185, file: !1152, line: 298, baseType: !127, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1185, file: !1152, line: 299, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1185, file: !1152, line: 131, baseType: !157)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1185, file: !1152, line: 300, baseType: !1190, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1185, file: !1152, line: 301, baseType: !1190, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1185, file: !1152, line: 302, baseType: !1190, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1185, file: !1152, line: 303, baseType: !1190, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1185, file: !1152, line: 304, baseType: !1190, size: 64, offset: 448)
!1197 = !DISubprogram(name: "~basic_streambuf", scope: !1185, file: !1152, line: 140, type: !1198, scopeLine: 140, containingType: !1185, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1201 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB6v15006ERKNS_6localeE", scope: !1185, file: !1152, line: 144, type: !1202, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!127, !1200, !150}
!1204 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocB6v15006Ev", scope: !1185, file: !1152, line: 152, type: !1205, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!127, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1209 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufB6v15006EPcl", scope: !1185, file: !1152, line: 156, type: !1210, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1184, !1200, !1190, !63}
!1212 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB6v15006ExNS_8ios_base7seekdirEj", scope: !1185, file: !1152, line: 160, type: !1213, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1215, !1200, !1219, !1136, !55}
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1185, file: !1152, line: 134, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !549, file: !550, line: 194, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !17, file: !164, line: 230, baseType: !1218)
!1218 = !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !17, file: !164, line: 229, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE")
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1185, file: !1152, line: 135, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !549, file: !550, line: 193, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !17, file: !164, line: 242, baseType: !1222)
!1222 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1223 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposB6v15006ENS_4fposI11__mbstate_tEEj", scope: !1185, file: !1152, line: 165, type: !1224, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!1215, !1200, !1215, !55}
!1226 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB6v15006Ev", scope: !1185, file: !1152, line: 170, type: !1227, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!25, !1200}
!1229 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availB6v15006Ev", scope: !1185, file: !1152, line: 175, type: !1230, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!63, !1200}
!1232 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcB6v15006Ev", scope: !1185, file: !1152, line: 182, type: !1233, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1235, !1200}
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1185, file: !1152, line: 133, baseType: !584)
!1236 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB6v15006Ev", scope: !1185, file: !1152, line: 189, type: !1233, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1237 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB6v15006Ev", scope: !1185, file: !1152, line: 196, type: !1233, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1238 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnB6v15006EPcl", scope: !1185, file: !1152, line: 203, type: !1239, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!63, !1200, !1190, !63}
!1241 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcB6v15006Ec", scope: !1185, file: !1152, line: 208, type: !1242, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1235, !1200, !1191}
!1244 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcB6v15006Ev", scope: !1185, file: !1152, line: 215, type: !1233, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1245 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB6v15006Ec", scope: !1185, file: !1152, line: 223, type: !1242, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1246 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl", scope: !1185, file: !1152, line: 231, type: !1247, scopeLine: 231, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!63, !1200, !1249, !63}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1251 = !DISubprogram(name: "basic_streambuf", scope: !1185, file: !1152, line: 235, type: !1198, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1252 = !DISubprogram(name: "basic_streambuf", scope: !1185, file: !1152, line: 236, type: !1253, scopeLine: 236, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !1200, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1208, size: 64)
!1256 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1185, file: !1152, line: 237, type: !1257, scopeLine: 237, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1259, !1200, !1255}
!1259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1185, size: 64)
!1260 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1185, file: !1152, line: 238, type: !1261, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1200, !1259}
!1263 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15006Ev", scope: !1185, file: !1152, line: 241, type: !1264, scopeLine: 241, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1190, !1207}
!1266 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15006Ev", scope: !1185, file: !1152, line: 242, type: !1264, scopeLine: 242, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1267 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15006Ev", scope: !1185, file: !1152, line: 243, type: !1264, scopeLine: 243, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1268 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpB6v15006Ei", scope: !1185, file: !1152, line: 246, type: !1269, scopeLine: 246, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1200, !25}
!1271 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15006EPcS4_S4_", scope: !1185, file: !1152, line: 249, type: !1272, scopeLine: 249, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1200, !1190, !1190, !1190}
!1274 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15006Ev", scope: !1185, file: !1152, line: 256, type: !1264, scopeLine: 256, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1275 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15006Ev", scope: !1185, file: !1152, line: 257, type: !1264, scopeLine: 257, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1276 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15006Ev", scope: !1185, file: !1152, line: 258, type: !1264, scopeLine: 258, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1277 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15006Ei", scope: !1185, file: !1152, line: 261, type: !1269, scopeLine: 261, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1278 = !DISubprogram(name: "__pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB6v15006El", scope: !1185, file: !1152, line: 264, type: !1279, scopeLine: 264, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1200, !63}
!1281 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15006EPcS4_", scope: !1185, file: !1152, line: 267, type: !1282, scopeLine: 267, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1200, !1190, !1190}
!1284 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1185, file: !1152, line: 274, type: !1285, scopeLine: 274, containingType: !1185, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1200, !150}
!1287 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1185, file: !1152, line: 277, type: !1210, scopeLine: 277, containingType: !1185, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1288 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1185, file: !1152, line: 278, type: !1213, scopeLine: 278, containingType: !1185, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1289 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1185, file: !1152, line: 280, type: !1224, scopeLine: 280, containingType: !1185, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1290 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1185, file: !1152, line: 282, type: !1227, scopeLine: 282, containingType: !1185, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1291 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1185, file: !1152, line: 285, type: !1230, scopeLine: 285, containingType: !1185, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1292 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1185, file: !1152, line: 286, type: !1239, scopeLine: 286, containingType: !1185, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1293 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1185, file: !1152, line: 287, type: !1233, scopeLine: 287, containingType: !1185, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1294 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1185, file: !1152, line: 288, type: !1233, scopeLine: 288, containingType: !1185, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1295 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1185, file: !1152, line: 291, type: !1296, scopeLine: 291, containingType: !1185, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1235, !1200, !1235}
!1298 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1185, file: !1152, line: 294, type: !1247, scopeLine: 294, containingType: !1185, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1299 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1185, file: !1152, line: 295, type: !1296, scopeLine: 295, containingType: !1185, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1300 = !DISubprogram(name: "~basic_ios", scope: !1151, file: !15, line: 644, type: !1301, scopeLine: 644, containingType: !1151, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1173}
!1303 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB6v15006Ev", scope: !1151, file: !15, line: 648, type: !1304, scopeLine: 648, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1156, !1162}
!1306 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB6v15006EPNS_13basic_ostreamIcS2_EE", scope: !1151, file: !15, line: 650, type: !1307, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1156, !1173, !1156}
!1309 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev", scope: !1151, file: !15, line: 653, type: !1310, scopeLine: 653, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1184, !1162}
!1312 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006EPNS_15basic_streambufIcS2_EE", scope: !1151, file: !15, line: 655, type: !1313, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1184, !1173, !1184}
!1315 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1151, file: !15, line: 657, type: !1316, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1318, !1173, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1151, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1163, size: 64)
!1320 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev", scope: !1151, file: !15, line: 660, type: !1321, scopeLine: 660, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1323, !1162}
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1151, file: !15, line: 609, baseType: !157)
!1324 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ec", scope: !1151, file: !15, line: 662, type: !1325, scopeLine: 662, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1323, !1173, !1323}
!1327 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB6v15006ERKNS_6localeE", scope: !1151, file: !15, line: 665, type: !1328, scopeLine: 665, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!127, !1173, !150}
!1330 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowB6v15006Ecc", scope: !1151, file: !15, line: 668, type: !1331, scopeLine: 668, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!157, !1162, !1323, !157}
!1333 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec", scope: !1151, file: !15, line: 670, type: !1334, scopeLine: 670, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1323, !1162, !157}
!1336 = !DISubprogram(name: "basic_ios", scope: !1151, file: !15, line: 674, type: !1301, scopeLine: 674, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1337 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15006EPNS_15basic_streambufIcS2_EE", scope: !1151, file: !15, line: 677, type: !1182, scopeLine: 677, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1338 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveB6v15006ERS3_", scope: !1151, file: !15, line: 680, type: !1339, scopeLine: 680, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1173, !1318}
!1341 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveB6v15006EOS3_", scope: !1151, file: !15, line: 682, type: !1342, scopeLine: 682, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !1173, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1151, size: 64)
!1345 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapB6v15006ERS3_", scope: !1151, file: !15, line: 684, type: !1339, scopeLine: 684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1346 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufB6v15006EPNS_15basic_streambufIcS2_EE", scope: !1151, file: !15, line: 686, type: !1182, scopeLine: 686, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1143, file: !1143, baseType: !21, size: 64, flags: DIFlagArtificial)
!1348 = !DISubprogram(name: "basic_ostream", scope: !1148, file: !1143, line: 198, type: !1349, scopeLine: 198, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1351, !1184}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1352 = !DISubprogram(name: "~basic_ostream", scope: !1148, file: !1143, line: 200, type: !1353, scopeLine: 200, containingType: !1148, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1351}
!1355 = !DISubprogram(name: "basic_ostream", scope: !1148, file: !1143, line: 203, type: !1356, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1351, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1148, size: 64)
!1359 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1148, file: !1143, line: 207, type: !1360, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1147, !1351, !1358}
!1362 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapB6v15006ERS3_", scope: !1148, file: !1143, line: 210, type: !1363, scopeLine: 210, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1351, !1147}
!1365 = !DISubprogram(name: "basic_ostream", scope: !1148, file: !1143, line: 213, type: !1366, scopeLine: 213, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1351, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1370 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1148, file: !1143, line: 214, type: !1371, scopeLine: 214, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1147, !1351, !1368}
!1373 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E", scope: !1148, file: !1143, line: 222, type: !1374, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1147, !1351, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1147, !1147}
!1379 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_9basic_iosIcS2_EES6_E", scope: !1148, file: !1143, line: 226, type: !1380, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1147, !1351, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1318, !1318}
!1385 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E", scope: !1148, file: !1143, line: 231, type: !1386, scopeLine: 231, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1147, !1351, !1388}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!79, !79}
!1391 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1148, file: !1143, line: 234, type: !1392, scopeLine: 234, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1147, !1351, !192}
!1394 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1148, file: !1143, line: 235, type: !1395, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1147, !1351, !1397}
!1397 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1398 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1148, file: !1143, line: 236, type: !1399, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1147, !1351, !1401}
!1401 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1402 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1148, file: !1143, line: 237, type: !1403, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1147, !1351, !25}
!1405 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1148, file: !1143, line: 238, type: !1406, scopeLine: 238, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1147, !1351, !29}
!1408 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1148, file: !1143, line: 239, type: !1409, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1147, !1351, !66}
!1411 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1148, file: !1143, line: 240, type: !1412, scopeLine: 240, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1147, !1351, !87}
!1414 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1148, file: !1143, line: 241, type: !1415, scopeLine: 241, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1147, !1351, !1222}
!1417 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1148, file: !1143, line: 242, type: !1418, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1147, !1351, !1420}
!1420 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1421 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1148, file: !1143, line: 243, type: !1422, scopeLine: 243, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1147, !1351, !1424}
!1424 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1425 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1148, file: !1143, line: 244, type: !1426, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1147, !1351, !1428}
!1428 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1429 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1148, file: !1143, line: 245, type: !1430, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1147, !1351, !1432}
!1432 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!1433 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1148, file: !1143, line: 246, type: !1434, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!1147, !1351, !221}
!1436 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1148, file: !1143, line: 255, type: !1437, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1147, !1351, !1184}
!1439 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1148, file: !1143, line: 266, type: !1440, scopeLine: 266, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1147, !1351, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1148, file: !1143, line: 190, baseType: !157)
!1443 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1148, file: !1143, line: 267, type: !1444, scopeLine: 267, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1147, !1351, !1446, !63}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1448 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1148, file: !1143, line: 268, type: !1449, scopeLine: 268, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1147, !1351}
!1451 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1148, file: !1143, line: 272, type: !1452, scopeLine: 272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !1351}
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1148, file: !1143, line: 193, baseType: !1216)
!1455 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1148, file: !1143, line: 274, type: !1456, scopeLine: 274, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1147, !1351, !1454}
!1458 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1148, file: !1143, line: 276, type: !1459, scopeLine: 276, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1147, !1351, !1461, !1136}
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1148, file: !1143, line: 194, baseType: !1220)
!1462 = !DISubprogram(name: "basic_ostream", scope: !1148, file: !1143, line: 280, type: !1353, scopeLine: 280, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1463 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !17, file: !1464, line: 27, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1465, templateParams: !546, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE")
!1464 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/ostreambuf_iterator.h", directory: "")
!1465 = !{!1466, !1477, !1480, !1486, !1489, !1493, !1496, !1497, !1500}
!1466 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1463, baseType: !1467, flags: DIFlagPublic, extraData: i32 0)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !17, file: !1468, line: 24, size: 8, flags: DIFlagTypePassByValue, elements: !288, templateParams: !1469, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE")
!1468 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/iterator.h", directory: "")
!1469 = !{!1470, !1473, !1474, !1475, !1476}
!1470 = !DITemplateTypeParameter(name: "_Category", type: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !17, file: !1472, line: 51, size: 8, flags: DIFlagTypePassByValue, elements: !288, identifier: "_ZTSNSt3__119output_iterator_tagE")
!1472 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/iterator_traits.h", directory: "")
!1473 = !DITemplateTypeParameter(name: "_Tp", type: null)
!1474 = !DITemplateTypeParameter(name: "_Distance", type: null)
!1475 = !DITemplateTypeParameter(name: "_Pointer", type: null)
!1476 = !DITemplateTypeParameter(name: "_Reference", type: null)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !1463, file: !1464, line: 49, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !1463, file: !1464, line: 45, baseType: !1185)
!1480 = !DISubprogram(name: "ostreambuf_iterator", scope: !1463, file: !1464, line: 51, type: !1481, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1484 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !1463, file: !1464, line: 46, baseType: !1148)
!1486 = !DISubprogram(name: "ostreambuf_iterator", scope: !1463, file: !1464, line: 53, type: !1487, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1483, !1478}
!1489 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSB6v15006Ec", scope: !1463, file: !1464, line: 55, type: !1490, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1492, !1483, !157}
!1492 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1463, size: 64)
!1493 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeB6v15006Ev", scope: !1463, file: !1464, line: 61, type: !1494, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1492, !1483}
!1496 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppB6v15006Ev", scope: !1463, file: !1464, line: 62, type: !1494, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1497 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppB6v15006Ei", scope: !1463, file: !1464, line: 63, type: !1498, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1492, !1483, !25}
!1500 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev", scope: !1463, file: !1464, line: 64, type: !1501, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!192, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1505 = !{!1506, !1511, !1512, !1513, !1518, !1521, !1522, !1525, !1528, !1531, !1534, !1537, !1540, !1542, !1544, !1546, !1548, !1550, !1552, !1554, !1556, !1558, !1560, !1562, !1564, !1566, !1568, !1570, !1574, !1577, !1580, !1583, !1585, !1592, !1598, !1604, !1608, !1612, !1616, !1620, !1625, !1629, !1633, !1637, !1641, !1645, !1649, !1651, !1655, !1660, !1664, !1668, !1672, !1676, !1681, !1685, !1687, !1691, !1693, !1700, !1704, !1709, !1713, !1717, !1721, !1725, !1727, !1731, !1737, !1741, !1745, !1751, !1764, !1770, !1772, !1774, !1776, !1778, !1780, !1782, !1784, !1786, !1788, !1790, !1792, !1794, !1796, !1798, !1803, !1805, !1809, !1813, !1815, !1817, !1821, !1825, !1829, !1831, !1835, !1840, !1844, !1848, !1850, !1852, !1854, !1856, !1858, !1860, !1864, !1868, !1874, !1876, !1879, !1881, !1882, !1886, !1888, !1890, !1894, !1896, !1898, !1900, !1902, !1904, !1906, !1908, !1912, !1916, !1918, !1920, !1925, !1930, !1932, !1934, !1936, !1938, !1940, !1942, !1944, !1946, !1948, !1950, !1952, !1954, !1956, !1958, !1960, !1962, !1966, !1968, !1970, !1972, !1976, !1978, !1982, !1984, !1986, !1988, !1990, !1994, !1996, !1998, !2002, !2004, !2006, !2010, !2012, !2016, !2018, !2020, !2024, !2026, !2028, !2030, !2032, !2034, !2036, !2040, !2042, !2044, !2046, !2048, !2050, !2052, !2054, !2058, !2062, !2064, !2066, !2068, !2070, !2072, !2074, !2076, !2078, !2080, !2082, !2084, !2086, !2088, !2090, !2092, !2094, !2096, !2098, !2100, !2104, !2106, !2108, !2110, !2114, !2116, !2120, !2122, !2124, !2126, !2128, !2132, !2134, !2138, !2140, !2142, !2144, !2146, !2150, !2152, !2154, !2158, !2160, !2162, !2164, !2169, !2170, !2174, !2189, !2193, !2197, !2202, !2207, !2213, !2219, !2223, !2225, !2229, !2282, !2283, !2284, !2290, !2292, !2296, !2300, !2304, !2306, !2310, !2314, !2318, !2326, !2328, !2332, !2336, !2340, !2342, !2346, !2350, !2354, !2356, !2358, !2360, !2364, !2368, !2373, !2377, !2383, !2387, !2391, !2393, !2395, !2397, !2401, !2405, !2409, !2411, !2413, !2417, !2421, !2423, !2425, !2429, !2433, !2435, !2437, !2439, !2441, !2446, !2451, !2456, !2461, !2463, !2466, !2468, !2470, !2472, !2474, !2476, !2478, !2480, !2482, !2484, !2488, !2492, !2496, !2498, !2502, !2506, !2508, !2509, !2510, !2511, !2512, !2517, !2519, !2523, !2527, !2531, !2535, !2537, !2541, !2545, !2549, !2553, !2557, !2561, !2563, !2565, !2569, !2574, !2578, !2582, !2586, !2590, !2594, !2598, !2602, !2606, !2608, !2610, !2614, !2616, !2620, !2624, !2629, !2631, !2633, !2635, !2639, !2643, !2647, !2649, !2653, !2655, !2657, !2659, !2661, !2665, !2669, !2671, !2677, !2682, !2686, !2690, !2695, !2700, !2704, !2708, !2712, !2716, !2718, !2720, !2724}
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1507, file: !1510, line: 50)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", file: !1508, line: 48, baseType: !1509)
!1508 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/stddef.h", directory: "")
!1509 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1510 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cstddef", directory: "")
!1511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !64, file: !1510, line: 51)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1510, line: 52)
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1514, file: !1517, line: 153)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1515, line: 30, baseType: !1516)
!1515 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h", directory: "")
!1516 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1517 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdint", directory: "")
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1519, file: !1517, line: 154)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1520, line: 30, baseType: !1397)
!1520 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h", directory: "")
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1047, file: !1517, line: 155)
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1523, file: !1517, line: 156)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1524, line: 30, baseType: !1222)
!1524 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h", directory: "")
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1526, file: !1517, line: 158)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1527, line: 31, baseType: !271)
!1527 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1529, file: !1517, line: 159)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1530, line: 31, baseType: !1401)
!1530 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1532, file: !1517, line: 160)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1533, line: 31, baseType: !29)
!1533 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1535, file: !1517, line: 161)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1536, line: 31, baseType: !1420)
!1536 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1538, file: !1517, line: 163)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1539, line: 29, baseType: !1514)
!1539 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h", directory: "")
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1541, file: !1517, line: 164)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1539, line: 30, baseType: !1519)
!1542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1543, file: !1517, line: 165)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1539, line: 31, baseType: !1047)
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1545, file: !1517, line: 166)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1539, line: 32, baseType: !1523)
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1547, file: !1517, line: 168)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1539, line: 33, baseType: !1526)
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1549, file: !1517, line: 169)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1539, line: 34, baseType: !1529)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1551, file: !1517, line: 170)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1539, line: 35, baseType: !1532)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1553, file: !1517, line: 171)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1539, line: 36, baseType: !1535)
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1555, file: !1517, line: 173)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1539, line: 40, baseType: !1514)
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1557, file: !1517, line: 174)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1539, line: 41, baseType: !1519)
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1559, file: !1517, line: 175)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1539, line: 42, baseType: !1047)
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1561, file: !1517, line: 176)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1539, line: 43, baseType: !1523)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1563, file: !1517, line: 178)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1539, line: 44, baseType: !1526)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1565, file: !1517, line: 179)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1539, line: 45, baseType: !1529)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1567, file: !1517, line: 180)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1539, line: 46, baseType: !1532)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1569, file: !1517, line: 181)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1539, line: 47, baseType: !1535)
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1571, file: !1517, line: 183)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1572, line: 32, baseType: !1573)
!1572 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h", directory: "")
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !86, line: 27, baseType: !66)
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1575, file: !1517, line: 184)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1576, line: 34, baseType: !87)
!1576 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!1577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1578, file: !1517, line: 186)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1579, line: 32, baseType: !66)
!1579 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h", directory: "")
!1580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1581, file: !1517, line: 187)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1582, line: 32, baseType: !87)
!1582 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!1583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1584, line: 94)
!1584 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdlib", directory: "")
!1585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1586, file: !1584, line: 95)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1587, line: 86, baseType: !1588)
!1587 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h", directory: "")
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1587, line: 83, size: 64, flags: DIFlagTypePassByValue, elements: !1589, identifier: "_ZTS5div_t")
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1588, file: !1587, line: 84, baseType: !25, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1588, file: !1587, line: 85, baseType: !25, size: 32, offset: 32)
!1592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1593, file: !1584, line: 96)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1587, line: 91, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1587, line: 88, size: 128, flags: DIFlagTypePassByValue, elements: !1595, identifier: "_ZTS6ldiv_t")
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1594, file: !1587, line: 89, baseType: !66, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1594, file: !1587, line: 90, baseType: !66, size: 64, offset: 64)
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1599, file: !1584, line: 97)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1587, line: 97, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1587, line: 94, size: 128, flags: DIFlagTypePassByValue, elements: !1601, identifier: "_ZTS7lldiv_t")
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1600, file: !1587, line: 95, baseType: !1222, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1600, file: !1587, line: 96, baseType: !1222, size: 64, offset: 64)
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1605, file: !1584, line: 98)
!1605 = !DISubprogram(name: "atof", scope: !1587, file: !1587, line: 134, type: !1606, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1428, !155}
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1609, file: !1584, line: 99)
!1609 = !DISubprogram(name: "atoi", scope: !1587, file: !1587, line: 135, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!25, !155}
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1613, file: !1584, line: 100)
!1613 = !DISubprogram(name: "atol", scope: !1587, file: !1587, line: 136, type: !1614, flags: DIFlagPrototyped, spFlags: 0)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!66, !155}
!1616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1617, file: !1584, line: 101)
!1617 = !DISubprogram(name: "atoll", scope: !1587, file: !1587, line: 139, type: !1618, flags: DIFlagPrototyped, spFlags: 0)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1222, !155}
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1621, file: !1584, line: 102)
!1621 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !1587, file: !1587, line: 165, type: !1622, flags: DIFlagPrototyped, spFlags: 0)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1428, !155, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!1625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1626, file: !1584, line: 103)
!1626 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !1587, file: !1587, line: 166, type: !1627, flags: DIFlagPrototyped, spFlags: 0)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1424, !155, !1624}
!1629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1630, file: !1584, line: 104)
!1630 = !DISubprogram(name: "strtold", scope: !1587, file: !1587, line: 169, type: !1631, flags: DIFlagPrototyped, spFlags: 0)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1432, !155, !1624}
!1633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1634, file: !1584, line: 105)
!1634 = !DISubprogram(name: "strtol", scope: !1587, file: !1587, line: 167, type: !1635, flags: DIFlagPrototyped, spFlags: 0)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!66, !155, !1624, !25}
!1637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1638, file: !1584, line: 106)
!1638 = !DISubprogram(name: "strtoll", scope: !1587, file: !1587, line: 172, type: !1639, flags: DIFlagPrototyped, spFlags: 0)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1222, !155, !1624, !25}
!1641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1642, file: !1584, line: 107)
!1642 = !DISubprogram(name: "strtoul", scope: !1587, file: !1587, line: 175, type: !1643, flags: DIFlagPrototyped, spFlags: 0)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!87, !155, !1624, !25}
!1645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1646, file: !1584, line: 108)
!1646 = !DISubprogram(name: "strtoull", scope: !1587, file: !1587, line: 178, type: !1647, flags: DIFlagPrototyped, spFlags: 0)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!1420, !155, !1624, !25}
!1649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1650, file: !1584, line: 109)
!1650 = !DISubprogram(name: "rand", scope: !1587, file: !1587, line: 162, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!1651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1652, file: !1584, line: 110)
!1652 = !DISubprogram(name: "srand", scope: !1587, file: !1587, line: 164, type: !1653, flags: DIFlagPrototyped, spFlags: 0)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !29}
!1655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1656, file: !1584, line: 111)
!1656 = !DISubprogram(name: "calloc", scope: !1657, file: !1657, line: 41, type: !1658, flags: DIFlagPrototyped, spFlags: 0)
!1657 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h", directory: "")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!71, !83, !83}
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1661, file: !1584, line: 112)
!1661 = !DISubprogram(name: "free", scope: !1657, file: !1657, line: 42, type: !1662, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !71}
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1665, file: !1584, line: 113)
!1665 = !DISubprogram(name: "malloc", scope: !1657, file: !1657, line: 40, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!71, !83}
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1669, file: !1584, line: 114)
!1669 = !DISubprogram(name: "realloc", scope: !1657, file: !1657, line: 43, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!71, !71, !83}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1673, file: !1584, line: 115)
!1673 = !DISubprogram(name: "abort", scope: !1587, file: !1587, line: 131, type: !1674, flags: DIFlagPrototyped, spFlags: 0)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null}
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1677, file: !1584, line: 116)
!1677 = !DISubprogram(name: "atexit", scope: !1587, file: !1587, line: 133, type: !1678, flags: DIFlagPrototyped, spFlags: 0)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!25, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1682, file: !1584, line: 117)
!1682 = !DISubprogram(name: "exit", scope: !1587, file: !1587, line: 145, type: !1683, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !25}
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1686, file: !1584, line: 118)
!1686 = !DISubprogram(name: "_Exit", scope: !1587, file: !1587, line: 191, type: !1683, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1688, file: !1584, line: 119)
!1688 = !DISubprogram(name: "getenv", scope: !1587, file: !1587, line: 147, type: !1689, flags: DIFlagPrototyped, spFlags: 0)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!201, !155}
!1691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1692, file: !1584, line: 120)
!1692 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !1587, file: !1587, line: 184, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1694, file: !1584, line: 121)
!1694 = !DISubprogram(name: "bsearch", scope: !1587, file: !1587, line: 141, type: !1695, flags: DIFlagPrototyped, spFlags: 0)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!71, !221, !221, !83, !83, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!25, !221, !221}
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1701, file: !1584, line: 122)
!1701 = !DISubprogram(name: "qsort", scope: !1587, file: !1587, line: 160, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !71, !83, !83, !1697}
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1705, file: !1584, line: 123)
!1705 = !DISubprogram(name: "abs", linkageName: "_Z3absB6v15006e", scope: !1706, file: !1706, line: 129, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/stdlib.h", directory: "")
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1432, !1432}
!1709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1710, file: !1584, line: 124)
!1710 = !DISubprogram(name: "labs", scope: !1587, file: !1587, line: 148, type: !1711, flags: DIFlagPrototyped, spFlags: 0)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!66, !66}
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1714, file: !1584, line: 125)
!1714 = !DISubprogram(name: "llabs", scope: !1587, file: !1587, line: 152, type: !1715, flags: DIFlagPrototyped, spFlags: 0)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1222, !1222}
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1718, file: !1584, line: 126)
!1718 = !DISubprogram(name: "div", linkageName: "_Z3divB6v15006xx", scope: !1706, file: !1706, line: 152, type: !1719, flags: DIFlagPrototyped, spFlags: 0)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1599, !1222, !1222}
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1722, file: !1584, line: 127)
!1722 = !DISubprogram(name: "ldiv", scope: !1587, file: !1587, line: 149, type: !1723, flags: DIFlagPrototyped, spFlags: 0)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1593, !66, !66}
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1726, file: !1584, line: 128)
!1726 = !DISubprogram(name: "lldiv", scope: !1587, file: !1587, line: 153, type: !1719, flags: DIFlagPrototyped, spFlags: 0)
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1728, file: !1584, line: 129)
!1728 = !DISubprogram(name: "mblen", scope: !1587, file: !1587, line: 156, type: !1729, flags: DIFlagPrototyped, spFlags: 0)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!25, !155, !83}
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1732, file: !1584, line: 130)
!1732 = !DISubprogram(name: "mbtowc", scope: !1587, file: !1587, line: 158, type: !1733, flags: DIFlagPrototyped, spFlags: 0)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!25, !1735, !155, !83}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1738, file: !1584, line: 131)
!1738 = !DISubprogram(name: "wctomb", scope: !1587, file: !1587, line: 188, type: !1739, flags: DIFlagPrototyped, spFlags: 0)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!25, !201, !1736}
!1741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1742, file: !1584, line: 132)
!1742 = !DISubprogram(name: "mbstowcs", scope: !1587, file: !1587, line: 157, type: !1743, flags: DIFlagPrototyped, spFlags: 0)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!83, !1735, !155, !83}
!1745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1746, file: !1584, line: 133)
!1746 = !DISubprogram(name: "wcstombs", scope: !1587, file: !1587, line: 187, type: !1747, flags: DIFlagPrototyped, spFlags: 0)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!83, !201, !1749, !83}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1752, file: !1763, line: 44)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1753, line: 32, baseType: !1754)
!1753 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_mbstate_t.h", directory: "")
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !86, line: 59, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !86, line: 57, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !86, line: 54, size: 1024, flags: DIFlagTypePassByValue, elements: !1757, identifier: "_ZTS11__mbstate_t")
!1757 = !{!1758, !1762}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !1756, file: !86, line: 55, baseType: !1759, size: 1024)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1024, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !1756, file: !86, line: 56, baseType: !1222, size: 64)
!1763 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__mbstate_t.h", directory: "")
!1764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1765, file: !1769, line: 104)
!1765 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !1766, file: !1766, line: 212, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1766 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h", directory: "")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!25, !25}
!1769 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cctype", directory: "")
!1770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1771, file: !1769, line: 105)
!1771 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !1766, file: !1766, line: 218, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1773, file: !1769, line: 106)
!1773 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !1766, file: !1766, line: 224, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1775, file: !1769, line: 107)
!1775 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !1766, file: !1766, line: 230, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1777, file: !1769, line: 108)
!1777 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !1766, file: !1766, line: 237, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1779, file: !1769, line: 109)
!1779 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !1766, file: !1766, line: 243, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1781, file: !1769, line: 110)
!1781 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !1766, file: !1766, line: 249, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1783, file: !1769, line: 111)
!1783 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !1766, file: !1766, line: 255, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1785, file: !1769, line: 112)
!1785 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !1766, file: !1766, line: 261, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1787, file: !1769, line: 113)
!1787 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !1766, file: !1766, line: 267, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1789, file: !1769, line: 114)
!1789 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !1766, file: !1766, line: 273, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1791, file: !1769, line: 115)
!1791 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !1766, file: !1766, line: 280, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1793, file: !1769, line: 116)
!1793 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !1766, file: !1766, line: 292, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1795, file: !1769, line: 117)
!1795 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !1766, file: !1766, line: 298, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1797, line: 69)
!1797 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cstring", directory: "")
!1798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1799, file: !1797, line: 70)
!1799 = !DISubprogram(name: "memcpy", scope: !1800, file: !1800, line: 72, type: !1801, flags: DIFlagPrototyped, spFlags: 0)
!1800 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h", directory: "")
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!71, !71, !221, !83}
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1804, file: !1797, line: 71)
!1804 = !DISubprogram(name: "memmove", scope: !1800, file: !1800, line: 73, type: !1801, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1806, file: !1797, line: 72)
!1806 = !DISubprogram(name: "strcpy", scope: !1800, file: !1800, line: 79, type: !1807, flags: DIFlagPrototyped, spFlags: 0)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!201, !201, !155}
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1810, file: !1797, line: 73)
!1810 = !DISubprogram(name: "strncpy", scope: !1800, file: !1800, line: 85, type: !1811, flags: DIFlagPrototyped, spFlags: 0)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!201, !201, !155, !83}
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1814, file: !1797, line: 74)
!1814 = !DISubprogram(name: "strcat", scope: !1800, file: !1800, line: 75, type: !1807, flags: DIFlagPrototyped, spFlags: 0)
!1815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1816, file: !1797, line: 75)
!1816 = !DISubprogram(name: "strncat", scope: !1800, file: !1800, line: 83, type: !1811, flags: DIFlagPrototyped, spFlags: 0)
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1818, file: !1797, line: 76)
!1818 = !DISubprogram(name: "memcmp", scope: !1800, file: !1800, line: 71, type: !1819, flags: DIFlagPrototyped, spFlags: 0)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!25, !221, !221, !83}
!1821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1822, file: !1797, line: 77)
!1822 = !DISubprogram(name: "strcmp", scope: !1800, file: !1800, line: 77, type: !1823, flags: DIFlagPrototyped, spFlags: 0)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!25, !155, !155}
!1825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1826, file: !1797, line: 78)
!1826 = !DISubprogram(name: "strncmp", scope: !1800, file: !1800, line: 84, type: !1827, flags: DIFlagPrototyped, spFlags: 0)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!25, !155, !155, !83}
!1829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1830, file: !1797, line: 79)
!1830 = !DISubprogram(name: "strcoll", scope: !1800, file: !1800, line: 78, type: !1823, flags: DIFlagPrototyped, spFlags: 0)
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1832, file: !1797, line: 80)
!1832 = !DISubprogram(name: "strxfrm", scope: !1800, file: !1800, line: 91, type: !1833, flags: DIFlagPrototyped, spFlags: 0)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!83, !201, !155, !83}
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1836, file: !1797, line: 81)
!1836 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrB6v15006Ua9enable_ifIXLb1EEEPvim", scope: !1837, file: !1837, line: 98, type: !1838, flags: DIFlagPrototyped, spFlags: 0)
!1837 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/string.h", directory: "")
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!71, !71, !25, !83}
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1841, file: !1797, line: 82)
!1841 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrB6v15006Ua9enable_ifIXLb1EEEPci", scope: !1837, file: !1837, line: 77, type: !1842, flags: DIFlagPrototyped, spFlags: 0)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!201, !201, !25}
!1844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1845, file: !1797, line: 83)
!1845 = !DISubprogram(name: "strcspn", scope: !1800, file: !1800, line: 80, type: !1846, flags: DIFlagPrototyped, spFlags: 0)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!83, !155, !155}
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1849, file: !1797, line: 84)
!1849 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkB6v15006Ua9enable_ifIXLb1EEEPcPKc", scope: !1837, file: !1837, line: 84, type: !1807, flags: DIFlagPrototyped, spFlags: 0)
!1850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1851, file: !1797, line: 85)
!1851 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrB6v15006Ua9enable_ifIXLb1EEEPci", scope: !1837, file: !1837, line: 91, type: !1842, flags: DIFlagPrototyped, spFlags: 0)
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1853, file: !1797, line: 86)
!1853 = !DISubprogram(name: "strspn", scope: !1800, file: !1800, line: 88, type: !1846, flags: DIFlagPrototyped, spFlags: 0)
!1854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1855, file: !1797, line: 87)
!1855 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrB6v15006Ua9enable_ifIXLb1EEEPcPKc", scope: !1837, file: !1837, line: 105, type: !1807, flags: DIFlagPrototyped, spFlags: 0)
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1857, file: !1797, line: 88)
!1857 = !DISubprogram(name: "strtok", scope: !1800, file: !1800, line: 90, type: !1807, flags: DIFlagPrototyped, spFlags: 0)
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1859, file: !1797, line: 89)
!1859 = !DISubprogram(name: "memset", scope: !1800, file: !1800, line: 74, type: !1838, flags: DIFlagPrototyped, spFlags: 0)
!1860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1861, file: !1797, line: 90)
!1861 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !1800, file: !1800, line: 81, type: !1862, flags: DIFlagPrototyped, spFlags: 0)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!201, !25}
!1864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1865, file: !1797, line: 91)
!1865 = !DISubprogram(name: "strlen", scope: !1800, file: !1800, line: 82, type: !1866, flags: DIFlagPrototyped, spFlags: 0)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!83, !155}
!1868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1869, file: !1873, line: 325)
!1869 = !DISubprogram(name: "isinf", linkageName: "_Z5isinfB6v15006e", scope: !1870, file: !1870, line: 515, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1870 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/math.h", directory: "")
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!192, !1432}
!1873 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cmath", directory: "")
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1875, file: !1873, line: 326)
!1875 = !DISubprogram(name: "isnan", linkageName: "_Z5isnanB6v15006e", scope: !1870, file: !1870, line: 563, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1877, file: !1873, line: 336)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1878, line: 44, baseType: !1424)
!1878 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h", directory: "")
!1879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1880, file: !1873, line: 337)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1878, line: 45, baseType: !1428)
!1881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1705, file: !1873, line: 339)
!1882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1883, file: !1873, line: 342)
!1883 = !DISubprogram(name: "acosf", scope: !1878, file: !1878, line: 308, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1424, !1424}
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1887, file: !1873, line: 344)
!1887 = !DISubprogram(name: "asinf", scope: !1878, file: !1878, line: 312, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1889, file: !1873, line: 346)
!1889 = !DISubprogram(name: "atanf", scope: !1878, file: !1878, line: 316, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1891, file: !1873, line: 348)
!1891 = !DISubprogram(name: "atan2f", scope: !1878, file: !1878, line: 320, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1424, !1424, !1424}
!1894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1895, file: !1873, line: 350)
!1895 = !DISubprogram(name: "ceilf", scope: !1878, file: !1878, line: 455, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1897, file: !1873, line: 352)
!1897 = !DISubprogram(name: "cosf", scope: !1878, file: !1878, line: 324, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1899, file: !1873, line: 354)
!1899 = !DISubprogram(name: "coshf", scope: !1878, file: !1878, line: 348, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1901, file: !1873, line: 357)
!1901 = !DISubprogram(name: "expf", scope: !1878, file: !1878, line: 360, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1903, file: !1873, line: 360)
!1903 = !DISubprogram(name: "fabsf", scope: !1878, file: !1878, line: 416, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1905, file: !1873, line: 362)
!1905 = !DISubprogram(name: "floorf", scope: !1878, file: !1878, line: 459, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1907, file: !1873, line: 365)
!1907 = !DISubprogram(name: "fmodf", scope: !1878, file: !1878, line: 499, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1909, file: !1873, line: 368)
!1909 = !DISubprogram(name: "frexpf", scope: !1878, file: !1878, line: 400, type: !1910, flags: DIFlagPrototyped, spFlags: 0)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1424, !1424, !81}
!1912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1913, file: !1873, line: 370)
!1913 = !DISubprogram(name: "ldexpf", scope: !1878, file: !1878, line: 396, type: !1914, flags: DIFlagPrototyped, spFlags: 0)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1424, !1424, !25}
!1916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1917, file: !1873, line: 373)
!1917 = !DISubprogram(name: "logf", scope: !1878, file: !1878, line: 372, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1919, file: !1873, line: 376)
!1919 = !DISubprogram(name: "log10f", scope: !1878, file: !1878, line: 376, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1921, file: !1873, line: 377)
!1921 = !DISubprogram(name: "modf", linkageName: "_Z4modfB6v15006ePe", scope: !1870, file: !1870, line: 996, type: !1922, flags: DIFlagPrototyped, spFlags: 0)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1432, !1432, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1926, file: !1873, line: 378)
!1926 = !DISubprogram(name: "modff", scope: !1878, file: !1878, line: 392, type: !1927, flags: DIFlagPrototyped, spFlags: 0)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1424, !1424, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1931, file: !1873, line: 381)
!1931 = !DISubprogram(name: "powf", scope: !1878, file: !1878, line: 428, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1933, file: !1873, line: 384)
!1933 = !DISubprogram(name: "sinf", scope: !1878, file: !1878, line: 328, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1935, file: !1873, line: 386)
!1935 = !DISubprogram(name: "sinhf", scope: !1878, file: !1878, line: 352, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1937, file: !1873, line: 389)
!1937 = !DISubprogram(name: "sqrtf", scope: !1878, file: !1878, line: 432, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1939, file: !1873, line: 391)
!1939 = !DISubprogram(name: "tanf", scope: !1878, file: !1878, line: 332, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1941, file: !1873, line: 394)
!1941 = !DISubprogram(name: "tanhf", scope: !1878, file: !1878, line: 356, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1943, file: !1873, line: 397)
!1943 = !DISubprogram(name: "acoshf", scope: !1878, file: !1878, line: 336, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1945, file: !1873, line: 399)
!1945 = !DISubprogram(name: "asinhf", scope: !1878, file: !1878, line: 340, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1947, file: !1873, line: 401)
!1947 = !DISubprogram(name: "atanhf", scope: !1878, file: !1878, line: 344, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1949, file: !1873, line: 403)
!1949 = !DISubprogram(name: "cbrtf", scope: !1878, file: !1878, line: 420, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1951, file: !1873, line: 406)
!1951 = !DISubprogram(name: "copysignf", scope: !1878, file: !1878, line: 511, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1953, file: !1873, line: 409)
!1953 = !DISubprogram(name: "erff", scope: !1878, file: !1878, line: 436, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1955, file: !1873, line: 411)
!1955 = !DISubprogram(name: "erfcf", scope: !1878, file: !1878, line: 440, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1957, file: !1873, line: 413)
!1957 = !DISubprogram(name: "exp2f", scope: !1878, file: !1878, line: 364, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1959, file: !1873, line: 415)
!1959 = !DISubprogram(name: "expm1f", scope: !1878, file: !1878, line: 368, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1961, file: !1873, line: 417)
!1961 = !DISubprogram(name: "fdimf", scope: !1878, file: !1878, line: 527, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1963, file: !1873, line: 418)
!1963 = !DISubprogram(name: "fmaf", scope: !1878, file: !1878, line: 539, type: !1964, flags: DIFlagPrototyped, spFlags: 0)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1424, !1424, !1424, !1424}
!1966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1967, file: !1873, line: 421)
!1967 = !DISubprogram(name: "fmaxf", scope: !1878, file: !1878, line: 531, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1969, file: !1873, line: 423)
!1969 = !DISubprogram(name: "fminf", scope: !1878, file: !1878, line: 535, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1971, file: !1873, line: 425)
!1971 = !DISubprogram(name: "hypotf", scope: !1878, file: !1878, line: 424, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!1972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1973, file: !1873, line: 427)
!1973 = !DISubprogram(name: "ilogbf", scope: !1878, file: !1878, line: 404, type: !1974, flags: DIFlagPrototyped, spFlags: 0)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!25, !1424}
!1976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1977, file: !1873, line: 429)
!1977 = !DISubprogram(name: "lgammaf", scope: !1878, file: !1878, line: 447, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1979, file: !1873, line: 431)
!1979 = !DISubprogram(name: "llrintf", scope: !1878, file: !1878, line: 486, type: !1980, flags: DIFlagPrototyped, spFlags: 0)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1222, !1424}
!1982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1983, file: !1873, line: 433)
!1983 = !DISubprogram(name: "llroundf", scope: !1878, file: !1878, line: 490, type: !1980, flags: DIFlagPrototyped, spFlags: 0)
!1984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1985, file: !1873, line: 435)
!1985 = !DISubprogram(name: "log1pf", scope: !1878, file: !1878, line: 384, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1987, file: !1873, line: 437)
!1987 = !DISubprogram(name: "log2f", scope: !1878, file: !1878, line: 380, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1989, file: !1873, line: 439)
!1989 = !DISubprogram(name: "logbf", scope: !1878, file: !1878, line: 388, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!1990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1991, file: !1873, line: 441)
!1991 = !DISubprogram(name: "lrintf", scope: !1878, file: !1878, line: 471, type: !1992, flags: DIFlagPrototyped, spFlags: 0)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!66, !1424}
!1994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1995, file: !1873, line: 443)
!1995 = !DISubprogram(name: "lroundf", scope: !1878, file: !1878, line: 479, type: !1992, flags: DIFlagPrototyped, spFlags: 0)
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1997, file: !1873, line: 445)
!1997 = !DISubprogram(name: "nan", scope: !1878, file: !1878, line: 516, type: !1606, flags: DIFlagPrototyped, spFlags: 0)
!1998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1999, file: !1873, line: 446)
!1999 = !DISubprogram(name: "nanf", scope: !1878, file: !1878, line: 515, type: !2000, flags: DIFlagPrototyped, spFlags: 0)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1424, !155}
!2002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2003, file: !1873, line: 449)
!2003 = !DISubprogram(name: "nearbyintf", scope: !1878, file: !1878, line: 463, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!2004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2005, file: !1873, line: 451)
!2005 = !DISubprogram(name: "nextafterf", scope: !1878, file: !1878, line: 519, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!2006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2007, file: !1873, line: 453)
!2007 = !DISubprogram(name: "nexttowardf", scope: !1878, file: !1878, line: 524, type: !2008, flags: DIFlagPrototyped, spFlags: 0)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!1424, !1424, !1432}
!2010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2011, file: !1873, line: 455)
!2011 = !DISubprogram(name: "remainderf", scope: !1878, file: !1878, line: 503, type: !1892, flags: DIFlagPrototyped, spFlags: 0)
!2012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2013, file: !1873, line: 457)
!2013 = !DISubprogram(name: "remquof", scope: !1878, file: !1878, line: 507, type: !2014, flags: DIFlagPrototyped, spFlags: 0)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!1424, !1424, !1424, !81}
!2016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2017, file: !1873, line: 459)
!2017 = !DISubprogram(name: "rintf", scope: !1878, file: !1878, line: 467, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!2018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2019, file: !1873, line: 461)
!2019 = !DISubprogram(name: "roundf", scope: !1878, file: !1878, line: 475, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!2020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2021, file: !1873, line: 463)
!2021 = !DISubprogram(name: "scalblnf", scope: !1878, file: !1878, line: 412, type: !2022, flags: DIFlagPrototyped, spFlags: 0)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1424, !1424, !66}
!2024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2025, file: !1873, line: 465)
!2025 = !DISubprogram(name: "scalbnf", scope: !1878, file: !1878, line: 408, type: !1914, flags: DIFlagPrototyped, spFlags: 0)
!2026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2027, file: !1873, line: 467)
!2027 = !DISubprogram(name: "tgammaf", scope: !1878, file: !1878, line: 451, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!2028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2029, file: !1873, line: 469)
!2029 = !DISubprogram(name: "truncf", scope: !1878, file: !1878, line: 495, type: !1884, flags: DIFlagPrototyped, spFlags: 0)
!2030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2031, file: !1873, line: 471)
!2031 = !DISubprogram(name: "acosl", scope: !1878, file: !1878, line: 310, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2033, file: !1873, line: 472)
!2033 = !DISubprogram(name: "asinl", scope: !1878, file: !1878, line: 314, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2035, file: !1873, line: 473)
!2035 = !DISubprogram(name: "atanl", scope: !1878, file: !1878, line: 318, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2037, file: !1873, line: 474)
!2037 = !DISubprogram(name: "atan2l", scope: !1878, file: !1878, line: 322, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1432, !1432, !1432}
!2040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2041, file: !1873, line: 475)
!2041 = !DISubprogram(name: "ceill", scope: !1878, file: !1878, line: 457, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2043, file: !1873, line: 476)
!2043 = !DISubprogram(name: "cosl", scope: !1878, file: !1878, line: 326, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2045, file: !1873, line: 477)
!2045 = !DISubprogram(name: "coshl", scope: !1878, file: !1878, line: 350, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2047, file: !1873, line: 478)
!2047 = !DISubprogram(name: "expl", scope: !1878, file: !1878, line: 362, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2049, file: !1873, line: 479)
!2049 = !DISubprogram(name: "fabsl", scope: !1878, file: !1878, line: 418, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2051, file: !1873, line: 480)
!2051 = !DISubprogram(name: "floorl", scope: !1878, file: !1878, line: 461, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2053, file: !1873, line: 481)
!2053 = !DISubprogram(name: "fmodl", scope: !1878, file: !1878, line: 501, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2055, file: !1873, line: 482)
!2055 = !DISubprogram(name: "frexpl", scope: !1878, file: !1878, line: 402, type: !2056, flags: DIFlagPrototyped, spFlags: 0)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1432, !1432, !81}
!2058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2059, file: !1873, line: 483)
!2059 = !DISubprogram(name: "ldexpl", scope: !1878, file: !1878, line: 398, type: !2060, flags: DIFlagPrototyped, spFlags: 0)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!1432, !1432, !25}
!2062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2063, file: !1873, line: 484)
!2063 = !DISubprogram(name: "logl", scope: !1878, file: !1878, line: 374, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2065, file: !1873, line: 485)
!2065 = !DISubprogram(name: "log10l", scope: !1878, file: !1878, line: 378, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2067, file: !1873, line: 486)
!2067 = !DISubprogram(name: "modfl", scope: !1878, file: !1878, line: 394, type: !1922, flags: DIFlagPrototyped, spFlags: 0)
!2068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2069, file: !1873, line: 487)
!2069 = !DISubprogram(name: "powl", scope: !1878, file: !1878, line: 430, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2071, file: !1873, line: 488)
!2071 = !DISubprogram(name: "sinl", scope: !1878, file: !1878, line: 330, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2073, file: !1873, line: 489)
!2073 = !DISubprogram(name: "sinhl", scope: !1878, file: !1878, line: 354, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2075, file: !1873, line: 490)
!2075 = !DISubprogram(name: "sqrtl", scope: !1878, file: !1878, line: 434, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2077, file: !1873, line: 491)
!2077 = !DISubprogram(name: "tanl", scope: !1878, file: !1878, line: 334, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2079, file: !1873, line: 493)
!2079 = !DISubprogram(name: "tanhl", scope: !1878, file: !1878, line: 358, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2081, file: !1873, line: 494)
!2081 = !DISubprogram(name: "acoshl", scope: !1878, file: !1878, line: 338, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2083, file: !1873, line: 495)
!2083 = !DISubprogram(name: "asinhl", scope: !1878, file: !1878, line: 342, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2085, file: !1873, line: 496)
!2085 = !DISubprogram(name: "atanhl", scope: !1878, file: !1878, line: 346, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2087, file: !1873, line: 497)
!2087 = !DISubprogram(name: "cbrtl", scope: !1878, file: !1878, line: 422, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2089, file: !1873, line: 499)
!2089 = !DISubprogram(name: "copysignl", scope: !1878, file: !1878, line: 513, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2091, file: !1873, line: 501)
!2091 = !DISubprogram(name: "erfl", scope: !1878, file: !1878, line: 438, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2093, file: !1873, line: 502)
!2093 = !DISubprogram(name: "erfcl", scope: !1878, file: !1878, line: 442, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2095, file: !1873, line: 503)
!2095 = !DISubprogram(name: "exp2l", scope: !1878, file: !1878, line: 366, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2097, file: !1873, line: 504)
!2097 = !DISubprogram(name: "expm1l", scope: !1878, file: !1878, line: 370, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2099, file: !1873, line: 505)
!2099 = !DISubprogram(name: "fdiml", scope: !1878, file: !1878, line: 529, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2101, file: !1873, line: 506)
!2101 = !DISubprogram(name: "fmal", scope: !1878, file: !1878, line: 541, type: !2102, flags: DIFlagPrototyped, spFlags: 0)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!1432, !1432, !1432, !1432}
!2104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2105, file: !1873, line: 507)
!2105 = !DISubprogram(name: "fmaxl", scope: !1878, file: !1878, line: 533, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2107, file: !1873, line: 508)
!2107 = !DISubprogram(name: "fminl", scope: !1878, file: !1878, line: 537, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2109, file: !1873, line: 509)
!2109 = !DISubprogram(name: "hypotl", scope: !1878, file: !1878, line: 426, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2111, file: !1873, line: 510)
!2111 = !DISubprogram(name: "ilogbl", scope: !1878, file: !1878, line: 406, type: !2112, flags: DIFlagPrototyped, spFlags: 0)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!25, !1432}
!2114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2115, file: !1873, line: 511)
!2115 = !DISubprogram(name: "lgammal", scope: !1878, file: !1878, line: 449, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2117, file: !1873, line: 512)
!2117 = !DISubprogram(name: "llrintl", scope: !1878, file: !1878, line: 488, type: !2118, flags: DIFlagPrototyped, spFlags: 0)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!1222, !1432}
!2120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2121, file: !1873, line: 513)
!2121 = !DISubprogram(name: "llroundl", scope: !1878, file: !1878, line: 492, type: !2118, flags: DIFlagPrototyped, spFlags: 0)
!2122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2123, file: !1873, line: 514)
!2123 = !DISubprogram(name: "log1pl", scope: !1878, file: !1878, line: 386, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2125, file: !1873, line: 515)
!2125 = !DISubprogram(name: "log2l", scope: !1878, file: !1878, line: 382, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2127, file: !1873, line: 516)
!2127 = !DISubprogram(name: "logbl", scope: !1878, file: !1878, line: 390, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2129, file: !1873, line: 517)
!2129 = !DISubprogram(name: "lrintl", scope: !1878, file: !1878, line: 473, type: !2130, flags: DIFlagPrototyped, spFlags: 0)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!66, !1432}
!2132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2133, file: !1873, line: 518)
!2133 = !DISubprogram(name: "lroundl", scope: !1878, file: !1878, line: 481, type: !2130, flags: DIFlagPrototyped, spFlags: 0)
!2134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2135, file: !1873, line: 519)
!2135 = !DISubprogram(name: "nanl", scope: !1878, file: !1878, line: 517, type: !2136, flags: DIFlagPrototyped, spFlags: 0)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!1432, !155}
!2138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2139, file: !1873, line: 520)
!2139 = !DISubprogram(name: "nearbyintl", scope: !1878, file: !1878, line: 465, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2141, file: !1873, line: 521)
!2141 = !DISubprogram(name: "nextafterl", scope: !1878, file: !1878, line: 521, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2143, file: !1873, line: 522)
!2143 = !DISubprogram(name: "nexttowardl", scope: !1878, file: !1878, line: 525, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2145, file: !1873, line: 523)
!2145 = !DISubprogram(name: "remainderl", scope: !1878, file: !1878, line: 505, type: !2038, flags: DIFlagPrototyped, spFlags: 0)
!2146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2147, file: !1873, line: 524)
!2147 = !DISubprogram(name: "remquol", scope: !1878, file: !1878, line: 509, type: !2148, flags: DIFlagPrototyped, spFlags: 0)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!1432, !1432, !1432, !81}
!2150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2151, file: !1873, line: 525)
!2151 = !DISubprogram(name: "rintl", scope: !1878, file: !1878, line: 469, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2153, file: !1873, line: 526)
!2153 = !DISubprogram(name: "roundl", scope: !1878, file: !1878, line: 477, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2155, file: !1873, line: 527)
!2155 = !DISubprogram(name: "scalblnl", scope: !1878, file: !1878, line: 414, type: !2156, flags: DIFlagPrototyped, spFlags: 0)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!1432, !1432, !66}
!2158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2159, file: !1873, line: 528)
!2159 = !DISubprogram(name: "scalbnl", scope: !1878, file: !1878, line: 410, type: !2060, flags: DIFlagPrototyped, spFlags: 0)
!2160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2161, file: !1873, line: 529)
!2161 = !DISubprogram(name: "tgammal", scope: !1878, file: !1878, line: 453, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2163, file: !1873, line: 530)
!2163 = !DISubprogram(name: "truncl", scope: !1878, file: !1878, line: 497, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!2164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2165, file: !2168, line: 58)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2166, line: 31, baseType: !2167)
!2166 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h", directory: "")
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !86, line: 95, baseType: !87)
!2168 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/ctime", directory: "")
!2169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !2168, line: 60)
!2170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2171, file: !2168, line: 62)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2172, line: 31, baseType: !2173)
!2172 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h", directory: "")
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !86, line: 98, baseType: !66)
!2174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2175, file: !2168, line: 63)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2176, line: 75, size: 448, flags: DIFlagTypePassByValue, elements: !2177, identifier: "_ZTS2tm")
!2176 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/time.h", directory: "")
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2175, file: !2176, line: 76, baseType: !25, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2175, file: !2176, line: 77, baseType: !25, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2175, file: !2176, line: 78, baseType: !25, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2175, file: !2176, line: 79, baseType: !25, size: 32, offset: 96)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2175, file: !2176, line: 80, baseType: !25, size: 32, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2175, file: !2176, line: 81, baseType: !25, size: 32, offset: 160)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2175, file: !2176, line: 82, baseType: !25, size: 32, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2175, file: !2176, line: 83, baseType: !25, size: 32, offset: 224)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2175, file: !2176, line: 84, baseType: !25, size: 32, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2175, file: !2176, line: 85, baseType: !66, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2175, file: !2176, line: 86, baseType: !201, size: 64, offset: 384)
!2189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2190, file: !2168, line: 67)
!2190 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !2176, file: !2176, line: 109, type: !2191, flags: DIFlagPrototyped, spFlags: 0)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2165}
!2193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2194, file: !2168, line: 68)
!2194 = !DISubprogram(name: "difftime", scope: !2176, file: !2176, line: 111, type: !2195, flags: DIFlagPrototyped, spFlags: 0)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!1428, !2171, !2171}
!2197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2198, file: !2168, line: 69)
!2198 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !2176, file: !2176, line: 115, type: !2199, flags: DIFlagPrototyped, spFlags: 0)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2171, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2203, file: !2168, line: 70)
!2203 = !DISubprogram(name: "time", scope: !2176, file: !2176, line: 118, type: !2204, flags: DIFlagPrototyped, spFlags: 0)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2171, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2208, file: !2168, line: 71)
!2208 = !DISubprogram(name: "asctime", scope: !2176, file: !2176, line: 108, type: !2209, flags: DIFlagPrototyped, spFlags: 0)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!201, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2175)
!2213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2214, file: !2168, line: 72)
!2214 = !DISubprogram(name: "ctime", scope: !2176, file: !2176, line: 110, type: !2215, flags: DIFlagPrototyped, spFlags: 0)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!201, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2220, file: !2168, line: 73)
!2220 = !DISubprogram(name: "gmtime", scope: !2176, file: !2176, line: 113, type: !2221, flags: DIFlagPrototyped, spFlags: 0)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!2201, !2217}
!2223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2224, file: !2168, line: 74)
!2224 = !DISubprogram(name: "localtime", scope: !2176, file: !2176, line: 114, type: !2221, flags: DIFlagPrototyped, spFlags: 0)
!2225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2226, file: !2168, line: 75)
!2226 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !2176, file: !2176, line: 116, type: !2227, flags: DIFlagPrototyped, spFlags: 0)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!83, !201, !83, !155, !2211}
!2229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2230, file: !2281, line: 108)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2231, line: 157, baseType: !2232)
!2231 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h", directory: "")
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2231, line: 126, size: 1216, flags: DIFlagTypePassByValue, elements: !2233, identifier: "_ZTS7__sFILE")
!2233 = !{!2234, !2236, !2237, !2238, !2239, !2240, !2245, !2246, !2247, !2251, !2255, !2263, !2267, !2268, !2271, !2272, !2274, !2278, !2279, !2280}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2232, file: !2231, line: 127, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2232, file: !2231, line: 128, baseType: !25, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2232, file: !2231, line: 129, baseType: !25, size: 32, offset: 96)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2232, file: !2231, line: 130, baseType: !1397, size: 16, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2232, file: !2231, line: 131, baseType: !1397, size: 16, offset: 144)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2232, file: !2231, line: 132, baseType: !2241, size: 128, offset: 192)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2231, line: 92, size: 128, flags: DIFlagTypePassByValue, elements: !2242, identifier: "_ZTS6__sbuf")
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2241, file: !2231, line: 93, baseType: !2235, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2241, file: !2231, line: 94, baseType: !25, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2232, file: !2231, line: 133, baseType: !25, size: 32, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2232, file: !2231, line: 136, baseType: !71, size: 64, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2232, file: !2231, line: 137, baseType: !2248, size: 64, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!25, !71}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2232, file: !2231, line: 138, baseType: !2252, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!25, !71, !201, !25}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2232, file: !2231, line: 139, baseType: !2256, size: 64, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!2259, !71, !2259, !25}
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2231, line: 81, baseType: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !2261, line: 71, baseType: !2262)
!2261 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "")
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !86, line: 24, baseType: !1222)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2232, file: !2231, line: 140, baseType: !2264, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!25, !71, !155, !25}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2232, file: !2231, line: 143, baseType: !2241, size: 128, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !2232, file: !2231, line: 144, baseType: !2269, size: 64, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !2231, line: 98, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8__sFILEX")
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2232, file: !2231, line: 145, baseType: !25, size: 32, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2232, file: !2231, line: 148, baseType: !2273, size: 24, offset: 928)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 24, elements: !281)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2232, file: !2231, line: 149, baseType: !2275, size: 8, offset: 952)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 8, elements: !2276)
!2276 = !{!2277}
!2277 = !DISubrange(count: 1)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2232, file: !2231, line: 152, baseType: !2241, size: 128, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2232, file: !2231, line: 155, baseType: !25, size: 32, offset: 1088)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2232, file: !2231, line: 156, baseType: !2259, size: 64, offset: 1152)
!2281 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdio", directory: "")
!2282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2259, file: !2281, line: 109)
!2283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !2281, line: 110)
!2284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2285, file: !2281, line: 112)
!2285 = !DISubprogram(name: "fclose", scope: !2286, file: !2286, line: 143, type: !2287, flags: DIFlagPrototyped, spFlags: 0)
!2286 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h", directory: "")
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!25, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2291, file: !2281, line: 113)
!2291 = !DISubprogram(name: "fflush", scope: !2286, file: !2286, line: 146, type: !2287, flags: DIFlagPrototyped, spFlags: 0)
!2292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2293, file: !2281, line: 114)
!2293 = !DISubprogram(name: "setbuf", scope: !2286, file: !2286, line: 183, type: !2294, flags: DIFlagPrototyped, spFlags: 0)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2289, !201}
!2296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2297, file: !2281, line: 115)
!2297 = !DISubprogram(name: "setvbuf", scope: !2286, file: !2286, line: 184, type: !2298, flags: DIFlagPrototyped, spFlags: 0)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!25, !2289, !201, !25, !83}
!2300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2301, file: !2281, line: 116)
!2301 = !DISubprogram(name: "fprintf", scope: !2286, file: !2286, line: 155, type: !2302, flags: DIFlagPrototyped, spFlags: 0)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!25, !2289, !155, null}
!2304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2305, file: !2281, line: 117)
!2305 = !DISubprogram(name: "fscanf", scope: !2286, file: !2286, line: 161, type: !2302, flags: DIFlagPrototyped, spFlags: 0)
!2306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2307, file: !2281, line: 118)
!2307 = !DISubprogram(name: "snprintf", scope: !2286, file: !2286, line: 344, type: !2308, flags: DIFlagPrototyped, spFlags: 0)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!25, !201, !83, !155, null}
!2310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2311, file: !2281, line: 119)
!2311 = !DISubprogram(name: "sprintf", scope: !2286, file: !2286, line: 190, type: !2312, flags: DIFlagPrototyped, spFlags: 0)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!25, !201, !155, null}
!2314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2315, file: !2281, line: 120)
!2315 = !DISubprogram(name: "sscanf", scope: !2286, file: !2286, line: 192, type: !2316, flags: DIFlagPrototyped, spFlags: 0)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!25, !155, !155, null}
!2318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2319, file: !2281, line: 121)
!2319 = !DISubprogram(name: "vfprintf", scope: !2286, file: !2286, line: 202, type: !2320, flags: DIFlagPrototyped, spFlags: 0)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!25, !2289, !155, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2323, line: 32, baseType: !2324)
!2323 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h", directory: "")
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !86, line: 76, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !12, baseType: !201)
!2326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2327, file: !2281, line: 122)
!2327 = !DISubprogram(name: "vfscanf", scope: !2286, file: !2286, line: 345, type: !2320, flags: DIFlagPrototyped, spFlags: 0)
!2328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2329, file: !2281, line: 123)
!2329 = !DISubprogram(name: "vsscanf", scope: !2286, file: !2286, line: 348, type: !2330, flags: DIFlagPrototyped, spFlags: 0)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!25, !155, !155, !2322}
!2332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2333, file: !2281, line: 124)
!2333 = !DISubprogram(name: "vsnprintf", scope: !2286, file: !2286, line: 347, type: !2334, flags: DIFlagPrototyped, spFlags: 0)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!25, !201, !83, !155, !2322}
!2336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2337, file: !2281, line: 125)
!2337 = !DISubprogram(name: "vsprintf", scope: !2286, file: !2286, line: 209, type: !2338, flags: DIFlagPrototyped, spFlags: 0)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!25, !201, !155, !2322}
!2340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2341, file: !2281, line: 126)
!2341 = !DISubprogram(name: "fgetc", scope: !2286, file: !2286, line: 147, type: !2287, flags: DIFlagPrototyped, spFlags: 0)
!2342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2343, file: !2281, line: 127)
!2343 = !DISubprogram(name: "fgets", scope: !2286, file: !2286, line: 149, type: !2344, flags: DIFlagPrototyped, spFlags: 0)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!201, !201, !25, !2289}
!2346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2347, file: !2281, line: 128)
!2347 = !DISubprogram(name: "fputc", scope: !2286, file: !2286, line: 156, type: !2348, flags: DIFlagPrototyped, spFlags: 0)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!25, !25, !2289}
!2350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2351, file: !2281, line: 129)
!2351 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !2286, file: !2286, line: 157, type: !2352, flags: DIFlagPrototyped, spFlags: 0)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!25, !155, !2289}
!2354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2355, file: !2281, line: 130)
!2355 = !DISubprogram(name: "getc", scope: !2286, file: !2286, line: 166, type: !2287, flags: DIFlagPrototyped, spFlags: 0)
!2356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2357, file: !2281, line: 131)
!2357 = !DISubprogram(name: "putc", scope: !2286, file: !2286, line: 176, type: !2348, flags: DIFlagPrototyped, spFlags: 0)
!2358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2359, file: !2281, line: 132)
!2359 = !DISubprogram(name: "ungetc", scope: !2286, file: !2286, line: 201, type: !2348, flags: DIFlagPrototyped, spFlags: 0)
!2360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2361, file: !2281, line: 133)
!2361 = !DISubprogram(name: "fread", scope: !2286, file: !2286, line: 158, type: !2362, flags: DIFlagPrototyped, spFlags: 0)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!83, !71, !83, !83, !2289}
!2364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2365, file: !2281, line: 134)
!2365 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !2286, file: !2286, line: 165, type: !2366, flags: DIFlagPrototyped, spFlags: 0)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!83, !221, !83, !83, !2289}
!2368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2369, file: !2281, line: 136)
!2369 = !DISubprogram(name: "fgetpos", scope: !2286, file: !2286, line: 148, type: !2370, flags: DIFlagPrototyped, spFlags: 0)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!25, !2289, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2374, file: !2281, line: 138)
!2374 = !DISubprogram(name: "fseek", scope: !2286, file: !2286, line: 162, type: !2375, flags: DIFlagPrototyped, spFlags: 0)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!25, !2289, !66, !25}
!2377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2378, file: !2281, line: 140)
!2378 = !DISubprogram(name: "fsetpos", scope: !2286, file: !2286, line: 163, type: !2379, flags: DIFlagPrototyped, spFlags: 0)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!25, !2289, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2384, file: !2281, line: 142)
!2384 = !DISubprogram(name: "ftell", scope: !2286, file: !2286, line: 164, type: !2385, flags: DIFlagPrototyped, spFlags: 0)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!66, !2289}
!2387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2388, file: !2281, line: 143)
!2388 = !DISubprogram(name: "rewind", scope: !2286, file: !2286, line: 181, type: !2389, flags: DIFlagPrototyped, spFlags: 0)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !2289}
!2391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2392, file: !2281, line: 144)
!2392 = !DISubprogram(name: "clearerr", scope: !2286, file: !2286, line: 142, type: !2389, flags: DIFlagPrototyped, spFlags: 0)
!2393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2394, file: !2281, line: 145)
!2394 = !DISubprogram(name: "feof", scope: !2286, file: !2286, line: 144, type: !2287, flags: DIFlagPrototyped, spFlags: 0)
!2395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2396, file: !2281, line: 146)
!2396 = !DISubprogram(name: "ferror", scope: !2286, file: !2286, line: 145, type: !2287, flags: DIFlagPrototyped, spFlags: 0)
!2397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2398, file: !2281, line: 147)
!2398 = !DISubprogram(name: "perror", scope: !2286, file: !2286, line: 174, type: !2399, flags: DIFlagPrototyped, spFlags: 0)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !155}
!2401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2402, file: !2281, line: 149)
!2402 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !2286, file: !2286, line: 153, type: !2403, flags: DIFlagPrototyped, spFlags: 0)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2289, !155, !155}
!2405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2406, file: !2281, line: 150)
!2406 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !2286, file: !2286, line: 159, type: !2407, flags: DIFlagPrototyped, spFlags: 0)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!2289, !155, !155, !2289}
!2409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2410, file: !2281, line: 152)
!2410 = !DISubprogram(name: "remove", scope: !2286, file: !2286, line: 179, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!2411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2412, file: !2281, line: 154)
!2412 = !DISubprogram(name: "rename", scope: !2286, file: !2286, line: 180, type: !1823, flags: DIFlagPrototyped, spFlags: 0)
!2413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2414, file: !2281, line: 155)
!2414 = !DISubprogram(name: "tmpfile", scope: !2286, file: !2286, line: 193, type: !2415, flags: DIFlagPrototyped, spFlags: 0)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!2289}
!2417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2418, file: !2281, line: 156)
!2418 = !DISubprogram(name: "tmpnam", scope: !2286, file: !2286, line: 199, type: !2419, flags: DIFlagPrototyped, spFlags: 0)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!201, !201}
!2421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2422, file: !2281, line: 158)
!2422 = !DISubprogram(name: "getchar", scope: !2286, file: !2286, line: 167, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!2423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2424, file: !2281, line: 160)
!2424 = !DISubprogram(name: "gets", scope: !2286, file: !2286, line: 172, type: !2419, flags: DIFlagPrototyped, spFlags: 0)
!2425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2426, file: !2281, line: 162)
!2426 = !DISubprogram(name: "scanf", scope: !2286, file: !2286, line: 182, type: !2427, flags: DIFlagPrototyped, spFlags: 0)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!25, !155, null}
!2429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2430, file: !2281, line: 163)
!2430 = !DISubprogram(name: "vscanf", scope: !2286, file: !2286, line: 346, type: !2431, flags: DIFlagPrototyped, spFlags: 0)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!25, !155, !2322}
!2433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2434, file: !2281, line: 165)
!2434 = !DISubprogram(name: "printf", scope: !2286, file: !2286, line: 175, type: !2427, flags: DIFlagPrototyped, spFlags: 0)
!2435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2436, file: !2281, line: 166)
!2436 = !DISubprogram(name: "putchar", scope: !2286, file: !2286, line: 177, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!2437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2438, file: !2281, line: 167)
!2438 = !DISubprogram(name: "puts", scope: !2286, file: !2286, line: 178, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!2439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2440, file: !2281, line: 168)
!2440 = !DISubprogram(name: "vprintf", scope: !2286, file: !2286, line: 203, type: !2431, flags: DIFlagPrototyped, spFlags: 0)
!2441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2442, file: !2445, line: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2443, line: 32, baseType: !2444)
!2443 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h", directory: "")
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !86, line: 90, baseType: !25)
!2445 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cwctype", directory: "")
!2446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2447, file: !2445, line: 65)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2448, line: 32, baseType: !2449)
!2448 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_wctrans_t.h", directory: "")
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !2450, line: 41, baseType: !25)
!2450 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h", directory: "")
!2451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2452, file: !2445, line: 66)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2453, line: 32, baseType: !2454)
!2453 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_wctype_t.h", directory: "")
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !2450, line: 43, baseType: !2455)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 23, baseType: !29)
!2456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2457, file: !2445, line: 67)
!2457 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !2458, file: !2458, line: 51, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2458 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_wctype.h", directory: "")
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!25, !2442}
!2461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2462, file: !2445, line: 68)
!2462 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !2458, file: !2458, line: 57, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2464, file: !2445, line: 69)
!2464 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !2465, file: !2465, line: 50, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2465 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/wctype.h", directory: "")
!2466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2467, file: !2445, line: 70)
!2467 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !2458, file: !2458, line: 63, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2469, file: !2445, line: 71)
!2469 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !2458, file: !2458, line: 75, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2471, file: !2445, line: 72)
!2471 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !2458, file: !2458, line: 81, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2473, file: !2445, line: 73)
!2473 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !2458, file: !2458, line: 87, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2475, file: !2445, line: 74)
!2475 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !2458, file: !2458, line: 93, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2477, file: !2445, line: 75)
!2477 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !2458, file: !2458, line: 99, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2479, file: !2445, line: 76)
!2479 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !2458, file: !2458, line: 105, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2481, file: !2445, line: 77)
!2481 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !2458, file: !2458, line: 111, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2483, file: !2445, line: 78)
!2483 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !2458, file: !2458, line: 117, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2485, file: !2445, line: 79)
!2485 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !2458, file: !2458, line: 69, type: !2486, flags: DIFlagPrototyped, spFlags: 0)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!25, !2442, !2452}
!2488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2489, file: !2445, line: 80)
!2489 = !DISubprogram(name: "wctype", scope: !2458, file: !2458, line: 157, type: !2490, flags: DIFlagPrototyped, spFlags: 0)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!2452, !155}
!2492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2493, file: !2445, line: 81)
!2493 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !2458, file: !2458, line: 123, type: !2494, flags: DIFlagPrototyped, spFlags: 0)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!2442, !2442}
!2496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2497, file: !2445, line: 82)
!2497 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !2458, file: !2458, line: 129, type: !2494, flags: DIFlagPrototyped, spFlags: 0)
!2498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2499, file: !2445, line: 83)
!2499 = !DISubprogram(name: "towctrans", scope: !2465, file: !2465, line: 121, type: !2500, flags: DIFlagPrototyped, spFlags: 0)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2442, !2442, !2447}
!2502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2503, file: !2445, line: 84)
!2503 = !DISubprogram(name: "wctrans", scope: !2465, file: !2465, line: 123, type: !2504, flags: DIFlagPrototyped, spFlags: 0)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2447, !155}
!2506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1752, file: !2507, line: 116)
!2507 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cwchar", directory: "")
!2508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !2507, line: 117)
!2509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2175, file: !2507, line: 118)
!2510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2442, file: !2507, line: 119)
!2511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2230, file: !2507, line: 120)
!2512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2513, file: !2507, line: 121)
!2513 = !DISubprogram(name: "fwprintf", scope: !2514, file: !2514, line: 103, type: !2515, flags: DIFlagPrototyped, spFlags: 0)
!2514 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/wchar.h", directory: "")
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!25, !2289, !1749, null}
!2517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2518, file: !2507, line: 122)
!2518 = !DISubprogram(name: "fwscanf", scope: !2514, file: !2514, line: 104, type: !2515, flags: DIFlagPrototyped, spFlags: 0)
!2519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2520, file: !2507, line: 123)
!2520 = !DISubprogram(name: "swprintf", scope: !2514, file: !2514, line: 115, type: !2521, flags: DIFlagPrototyped, spFlags: 0)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!25, !1735, !83, !1749, null}
!2523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2524, file: !2507, line: 124)
!2524 = !DISubprogram(name: "vfwprintf", scope: !2514, file: !2514, line: 118, type: !2525, flags: DIFlagPrototyped, spFlags: 0)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!25, !2289, !1749, !2324}
!2527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2528, file: !2507, line: 125)
!2528 = !DISubprogram(name: "vswprintf", scope: !2514, file: !2514, line: 120, type: !2529, flags: DIFlagPrototyped, spFlags: 0)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!25, !1735, !83, !1749, !2324}
!2531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2532, file: !2507, line: 126)
!2532 = !DISubprogram(name: "swscanf", scope: !2514, file: !2514, line: 116, type: !2533, flags: DIFlagPrototyped, spFlags: 0)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!25, !1749, !1749, null}
!2535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2536, file: !2507, line: 127)
!2536 = !DISubprogram(name: "vfwscanf", scope: !2514, file: !2514, line: 170, type: !2525, flags: DIFlagPrototyped, spFlags: 0)
!2537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2538, file: !2507, line: 128)
!2538 = !DISubprogram(name: "vswscanf", scope: !2514, file: !2514, line: 172, type: !2539, flags: DIFlagPrototyped, spFlags: 0)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!25, !1749, !1749, !2324}
!2541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2542, file: !2507, line: 129)
!2542 = !DISubprogram(name: "fgetwc", scope: !2514, file: !2514, line: 98, type: !2543, flags: DIFlagPrototyped, spFlags: 0)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!2442, !2289}
!2545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2546, file: !2507, line: 130)
!2546 = !DISubprogram(name: "fgetws", scope: !2514, file: !2514, line: 99, type: !2547, flags: DIFlagPrototyped, spFlags: 0)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!1735, !1735, !25, !2289}
!2549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2550, file: !2507, line: 131)
!2550 = !DISubprogram(name: "fputwc", scope: !2514, file: !2514, line: 100, type: !2551, flags: DIFlagPrototyped, spFlags: 0)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2442, !1736, !2289}
!2553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2554, file: !2507, line: 132)
!2554 = !DISubprogram(name: "fputws", scope: !2514, file: !2514, line: 101, type: !2555, flags: DIFlagPrototyped, spFlags: 0)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!25, !1749, !2289}
!2557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2558, file: !2507, line: 133)
!2558 = !DISubprogram(name: "fwide", scope: !2514, file: !2514, line: 102, type: !2559, flags: DIFlagPrototyped, spFlags: 0)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!25, !2289, !25}
!2561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2562, file: !2507, line: 134)
!2562 = !DISubprogram(name: "getwc", scope: !2514, file: !2514, line: 105, type: !2543, flags: DIFlagPrototyped, spFlags: 0)
!2563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2564, file: !2507, line: 135)
!2564 = !DISubprogram(name: "putwc", scope: !2514, file: !2514, line: 113, type: !2551, flags: DIFlagPrototyped, spFlags: 0)
!2565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2566, file: !2507, line: 136)
!2566 = !DISubprogram(name: "ungetwc", scope: !2514, file: !2514, line: 117, type: !2567, flags: DIFlagPrototyped, spFlags: 0)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2442, !2442, !2289}
!2569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2570, file: !2507, line: 137)
!2570 = !DISubprogram(name: "wcstod", scope: !2514, file: !2514, line: 144, type: !2571, flags: DIFlagPrototyped, spFlags: 0)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!1428, !1749, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!2574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2575, file: !2507, line: 138)
!2575 = !DISubprogram(name: "wcstof", scope: !2514, file: !2514, line: 175, type: !2576, flags: DIFlagPrototyped, spFlags: 0)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!1424, !1749, !2573}
!2578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2579, file: !2507, line: 139)
!2579 = !DISubprogram(name: "wcstold", scope: !2514, file: !2514, line: 177, type: !2580, flags: DIFlagPrototyped, spFlags: 0)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!1432, !1749, !2573}
!2582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2583, file: !2507, line: 140)
!2583 = !DISubprogram(name: "wcstol", scope: !2514, file: !2514, line: 147, type: !2584, flags: DIFlagPrototyped, spFlags: 0)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!66, !1749, !2573, !25}
!2586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2587, file: !2507, line: 141)
!2587 = !DISubprogram(name: "wcstoll", scope: !2514, file: !2514, line: 180, type: !2588, flags: DIFlagPrototyped, spFlags: 0)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!1222, !1749, !2573, !25}
!2590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2591, file: !2507, line: 142)
!2591 = !DISubprogram(name: "wcstoul", scope: !2514, file: !2514, line: 149, type: !2592, flags: DIFlagPrototyped, spFlags: 0)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!87, !1749, !2573, !25}
!2594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2595, file: !2507, line: 143)
!2595 = !DISubprogram(name: "wcstoull", scope: !2514, file: !2514, line: 182, type: !2596, flags: DIFlagPrototyped, spFlags: 0)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!1420, !1749, !2573, !25}
!2598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2599, file: !2507, line: 144)
!2599 = !DISubprogram(name: "wcscpy", scope: !2514, file: !2514, line: 128, type: !2600, flags: DIFlagPrototyped, spFlags: 0)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!1735, !1735, !1749}
!2602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2603, file: !2507, line: 145)
!2603 = !DISubprogram(name: "wcsncpy", scope: !2514, file: !2514, line: 135, type: !2604, flags: DIFlagPrototyped, spFlags: 0)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!1735, !1735, !1749, !83}
!2606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2607, file: !2507, line: 146)
!2607 = !DISubprogram(name: "wcscat", scope: !2514, file: !2514, line: 124, type: !2600, flags: DIFlagPrototyped, spFlags: 0)
!2608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2609, file: !2507, line: 147)
!2609 = !DISubprogram(name: "wcsncat", scope: !2514, file: !2514, line: 133, type: !2604, flags: DIFlagPrototyped, spFlags: 0)
!2610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2611, file: !2507, line: 148)
!2611 = !DISubprogram(name: "wcscmp", scope: !2514, file: !2514, line: 126, type: !2612, flags: DIFlagPrototyped, spFlags: 0)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!25, !1749, !1749}
!2614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2615, file: !2507, line: 149)
!2615 = !DISubprogram(name: "wcscoll", scope: !2514, file: !2514, line: 127, type: !2612, flags: DIFlagPrototyped, spFlags: 0)
!2616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2617, file: !2507, line: 150)
!2617 = !DISubprogram(name: "wcsncmp", scope: !2514, file: !2514, line: 134, type: !2618, flags: DIFlagPrototyped, spFlags: 0)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!25, !1749, !1749, !83}
!2620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2621, file: !2507, line: 151)
!2621 = !DISubprogram(name: "wcsxfrm", scope: !2514, file: !2514, line: 142, type: !2622, flags: DIFlagPrototyped, spFlags: 0)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!83, !1735, !1749, !83}
!2624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2625, file: !2507, line: 152)
!2625 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrB6v15006Ua9enable_ifIXLb1EEEPww", scope: !2626, file: !2626, line: 145, type: !2627, flags: DIFlagPrototyped, spFlags: 0)
!2626 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/wchar.h", directory: "")
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!1735, !1735, !1736}
!2629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2630, file: !2507, line: 153)
!2630 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkB6v15006Ua9enable_ifIXLb1EEEPwPKw", scope: !2626, file: !2626, line: 152, type: !2600, flags: DIFlagPrototyped, spFlags: 0)
!2631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2632, file: !2507, line: 154)
!2632 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrB6v15006Ua9enable_ifIXLb1EEEPww", scope: !2626, file: !2626, line: 159, type: !2627, flags: DIFlagPrototyped, spFlags: 0)
!2633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2634, file: !2507, line: 155)
!2634 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrB6v15006Ua9enable_ifIXLb1EEEPwPKw", scope: !2626, file: !2626, line: 166, type: !2600, flags: DIFlagPrototyped, spFlags: 0)
!2635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2636, file: !2507, line: 156)
!2636 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrB6v15006Ua9enable_ifIXLb1EEEPwwm", scope: !2626, file: !2626, line: 173, type: !2637, flags: DIFlagPrototyped, spFlags: 0)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!1735, !1735, !1736, !83}
!2639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2640, file: !2507, line: 157)
!2640 = !DISubprogram(name: "wcscspn", scope: !2514, file: !2514, line: 129, type: !2641, flags: DIFlagPrototyped, spFlags: 0)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!83, !1749, !1749}
!2643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2644, file: !2507, line: 158)
!2644 = !DISubprogram(name: "wcslen", scope: !2514, file: !2514, line: 132, type: !2645, flags: DIFlagPrototyped, spFlags: 0)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!83, !1749}
!2647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2648, file: !2507, line: 159)
!2648 = !DISubprogram(name: "wcsspn", scope: !2514, file: !2514, line: 140, type: !2641, flags: DIFlagPrototyped, spFlags: 0)
!2649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2650, file: !2507, line: 160)
!2650 = !DISubprogram(name: "wcstok", scope: !2514, file: !2514, line: 145, type: !2651, flags: DIFlagPrototyped, spFlags: 0)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!1735, !1735, !1749, !2573}
!2653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2654, file: !2507, line: 161)
!2654 = !DISubprogram(name: "wmemcmp", scope: !2514, file: !2514, line: 151, type: !2618, flags: DIFlagPrototyped, spFlags: 0)
!2655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2656, file: !2507, line: 162)
!2656 = !DISubprogram(name: "wmemcpy", scope: !2514, file: !2514, line: 152, type: !2604, flags: DIFlagPrototyped, spFlags: 0)
!2657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2658, file: !2507, line: 163)
!2658 = !DISubprogram(name: "wmemmove", scope: !2514, file: !2514, line: 153, type: !2604, flags: DIFlagPrototyped, spFlags: 0)
!2659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2660, file: !2507, line: 164)
!2660 = !DISubprogram(name: "wmemset", scope: !2514, file: !2514, line: 154, type: !2637, flags: DIFlagPrototyped, spFlags: 0)
!2661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2662, file: !2507, line: 165)
!2662 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !2514, file: !2514, line: 130, type: !2663, flags: DIFlagPrototyped, spFlags: 0)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!83, !1735, !83, !1749, !2211}
!2665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2666, file: !2507, line: 166)
!2666 = !DISubprogram(name: "btowc", scope: !2514, file: !2514, line: 97, type: !2667, flags: DIFlagPrototyped, spFlags: 0)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!2442, !25}
!2669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2670, file: !2507, line: 167)
!2670 = !DISubprogram(name: "wctob", scope: !2514, file: !2514, line: 143, type: !2459, flags: DIFlagPrototyped, spFlags: 0)
!2671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2672, file: !2507, line: 168)
!2672 = !DISubprogram(name: "mbsinit", scope: !2514, file: !2514, line: 110, type: !2673, flags: DIFlagPrototyped, spFlags: 0)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!25, !2675}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1752)
!2677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2678, file: !2507, line: 169)
!2678 = !DISubprogram(name: "mbrlen", scope: !2514, file: !2514, line: 107, type: !2679, flags: DIFlagPrototyped, spFlags: 0)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!83, !155, !83, !2681}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!2682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2683, file: !2507, line: 170)
!2683 = !DISubprogram(name: "mbrtowc", scope: !2514, file: !2514, line: 108, type: !2684, flags: DIFlagPrototyped, spFlags: 0)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!83, !1735, !155, !83, !2681}
!2686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2687, file: !2507, line: 171)
!2687 = !DISubprogram(name: "wcrtomb", scope: !2514, file: !2514, line: 123, type: !2688, flags: DIFlagPrototyped, spFlags: 0)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!83, !201, !1736, !2681}
!2690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2691, file: !2507, line: 172)
!2691 = !DISubprogram(name: "mbsrtowcs", scope: !2514, file: !2514, line: 111, type: !2692, flags: DIFlagPrototyped, spFlags: 0)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!83, !1735, !2694, !83, !2681}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!2695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2696, file: !2507, line: 173)
!2696 = !DISubprogram(name: "wcsrtombs", scope: !2514, file: !2514, line: 138, type: !2697, flags: DIFlagPrototyped, spFlags: 0)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!83, !201, !2699, !83, !2681}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!2700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2701, file: !2507, line: 175)
!2701 = !DISubprogram(name: "getwchar", scope: !2514, file: !2514, line: 106, type: !2702, flags: DIFlagPrototyped, spFlags: 0)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!2442}
!2704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2705, file: !2507, line: 176)
!2705 = !DISubprogram(name: "vwscanf", scope: !2514, file: !2514, line: 174, type: !2706, flags: DIFlagPrototyped, spFlags: 0)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!25, !1749, !2324}
!2708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2709, file: !2507, line: 177)
!2709 = !DISubprogram(name: "wscanf", scope: !2514, file: !2514, line: 156, type: !2710, flags: DIFlagPrototyped, spFlags: 0)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!25, !1749, null}
!2712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2713, file: !2507, line: 179)
!2713 = !DISubprogram(name: "putwchar", scope: !2514, file: !2514, line: 114, type: !2714, flags: DIFlagPrototyped, spFlags: 0)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!2442, !1736}
!2716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2717, file: !2507, line: 180)
!2717 = !DISubprogram(name: "vwprintf", scope: !2514, file: !2514, line: 122, type: !2706, flags: DIFlagPrototyped, spFlags: 0)
!2718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2719, file: !2507, line: 181)
!2719 = !DISubprogram(name: "wprintf", scope: !2514, file: !2514, line: 155, type: !2710, flags: DIFlagPrototyped, spFlags: 0)
!2720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2721, file: !2723, line: 44)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2722, line: 14, baseType: !2325)
!2722 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/14.0.0/include/stdarg.h", directory: "")
!2723 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdarg", directory: "")
!2724 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !11, entity: !18, file: !12, line: 12)
!2725 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.102)"}
!2726 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 14, type: !23, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !288)
!2727 = !DILocation(line: 16, column: 10, scope: !2726)
!2728 = !DILocation(line: 18, column: 5, scope: !2726)
!2729 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !17, file: !1143, line: 900, type: !2730, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !2732, retainedNodes: !288)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!1147, !1147, !155}
!2732 = !{!548}
!2733 = !DILocalVariable(name: "__os", arg: 1, scope: !2729, file: !1143, line: 900, type: !1147)
!2734 = !DILocation(line: 900, column: 42, scope: !2729)
!2735 = !DILocalVariable(name: "__str", arg: 2, scope: !2729, file: !1143, line: 900, type: !155)
!2736 = !DILocation(line: 900, column: 60, scope: !2729)
!2737 = !DILocation(line: 902, column: 44, scope: !2729)
!2738 = !DILocation(line: 902, column: 50, scope: !2729)
!2739 = !DILocation(line: 902, column: 73, scope: !2729)
!2740 = !DILocation(line: 902, column: 57, scope: !2729)
!2741 = !DILocation(line: 902, column: 12, scope: !2729)
!2742 = !DILocation(line: 902, column: 5, scope: !2729)
!2743 = !DILocalVariable(name: "__os", arg: 1, scope: !1144, file: !1143, line: 752, type: !1147)
!2744 = !DILocation(line: 752, column: 58, scope: !1144)
!2745 = !DILocalVariable(name: "__str", arg: 2, scope: !1144, file: !1143, line: 753, type: !155)
!2746 = !DILocation(line: 753, column: 41, scope: !1144)
!2747 = !DILocalVariable(name: "__len", arg: 3, scope: !1144, file: !1143, line: 753, type: !83)
!2748 = !DILocation(line: 753, column: 55, scope: !1144)
!2749 = !DILocalVariable(name: "__s", scope: !2750, file: !1143, line: 759, type: !2751)
!2750 = distinct !DILexicalBlock(scope: !1144, file: !1143, line: 757, column: 5)
!2751 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1148, file: !1143, line: 218, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2752, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE")
!2752 = !{!2753, !2754, !2755, !2759, !2762, !2767, !2771}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !2751, file: !1143, line: 286, baseType: !192, size: 8)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !2751, file: !1143, line: 287, baseType: !1147, size: 64, offset: 64)
!2755 = !DISubprogram(name: "sentry", scope: !2751, file: !1143, line: 290, type: !2756, scopeLine: 290, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2758, !1147}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2759 = !DISubprogram(name: "~sentry", scope: !2751, file: !1143, line: 291, type: !2760, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2758}
!2762 = !DISubprogram(name: "sentry", scope: !2751, file: !1143, line: 292, type: !2763, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null, !2758, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2751)
!2767 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !2751, file: !1143, line: 293, type: !2768, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!2770, !2758, !2765}
!2770 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2751, size: 64)
!2771 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev", scope: !2751, file: !1143, line: 296, type: !2772, scopeLine: 296, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!192, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2775 = !DILocation(line: 759, column: 57, scope: !2750)
!2776 = !DILocation(line: 759, column: 61, scope: !2750)
!2777 = !DILocation(line: 760, column: 13, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2750, file: !1143, line: 760, column: 13)
!2779 = !DILocation(line: 760, column: 13, scope: !2750)
!2780 = !DILocation(line: 763, column: 38, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !1143, line: 763, column: 17)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !1143, line: 761, column: 9)
!2783 = !DILocation(line: 763, column: 34, scope: !2781)
!2784 = !DILocation(line: 764, column: 34, scope: !2781)
!2785 = !DILocation(line: 765, column: 35, scope: !2781)
!2786 = !DILocation(line: 765, column: 40, scope: !2781)
!2787 = !DILocation(line: 765, column: 48, scope: !2781)
!2788 = !DILocation(line: 765, column: 73, scope: !2781)
!2789 = !DILocation(line: 765, column: 34, scope: !2781)
!2790 = !DILocation(line: 766, column: 38, scope: !2781)
!2791 = !DILocation(line: 766, column: 46, scope: !2781)
!2792 = !DILocation(line: 766, column: 44, scope: !2781)
!2793 = !DILocation(line: 767, column: 38, scope: !2781)
!2794 = !DILocation(line: 768, column: 34, scope: !2781)
!2795 = !DILocation(line: 768, column: 42, scope: !2781)
!2796 = !DILocation(line: 768, column: 40, scope: !2781)
!2797 = !DILocation(line: 769, column: 34, scope: !2781)
!2798 = !DILocation(line: 770, column: 34, scope: !2781)
!2799 = !DILocation(line: 770, column: 39, scope: !2781)
!2800 = !DILocation(line: 763, column: 17, scope: !2781)
!2801 = !DILocation(line: 770, column: 47, scope: !2781)
!2802 = !DILocation(line: 763, column: 17, scope: !2782)
!2803 = !DILocation(line: 771, column: 17, scope: !2781)
!2804 = !DILocation(line: 771, column: 22, scope: !2781)
!2805 = !DILocation(line: 781, column: 1, scope: !2750)
!2806 = !DILocation(line: 781, column: 1, scope: !2778)
!2807 = !DILocation(line: 774, column: 5, scope: !1144)
!2808 = !DILocation(line: 772, column: 9, scope: !2782)
!2809 = !DILocation(line: 774, column: 5, scope: !2750)
!2810 = !DILocation(line: 777, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !1144, file: !1143, line: 776, column: 5)
!2812 = !DILocation(line: 777, column: 14, scope: !2811)
!2813 = !DILocation(line: 778, column: 5, scope: !2811)
!2814 = !DILocation(line: 780, column: 12, scope: !1144)
!2815 = !DILocation(line: 780, column: 5, scope: !1144)
!2816 = !DILocation(line: 781, column: 1, scope: !2811)
!2817 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !549, file: !550, line: 207, type: !568, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !567, retainedNodes: !288)
!2818 = !DILocalVariable(name: "__s", arg: 1, scope: !2817, file: !550, line: 207, type: !566)
!2819 = !DILocation(line: 207, column: 80, scope: !2817)
!2820 = !DILocation(line: 218, column: 31, scope: !2817)
!2821 = !DILocation(line: 218, column: 14, scope: !2817)
!2822 = !DILocation(line: 218, column: 7, scope: !2817)
!2823 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev", scope: !2751, file: !1143, line: 296, type: !2772, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !2771, retainedNodes: !288)
!2824 = !DILocalVariable(name: "this", arg: 1, scope: !2823, type: !2825, flags: DIFlagArtificial | DIFlagObjectPointer)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2826 = !DILocation(line: 0, scope: !2823)
!2827 = !DILocation(line: 296, column: 44, scope: !2823)
!2828 = !DILocation(line: 296, column: 37, scope: !2823)
!2829 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !17, file: !2830, line: 1418, type: !2831, scopeLine: 1421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !546, retainedNodes: !288)
!2830 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/locale", directory: "")
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!1463, !1463, !155, !155, !155, !79, !157}
!2833 = !DILocalVariable(name: "__s", arg: 1, scope: !2829, file: !2830, line: 1418, type: !1463)
!2834 = !DILocation(line: 1418, column: 55, scope: !2829)
!2835 = !DILocalVariable(name: "__ob", arg: 2, scope: !2829, file: !2830, line: 1419, type: !155)
!2836 = !DILocation(line: 1419, column: 32, scope: !2829)
!2837 = !DILocalVariable(name: "__op", arg: 3, scope: !2829, file: !2830, line: 1419, type: !155)
!2838 = !DILocation(line: 1419, column: 52, scope: !2829)
!2839 = !DILocalVariable(name: "__oe", arg: 4, scope: !2829, file: !2830, line: 1419, type: !155)
!2840 = !DILocation(line: 1419, column: 72, scope: !2829)
!2841 = !DILocalVariable(name: "__iob", arg: 5, scope: !2829, file: !2830, line: 1420, type: !79)
!2842 = !DILocation(line: 1420, column: 28, scope: !2829)
!2843 = !DILocalVariable(name: "__fl", arg: 6, scope: !2829, file: !2830, line: 1420, type: !157)
!2844 = !DILocation(line: 1420, column: 42, scope: !2829)
!2845 = !DILocation(line: 1422, column: 13, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 1422, column: 9)
!2847 = !DILocation(line: 1422, column: 21, scope: !2846)
!2848 = !DILocation(line: 1422, column: 9, scope: !2829)
!2849 = !DILocation(line: 1423, column: 16, scope: !2846)
!2850 = !DILocation(line: 1423, column: 9, scope: !2846)
!2851 = !DILocalVariable(name: "__sz", scope: !2829, file: !2830, line: 1424, type: !63)
!2852 = !DILocation(line: 1424, column: 16, scope: !2829)
!2853 = !DILocation(line: 1424, column: 23, scope: !2829)
!2854 = !DILocation(line: 1424, column: 30, scope: !2829)
!2855 = !DILocation(line: 1424, column: 28, scope: !2829)
!2856 = !DILocalVariable(name: "__ns", scope: !2829, file: !2830, line: 1425, type: !63)
!2857 = !DILocation(line: 1425, column: 16, scope: !2829)
!2858 = !DILocation(line: 1425, column: 23, scope: !2829)
!2859 = !DILocation(line: 1425, column: 29, scope: !2829)
!2860 = !DILocation(line: 1426, column: 9, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 1426, column: 9)
!2862 = !DILocation(line: 1426, column: 16, scope: !2861)
!2863 = !DILocation(line: 1426, column: 14, scope: !2861)
!2864 = !DILocation(line: 1426, column: 9, scope: !2829)
!2865 = !DILocation(line: 1427, column: 17, scope: !2861)
!2866 = !DILocation(line: 1427, column: 14, scope: !2861)
!2867 = !DILocation(line: 1427, column: 9, scope: !2861)
!2868 = !DILocation(line: 1429, column: 14, scope: !2861)
!2869 = !DILocalVariable(name: "__np", scope: !2829, file: !2830, line: 1430, type: !63)
!2870 = !DILocation(line: 1430, column: 16, scope: !2829)
!2871 = !DILocation(line: 1430, column: 23, scope: !2829)
!2872 = !DILocation(line: 1430, column: 30, scope: !2829)
!2873 = !DILocation(line: 1430, column: 28, scope: !2829)
!2874 = !DILocation(line: 1431, column: 9, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 1431, column: 9)
!2876 = !DILocation(line: 1431, column: 14, scope: !2875)
!2877 = !DILocation(line: 1431, column: 9, scope: !2829)
!2878 = !DILocation(line: 1433, column: 17, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !2830, line: 1433, column: 13)
!2880 = distinct !DILexicalBlock(scope: !2875, file: !2830, line: 1432, column: 5)
!2881 = !DILocation(line: 1433, column: 32, scope: !2879)
!2882 = !DILocation(line: 1433, column: 38, scope: !2879)
!2883 = !DILocation(line: 1433, column: 26, scope: !2879)
!2884 = !DILocation(line: 1433, column: 47, scope: !2879)
!2885 = !DILocation(line: 1433, column: 44, scope: !2879)
!2886 = !DILocation(line: 1433, column: 13, scope: !2880)
!2887 = !DILocation(line: 1435, column: 17, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2879, file: !2830, line: 1434, column: 9)
!2889 = !DILocation(line: 1435, column: 25, scope: !2888)
!2890 = !DILocation(line: 1436, column: 20, scope: !2888)
!2891 = !DILocation(line: 1436, column: 13, scope: !2888)
!2892 = !DILocation(line: 1438, column: 5, scope: !2880)
!2893 = !DILocation(line: 1439, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 1439, column: 9)
!2895 = !DILocation(line: 1439, column: 14, scope: !2894)
!2896 = !DILocation(line: 1439, column: 9, scope: !2829)
!2897 = !DILocalVariable(name: "__sp", scope: !2898, file: !2830, line: 1441, type: !165)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !2830, line: 1440, column: 5)
!2899 = !DILocation(line: 1441, column: 39, scope: !2898)
!2900 = !DILocation(line: 1441, column: 44, scope: !2898)
!2901 = !DILocation(line: 1441, column: 50, scope: !2898)
!2902 = !DILocation(line: 1442, column: 17, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !2830, line: 1442, column: 13)
!2904 = !DILocation(line: 1442, column: 37, scope: !2903)
!2905 = !DILocation(line: 1442, column: 45, scope: !2903)
!2906 = !DILocation(line: 1442, column: 26, scope: !2903)
!2907 = !DILocation(line: 1442, column: 54, scope: !2903)
!2908 = !DILocation(line: 1442, column: 51, scope: !2903)
!2909 = !DILocation(line: 1442, column: 13, scope: !2898)
!2910 = !DILocation(line: 1444, column: 17, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2903, file: !2830, line: 1443, column: 9)
!2912 = !DILocation(line: 1444, column: 25, scope: !2911)
!2913 = !DILocation(line: 1445, column: 20, scope: !2911)
!2914 = !DILocation(line: 1445, column: 13, scope: !2911)
!2915 = !DILocation(line: 1459, column: 1, scope: !2903)
!2916 = !DILocation(line: 1447, column: 5, scope: !2894)
!2917 = !DILocation(line: 1447, column: 5, scope: !2898)
!2918 = !DILocation(line: 1448, column: 12, scope: !2829)
!2919 = !DILocation(line: 1448, column: 19, scope: !2829)
!2920 = !DILocation(line: 1448, column: 17, scope: !2829)
!2921 = !DILocation(line: 1448, column: 10, scope: !2829)
!2922 = !DILocation(line: 1449, column: 9, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 1449, column: 9)
!2924 = !DILocation(line: 1449, column: 14, scope: !2923)
!2925 = !DILocation(line: 1449, column: 9, scope: !2829)
!2926 = !DILocation(line: 1451, column: 17, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !2830, line: 1451, column: 13)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !2830, line: 1450, column: 5)
!2929 = !DILocation(line: 1451, column: 32, scope: !2927)
!2930 = !DILocation(line: 1451, column: 38, scope: !2927)
!2931 = !DILocation(line: 1451, column: 26, scope: !2927)
!2932 = !DILocation(line: 1451, column: 47, scope: !2927)
!2933 = !DILocation(line: 1451, column: 44, scope: !2927)
!2934 = !DILocation(line: 1451, column: 13, scope: !2928)
!2935 = !DILocation(line: 1453, column: 17, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2927, file: !2830, line: 1452, column: 9)
!2937 = !DILocation(line: 1453, column: 25, scope: !2936)
!2938 = !DILocation(line: 1454, column: 20, scope: !2936)
!2939 = !DILocation(line: 1454, column: 13, scope: !2936)
!2940 = !DILocation(line: 1456, column: 5, scope: !2928)
!2941 = !DILocation(line: 1457, column: 5, scope: !2829)
!2942 = !DILocation(line: 1457, column: 11, scope: !2829)
!2943 = !DILocation(line: 1458, column: 12, scope: !2829)
!2944 = !DILocation(line: 1458, column: 5, scope: !2829)
!2945 = !DILocation(line: 1459, column: 1, scope: !2829)
!2946 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE", scope: !1463, file: !1464, line: 51, type: !1481, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1480, retainedNodes: !288)
!2947 = !DILocalVariable(name: "this", arg: 1, scope: !2946, type: !2948, flags: DIFlagArtificial | DIFlagObjectPointer)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!2949 = !DILocation(line: 0, scope: !2946)
!2950 = !DILocalVariable(name: "__s", arg: 2, scope: !2946, file: !1464, line: 51, type: !1484)
!2951 = !DILocation(line: 51, column: 65, scope: !2946)
!2952 = !DILocation(line: 52, column: 32, scope: !2946)
!2953 = !DILocation(line: 52, column: 33, scope: !2946)
!2954 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsB6v15006Ev", scope: !16, file: !15, line: 468, type: !101, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !100, retainedNodes: !288)
!2955 = !DILocalVariable(name: "this", arg: 1, scope: !2954, type: !2956, flags: DIFlagArtificial | DIFlagObjectPointer)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2957 = !DILocation(line: 0, scope: !2954)
!2958 = !DILocation(line: 470, column: 12, scope: !2954)
!2959 = !DILocation(line: 470, column: 5, scope: !2954)
!2960 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev", scope: !1151, file: !15, line: 781, type: !1321, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1320, retainedNodes: !288)
!2961 = !DILocalVariable(name: "this", arg: 1, scope: !2960, type: !2962, flags: DIFlagArtificial | DIFlagObjectPointer)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!2963 = !DILocation(line: 0, scope: !2960)
!2964 = !DILocation(line: 783, column: 34, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2960, file: !15, line: 783, column: 9)
!2966 = !DILocation(line: 783, column: 54, scope: !2965)
!2967 = !DILocation(line: 783, column: 9, scope: !2965)
!2968 = !DILocation(line: 783, column: 9, scope: !2960)
!2969 = !DILocation(line: 784, column: 19, scope: !2965)
!2970 = !DILocation(line: 784, column: 9, scope: !2965)
!2971 = !DILocation(line: 784, column: 17, scope: !2965)
!2972 = !DILocation(line: 785, column: 12, scope: !2960)
!2973 = !DILocation(line: 785, column: 5, scope: !2960)
!2974 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev", scope: !1463, file: !1464, line: 64, type: !1501, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1500, retainedNodes: !288)
!2975 = !DILocalVariable(name: "this", arg: 1, scope: !2974, type: !2976, flags: DIFlagArtificial | DIFlagObjectPointer)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!2977 = !DILocation(line: 0, scope: !2974)
!2978 = !DILocation(line: 64, column: 69, scope: !2974)
!2979 = !DILocation(line: 64, column: 77, scope: !2974)
!2980 = !DILocation(line: 64, column: 62, scope: !2974)
!2981 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej", scope: !1151, file: !15, line: 632, type: !1171, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1174, retainedNodes: !288)
!2982 = !DILocalVariable(name: "this", arg: 1, scope: !2981, type: !2983, flags: DIFlagArtificial | DIFlagObjectPointer)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!2984 = !DILocation(line: 0, scope: !2981)
!2985 = !DILocalVariable(name: "__state", arg: 2, scope: !2981, file: !15, line: 632, type: !49)
!2986 = !DILocation(line: 632, column: 53, scope: !2981)
!2987 = !DILocation(line: 632, column: 73, scope: !2981)
!2988 = !DILocation(line: 632, column: 82, scope: !2981)
!2989 = !DILocation(line: 632, column: 91, scope: !2981)
!2990 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthB6v15006Ev", scope: !16, file: !15, line: 530, type: !117, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !122, retainedNodes: !288)
!2991 = !DILocalVariable(name: "this", arg: 1, scope: !2990, type: !2956, flags: DIFlagArtificial | DIFlagObjectPointer)
!2992 = !DILocation(line: 0, scope: !2990)
!2993 = !DILocation(line: 532, column: 12, scope: !2990)
!2994 = !DILocation(line: 532, column: 5, scope: !2990)
!2995 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl", scope: !1185, file: !1152, line: 231, type: !1247, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1246, retainedNodes: !288)
!2996 = !DILocalVariable(name: "this", arg: 1, scope: !2995, type: !1184, flags: DIFlagArtificial | DIFlagObjectPointer)
!2997 = !DILocation(line: 0, scope: !2995)
!2998 = !DILocalVariable(name: "__s", arg: 2, scope: !2995, file: !1152, line: 231, type: !1249)
!2999 = !DILocation(line: 231, column: 39, scope: !2995)
!3000 = !DILocalVariable(name: "__n", arg: 3, scope: !2995, file: !1152, line: 231, type: !63)
!3001 = !DILocation(line: 231, column: 55, scope: !2995)
!3002 = !DILocation(line: 232, column: 21, scope: !2995)
!3003 = !DILocation(line: 232, column: 26, scope: !2995)
!3004 = !DILocation(line: 232, column: 14, scope: !2995)
!3005 = !DILocation(line: 232, column: 7, scope: !2995)
!3006 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc", scope: !165, file: !166, line: 2129, type: !401, scopeLine: 2131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !400, retainedNodes: !288)
!3007 = !DILocalVariable(name: "this", arg: 1, scope: !3006, type: !3008, flags: DIFlagArtificial | DIFlagObjectPointer)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3009 = !DILocation(line: 0, scope: !3006)
!3010 = !DILocalVariable(name: "__n", arg: 2, scope: !3006, file: !166, line: 860, type: !170)
!3011 = !DILocation(line: 860, column: 28, scope: !3006)
!3012 = !DILocalVariable(name: "__c", arg: 3, scope: !3006, file: !166, line: 860, type: !157)
!3013 = !DILocation(line: 860, column: 40, scope: !3006)
!3014 = !DILocation(line: 2131, column: 1, scope: !3006)
!3015 = !DILocation(line: 2134, column: 1, scope: !3006)
!3016 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev", scope: !165, file: !166, line: 1279, type: !772, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !774, retainedNodes: !288)
!3017 = !DILocalVariable(name: "this", arg: 1, scope: !3016, type: !3018, flags: DIFlagArtificial | DIFlagObjectPointer)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3019 = !DILocation(line: 0, scope: !3016)
!3020 = !DILocation(line: 1279, column: 73, scope: !3016)
!3021 = !DILocation(line: 1279, column: 55, scope: !3016)
!3022 = !DILocation(line: 1279, column: 48, scope: !3016)
!3023 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthB6v15006El", scope: !16, file: !15, line: 537, type: !120, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !123, retainedNodes: !288)
!3024 = !DILocalVariable(name: "this", arg: 1, scope: !3023, type: !3025, flags: DIFlagArtificial | DIFlagObjectPointer)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!3026 = !DILocation(line: 0, scope: !3023)
!3027 = !DILocalVariable(name: "__wide", arg: 2, scope: !3023, file: !15, line: 537, type: !63)
!3028 = !DILocation(line: 537, column: 28, scope: !3023)
!3029 = !DILocalVariable(name: "__r", scope: !3023, file: !15, line: 539, type: !63)
!3030 = !DILocation(line: 539, column: 16, scope: !3023)
!3031 = !DILocation(line: 539, column: 22, scope: !3023)
!3032 = !DILocation(line: 540, column: 16, scope: !3023)
!3033 = !DILocation(line: 540, column: 5, scope: !3023)
!3034 = !DILocation(line: 540, column: 14, scope: !3023)
!3035 = !DILocation(line: 541, column: 12, scope: !3023)
!3036 = !DILocation(line: 541, column: 5, scope: !3023)
!3037 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc", scope: !165, file: !166, line: 2129, type: !401, scopeLine: 2131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !400, retainedNodes: !288)
!3038 = !DILocalVariable(name: "this", arg: 1, scope: !3037, type: !3008, flags: DIFlagArtificial | DIFlagObjectPointer)
!3039 = !DILocation(line: 0, scope: !3037)
!3040 = !DILocalVariable(name: "__n", arg: 2, scope: !3037, file: !166, line: 860, type: !170)
!3041 = !DILocation(line: 860, column: 28, scope: !3037)
!3042 = !DILocalVariable(name: "__c", arg: 3, scope: !3037, file: !166, line: 860, type: !157)
!3043 = !DILocation(line: 860, column: 40, scope: !3037)
!3044 = !DILocation(line: 2130, column: 8, scope: !3037)
!3045 = !DILocation(line: 2132, column: 12, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3037, file: !166, line: 2131, column: 1)
!3047 = !DILocation(line: 2132, column: 17, scope: !3046)
!3048 = !DILocation(line: 2132, column: 5, scope: !3046)
!3049 = !DILocation(line: 2133, column: 5, scope: !3046)
!3050 = !DILocation(line: 2134, column: 1, scope: !3037)
!3051 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__default_init_tag, std::__1::__default_init_tag>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_", scope: !241, file: !242, line: 108, type: !3052, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3056, declaration: !3055, retainedNodes: !288)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !343, !3054, !3054}
!3054 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !287, size: 64)
!3055 = !DISubprogram(name: "__compressed_pair<std::__1::__default_init_tag, std::__1::__default_init_tag>", scope: !241, file: !242, line: 108, type: !3052, scopeLine: 108, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !3056)
!3056 = !{!3057, !3058}
!3057 = !DITemplateTypeParameter(name: "_U1", type: !287)
!3058 = !DITemplateTypeParameter(name: "_U2", type: !287)
!3059 = !DILocalVariable(name: "this", arg: 1, scope: !3051, type: !359, flags: DIFlagArtificial | DIFlagObjectPointer)
!3060 = !DILocation(line: 0, scope: !3051)
!3061 = !DILocalVariable(name: "__t1", arg: 2, scope: !3051, file: !242, line: 108, type: !3054)
!3062 = !DILocation(line: 108, column: 36, scope: !3051)
!3063 = !DILocalVariable(name: "__t2", arg: 3, scope: !3051, file: !242, line: 108, type: !3054)
!3064 = !DILocation(line: 108, column: 48, scope: !3051)
!3065 = !DILocation(line: 108, column: 121, scope: !3051)
!3066 = !DILocation(line: 108, column: 122, scope: !3051)
!3067 = distinct !DISubprogram(name: "__debug_db_insert_c<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >", linkageName: "_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_", scope: !17, file: !3068, line: 215, type: !3069, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3071, retainedNodes: !288)
!3068 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__debug", directory: "")
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !3008}
!3071 = !{!3072}
!3072 = !DITemplateTypeParameter(name: "_Tp", type: !165)
!3073 = !DILocalVariable(name: "__c", arg: 1, scope: !3067, file: !3068, line: 215, type: !3008)
!3074 = !DILocation(line: 215, column: 90, scope: !3067)
!3075 = !DILocation(line: 222, column: 1, scope: !3067)
!3076 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__default_init_tag, std::__1::__default_init_tag>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_", scope: !241, file: !242, line: 108, type: !3052, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3056, declaration: !3055, retainedNodes: !288)
!3077 = !DILocalVariable(name: "this", arg: 1, scope: !3076, type: !359, flags: DIFlagArtificial | DIFlagObjectPointer)
!3078 = !DILocation(line: 0, scope: !3076)
!3079 = !DILocalVariable(name: "__t1", arg: 2, scope: !3076, file: !242, line: 108, type: !3054)
!3080 = !DILocation(line: 108, column: 36, scope: !3076)
!3081 = !DILocalVariable(name: "__t2", arg: 3, scope: !3076, file: !242, line: 108, type: !3054)
!3082 = !DILocation(line: 108, column: 48, scope: !3076)
!3083 = !DILocation(line: 108, column: 121, scope: !3076)
!3084 = !DILocation(line: 108, column: 81, scope: !3076)
!3085 = !DILocation(line: 108, column: 63, scope: !3076)
!3086 = !DILocation(line: 108, column: 56, scope: !3076)
!3087 = !DILocation(line: 108, column: 114, scope: !3076)
!3088 = !DILocation(line: 108, column: 96, scope: !3076)
!3089 = !DILocation(line: 108, column: 89, scope: !3076)
!3090 = !DILocation(line: 108, column: 122, scope: !3076)
!3091 = distinct !DISubprogram(name: "forward<std::__1::__default_init_tag>", linkageName: "_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE", scope: !17, file: !3092, line: 25, type: !3093, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3096, retainedNodes: !288)
!3092 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__utility/forward.h", directory: "")
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!3054, !3095}
!3095 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !287, size: 64)
!3096 = !{!3097}
!3097 = !DITemplateTypeParameter(name: "_Tp", type: !287)
!3098 = !DILocalVariable(name: "__t", arg: 1, scope: !3091, file: !3092, line: 25, type: !3095)
!3099 = !DILocation(line: 25, column: 47, scope: !3091)
!3100 = !DILocation(line: 26, column: 29, scope: !3091)
!3101 = !DILocation(line: 26, column: 3, scope: !3091)
!3102 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE", scope: !245, file: !242, line: 35, type: !284, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !283, retainedNodes: !288)
!3103 = !DILocalVariable(name: "this", arg: 1, scope: !3102, type: !358, flags: DIFlagArtificial | DIFlagObjectPointer)
!3104 = !DILocation(line: 0, scope: !3102)
!3105 = !DILocalVariable(arg: 2, scope: !3102, file: !242, line: 35, type: !287)
!3106 = !DILocation(line: 35, column: 93, scope: !3102)
!3107 = !DILocation(line: 35, column: 52, scope: !3102)
!3108 = !DILocation(line: 35, column: 96, scope: !3102)
!3109 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE", scope: !311, file: !242, line: 64, type: !319, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !318, retainedNodes: !288)
!3110 = !DILocalVariable(name: "this", arg: 1, scope: !3109, type: !363, flags: DIFlagArtificial | DIFlagObjectPointer)
!3111 = !DILocation(line: 0, scope: !3109)
!3112 = !DILocalVariable(arg: 2, scope: !3109, file: !242, line: 64, type: !287)
!3113 = !DILocation(line: 64, column: 93, scope: !3109)
!3114 = !DILocation(line: 64, column: 95, scope: !3109)
!3115 = !DILocation(line: 64, column: 52, scope: !3109)
!3116 = !DILocation(line: 64, column: 96, scope: !3109)
!3117 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSt3__19allocatorIcEC2B6v15006Ev", scope: !181, file: !180, line: 99, type: !195, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !194, retainedNodes: !288)
!3118 = !DILocalVariable(name: "this", arg: 1, scope: !3117, type: !3119, flags: DIFlagArtificial | DIFlagObjectPointer)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3120 = !DILocation(line: 0, scope: !3117)
!3121 = !DILocation(line: 99, column: 35, scope: !3117)
!3122 = !DILocation(line: 99, column: 5, scope: !3117)
!3123 = distinct !DISubprogram(name: "__non_trivial_if", linkageName: "_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev", scope: !184, file: !180, line: 78, type: !187, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !186, retainedNodes: !288)
!3124 = !DILocalVariable(name: "this", arg: 1, scope: !3123, type: !3125, flags: DIFlagArtificial | DIFlagObjectPointer)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3126 = !DILocation(line: 0, scope: !3123)
!3127 = !DILocation(line: 78, column: 54, scope: !3123)
!3128 = distinct !DISubprogram(name: "__to_address<const char>", linkageName: "_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_", scope: !17, file: !3129, line: 170, type: !3130, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3132, retainedNodes: !288)
!3129 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/pointer_traits.h", directory: "")
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!155, !155}
!3132 = !{!3133}
!3133 = !DITemplateTypeParameter(name: "_Tp", type: !156)
!3134 = !DILocalVariable(name: "__p", arg: 1, scope: !3128, file: !3129, line: 170, type: !155)
!3135 = !DILocation(line: 170, column: 24, scope: !3128)
!3136 = !DILocation(line: 172, column: 12, scope: !3128)
!3137 = !DILocation(line: 172, column: 5, scope: !3128)
!3138 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev", scope: !165, file: !166, line: 1619, type: !861, scopeLine: 1620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !868, retainedNodes: !288)
!3139 = !DILocalVariable(name: "this", arg: 1, scope: !3138, type: !3018, flags: DIFlagArtificial | DIFlagObjectPointer)
!3140 = !DILocation(line: 0, scope: !3138)
!3141 = !DILocation(line: 1620, column: 17, scope: !3138)
!3142 = !DILocation(line: 1620, column: 31, scope: !3138)
!3143 = !DILocation(line: 1620, column: 54, scope: !3138)
!3144 = !DILocation(line: 1620, column: 10, scope: !3138)
!3145 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev", scope: !165, file: !166, line: 1496, type: !658, scopeLine: 1496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !831, retainedNodes: !288)
!3146 = !DILocalVariable(name: "this", arg: 1, scope: !3145, type: !3018, flags: DIFlagArtificial | DIFlagObjectPointer)
!3147 = !DILocation(line: 0, scope: !3145)
!3148 = !DILocation(line: 1497, column: 13, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !166, line: 1497, column: 13)
!3150 = !DILocation(line: 1497, column: 13, scope: !3145)
!3151 = !DILocation(line: 1498, column: 13, scope: !3149)
!3152 = !DILocation(line: 1499, column: 16, scope: !3145)
!3153 = !DILocation(line: 1499, column: 21, scope: !3145)
!3154 = !DILocation(line: 1499, column: 29, scope: !3145)
!3155 = !DILocation(line: 1499, column: 33, scope: !3145)
!3156 = !DILocation(line: 1499, column: 9, scope: !3145)
!3157 = !DILocation(line: 1500, column: 5, scope: !3145)
!3158 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev", scope: !165, file: !166, line: 1607, type: !861, scopeLine: 1608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !860, retainedNodes: !288)
!3159 = !DILocalVariable(name: "this", arg: 1, scope: !3158, type: !3018, flags: DIFlagArtificial | DIFlagObjectPointer)
!3160 = !DILocation(line: 0, scope: !3158)
!3161 = !DILocation(line: 1608, column: 17, scope: !3158)
!3162 = !DILocation(line: 1608, column: 22, scope: !3158)
!3163 = !DILocation(line: 1608, column: 30, scope: !3158)
!3164 = !DILocation(line: 1608, column: 34, scope: !3158)
!3165 = !DILocation(line: 1608, column: 10, scope: !3158)
!3166 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev", scope: !165, file: !166, line: 1613, type: !861, scopeLine: 1614, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !866, retainedNodes: !288)
!3167 = !DILocalVariable(name: "this", arg: 1, scope: !3166, type: !3018, flags: DIFlagArtificial | DIFlagObjectPointer)
!3168 = !DILocation(line: 0, scope: !3166)
!3169 = !DILocation(line: 1614, column: 59, scope: !3166)
!3170 = !DILocation(line: 1614, column: 64, scope: !3166)
!3171 = !DILocation(line: 1614, column: 72, scope: !3166)
!3172 = !DILocation(line: 1614, column: 76, scope: !3166)
!3173 = !DILocation(line: 1614, column: 17, scope: !3166)
!3174 = !DILocation(line: 1614, column: 10, scope: !3166)
!3175 = distinct !DISubprogram(name: "__libcpp_is_constant_evaluated", linkageName: "_ZNSt3__130__libcpp_is_constant_evaluatedEv", scope: !17, file: !3176, line: 28, type: !3177, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !288)
!3176 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__type_traits/is_constant_evaluated.h", directory: "")
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!192}
!3179 = !DILocation(line: 28, column: 51, scope: !3175)
!3180 = distinct !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev", scope: !241, file: !242, line: 125, type: !345, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !344, retainedNodes: !288)
!3181 = !DILocalVariable(name: "this", arg: 1, scope: !3180, type: !3182, flags: DIFlagArtificial | DIFlagObjectPointer)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3183 = !DILocation(line: 0, scope: !3180)
!3184 = !DILocation(line: 126, column: 39, scope: !3180)
!3185 = !DILocation(line: 126, column: 46, scope: !3180)
!3186 = !DILocation(line: 126, column: 5, scope: !3180)
!3187 = distinct !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev", scope: !245, file: !242, line: 50, type: !299, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !298, retainedNodes: !288)
!3188 = !DILocalVariable(name: "this", arg: 1, scope: !3187, type: !3189, flags: DIFlagArtificial | DIFlagObjectPointer)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3190 = !DILocation(line: 0, scope: !3187)
!3191 = !DILocation(line: 50, column: 92, scope: !3187)
!3192 = !DILocation(line: 50, column: 85, scope: !3187)
!3193 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_", scope: !3194, file: !3129, line: 149, type: !3197, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !3196, retainedNodes: !288)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<const char *>", scope: !17, file: !3129, line: 133, size: 8, flags: DIFlagTypePassByValue, elements: !3195, templateParams: !3209, identifier: "_ZTSNSt3__114pointer_traitsIPKcEE")
!3195 = !{!3196}
!3196 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_", scope: !3194, file: !3129, line: 149, type: !3197, scopeLine: 149, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3194, file: !3129, line: 135, baseType: !155)
!3200 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3203, file: !3202, line: 41, baseType: !156)
!3202 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__type_traits/conditional.h", directory: "")
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<const char *>::__nat, const char>", scope: !17, file: !3202, line: 41, size: 8, flags: DIFlagTypePassByValue, elements: !288, templateParams: !3204, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPKcE5__natES2_EE")
!3204 = !{!3205, !3206, !3208}
!3205 = !DITemplateValueParameter(name: "_Bp", type: !192, value: i8 0)
!3206 = !DITemplateTypeParameter(name: "_If", type: !3207)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !3194, file: !3129, line: 146, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__114pointer_traitsIPKcE5__natE")
!3208 = !DITemplateTypeParameter(name: "_Then", type: !156)
!3209 = !{!3210}
!3210 = !DITemplateTypeParameter(name: "_Ptr", type: !155)
!3211 = !DILocalVariable(name: "__r", arg: 1, scope: !3193, file: !3129, line: 150, type: !3200)
!3212 = !DILocation(line: 150, column: 67, scope: !3193)
!3213 = !DILocation(line: 151, column: 34, scope: !3193)
!3214 = !DILocation(line: 151, column: 17, scope: !3193)
!3215 = !DILocation(line: 151, column: 10, scope: !3193)
!3216 = distinct !DISubprogram(name: "addressof<const char>", linkageName: "_ZNSt3__19addressofB6v15006IKcEEPT_RS2_", scope: !17, file: !3217, line: 25, type: !3218, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3132, retainedNodes: !288)
!3217 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/addressof.h", directory: "")
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!155, !217}
!3220 = !DILocalVariable(name: "__x", arg: 1, scope: !3216, file: !3217, line: 25, type: !217)
!3221 = !DILocation(line: 25, column: 16, scope: !3216)
!3222 = !DILocation(line: 27, column: 32, scope: !3216)
!3223 = !DILocation(line: 27, column: 5, scope: !3216)
!3224 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE", scope: !1463, file: !1464, line: 51, type: !1481, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1480, retainedNodes: !288)
!3225 = !DILocalVariable(name: "this", arg: 1, scope: !3224, type: !2948, flags: DIFlagArtificial | DIFlagObjectPointer)
!3226 = !DILocation(line: 0, scope: !3224)
!3227 = !DILocalVariable(name: "__s", arg: 2, scope: !3224, file: !1464, line: 51, type: !1484)
!3228 = !DILocation(line: 51, column: 65, scope: !3224)
!3229 = !DILocation(line: 52, column: 32, scope: !3224)
!3230 = !DILocation(line: 52, column: 11, scope: !3224)
!3231 = !DILocation(line: 52, column: 19, scope: !3224)
!3232 = !DILocation(line: 52, column: 23, scope: !3224)
!3233 = !DILocation(line: 52, column: 33, scope: !3224)
!3234 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev", scope: !1151, file: !15, line: 735, type: !1310, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1309, retainedNodes: !288)
!3235 = !DILocalVariable(name: "this", arg: 1, scope: !3234, type: !2962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3236 = !DILocation(line: 0, scope: !3234)
!3237 = !DILocation(line: 737, column: 76, scope: !3234)
!3238 = !DILocation(line: 737, column: 12, scope: !3234)
!3239 = !DILocation(line: 737, column: 5, scope: !3234)
!3240 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufB6v15006Ev", scope: !16, file: !15, line: 357, type: !1120, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1119, retainedNodes: !288)
!3241 = !DILocalVariable(name: "this", arg: 1, scope: !3240, type: !2956, flags: DIFlagArtificial | DIFlagObjectPointer)
!3242 = !DILocation(line: 0, scope: !3240)
!3243 = !DILocation(line: 357, column: 59, scope: !3240)
!3244 = !DILocation(line: 357, column: 52, scope: !3240)
!3245 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !549, file: !550, line: 249, type: !592, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !591, retainedNodes: !288)
!3246 = !DILocalVariable(name: "__c1", arg: 1, scope: !3245, file: !550, line: 249, type: !584)
!3247 = !DILocation(line: 249, column: 63, scope: !3245)
!3248 = !DILocalVariable(name: "__c2", arg: 2, scope: !3245, file: !550, line: 249, type: !584)
!3249 = !DILocation(line: 249, column: 78, scope: !3245)
!3250 = !DILocation(line: 250, column: 17, scope: !3245)
!3251 = !DILocation(line: 250, column: 25, scope: !3245)
!3252 = !DILocation(line: 250, column: 22, scope: !3245)
!3253 = !DILocation(line: 250, column: 10, scope: !3245)
!3254 = distinct !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !549, file: !550, line: 251, type: !595, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !594, retainedNodes: !288)
!3255 = !DILocation(line: 252, column: 10, scope: !3254)
!3256 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec", scope: !1151, file: !15, line: 773, type: !1334, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1333, retainedNodes: !288)
!3257 = !DILocalVariable(name: "this", arg: 1, scope: !3256, type: !2962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3258 = !DILocation(line: 0, scope: !3256)
!3259 = !DILocalVariable(name: "__c", arg: 2, scope: !3256, file: !15, line: 670, type: !157)
!3260 = !DILocation(line: 670, column: 26, scope: !3256)
!3261 = !DILocation(line: 775, column: 41, scope: !3256)
!3262 = !DILocation(line: 775, column: 12, scope: !3256)
!3263 = !DILocation(line: 775, column: 57, scope: !3256)
!3264 = !DILocation(line: 775, column: 51, scope: !3256)
!3265 = !DILocation(line: 775, column: 5, scope: !3256)
!3266 = !DILocation(line: 776, column: 1, scope: !3256)
!3267 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !17, file: !128, line: 250, type: !3268, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !3360, retainedNodes: !288)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!3270, !150}
!3270 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !17, file: !128, line: 663, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3273, vtableHolder: !979, templateParams: !597)
!3273 = !{!3274, !3275, !3297, !3299, !3300, !3301, !3303, !3307, !3312, !3318, !3321, !3322, !3325, !3329, !3330, !3331, !3334, !3337, !3340, !3343, !3346, !3349, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3274 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3272, baseType: !976, flags: DIFlagPublic, extraData: i32 0)
!3275 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3272, baseType: !3276, flags: DIFlagPublic, extraData: i32 0)
!3276 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !17, file: !128, line: 402, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3277, identifier: "_ZTSNSt3__110ctype_baseE")
!3277 = !{!3278, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !3276, file: !128, line: 464, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !3276, file: !128, line: 458, baseType: !2455)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !3276, file: !128, line: 465, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !3276, file: !128, line: 466, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !3276, file: !128, line: 467, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !3276, file: !128, line: 468, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !3276, file: !128, line: 469, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !3276, file: !128, line: 470, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !3276, file: !128, line: 471, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !3276, file: !128, line: 472, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !3276, file: !128, line: 480, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__regex_word", scope: !3276, file: !128, line: 481, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !3276, file: !128, line: 547, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !3276, file: !128, line: 548, baseType: !3279, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472)
!3293 = !DISubprogram(name: "ctype_base", scope: !3276, file: !128, line: 550, type: !3294, scopeLine: 550, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !3272, file: !128, line: 666, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !3272, file: !128, line: 667, baseType: !192, size: 8, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3272, file: !128, line: 753, baseType: !1025, flags: DIFlagPublic | DIFlagStaticMember)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !3272, file: !128, line: 756, baseType: !3302, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3303 = !DISubprogram(name: "ctype", scope: !3272, file: !128, line: 671, type: !3304, scopeLine: 671, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3306, !3298, !192, !83}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3307 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isB6v15006Ejc", scope: !3272, file: !128, line: 674, type: !3308, scopeLine: 674, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!192, !3310, !3280, !3311}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !3272, file: !128, line: 669, baseType: !157)
!3312 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isB6v15006EPKcS3_Pj", scope: !3272, file: !128, line: 680, type: !3313, scopeLine: 680, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!3315, !3310, !3315, !3315, !3317}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3311)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3318 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isB6v15006EjPKcS3_", scope: !3272, file: !128, line: 688, type: !3319, scopeLine: 688, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!3315, !3310, !3280, !3315, !3315}
!3321 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notB6v15006EjPKcS3_", scope: !3272, file: !128, line: 697, type: !3319, scopeLine: 697, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3322 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperB6v15006Ec", scope: !3272, file: !128, line: 706, type: !3323, scopeLine: 706, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3311, !3310, !3311}
!3325 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperB6v15006EPcPKc", scope: !3272, file: !128, line: 712, type: !3326, scopeLine: 712, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!3315, !3310, !3328, !3315}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3329 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerB6v15006Ec", scope: !3272, file: !128, line: 718, type: !3323, scopeLine: 718, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3330 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerB6v15006EPcPKc", scope: !3272, file: !128, line: 724, type: !3326, scopeLine: 724, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3331 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenB6v15006Ec", scope: !3272, file: !128, line: 730, type: !3332, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!3311, !3310, !157}
!3334 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenB6v15006EPKcS3_Pc", scope: !3272, file: !128, line: 736, type: !3335, scopeLine: 736, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!155, !3310, !155, !155, !3328}
!3337 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowB6v15006Ecc", scope: !3272, file: !128, line: 742, type: !3338, scopeLine: 742, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!157, !3310, !3311, !157}
!3340 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowB6v15006EPKcS3_cPc", scope: !3272, file: !128, line: 748, type: !3341, scopeLine: 748, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!155, !3310, !3315, !3315, !157, !201}
!3343 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableB6v15006Ev", scope: !3272, file: !128, line: 760, type: !3344, scopeLine: 760, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!3298, !3310}
!3346 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !3272, file: !128, line: 761, type: !3347, scopeLine: 761, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!3298}
!3349 = !DISubprogram(name: "~ctype", scope: !3272, file: !128, line: 776, type: !3350, scopeLine: 776, containingType: !3272, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !3306}
!3352 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !3272, file: !128, line: 777, type: !3323, scopeLine: 777, containingType: !3272, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3353 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !3272, file: !128, line: 778, type: !3326, scopeLine: 778, containingType: !3272, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3354 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !3272, file: !128, line: 779, type: !3323, scopeLine: 779, containingType: !3272, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3355 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !3272, file: !128, line: 780, type: !3326, scopeLine: 780, containingType: !3272, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3356 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !3272, file: !128, line: 781, type: !3332, scopeLine: 781, containingType: !3272, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3357 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !3272, file: !128, line: 782, type: !3335, scopeLine: 782, containingType: !3272, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3358 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !3272, file: !128, line: 783, type: !3338, scopeLine: 783, containingType: !3272, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3359 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !3272, file: !128, line: 784, type: !3341, scopeLine: 784, containingType: !3272, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3360 = !{!3361}
!3361 = !DITemplateTypeParameter(name: "_Facet", type: !3272)
!3362 = !DILocalVariable(name: "__l", arg: 1, scope: !3267, file: !128, line: 250, type: !150)
!3363 = !DILocation(line: 250, column: 25, scope: !3267)
!3364 = !DILocation(line: 252, column: 40, scope: !3267)
!3365 = !DILocation(line: 252, column: 44, scope: !3267)
!3366 = !DILocation(line: 252, column: 12, scope: !3267)
!3367 = !DILocation(line: 252, column: 5, scope: !3267)
!3368 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenB6v15006Ec", scope: !3272, file: !128, line: 730, type: !3332, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !3331, retainedNodes: !288)
!3369 = !DILocalVariable(name: "this", arg: 1, scope: !3368, type: !3370, flags: DIFlagArtificial | DIFlagObjectPointer)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3371 = !DILocation(line: 0, scope: !3368)
!3372 = !DILocalVariable(name: "__c", arg: 2, scope: !3368, file: !128, line: 730, type: !157)
!3373 = !DILocation(line: 730, column: 26, scope: !3368)
!3374 = !DILocation(line: 732, column: 25, scope: !3368)
!3375 = !DILocation(line: 732, column: 16, scope: !3368)
!3376 = !DILocation(line: 732, column: 9, scope: !3368)
!3377 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateB6v15006Ej", scope: !16, file: !15, line: 555, type: !1101, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !1103, retainedNodes: !288)
!3378 = !DILocalVariable(name: "this", arg: 1, scope: !3377, type: !3025, flags: DIFlagArtificial | DIFlagObjectPointer)
!3379 = !DILocation(line: 0, scope: !3377)
!3380 = !DILocalVariable(name: "__state", arg: 2, scope: !3377, file: !15, line: 555, type: !49)
!3381 = !DILocation(line: 555, column: 28, scope: !3377)
!3382 = !DILocation(line: 557, column: 11, scope: !3377)
!3383 = !DILocation(line: 557, column: 24, scope: !3377)
!3384 = !DILocation(line: 557, column: 22, scope: !3377)
!3385 = !DILocation(line: 557, column: 5, scope: !3377)
!3386 = !DILocation(line: 558, column: 1, scope: !3377)
