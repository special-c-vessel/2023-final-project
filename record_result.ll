; ModuleID = 'test.cpp' 
source_filename = "test.cpp" 
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128" 
target triple = "arm64-apple-macosx12.3.0" 

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" } 
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }> 
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 } 
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }> 
%"struct.std::__1::once_flag" = type { i64 } 
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" } 
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" } 
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" } 
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon } 
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" } 
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 } 
%"struct.std::__1::__default_init_tag" = type { i8 } 
%"class.std::__1::__basic_string_common" = type { i8 } 
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 } 
%"class.std::__1::allocator" = type { i8 } 
%"struct.std::__1::__non_trivial_if" = type { i8 } 
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon } 
%struct.anon = type { i8 } 
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, %"class.std::__1::basic_ostream"* } 
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* } 
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* } 
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* } 
%"class.std::__1::locale::__imp" = type opaque 
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }> 
%"struct.std::__1::nullptr_t" = type { i8* } 
%"struct.std::__1::iterator" = type { i8 } 
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }> 
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" } 
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 } 

@.str = private unnamed_addr constant [6 x i8] c"11111\00", align 1 
@.str.1 = private unnamed_addr constant [6 x i8] c"32222\00", align 1 
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8 
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1 
@.str.3 = private unnamed_addr constant [6 x i8] c"aaaba\00", align 1 
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8 

; Function Attrs: noinline norecurse optnone ssp uwtable 
define i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2458 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %retval = alloca i32, align 4 
  %tempstr = alloca %"class.std::__1::basic_string", align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  %num1 = alloca i32, align 4 
  %num333 = alloca i32, align 4 
  store i32 0, i32* %retval, align 4 
%var_1_value = load i32, i32* %retval, align 4 
%temp_var_1_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_1_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__const_culry.retval, i64 0, i64 0)) 
%temp_var_1_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.i32, i64 0, i64 0)) 
%temp_var_1_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_1_value) 
%temp_var_1_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %retval) 
%temp_var_1_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 0) 
%temp_var_1_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 0) 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"* %tempstr, metadata !2459, metadata !DIExpression()), !dbg !2460 
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %tempstr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr,i64 0, i64 0), i32 8, i32 20), !dbg !2461 
  %call1 = invoke nonnull align 8 dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%"class.std::__1::basic_string"* %tempstr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr,i64 0, i64 0), i32 9, i32 11) 
          to label %invoke.cont unwind label %lpad, !dbg !2462 

invoke.cont:                                      ; preds = %entry 
  %call2 = call nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %tempstr, i64 2) #8, !dbg !2463 
  store i8 65, i8* %call2, align 1, !dbg !2464 
%var_2_value = load i8, i8* %call2, align 4 
%temp_var_2_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_2_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr, i64 0, i64 0)) 
%temp_var_2_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%temp_var_2_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 2) 
%temp_var_2_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i8, i32 0, i32 0), i8 %var_2_value) 
%temp_var_2_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %tempstr) 
%temp_var_2_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 11) 
%temp_var_2_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 14) 
  %call4 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %tempstr) 
          to label %invoke.cont3 unwind label %lpad, !dbg !2465 

invoke.cont3:                                     ; preds = %invoke.cont 
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) 
          to label %invoke.cont5 unwind label %lpad, !dbg !2466 

invoke.cont5:                                     ; preds = %invoke.cont3 
  %call7 = call nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %tempstr, i64 2) #8, !dbg !2467 
  %0 = load i8, i8* %call7, align 1, !dbg !2467 
%var_3_value = load i8, i8* %call7, align 4 
%temp_var_3_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_var_3_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr, i64 0, i64 0)) 
%temp_var_3_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%temp_var_3_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 2) 
%temp_var_3_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i8, i32 0, i32 0), i8 %var_3_value) 
%temp_var_3_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %tempstr) 
%temp_var_3_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 15) 
%temp_var_3_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 6) 
  %conv = sext i8 %0 to i32, !dbg !2467 
  %cmp = icmp eq i32 %conv, 66, !dbg !2469 
  br i1 %cmp, label %if.then, label %if.else, !dbg !2470 

if.then:                                          ; preds = %invoke.cont5 
  %call8 = call nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %tempstr, i64 3) #8, !dbg !2471 
  store i8 66, i8* %call8, align 1, !dbg !2472 
%var_4_value = load i8, i8* %call8, align 4 
%temp_var_4_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_4_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr, i64 0, i64 0)) 
%temp_var_4_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%temp_var_4_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 3) 
%temp_var_4_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i8, i32 0, i32 0), i8 %var_4_value) 
%temp_var_4_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %tempstr) 
%temp_var_4_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 16) 
%temp_var_4_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 16) 
  br label %if.end, !dbg !2471 

lpad:                                             ; preds = %invoke.cont3, %invoke.cont, %entry 
  %1 = landingpad { i8*, i32 } 
          cleanup, !dbg !2473 
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2473 
  store i8* %2, i8** %exn.slot, align 8, !dbg !2473 
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2473 
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2473 
  %call20 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %tempstr) 
          to label %invoke.cont19 unwind label %terminate.lpad, !dbg !2473 

if.else:                                          ; preds = %invoke.cont5 
  %call9 = call nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %tempstr, i64 5) #8, !dbg !2474 
  store i8 71, i8* %call9, align 1, !dbg !2475 
%var_5_value = load i8, i8* %call9, align 4 
%temp_var_5_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_5_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr, i64 0, i64 0)) 
%temp_var_5_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%temp_var_5_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 5) 
%temp_var_5_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i8, i32 0, i32 0), i8 %var_5_value) 
%temp_var_5_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %tempstr) 
%temp_var_5_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 18) 
%temp_var_5_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 16) 
  br label %if.end 

if.end:                                           ; preds = %if.else, %if.then 
  call void @llvm.dbg.declare(metadata i32* %num1, metadata !2476, metadata !DIExpression()), !dbg !2477 
  store i32 44444, i32* %num1, align 4, !dbg !2477 
%var_6_value = load i32, i32* %num1, align 4 
%temp_var_6_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_6_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__const_culry.num1, i64 0, i64 0)) 
%temp_var_6_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.i32, i64 0, i64 0)) 
%temp_var_6_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_6_value) 
%temp_var_6_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num1) 
%temp_var_6_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 20) 
%temp_var_6_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 5) 
  %call10 = call zeroext i1 @_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %tempstr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr,i64 0, i64 0), i32 21, i32 14) #8, !dbg !2478 
  br i1 %call10, label %if.then11, label %if.end13, !dbg !2480 

if.then11:                                        ; preds = %if.end 
  call void @llvm.dbg.declare(metadata i32* %num333, metadata !2481, metadata !DIExpression()), !dbg !2483 
  store i32 555555, i32* %num333, align 4, !dbg !2483 
%var_7_value = load i32, i32* %num333, align 4 
%temp_var_7_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_7_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__const_culry.num333, i64 0, i64 0)) 
%temp_var_7_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.i32, i64 0, i64 0)) 
%temp_var_7_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_7_value) 
%temp_var_7_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %num333) 
%temp_var_7_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 23) 
%temp_var_7_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 9) 
  %call12 = call nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %tempstr, i64 555) #8, !dbg !2484 
  store i8 100, i8* %call12, align 1, !dbg !2485 
%var_8_value = load i8, i8* %call12, align 4 
%temp_var_8_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_8_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr, i64 0, i64 0)) 
%temp_var_8_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%temp_var_8_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 555) 
%temp_var_8_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i8, i32 0, i32 0), i8 %var_8_value) 
%temp_var_8_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %tempstr) 
%temp_var_8_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 24) 
%temp_var_8_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 18) 
  br label %if.end13, !dbg !2486 

if.end13:                                         ; preds = %if.then11, %if.end 
  %call14 = call nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %tempstr, i64 7) #8, !dbg !2487 
  store i8 81, i8* %call14, align 1, !dbg !2488 
%var_9_value = load i8, i8* %call14, align 4 
%temp_var_9_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%temp_var_9_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr, i64 0, i64 0)) 
%temp_var_9_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%temp_var_9_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 7) 
%temp_var_9_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i8, i32 0, i32 0), i8 %var_9_value) 
%temp_var_9_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %tempstr) 
%temp_var_9_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27) 
%temp_var_9_8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 12) 
  %call15 = call zeroext i1 @_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %tempstr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const_culry.tempstr,i64 0, i64 0), i32 28, i32 14) #8, !dbg !2489 
  br i1 %call15, label %if.then16, label %if.end17, !dbg !2491 

if.then16:                                        ; preds = %if.end13 
  br label %if.end17, !dbg !2492 

if.end17:                                         ; preds = %if.then16, %if.end13 
  %call18 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %tempstr), !dbg !2473 
  %4 = load i32, i32* %retval, align 4, !dbg !2473 
%var_10_value = load i32, i32* %retval, align 4 
%temp_var_10_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%temp_var_10_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__const_culry.retval, i64 0, i64 0)) 
%temp_var_10_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.i32, i64 0, i64 0)) 
%temp_var_10_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_i32, i32 0, i32 0), i32 %var_10_value) 
%temp_var_10_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %retval) 
%temp_var_10_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 32) 
%temp_var_10_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 1) 
  ret i32 %4, !dbg !2473 

invoke.cont19:                                    ; preds = %lpad 
  br label %eh.resume, !dbg !2473 

eh.resume:                                        ; preds = %invoke.cont19 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2473 
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2473 
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2473 
  %lpad.val21 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2473 
  resume { i8*, i32 } %lpad.val21, !dbg !2473 

terminate.lpad:                                   ; preds = %lpad 
  %5 = landingpad { i8*, i32 } 
          catch i8* null, !dbg !2473 
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !2473 
  call void @__clang_call_terminate(i8* %6) #9, !dbg !2473 
  unreachable, !dbg !2473 
} 

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn 
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* returned %this, i8* %__s, i8* %__str_name, i32 %__line, i32 %__colnum) unnamed_addr #2 align 2 !dbg !2494 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__s.addr = alloca i8*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2500, metadata !DIExpression()), !dbg !2502 
  store i8* %__s, i8** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2503, metadata !DIExpression()), !dbg !2504 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2505 
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %this1, i8* %0), !dbg !2505 
%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) 
%var_type = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0)) 
%var_string_length = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv_culry(%"class.std::__1::basic_string"* %this) 
%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* %__s) 
%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0)) 
%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %this) 
%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line) 
%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum) 
  ret %"class.std::__1::basic_string"* %this1, !dbg !2506 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%"class.std::__1::basic_string"* %this, i8* %__s, i8* %__str_name, i32 %__line, i32 %__colnum) #2 align 2 !dbg !2507 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__s.addr = alloca i8*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2508, metadata !DIExpression()), !dbg !2509 
  store i8* %__s, i8** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2510, metadata !DIExpression()), !dbg !2511 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2512 
  %call = call nonnull align 8 dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(%"class.std::__1::basic_string"* %this1, i8* %0), !dbg !2513 
%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) 
%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) 
%var_type = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0)) 
%var_string_length = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv_culry(%"class.std::__1::basic_string"* %this) 
%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* %__s) 
%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0)) 
%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %this) 
%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line) 
%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum) 
  ret %"class.std::__1::basic_string"* %call, !dbg !2514 
} 

declare i32 @__gxx_personality_v0(...) 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 1 dereferenceable(1) i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%"class.std::__1::basic_string"* %this, i64 %__pos) #3 align 2 !dbg !2515 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__pos.addr = alloca i64, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2516, metadata !DIExpression()), !dbg !2517 
  store i64 %__pos, i64* %__pos.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__pos.addr, metadata !2518, metadata !DIExpression()), !dbg !2519 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2520 
  %0 = load i64, i64* %__pos.addr, align 8, !dbg !2521 
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %0, !dbg !2522 
  ret i8* %add.ptr, !dbg !2523 
} 

; Function Attrs: noinline optnone ssp uwtable 
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str) #2 !dbg !2524 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8 
  %__str.addr = alloca i8*, align 8 
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !2528, metadata !DIExpression()), !dbg !2529 
  store i8* %__str, i8** %__str.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !2530, metadata !DIExpression()), !dbg !2531 
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2532 
  %1 = load i8*, i8** %__str.addr, align 8, !dbg !2533 
  %2 = load i8*, i8** %__str.addr, align 8, !dbg !2534 
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #8, !dbg !2535 
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %1, i64 %call), !dbg !2536 
  ret %"class.std::__1::basic_ostream"* %call1, !dbg !2537 
} 

; Function Attrs: noinline optnone ssp uwtable 
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %__str) #2 !dbg !2538 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8 
  %__str.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !2541, metadata !DIExpression()), !dbg !2542 
  store %"class.std::__1::basic_string"* %__str, %"class.std::__1::basic_string"** %__str.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %__str.addr, metadata !2543, metadata !DIExpression()), !dbg !2544 
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2545 
  %1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__str.addr, align 8, !dbg !2546 
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %1) #8, !dbg !2547 
  %2 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__str.addr, align 8, !dbg !2548 
  %call1 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %2) #8, !dbg !2549 
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %call, i64 %call1), !dbg !2550 
  ret %"class.std::__1::basic_ostream"* %call2, !dbg !2551 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal zeroext i1 @_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %__lhs, i8* %__rhs, i8* %__str_name, i32 %__line, i32 %__colnum) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2552 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %retval = alloca i1, align 1 
  %__lhs.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__rhs.addr = alloca i8*, align 8 
  %__rhs_len = alloca i64, align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  store %"class.std::__1::basic_string"* %__lhs, %"class.std::__1::basic_string"** %__lhs.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %__lhs.addr, metadata !2555, metadata !DIExpression()), !dbg !2556 
  store i8* %__rhs, i8** %__rhs.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__rhs.addr, metadata !2557, metadata !DIExpression()), !dbg !2558 
  call void @llvm.dbg.declare(metadata i64* %__rhs_len, metadata !2559, metadata !DIExpression()), !dbg !2560 
  %0 = load i8*, i8** %__rhs.addr, align 8, !dbg !2561 
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) #8, !dbg !2562 
  store i64 %call, i64* %__rhs_len, align 8, !dbg !2560 
  %1 = load i64, i64* %__rhs_len, align 8, !dbg !2563 
  %2 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__lhs.addr, align 8, !dbg !2565 
  %call1 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %2) #8, !dbg !2566 
  %cmp = icmp ne i64 %1, %call1, !dbg !2567 
  br i1 %cmp, label %if.then, label %if.end, !dbg !2568 

if.then:                                          ; preds = %entry 
  store i1 false, i1* %retval, align 1, !dbg !2569 
  br label %return, !dbg !2569 

if.end:                                           ; preds = %entry 
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__lhs.addr, align 8, !dbg !2570 
  %4 = load i8*, i8** %__rhs.addr, align 8, !dbg !2571 
  %5 = load i64, i64* %__rhs_len, align 8, !dbg !2572 
  %call2 = invoke i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"* %3, i64 0, i64 -1, i8* %4, i64 %5) 
          to label %invoke.cont unwind label %lpad, !dbg !2573 

invoke.cont:                                      ; preds = %if.end 
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2574 
  store i1 %cmp3, i1* %retval, align 1, !dbg !2575 
  br label %return, !dbg !2575 

lpad:                                             ; preds = %if.end 
  %6 = landingpad { i8*, i32 } 
          filter [0 x i8*] zeroinitializer, !dbg !2576 
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2576 
  store i8* %7, i8** %exn.slot, align 8, !dbg !2576 
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2576 
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !2576 
  br label %filter.dispatch, !dbg !2576 

filter.dispatch:                                  ; preds = %lpad 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2576 
  call void @__cxa_call_unexpected(i8* %exn) #10, !dbg !2576 
  unreachable, !dbg !2576 

return:                                           ; preds = %invoke.cont, %if.then 
  %9 = load i1, i1* %retval, align 1, !dbg !2576 
%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0)) 
%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) 
%var_type = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0)) 
%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0)) 
%var_string_length = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv_culry(%"class.std::__1::basic_string"* %__lhs) 
%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), %"class.std::__1::basic_string"* %__lhs) 
%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0)) 
%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %"class.std::__1::basic_string"* %__lhs) 
%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line) 
%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum) 
  ret i1 %9, !dbg !2576 
} 

declare %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned) unnamed_addr #4 

; Function Attrs: noinline noreturn nounwind 
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #5 { 
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8 
  call void @_ZSt9terminatev() #9 
  unreachable 
} 

declare i8* @__cxa_begin_catch(i8*) 

declare void @_ZSt9terminatev() 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* returned %this, i8* %__s) unnamed_addr #2 align 2 !dbg !2577 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__s.addr = alloca i8*, align 8 
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1 
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2578, metadata !DIExpression()), !dbg !2579 
  store i8* %__s, i8** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2580, metadata !DIExpression()), !dbg !2581 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*, !dbg !2582 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !2583 
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__r_, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2), !dbg !2583 
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2584 
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2586 
  %call3 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #8, !dbg !2587 
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %this1, i8* %1, i64 %call3), !dbg !2588 
  ret %"class.std::__1::basic_string"* %this1, !dbg !2589 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #2 align 2 !dbg !2590 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8 
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8 
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8 
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !2598, metadata !DIExpression()), !dbg !2599 
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t1.addr, metadata !2600, metadata !DIExpression()), !dbg !2601 
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t2.addr, metadata !2602, metadata !DIExpression()), !dbg !2603 
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8, !dbg !2604 
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8, !dbg !2604 
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %this1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1), !dbg !2604 
  ret %"class.std::__1::__compressed_pair"* %this1, !dbg !2605 
} 

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) #4 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #3 align 2 !dbg !2606 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__s.addr = alloca i8*, align 8 
  store i8* %__s, i8** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2607, metadata !DIExpression()), !dbg !2608 
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2609 
  %call = call i64 @strlen(i8* %0) #8, !dbg !2610 
  ret i64 %call, !dbg !2611 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #2 align 2 !dbg !2612 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8 
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8 
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8 
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1 
  %agg.tmp3 = alloca %"struct.std::__1::__default_init_tag", align 1 
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !2613, metadata !DIExpression()), !dbg !2614 
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t1.addr, metadata !2615, metadata !DIExpression()), !dbg !2616 
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t2.addr, metadata !2617, metadata !DIExpression()), !dbg !2618 
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !2619 
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8, !dbg !2620 
  %call = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1) #8, !dbg !2621 
  %call2 = call %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %0), !dbg !2622 
  %2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*, !dbg !2619 
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8, !dbg !2623 
  %call4 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %3) #8, !dbg !2624 
  %call5 = call %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %2), !dbg !2625 
  ret %"class.std::__1::__compressed_pair"* %this1, !dbg !2626 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t) #3 !dbg !2627 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__t.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8 
  store %"struct.std::__1::__default_init_tag"* %__t, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"** %__t.addr, metadata !2636, metadata !DIExpression()), !dbg !2637 
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8, !dbg !2638 
  ret %"struct.std::__1::__default_init_tag"* %0, !dbg !2639 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* returned %this) unnamed_addr #3 align 2 !dbg !2640 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1 
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8 
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !2641, metadata !DIExpression()), !dbg !2643 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"* %0, metadata !2644, metadata !DIExpression()), !dbg !2645 
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !2646 
  ret %"struct.std::__1::__compressed_pair_elem"* %this1, !dbg !2647 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* returned %this) unnamed_addr #3 align 2 !dbg !2648 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1 
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8 
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, metadata !2649, metadata !DIExpression()), !dbg !2651 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__default_init_tag"* %0, metadata !2652, metadata !DIExpression()), !dbg !2653 
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8 
  %1 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*, !dbg !2654 
  %call = call %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %1) #8, !dbg !2655 
  ret %"struct.std::__1::__compressed_pair_elem.0"* %this1, !dbg !2656 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* returned %this) unnamed_addr #3 align 2 !dbg !2657 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::allocator"*, align 8 
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::allocator"** %this.addr, metadata !2658, metadata !DIExpression()), !dbg !2660 
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::allocator"* %this1 to %"struct.std::__1::__non_trivial_if"*, !dbg !2661 
  %call = call %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev(%"struct.std::__1::__non_trivial_if"* %0) #8, !dbg !2662 
  ret %"class.std::__1::allocator"* %this1, !dbg !2661 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev(%"struct.std::__1::__non_trivial_if"* returned %this) unnamed_addr #3 align 2 !dbg !2663 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"struct.std::__1::__non_trivial_if"*, align 8 
  store %"struct.std::__1::__non_trivial_if"* %this, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__non_trivial_if"** %this.addr, metadata !2664, metadata !DIExpression()), !dbg !2666 
  %this1 = load %"struct.std::__1::__non_trivial_if"*, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8 
  ret %"struct.std::__1::__non_trivial_if"* %this1, !dbg !2667 
} 

; Function Attrs: nounwind 
declare i64 @strlen(i8*) #6 

declare nonnull align 8 dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(%"class.std::__1::basic_string"*, i8*) #4 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !2668 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2669, metadata !DIExpression()), !dbg !2670 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2671 
  br i1 %call, label %cond.true, label %cond.false, !dbg !2671 

cond.true:                                        ; preds = %entry 
  %call2 = call i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2672 
  br label %cond.end, !dbg !2671 

cond.false:                                       ; preds = %entry 
  %call3 = call i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2673 
  br label %cond.end, !dbg !2671 

cond.end:                                         ; preds = %cond.false, %cond.true 
  %cond = phi i8* [ %call2, %cond.true ], [ %call3, %cond.false ], !dbg !2671 
  ret i8* %cond, !dbg !2674 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !2675 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2676, metadata !DIExpression()), !dbg !2678 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !2679 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !2680 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !2681 
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*, !dbg !2681 
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 1, !dbg !2682 
  %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0, !dbg !2682 
  %2 = load i8, i8* %__size_, align 1, !dbg !2682 
  %conv = zext i8 %2 to i64, !dbg !2679 
  %and = and i64 %conv, 128, !dbg !2683 
  %tobool = icmp ne i64 %and, 0, !dbg !2679 
  ret i1 %tobool, !dbg !2684 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !2685 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2686, metadata !DIExpression()), !dbg !2687 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !2688 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !2689 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !2690 
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*, !dbg !2690 
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 0, !dbg !2691 
  %1 = load i8*, i8** %__data_, align 8, !dbg !2691 
  ret i8* %1, !dbg !2692 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !2693 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2694, metadata !DIExpression()), !dbg !2695 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !2696 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !2697 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !2698 
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*, !dbg !2698 
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 0, !dbg !2699 
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0, !dbg !2696 
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPcE10pointer_toERc(i8* nonnull align 1 dereferenceable(1) %arrayidx) #8, !dbg !2700 
  ret i8* %call2, !dbg !2701 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #3 align 2 !dbg !2702 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8 
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !2703, metadata !DIExpression()), !dbg !2705 
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !2706 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #8, !dbg !2707 
  ret %"struct.std::__1::basic_string<char>::__rep"* %call, !dbg !2708 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #3 align 2 !dbg !2709 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8 
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !2710, metadata !DIExpression()), !dbg !2712 
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !2713 
  ret %"struct.std::__1::basic_string<char>::__rep"* %__value_, !dbg !2714 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #3 align 2 !dbg !2715 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8 
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr, metadata !2716, metadata !DIExpression()), !dbg !2717 
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !2718 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #8, !dbg !2719 
  ret %"struct.std::__1::basic_string<char>::__rep"* %call, !dbg !2720 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #3 align 2 !dbg !2721 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8 
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !2722, metadata !DIExpression()), !dbg !2723 
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !2724 
  ret %"struct.std::__1::basic_string<char>::__rep"* %__value_, !dbg !2725 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__114pointer_traitsIPcE10pointer_toERc(i8* nonnull align 1 dereferenceable(1) %__r) #3 align 2 !dbg !2726 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__r.addr = alloca i8*, align 8 
  store i8* %__r, i8** %__r.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !2743, metadata !DIExpression()), !dbg !2744 
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !2745 
  %call = call i8* @_ZNSt3__1L9addressofIcEEPT_RS1_(i8* nonnull align 1 dereferenceable(1) %0) #8, !dbg !2746 
  ret i8* %call, !dbg !2747 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__1L9addressofIcEEPT_RS1_(i8* nonnull align 1 dereferenceable(1) %__x) #3 !dbg !2748 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__x.addr = alloca i8*, align 8 
  store i8* %__x, i8** %__x.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__x.addr, metadata !2752, metadata !DIExpression()), !dbg !2753 
  %0 = load i8*, i8** %__x.addr, align 8, !dbg !2754 
  ret i8* %0, !dbg !2755 
} 

; Function Attrs: noinline optnone ssp uwtable 
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str, i64 %__len) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1154 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8 
  %__str.addr = alloca i8*, align 8 
  %__len.addr = alloca i64, align 8 
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8 
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8 
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !2756, metadata !DIExpression()), !dbg !2757 
  store i8* %__str, i8** %__str.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !2758, metadata !DIExpression()), !dbg !2759 
  store i64 %__len, i64* %__len.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__len.addr, metadata !2760, metadata !DIExpression()), !dbg !2761 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char>::sentry"* %__s, metadata !2762, metadata !DIExpression()), !dbg !2788 
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2789 
  %call = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* %__s, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0) 
          to label %invoke.cont unwind label %lpad, !dbg !2788 

invoke.cont:                                      ; preds = %entry 
  %call3 = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char>::sentry"* %__s) 
          to label %invoke.cont2 unwind label %lpad1, !dbg !2790 

invoke.cont2:                                     ; preds = %invoke.cont 
  br i1 %call3, label %if.then, label %if.end29, !dbg !2792 

if.then:                                          ; preds = %invoke.cont2 
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2793 
  %call4 = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %1) #8, !dbg !2796 
  %2 = load i8*, i8** %__str.addr, align 8, !dbg !2797 
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2798 
  %4 = bitcast %"class.std::__1::basic_ostream"* %3 to i8**, !dbg !2798 
  %vtable = load i8*, i8** %4, align 8, !dbg !2798 
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !2798 
  %5 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !2798 
  %vbase.offset = load i64, i64* %5, align 8, !dbg !2798 
  %6 = bitcast %"class.std::__1::basic_ostream"* %3 to i8*, !dbg !2798 
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %vbase.offset, !dbg !2798 
  %7 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*, !dbg !2798 
  %call6 = invoke i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %7) 
          to label %invoke.cont5 unwind label %lpad1, !dbg !2799 

invoke.cont5:                                     ; preds = %if.then 
  %and = and i32 %call6, 176, !dbg !2800 
  %cmp = icmp eq i32 %and, 32, !dbg !2801 
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2802 

cond.true:                                        ; preds = %invoke.cont5 
  %8 = load i8*, i8** %__str.addr, align 8, !dbg !2803 
  %9 = load i64, i64* %__len.addr, align 8, !dbg !2804 
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !2805 
  br label %cond.end, !dbg !2802 

cond.false:                                       ; preds = %invoke.cont5 
  %10 = load i8*, i8** %__str.addr, align 8, !dbg !2806 
  br label %cond.end, !dbg !2802 

cond.end:                                         ; preds = %cond.false, %cond.true 
  %cond = phi i8* [ %add.ptr7, %cond.true ], [ %10, %cond.false ], !dbg !2802 
  %11 = load i8*, i8** %__str.addr, align 8, !dbg !2807 
  %12 = load i64, i64* %__len.addr, align 8, !dbg !2808 
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !2809 
  %13 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2810 
  %14 = bitcast %"class.std::__1::basic_ostream"* %13 to i8**, !dbg !2810 
  %vtable9 = load i8*, i8** %14, align 8, !dbg !2810 
  %vbase.offset.ptr10 = getelementptr i8, i8* %vtable9, i64 -24, !dbg !2810 
  %15 = bitcast i8* %vbase.offset.ptr10 to i64*, !dbg !2810 
  %vbase.offset11 = load i64, i64* %15, align 8, !dbg !2810 
  %16 = bitcast %"class.std::__1::basic_ostream"* %13 to i8*, !dbg !2810 
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %vbase.offset11, !dbg !2810 
  %17 = bitcast i8* %add.ptr12 to %"class.std::__1::ios_base"*, !dbg !2810 
  %18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2811 
  %19 = bitcast %"class.std::__1::basic_ostream"* %18 to i8**, !dbg !2811 
  %vtable13 = load i8*, i8** %19, align 8, !dbg !2811 
  %vbase.offset.ptr14 = getelementptr i8, i8* %vtable13, i64 -24, !dbg !2811 
  %20 = bitcast i8* %vbase.offset.ptr14 to i64*, !dbg !2811 
  %vbase.offset15 = load i64, i64* %20, align 8, !dbg !2811 
  %21 = bitcast %"class.std::__1::basic_ostream"* %18 to i8*, !dbg !2811 
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %vbase.offset15, !dbg !2811 
  %22 = bitcast i8* %add.ptr16 to %"class.std::__1::basic_ios"*, !dbg !2811 
  %call18 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %22) 
          to label %invoke.cont17 unwind label %lpad1, !dbg !2812 

invoke.cont17:                                    ; preds = %cond.end 
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0, !dbg !2813 
  %23 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8, !dbg !2813 
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %23 to i64, !dbg !2813 
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, i8* %2, i8* %cond, i8* %add.ptr8, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %17, i8 signext %call18) 
          to label %invoke.cont19 unwind label %lpad1, !dbg !2813 

invoke.cont19:                                    ; preds = %invoke.cont17 
  %coerce.dive21 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0, !dbg !2813 
  %coerce.val.ip = inttoptr i64 %call20 to %"class.std::__1::basic_streambuf"*, !dbg !2813 
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive21, align 8, !dbg !2813 
  %call22 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %ref.tmp) #8, !dbg !2814 
  br i1 %call22, label %if.then23, label %if.end, !dbg !2815 

if.then23:                                        ; preds = %invoke.cont19 
  %24 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2816 
  %25 = bitcast %"class.std::__1::basic_ostream"* %24 to i8**, !dbg !2816 
  %vtable24 = load i8*, i8** %25, align 8, !dbg !2816 
  %vbase.offset.ptr25 = getelementptr i8, i8* %vtable24, i64 -24, !dbg !2816 
  %26 = bitcast i8* %vbase.offset.ptr25 to i64*, !dbg !2816 
  %vbase.offset26 = load i64, i64* %26, align 8, !dbg !2816 
  %27 = bitcast %"class.std::__1::basic_ostream"* %24 to i8*, !dbg !2816 
  %add.ptr27 = getelementptr inbounds i8, i8* %27, i64 %vbase.offset26, !dbg !2816 
  %28 = bitcast i8* %add.ptr27 to %"class.std::__1::basic_ios"*, !dbg !2816 
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %28, i32 5) 
          to label %invoke.cont28 unwind label %lpad1, !dbg !2817 

invoke.cont28:                                    ; preds = %if.then23 
  br label %if.end, !dbg !2816 

lpad:                                             ; preds = %if.end29, %entry 
  %29 = landingpad { i8*, i32 } 
          catch i8* null, !dbg !2818 
  %30 = extractvalue { i8*, i32 } %29, 0, !dbg !2818 
  store i8* %30, i8** %exn.slot, align 8, !dbg !2818 
  %31 = extractvalue { i8*, i32 } %29, 1, !dbg !2818 
  store i32 %31, i32* %ehselector.slot, align 4, !dbg !2818 
  br label %catch, !dbg !2818 

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %cond.end, %if.then, %invoke.cont 
  %32 = landingpad { i8*, i32 } 
          catch i8* null, !dbg !2819 
  %33 = extractvalue { i8*, i32 } %32, 0, !dbg !2819 
  store i8* %33, i8** %exn.slot, align 8, !dbg !2819 
  %34 = extractvalue { i8*, i32 } %32, 1, !dbg !2819 
  store i32 %34, i32* %ehselector.slot, align 4, !dbg !2819 
  %call33 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s) 
          to label %invoke.cont32 unwind label %terminate.lpad, !dbg !2820 

if.end:                                           ; preds = %invoke.cont28, %invoke.cont19 
  br label %if.end29, !dbg !2821 

if.end29:                                         ; preds = %if.end, %invoke.cont2 
  %call31 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s) 
          to label %invoke.cont30 unwind label %lpad, !dbg !2820 

invoke.cont30:                                    ; preds = %if.end29 
  br label %try.cont, !dbg !2822 

invoke.cont32:                                    ; preds = %lpad1 
  br label %catch, !dbg !2820 

catch:                                            ; preds = %invoke.cont32, %lpad 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2822 
  %35 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !2822 
  %36 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2823 
  %37 = bitcast %"class.std::__1::basic_ostream"* %36 to i8**, !dbg !2823 
  %vtable34 = load i8*, i8** %37, align 8, !dbg !2823 
  %vbase.offset.ptr35 = getelementptr i8, i8* %vtable34, i64 -24, !dbg !2823 
  %38 = bitcast i8* %vbase.offset.ptr35 to i64*, !dbg !2823 
  %vbase.offset36 = load i64, i64* %38, align 8, !dbg !2823 
  %39 = bitcast %"class.std::__1::basic_ostream"* %36 to i8*, !dbg !2823 
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 %vbase.offset36, !dbg !2823 
  %40 = bitcast i8* %add.ptr37 to %"class.std::__1::ios_base"*, !dbg !2823 
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %40) 
          to label %invoke.cont39 unwind label %lpad38, !dbg !2825 

invoke.cont39:                                    ; preds = %catch 
  call void @__cxa_end_catch(), !dbg !2826 
  br label %try.cont, !dbg !2826 

try.cont:                                         ; preds = %invoke.cont39, %invoke.cont30 
  %41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !2827 
  ret %"class.std::__1::basic_ostream"* %41, !dbg !2828 

lpad38:                                           ; preds = %catch 
  %42 = landingpad { i8*, i32 } 
          cleanup, !dbg !2829 
  %43 = extractvalue { i8*, i32 } %42, 0, !dbg !2829 
  store i8* %43, i8** %exn.slot, align 8, !dbg !2829 
  %44 = extractvalue { i8*, i32 } %42, 1, !dbg !2829 
  store i32 %44, i32* %ehselector.slot, align 4, !dbg !2829 
  invoke void @__cxa_end_catch() 
          to label %invoke.cont40 unwind label %terminate.lpad, !dbg !2826 

invoke.cont40:                                    ; preds = %lpad38 
  br label %eh.resume, !dbg !2826 

eh.resume:                                        ; preds = %invoke.cont40 
  %exn41 = load i8*, i8** %exn.slot, align 8, !dbg !2826 
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2826 
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn41, 0, !dbg !2826 
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2826 
  resume { i8*, i32 } %lpad.val42, !dbg !2826 

terminate.lpad:                                   ; preds = %lpad38, %lpad1 
  %45 = landingpad { i8*, i32 } 
          catch i8* null, !dbg !2820 
  %46 = extractvalue { i8*, i32 } %45, 0, !dbg !2820 
  call void @__clang_call_terminate(i8* %46) #9, !dbg !2820 
  unreachable, !dbg !2820 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !2830 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2831, metadata !DIExpression()), !dbg !2832 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2833 
  %call2 = call i8* @_ZNSt3__1L12__to_addressIKcEEPT_S3_(i8* %call) #8, !dbg !2834 
  ret i8* %call2, !dbg !2835 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !2836 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !2837, metadata !DIExpression()), !dbg !2838 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2839 
  br i1 %call, label %cond.true, label %cond.false, !dbg !2839 

cond.true:                                        ; preds = %entry 
  %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2840 
  br label %cond.end, !dbg !2839 

cond.false:                                       ; preds = %entry 
  %call3 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !2841 
  br label %cond.end, !dbg !2839 

cond.end:                                         ; preds = %cond.false, %cond.true 
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ], !dbg !2839 
  ret i64 %cond, !dbg !2842 
} 

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* returned, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8)) unnamed_addr #4 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char>::sentry"* %this) #3 align 2 !dbg !2843 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_ostream<char>::sentry"*, align 8 
  store %"class.std::__1::basic_ostream<char>::sentry"* %this, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, metadata !2844, metadata !DIExpression()), !dbg !2846 
  %this1 = load %"class.std::__1::basic_ostream<char>::sentry"*, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8 
  %__ok_ = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", %"class.std::__1::basic_ostream<char>::sentry"* %this1, i32 0, i32 0, !dbg !2847 
  %0 = load i8, i8* %__ok_, align 8, !dbg !2847 
  %tobool = trunc i8 %0 to i1, !dbg !2847 
  ret i1 %tobool, !dbg !2848 
} 

; Function Attrs: noinline optnone ssp uwtable 
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %__iob, i8 signext %__fl) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2849 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8 
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8 
  %__ob.addr = alloca i8*, align 8 
  %__op.addr = alloca i8*, align 8 
  %__oe.addr = alloca i8*, align 8 
  %__iob.addr = alloca %"class.std::__1::ios_base"*, align 8 
  %__fl.addr = alloca i8, align 1 
  %ref.tmp = alloca %"struct.std::__1::nullptr_t", align 8 
  %__sz = alloca i64, align 8 
  %__ns = alloca i64, align 8 
  %__np = alloca i64, align 8 
  %ref.tmp17 = alloca %"struct.std::__1::nullptr_t", align 8 
  %__sp = alloca %"class.std::__1::basic_string", align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  %ref.tmp33 = alloca %"struct.std::__1::nullptr_t", align 8 
  %cleanup.dest.slot = alloca i32, align 4 
  %ref.tmp55 = alloca %"struct.std::__1::nullptr_t", align 8 
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0 
  %coerce.val.ip = inttoptr i64 %__s.coerce to %"class.std::__1::basic_streambuf"* 
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* %__s, metadata !2853, metadata !DIExpression()), !dbg !2854 
  store i8* %__ob, i8** %__ob.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__ob.addr, metadata !2855, metadata !DIExpression()), !dbg !2856 
  store i8* %__op, i8** %__op.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__op.addr, metadata !2857, metadata !DIExpression()), !dbg !2858 
  store i8* %__oe, i8** %__oe.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__oe.addr, metadata !2859, metadata !DIExpression()), !dbg !2860 
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %__iob.addr, metadata !2861, metadata !DIExpression()), !dbg !2862 
  store i8 %__fl, i8* %__fl.addr, align 1 
  call void @llvm.dbg.declare(metadata i8* %__fl.addr, metadata !2863, metadata !DIExpression()), !dbg !2864 
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2865 
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !2865 
  %call = call i64 @_ZNSt3__1L15__get_nullptr_tEv(), !dbg !2867 
  %coerce.dive1 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %ref.tmp, i32 0, i32 0, !dbg !2867 
  %coerce.val.ip2 = inttoptr i64 %call to i8*, !dbg !2867 
  store i8* %coerce.val.ip2, i8** %coerce.dive1, align 8, !dbg !2867 
  %call3 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %ref.tmp), !dbg !2867 
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, %call3, !dbg !2868 
  br i1 %cmp, label %if.then, label %if.end, !dbg !2869 

if.then:                                          ; preds = %entry 
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2870 
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2870 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !dbg !2870 
  br label %return, !dbg !2871 

if.end:                                           ; preds = %entry 
  call void @llvm.dbg.declare(metadata i64* %__sz, metadata !2872, metadata !DIExpression()), !dbg !2873 
  %3 = load i8*, i8** %__oe.addr, align 8, !dbg !2874 
  %4 = load i8*, i8** %__ob.addr, align 8, !dbg !2875 
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64, !dbg !2876 
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64, !dbg !2876 
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2876 
  store i64 %sub.ptr.sub, i64* %__sz, align 8, !dbg !2873 
  call void @llvm.dbg.declare(metadata i64* %__ns, metadata !2877, metadata !DIExpression()), !dbg !2878 
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !2879 
  %call4 = call i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %5), !dbg !2880 
  store i64 %call4, i64* %__ns, align 8, !dbg !2878 
  %6 = load i64, i64* %__ns, align 8, !dbg !2881 
  %7 = load i64, i64* %__sz, align 8, !dbg !2883 
  %cmp5 = icmp sgt i64 %6, %7, !dbg !2884 
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2885 

if.then6:                                         ; preds = %if.end 
  %8 = load i64, i64* %__sz, align 8, !dbg !2886 
  %9 = load i64, i64* %__ns, align 8, !dbg !2887 
  %sub = sub nsw i64 %9, %8, !dbg !2887 
  store i64 %sub, i64* %__ns, align 8, !dbg !2887 
  br label %if.end7, !dbg !2888 

if.else:                                          ; preds = %if.end 
  store i64 0, i64* %__ns, align 8, !dbg !2889 
  br label %if.end7 

if.end7:                                          ; preds = %if.else, %if.then6 
  call void @llvm.dbg.declare(metadata i64* %__np, metadata !2890, metadata !DIExpression()), !dbg !2891 
  %10 = load i8*, i8** %__op.addr, align 8, !dbg !2892 
  %11 = load i8*, i8** %__ob.addr, align 8, !dbg !2893 
  %sub.ptr.lhs.cast8 = ptrtoint i8* %10 to i64, !dbg !2894 
  %sub.ptr.rhs.cast9 = ptrtoint i8* %11 to i64, !dbg !2894 
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9, !dbg !2894 
  store i64 %sub.ptr.sub10, i64* %__np, align 8, !dbg !2891 
  %12 = load i64, i64* %__np, align 8, !dbg !2895 
  %cmp11 = icmp sgt i64 %12, 0, !dbg !2897 
  br i1 %cmp11, label %if.then12, label %if.end24, !dbg !2898 

if.then12:                                        ; preds = %if.end7 
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2899 
  %13 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8, !dbg !2899 
  %14 = load i8*, i8** %__ob.addr, align 8, !dbg !2902 
  %15 = load i64, i64* %__np, align 8, !dbg !2903 
  %call14 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %13, i8* %14, i64 %15), !dbg !2904 
  %16 = load i64, i64* %__np, align 8, !dbg !2905 
  %cmp15 = icmp ne i64 %call14, %16, !dbg !2906 
  br i1 %cmp15, label %if.then16, label %if.end23, !dbg !2907 

if.then16:                                        ; preds = %if.then12 
  %call18 = call i64 @_ZNSt3__1L15__get_nullptr_tEv(), !dbg !2908 
  %coerce.dive19 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %ref.tmp17, i32 0, i32 0, !dbg !2908 
  %coerce.val.ip20 = inttoptr i64 %call18 to i8*, !dbg !2908 
  store i8* %coerce.val.ip20, i8** %coerce.dive19, align 8, !dbg !2908 
  %call21 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %ref.tmp17), !dbg !2908 
  %__sbuf_22 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2910 
  store %"class.std::__1::basic_streambuf"* %call21, %"class.std::__1::basic_streambuf"** %__sbuf_22, align 8, !dbg !2911 
  %17 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2912 
  %18 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2912 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !2912 
  br label %return, !dbg !2913 

if.end23:                                         ; preds = %if.then12 
  br label %if.end24, !dbg !2914 

if.end24:                                         ; preds = %if.end23, %if.end7 
  %19 = load i64, i64* %__ns, align 8, !dbg !2915 
  %cmp25 = icmp sgt i64 %19, 0, !dbg !2917 
  br i1 %cmp25, label %if.then26, label %if.end45, !dbg !2918 

if.then26:                                        ; preds = %if.end24 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"* %__sp, metadata !2919, metadata !DIExpression()), !dbg !2921 
  %20 = load i64, i64* %__ns, align 8, !dbg !2922 
  %21 = load i8, i8* %__fl.addr, align 1, !dbg !2923 
  %call27 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* %__sp, i64 %20, i8 signext %21), !dbg !2921 
  %__sbuf_28 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2924 
  %22 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_28, align 8, !dbg !2924 
  %call29 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__sp) #8, !dbg !2926 
  %23 = load i64, i64* %__ns, align 8, !dbg !2927 
  %call30 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %22, i8* %call29, i64 %23) 
          to label %invoke.cont unwind label %lpad, !dbg !2928 

invoke.cont:                                      ; preds = %if.then26 
  %24 = load i64, i64* %__ns, align 8, !dbg !2929 
  %cmp31 = icmp ne i64 %call30, %24, !dbg !2930 
  br i1 %cmp31, label %if.then32, label %if.end41, !dbg !2931 

if.then32:                                        ; preds = %invoke.cont 
  %call35 = invoke i64 @_ZNSt3__1L15__get_nullptr_tEv() 
          to label %invoke.cont34 unwind label %lpad, !dbg !2932 

invoke.cont34:                                    ; preds = %if.then32 
  %coerce.dive36 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %ref.tmp33, i32 0, i32 0, !dbg !2932 
  %coerce.val.ip37 = inttoptr i64 %call35 to i8*, !dbg !2932 
  store i8* %coerce.val.ip37, i8** %coerce.dive36, align 8, !dbg !2932 
  %call39 = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %ref.tmp33) 
          to label %invoke.cont38 unwind label %lpad, !dbg !2932 

invoke.cont38:                                    ; preds = %invoke.cont34 
  %__sbuf_40 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2934 
  store %"class.std::__1::basic_streambuf"* %call39, %"class.std::__1::basic_streambuf"** %__sbuf_40, align 8, !dbg !2935 
  %25 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2936 
  %26 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2936 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false), !dbg !2936 
  store i32 1, i32* %cleanup.dest.slot, align 4 
  br label %cleanup, !dbg !2937 

lpad:                                             ; preds = %invoke.cont34, %if.then32, %if.then26 
  %27 = landingpad { i8*, i32 } 
          cleanup, !dbg !2938 
  %28 = extractvalue { i8*, i32 } %27, 0, !dbg !2938 
  store i8* %28, i8** %exn.slot, align 8, !dbg !2938 
  %29 = extractvalue { i8*, i32 } %27, 1, !dbg !2938 
  store i32 %29, i32* %ehselector.slot, align 4, !dbg !2938 
  %call44 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) 
          to label %invoke.cont43 unwind label %terminate.lpad, !dbg !2939 

if.end41:                                         ; preds = %invoke.cont 
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !2939 
  br label %cleanup, !dbg !2939 

cleanup:                                          ; preds = %if.end41, %invoke.cont38 
  %call42 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp), !dbg !2939 
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4 
  switch i32 %cleanup.dest, label %unreachable [ 
    i32 0, label %cleanup.cont 
    i32 1, label %return 
  ] 

cleanup.cont:                                     ; preds = %cleanup 
  br label %if.end45, !dbg !2940 

invoke.cont43:                                    ; preds = %lpad 
  br label %eh.resume, !dbg !2939 

if.end45:                                         ; preds = %cleanup.cont, %if.end24 
  %30 = load i8*, i8** %__oe.addr, align 8, !dbg !2941 
  %31 = load i8*, i8** %__op.addr, align 8, !dbg !2942 
  %sub.ptr.lhs.cast46 = ptrtoint i8* %30 to i64, !dbg !2943 
  %sub.ptr.rhs.cast47 = ptrtoint i8* %31 to i64, !dbg !2943 
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47, !dbg !2943 
  store i64 %sub.ptr.sub48, i64* %__np, align 8, !dbg !2944 
  %32 = load i64, i64* %__np, align 8, !dbg !2945 
  %cmp49 = icmp sgt i64 %32, 0, !dbg !2947 
  br i1 %cmp49, label %if.then50, label %if.end62, !dbg !2948 

if.then50:                                        ; preds = %if.end45 
  %__sbuf_51 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2949 
  %33 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_51, align 8, !dbg !2949 
  %34 = load i8*, i8** %__op.addr, align 8, !dbg !2952 
  %35 = load i64, i64* %__np, align 8, !dbg !2953 
  %call52 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %33, i8* %34, i64 %35), !dbg !2954 
  %36 = load i64, i64* %__np, align 8, !dbg !2955 
  %cmp53 = icmp ne i64 %call52, %36, !dbg !2956 
  br i1 %cmp53, label %if.then54, label %if.end61, !dbg !2957 

if.then54:                                        ; preds = %if.then50 
  %call56 = call i64 @_ZNSt3__1L15__get_nullptr_tEv(), !dbg !2958 
  %coerce.dive57 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %ref.tmp55, i32 0, i32 0, !dbg !2958 
  %coerce.val.ip58 = inttoptr i64 %call56 to i8*, !dbg !2958 
  store i8* %coerce.val.ip58, i8** %coerce.dive57, align 8, !dbg !2958 
  %call59 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %ref.tmp55), !dbg !2958 
  %__sbuf_60 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !2960 
  store %"class.std::__1::basic_streambuf"* %call59, %"class.std::__1::basic_streambuf"** %__sbuf_60, align 8, !dbg !2961 
  %37 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2962 
  %38 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2962 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false), !dbg !2962 
  br label %return, !dbg !2963 

if.end61:                                         ; preds = %if.then50 
  br label %if.end62, !dbg !2964 

if.end62:                                         ; preds = %if.end61, %if.end45 
  %39 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !2965 
  %call63 = call i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %39, i64 0), !dbg !2966 
  %40 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !2967 
  %41 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !2967 
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false), !dbg !2967 
  br label %return, !dbg !2968 

return:                                           ; preds = %if.end62, %if.then54, %cleanup, %if.then16, %if.then 
  %coerce.dive64 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0, !dbg !2969 
  %42 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive64, align 8, !dbg !2969 
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %42 to i64, !dbg !2969 
  ret i64 %coerce.val.pi, !dbg !2969 

eh.resume:                                        ; preds = %invoke.cont43 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2939 
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2939 
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2939 
  %lpad.val65 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2939 
  resume { i8*, i32 } %lpad.val65, !dbg !2939 

terminate.lpad:                                   ; preds = %lpad 
  %43 = landingpad { i8*, i32 } 
          catch i8* null, !dbg !2939 
  %44 = extractvalue { i8*, i32 } %43, 0, !dbg !2939 
  call void @__clang_call_terminate(i8* %44) #9, !dbg !2939 
  unreachable, !dbg !2939 

unreachable:                                      ; preds = %cleanup 
  unreachable 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #3 align 2 !dbg !2970 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8 
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8 
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr, metadata !2971, metadata !DIExpression()), !dbg !2973 
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr, metadata !2974, metadata !DIExpression()), !dbg !2975 
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8 
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8, !dbg !2976 
  %call = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0) #8, !dbg !2976 
  ret %"class.std::__1::ostreambuf_iterator"* %this1, !dbg !2977 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %this) #3 align 2 !dbg !2978 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8 
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !2979, metadata !DIExpression()), !dbg !2981 
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8 
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 1, !dbg !2982 
  %0 = load i32, i32* %__fmtflags_, align 8, !dbg !2982 
  ret i32 %0, !dbg !2983 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %this) #2 align 2 !dbg !2984 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8 
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !2985, metadata !DIExpression()), !dbg !2987 
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8 
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #8, !dbg !2988 
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2, !dbg !2990 
  %0 = load i32, i32* %__fill_, align 8, !dbg !2990 
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call, i32 %0) #8, !dbg !2991 
  br i1 %call2, label %if.then, label %if.end, !dbg !2992 

if.then:                                          ; preds = %entry 
  %call3 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %this1, i8 signext 32), !dbg !2993 
  %conv = sext i8 %call3 to i32, !dbg !2993 
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2, !dbg !2994 
  store i32 %conv, i32* %__fill_4, align 8, !dbg !2995 
  br label %if.end, !dbg !2994 

if.end:                                           ; preds = %if.then, %entry 
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2, !dbg !2996 
  %1 = load i32, i32* %__fill_5, align 8, !dbg !2996 
  %conv6 = trunc i32 %1 to i8, !dbg !2996 
  ret i8 %conv6, !dbg !2997 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %this) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2998 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8 
  %ref.tmp = alloca %"struct.std::__1::nullptr_t", align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr, metadata !2999, metadata !DIExpression()), !dbg !3001 
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8 
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0, !dbg !3002 
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !3002 
  %call = invoke i64 @_ZNSt3__1L15__get_nullptr_tEv() 
          to label %invoke.cont unwind label %lpad, !dbg !3003 

invoke.cont:                                      ; preds = %entry 
  %coerce.dive = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %ref.tmp, i32 0, i32 0, !dbg !3003 
  %coerce.val.ip = inttoptr i64 %call to i8*, !dbg !3003 
  store i8* %coerce.val.ip, i8** %coerce.dive, align 8, !dbg !3003 
  %call2 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %ref.tmp), !dbg !3003 
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, %call2, !dbg !3004 
  ret i1 %cmp, !dbg !3005 

lpad:                                             ; preds = %entry 
  %1 = landingpad { i8*, i32 } 
          filter [0 x i8*] zeroinitializer, !dbg !3006 
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !3006 
  store i8* %2, i8** %exn.slot, align 8, !dbg !3006 
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !3006 
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !3006 
  br label %filter.dispatch, !dbg !3006 

filter.dispatch:                                  ; preds = %lpad 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3005 
  call void @__cxa_call_unexpected(i8* %exn) #10, !dbg !3005 
  unreachable, !dbg !3005 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %this, i32 %__state) #2 align 2 !dbg !3007 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8 
  %__state.addr = alloca i32, align 4 
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !3008, metadata !DIExpression()), !dbg !3010 
  store i32 %__state, i32* %__state.addr, align 4 
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !3011, metadata !DIExpression()), !dbg !3012 
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*, !dbg !3013 
  %1 = load i32, i32* %__state.addr, align 4, !dbg !3014 
  call void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %0, i32 %1), !dbg !3013 
  ret void, !dbg !3015 
} 

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* returned) unnamed_addr #4 

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #4 

declare void @__cxa_end_catch() 

; Function Attrs: noinline optnone ssp uwtable 
define internal i64 @_ZNSt3__1L15__get_nullptr_tEv() #2 !dbg !3016 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %retval = alloca %"struct.std::__1::nullptr_t", align 8 
  %call = call %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC1EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* %retval, i64 -1), !dbg !3019 
  %coerce.dive = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %retval, i32 0, i32 0, !dbg !3020 
  %0 = load i8*, i8** %coerce.dive, align 8, !dbg !3020 
  %coerce.val.pi = ptrtoint i8* %0 to i64, !dbg !3020 
  ret i64 %coerce.val.pi, !dbg !3020 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %this) #3 align 2 !dbg !3021 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"struct.std::__1::nullptr_t"*, align 8 
  store %"struct.std::__1::nullptr_t"* %this, %"struct.std::__1::nullptr_t"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::nullptr_t"** %this.addr, metadata !3027, metadata !DIExpression()), !dbg !3029 
  %this1 = load %"struct.std::__1::nullptr_t"*, %"struct.std::__1::nullptr_t"** %this.addr, align 8 
  ret %"class.std::__1::basic_streambuf"* null, !dbg !3030 
} 

; Function Attrs: argmemonly nofree nounwind willreturn 
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %this) #3 align 2 !dbg !3031 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8 
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3032, metadata !DIExpression()), !dbg !3033 
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8 
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3, !dbg !3034 
  %0 = load i64, i64* %__width_, align 8, !dbg !3034 
  ret i64 %0, !dbg !3035 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %this, i8* %__s, i64 %__n) #2 align 2 !dbg !3036 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8 
  %__s.addr = alloca i8*, align 8 
  %__n.addr = alloca i64, align 8 
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr, metadata !3037, metadata !DIExpression()), !dbg !3038 
  store i8* %__s, i8** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !3039, metadata !DIExpression()), !dbg !3040 
  store i64 %__n, i64* %__n.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3041, metadata !DIExpression()), !dbg !3042 
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8 
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !3043 
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3044 
  %2 = bitcast %"class.std::__1::basic_streambuf"* %this1 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !3045 
  %vtable = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %2, align 8, !dbg !3045 
  %vfn = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable, i64 12, !dbg !3045 
  %3 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn, align 8, !dbg !3045 
  %call = call i64 %3(%"class.std::__1::basic_streambuf"* %this1, i8* %0, i64 %1), !dbg !3045 
  ret i64 %call, !dbg !3046 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #2 align 2 !dbg !3047 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__n.addr = alloca i64, align 8 
  %__c.addr = alloca i8, align 1 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3048, metadata !DIExpression()), !dbg !3049 
  store i64 %__n, i64* %__n.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3050, metadata !DIExpression()), !dbg !3051 
  store i8 %__c, i8* %__c.addr, align 1 
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3052, metadata !DIExpression()), !dbg !3053 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %0 = load i64, i64* %__n.addr, align 8, !dbg !3054 
  %1 = load i8, i8* %__c.addr, align 1, !dbg !3054 
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1), !dbg !3054 
  ret %"class.std::__1::basic_string"* %this1, !dbg !3055 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %this, i64 %__wide) #3 align 2 !dbg !3056 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8 
  %__wide.addr = alloca i64, align 8 
  %__r = alloca i64, align 8 
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3057, metadata !DIExpression()), !dbg !3059 
  store i64 %__wide, i64* %__wide.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__wide.addr, metadata !3060, metadata !DIExpression()), !dbg !3061 
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__r, metadata !3062, metadata !DIExpression()), !dbg !3063 
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3, !dbg !3064 
  %0 = load i64, i64* %__width_, align 8, !dbg !3064 
  store i64 %0, i64* %__r, align 8, !dbg !3063 
  %1 = load i64, i64* %__wide.addr, align 8, !dbg !3065 
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3, !dbg !3066 
  store i64 %1, i64* %__width_2, align 8, !dbg !3067 
  %2 = load i64, i64* %__r, align 8, !dbg !3068 
  ret i64 %2, !dbg !3069 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC1EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* returned %this, i64 %0) unnamed_addr #2 align 2 !dbg !3070 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"struct.std::__1::nullptr_t"*, align 8 
  %.addr = alloca i64, align 8 
  store %"struct.std::__1::nullptr_t"* %this, %"struct.std::__1::nullptr_t"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::nullptr_t"** %this.addr, metadata !3071, metadata !DIExpression()), !dbg !3073 
  store i64 %0, i64* %.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !3074, metadata !DIExpression()), !dbg !3075 
  %this1 = load %"struct.std::__1::nullptr_t"*, %"struct.std::__1::nullptr_t"** %this.addr, align 8 
  %1 = load i64, i64* %.addr, align 8, !dbg !3076 
  %call = call %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC2EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* %this1, i64 %1), !dbg !3076 
  ret %"struct.std::__1::nullptr_t"* %this1, !dbg !3077 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC2EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* returned %this, i64 %0) unnamed_addr #3 align 2 !dbg !3078 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"struct.std::__1::nullptr_t"*, align 8 
  %.addr = alloca i64, align 8 
  store %"struct.std::__1::nullptr_t"* %this, %"struct.std::__1::nullptr_t"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"struct.std::__1::nullptr_t"** %this.addr, metadata !3079, metadata !DIExpression()), !dbg !3080 
  store i64 %0, i64* %.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !3081, metadata !DIExpression()), !dbg !3082 
  %this1 = load %"struct.std::__1::nullptr_t"*, %"struct.std::__1::nullptr_t"** %this.addr, align 8 
  %__lx = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %this1, i32 0, i32 0, !dbg !3083 
  store i8* null, i8** %__lx, align 8, !dbg !3083 
  ret %"struct.std::__1::nullptr_t"* %this1, !dbg !3084 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #2 align 2 !dbg !3085 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  %__n.addr = alloca i64, align 8 
  %__c.addr = alloca i8, align 1 
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1 
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3086, metadata !DIExpression()), !dbg !3087 
  store i64 %__n, i64* %__n.addr, align 8 
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3088, metadata !DIExpression()), !dbg !3089 
  store i8 %__c, i8* %__c.addr, align 1 
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3090, metadata !DIExpression()), !dbg !3091 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*, !dbg !3092 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3093 
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__r_, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2), !dbg !3093 
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3094 
  %2 = load i8, i8* %__c.addr, align 1, !dbg !3096 
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1, i64 %1, i8 signext %2), !dbg !3097 
  ret %"class.std::__1::basic_string"* %this1, !dbg !3098 
} 

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #4 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3099 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8 
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr, metadata !3100, metadata !DIExpression()), !dbg !3101 
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr, metadata !3102, metadata !DIExpression()), !dbg !3103 
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1 to %"struct.std::__1::iterator"*, !dbg !3104 
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0, !dbg !3105 
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8, !dbg !3106 
  %2 = bitcast %"class.std::__1::basic_ostream"* %1 to i8**, !dbg !3106 
  %vtable = load i8*, i8** %2, align 8, !dbg !3106 
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !3106 
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !3106 
  %vbase.offset = load i64, i64* %3, align 8, !dbg !3106 
  %4 = bitcast %"class.std::__1::basic_ostream"* %1 to i8*, !dbg !3106 
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !3106 
  %5 = bitcast i8* %add.ptr to %"class.std::__1::basic_ios"*, !dbg !3106 
  %call = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %5) 
          to label %invoke.cont unwind label %lpad, !dbg !3107 

invoke.cont:                                      ; preds = %entry 
  store %"class.std::__1::basic_streambuf"* %call, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !3105 
  ret %"class.std::__1::ostreambuf_iterator"* %this1, !dbg !3108 

lpad:                                             ; preds = %entry 
  %6 = landingpad { i8*, i32 } 
          filter [0 x i8*] zeroinitializer, !dbg !3108 
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3108 
  store i8* %7, i8** %exn.slot, align 8, !dbg !3108 
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3108 
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !3108 
  br label %filter.dispatch, !dbg !3108 

filter.dispatch:                                  ; preds = %lpad 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3108 
  call void @__cxa_call_unexpected(i8* %exn) #10, !dbg !3108 
  unreachable, !dbg !3108 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %this) #2 align 2 !dbg !3109 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8 
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !3110, metadata !DIExpression()), !dbg !3111 
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*, !dbg !3112 
  %call = call i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %0), !dbg !3112 
  %1 = bitcast i8* %call to %"class.std::__1::basic_streambuf"*, !dbg !3113 
  ret %"class.std::__1::basic_streambuf"* %1, !dbg !3114 
} 

declare void @__cxa_call_unexpected(i8*) 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %this) #3 align 2 !dbg !3115 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8 
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3116, metadata !DIExpression()), !dbg !3117 
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8 
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 6, !dbg !3118 
  %0 = load i8*, i8** %__rdbuf_, align 8, !dbg !3118 
  ret i8* %0, !dbg !3119 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #3 align 2 !dbg !3120 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__c1.addr = alloca i32, align 4 
  %__c2.addr = alloca i32, align 4 
  store i32 %__c1, i32* %__c1.addr, align 4 
  call void @llvm.dbg.declare(metadata i32* %__c1.addr, metadata !3121, metadata !DIExpression()), !dbg !3122 
  store i32 %__c2, i32* %__c2.addr, align 4 
  call void @llvm.dbg.declare(metadata i32* %__c2.addr, metadata !3123, metadata !DIExpression()), !dbg !3124 
  %0 = load i32, i32* %__c1.addr, align 4, !dbg !3125 
  %1 = load i32, i32* %__c2.addr, align 4, !dbg !3126 
  %cmp = icmp eq i32 %0, %1, !dbg !3127 
  ret i1 %cmp, !dbg !3128 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #3 align 2 !dbg !3129 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  ret i32 -1, !dbg !3130 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %this, i8 signext %__c) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3131 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8 
  %__c.addr = alloca i8, align 1 
  %ref.tmp = alloca %"class.std::__1::locale", align 8 
  %exn.slot = alloca i8*, align 8 
  %ehselector.slot = alloca i32, align 4 
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr, metadata !3132, metadata !DIExpression()), !dbg !3133 
  store i8 %__c, i8* %__c.addr, align 1 
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3134, metadata !DIExpression()), !dbg !3135 
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*, !dbg !3136 
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8 %ref.tmp, %"class.std::__1::ios_base"* %0), !dbg !3136 
  %call = invoke nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %ref.tmp) 
          to label %invoke.cont unwind label %lpad, !dbg !3137 

invoke.cont:                                      ; preds = %entry 
  %1 = load i8, i8* %__c.addr, align 1, !dbg !3138 
  %call3 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %call, i8 signext %1) 
          to label %invoke.cont2 unwind label %lpad, !dbg !3139 

invoke.cont2:                                     ; preds = %invoke.cont 
  %call4 = call %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp), !dbg !3140 
  ret i8 %call3, !dbg !3140 

lpad:                                             ; preds = %invoke.cont, %entry 
  %2 = landingpad { i8*, i32 } 
          cleanup, !dbg !3141 
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3141 
  store i8* %3, i8** %exn.slot, align 8, !dbg !3141 
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3141 
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3141 
  %call6 = invoke %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp) 
          to label %invoke.cont5 unwind label %terminate.lpad, !dbg !3140 

invoke.cont5:                                     ; preds = %lpad 
  br label %eh.resume, !dbg !3140 

eh.resume:                                        ; preds = %invoke.cont5 
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3140 
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3140 
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3140 
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3140 
  resume { i8*, i32 } %lpad.val7, !dbg !3140 

terminate.lpad:                                   ; preds = %lpad 
  %5 = landingpad { i8*, i32 } 
          catch i8* null, !dbg !3140 
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !3140 
  call void @__clang_call_terminate(i8* %6) #9, !dbg !3140 
  unreachable, !dbg !3140 
} 

; Function Attrs: noinline optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %__l) #2 !dbg !3142 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__l.addr = alloca %"class.std::__1::locale"*, align 8 
  store %"class.std::__1::locale"* %__l, %"class.std::__1::locale"** %__l.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::locale"** %__l.addr, metadata !3237, metadata !DIExpression()), !dbg !3238 
  %0 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr, align 8, !dbg !3239 
  %call = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %0, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE), !dbg !3240 
  %1 = bitcast %"class.std::__1::locale::facet"* %call to %"class.std::__1::ctype"*, !dbg !3241 
  ret %"class.std::__1::ctype"* %1, !dbg !3242 
} 

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8, %"class.std::__1::ios_base"*) #4 

; Function Attrs: noinline optnone ssp uwtable 
define internal signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %this, i8 signext %__c) #2 align 2 !dbg !3243 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ctype"*, align 8 
  %__c.addr = alloca i8, align 1 
  store %"class.std::__1::ctype"* %this, %"class.std::__1::ctype"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ctype"** %this.addr, metadata !3244, metadata !DIExpression()), !dbg !3246 
  store i8 %__c, i8* %__c.addr, align 1 
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3247, metadata !DIExpression()), !dbg !3248 
  %this1 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr, align 8 
  %0 = load i8, i8* %__c.addr, align 1, !dbg !3249 
  %1 = bitcast %"class.std::__1::ctype"* %this1 to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !3250 
  %vtable = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %1, align 8, !dbg !3250 
  %vfn = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable, i64 7, !dbg !3250 
  %2 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn, align 8, !dbg !3250 
  %call = call signext i8 %2(%"class.std::__1::ctype"* %this1, i8 signext %0), !dbg !3250 
  ret i8 %call, !dbg !3251 
} 

declare %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* returned) unnamed_addr #4 

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12)) #4 

; Function Attrs: noinline optnone ssp uwtable 
define internal void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %this, i32 %__state) #2 align 2 !dbg !3252 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8 
  %__state.addr = alloca i32, align 4 
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr, metadata !3253, metadata !DIExpression()), !dbg !3254 
  store i32 %__state, i32* %__state.addr, align 4 
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !3255, metadata !DIExpression()), !dbg !3256 
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8 
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 4, !dbg !3257 
  %0 = load i32, i32* %__rdstate_, align 8, !dbg !3257 
  %1 = load i32, i32* %__state.addr, align 4, !dbg !3258 
  %or = or i32 %0, %1, !dbg !3259 
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1, i32 %or), !dbg !3260 
  ret void, !dbg !3261 
} 

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #4 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__1L12__to_addressIKcEEPT_S3_(i8* %__p) #3 !dbg !3262 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__p.addr = alloca i8*, align 8 
  store i8* %__p, i8** %__p.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !3267, metadata !DIExpression()), !dbg !3268 
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !3269 
  ret i8* %0, !dbg !3270 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3271 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3272, metadata !DIExpression()), !dbg !3273 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !3274 
  br i1 %call, label %cond.true, label %cond.false, !dbg !3274 

cond.true:                                        ; preds = %entry 
  %call2 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !3275 
  br label %cond.end, !dbg !3274 

cond.false:                                       ; preds = %entry 
  %call3 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1) #8, !dbg !3276 
  br label %cond.end, !dbg !3274 

cond.end:                                         ; preds = %cond.false, %cond.true 
  %cond = phi i8* [ %call2, %cond.true ], [ %call3, %cond.false ], !dbg !3274 
  ret i8* %cond, !dbg !3277 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3278 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3279, metadata !DIExpression()), !dbg !3280 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3281 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3282 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !3283 
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*, !dbg !3283 
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 0, !dbg !3284 
  %1 = load i8*, i8** %__data_, align 8, !dbg !3284 
  ret i8* %1, !dbg !3285 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3286 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3287, metadata !DIExpression()), !dbg !3288 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3289 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3290 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !3291 
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*, !dbg !3291 
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 0, !dbg !3292 
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0, !dbg !3289 
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* nonnull align 1 dereferenceable(1) %arrayidx) #8, !dbg !3293 
  ret i8* %call2, !dbg !3294 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* nonnull align 1 dereferenceable(1) %__r) #3 align 2 !dbg !3295 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__r.addr = alloca i8*, align 8 
  store i8* %__r, i8** %__r.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !3311, metadata !DIExpression()), !dbg !3312 
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !3313 
  %call = call i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %0) #8, !dbg !3314 
  ret i8* %call, !dbg !3315 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %__x) #3 !dbg !3316 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %__x.addr = alloca i8*, align 8 
  store i8* %__x, i8** %__x.addr, align 8 
  call void @llvm.dbg.declare(metadata i8** %__x.addr, metadata !3319, metadata !DIExpression()), !dbg !3320 
  %0 = load i8*, i8** %__x.addr, align 8, !dbg !3321 
  ret i8* %0, !dbg !3322 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3323 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3324, metadata !DIExpression()), !dbg !3325 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3326 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3327 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !3328 
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*, !dbg !3328 
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 1, !dbg !3329 
  %1 = load i64, i64* %__size_, align 8, !dbg !3329 
  ret i64 %1, !dbg !3330 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this) #3 align 2 !dbg !3331 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr, metadata !3332, metadata !DIExpression()), !dbg !3333 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0, !dbg !3334 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #8, !dbg !3335 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0, !dbg !3336 
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*, !dbg !3336 
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 1, !dbg !3337 
  %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0, !dbg !3337 
  %2 = load i8, i8* %__size_, align 1, !dbg !3337 
  %conv = zext i8 %2 to i64, !dbg !3334 
  ret i64 %conv, !dbg !3338 
} 

declare i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"*, i64, i64, i8*, i64) #4 

attributes #0 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn } 
attributes #2 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #3 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #5 = { noinline noreturn nounwind } 
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #7 = { argmemonly nofree nounwind willreturn } 
attributes #8 = { nounwind } 
attributes #9 = { noreturn nounwind } 
attributes #10 = { noreturn } 

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10} 
!llvm.dbg.cu = !{!11} 
!llvm.ident = !{!2457} 

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]} 
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
!11 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !12, producer: "Apple clang version 14.0.0 (clang-1400.0.29.102)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !1151, imports: !1538, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk") 
!12 = !DIFile(filename: "test.cpp", directory: "/Users/han/GitHub/llvm-project/build/tests") 
!13 = !{!14, !1146} 
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !16, file: !15, line: 307, baseType: !29, size: 32, elements: !1142, identifier: "_ZTSNSt3__18ios_base5eventE") 
!15 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/ios", directory: "") 
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !17, file: !15, line: 230, size: 1088, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !19, vtableHolder: !16) 
!17 = !DINamespace(name: "__1", scope: !18, exportSymbols: true) 
!18 = !DINamespace(name: "std", scope: null) 
!19 = !{!20, !26, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !50, !51, !52, !53, !56, !57, !58, !59, !60, !61, !62, !67, !68, !69, !70, !72, !73, !80, !82, !85, !86, !89, !91, !92, !93, !95, !96, !97, !102, !106, !107, !110, !113, !116, !119, !120, !121, !1079, !1082, !1083, !1087, !1091, !1094, !1097, !1101, !1104, !1107, !1110, !1113, !1114, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1129, !1132, !1133, !1136, !1137, !1140, !1141} 
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ios_base", scope: !15, file: !15, baseType: !21, size: 64, flags: DIFlagArtificial) 
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64) 
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !23, size: 64) 
!23 = !DISubroutineType(types: !24) 
!24 = !{!25} 
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed) 
!26 = !DIDerivedType(tag: DW_TAG_member, name: "boolalpha", scope: !16, file: !15, line: 236, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1) 
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28) 
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !16, file: !15, line: 235, baseType: !29) 
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned) 
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !16, file: !15, line: 237, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2) 
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !16, file: !15, line: 238, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4) 
!32 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !16, file: !15, line: 239, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8) 
!33 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !16, file: !15, line: 240, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16) 
!34 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !16, file: !15, line: 241, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32) 
!35 = !DIDerivedType(tag: DW_TAG_member, name: "oct", scope: !16, file: !15, line: 242, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 64) 
!36 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !16, file: !15, line: 243, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128) 
!37 = !DIDerivedType(tag: DW_TAG_member, name: "scientific", scope: !16, file: !15, line: 244, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256) 
!38 = !DIDerivedType(tag: DW_TAG_member, name: "showbase", scope: !16, file: !15, line: 245, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512) 
!39 = !DIDerivedType(tag: DW_TAG_member, name: "showpoint", scope: !16, file: !15, line: 246, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024) 
!40 = !DIDerivedType(tag: DW_TAG_member, name: "showpos", scope: !16, file: !15, line: 247, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2048) 
!41 = !DIDerivedType(tag: DW_TAG_member, name: "skipws", scope: !16, file: !15, line: 248, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096) 
!42 = !DIDerivedType(tag: DW_TAG_member, name: "unitbuf", scope: !16, file: !15, line: 249, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192) 
!43 = !DIDerivedType(tag: DW_TAG_member, name: "uppercase", scope: !16, file: !15, line: 250, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384) 
!44 = !DIDerivedType(tag: DW_TAG_member, name: "adjustfield", scope: !16, file: !15, line: 251, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 176) 
!45 = !DIDerivedType(tag: DW_TAG_member, name: "basefield", scope: !16, file: !15, line: 252, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 74) 
!46 = !DIDerivedType(tag: DW_TAG_member, name: "floatfield", scope: !16, file: !15, line: 253, baseType: !27, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 260) 
!47 = !DIDerivedType(tag: DW_TAG_member, name: "badbit", scope: !16, file: !15, line: 256, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1) 
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49) 
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !16, file: !15, line: 255, baseType: !29) 
!50 = !DIDerivedType(tag: DW_TAG_member, name: "eofbit", scope: !16, file: !15, line: 257, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2) 
!51 = !DIDerivedType(tag: DW_TAG_member, name: "failbit", scope: !16, file: !15, line: 258, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4) 
!52 = !DIDerivedType(tag: DW_TAG_member, name: "goodbit", scope: !16, file: !15, line: 259, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0) 
!53 = !DIDerivedType(tag: DW_TAG_member, name: "app", scope: !16, file: !15, line: 262, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1) 
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55) 
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "openmode", scope: !16, file: !15, line: 261, baseType: !29) 
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ate", scope: !16, file: !15, line: 263, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2) 
!57 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !16, file: !15, line: 264, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4) 
!58 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !16, file: !15, line: 265, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8) 
!59 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !16, file: !15, line: 266, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16) 
!60 = !DIDerivedType(tag: DW_TAG_member, name: "trunc", scope: !16, file: !15, line: 267, baseType: !54, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32) 
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__fmtflags_", scope: !16, file: !15, line: 370, baseType: !28, size: 32, offset: 64) 
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__precision_", scope: !16, file: !15, line: 371, baseType: !63, size: 64, offset: 128) 
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !17, file: !15, line: 228, baseType: !64) 
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !65, line: 35, baseType: !66) 
!65 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/14.0.0/include/stddef.h", directory: "") 
!66 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed) 
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__width_", scope: !16, file: !15, line: 372, baseType: !63, size: 64, offset: 192) 
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__rdstate_", scope: !16, file: !15, line: 373, baseType: !49, size: 32, offset: 256) 
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__exceptions_", scope: !16, file: !15, line: 374, baseType: !49, size: 32, offset: 288) 
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__rdbuf_", scope: !16, file: !15, line: 375, baseType: !71, size: 64, offset: 320) 
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64) 
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !16, file: !15, line: 376, baseType: !71, size: 64, offset: 384) 
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__fn_", scope: !16, file: !15, line: 377, baseType: !74, size: 64, offset: 448) 
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64) 
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback", scope: !16, file: !15, line: 308, baseType: !76) 
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64) 
!77 = !DISubroutineType(types: !78) 
!78 = !{null, !14, !79, !25} 
!79 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64) 
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__index_", scope: !16, file: !15, line: 378, baseType: !81, size: 64, offset: 512) 
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64) 
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__event_size_", scope: !16, file: !15, line: 379, baseType: !83, size: 64, offset: 576) 
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !84) 
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned) 
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__event_cap_", scope: !16, file: !15, line: 380, baseType: !83, size: 64, offset: 640) 
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__xindex_", scope: !16, file: !15, line: 384, baseType: !87, flags: DIFlagStaticMember) 
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !17, file: !88, line: 1815, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__16atomicIiEE") 
!88 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/atomic", directory: "") 
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_", scope: !16, file: !15, line: 388, baseType: !90, size: 64, offset: 704) 
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64) 
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_size_", scope: !16, file: !15, line: 389, baseType: !83, size: 64, offset: 768) 
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_cap_", scope: !16, file: !15, line: 390, baseType: !83, size: 64, offset: 832) 
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_", scope: !16, file: !15, line: 391, baseType: !94, size: 64, offset: 896) 
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64) 
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_size_", scope: !16, file: !15, line: 392, baseType: !83, size: 64, offset: 960) 
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_cap_", scope: !16, file: !15, line: 393, baseType: !83, size: 64, offset: 1024) 
!97 = !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !16, file: !15, line: 283, type: !98, scopeLine: 283, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!98 = !DISubroutineType(types: !99) 
!99 = !{!28, !100} 
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16) 
!102 = !DISubprogram(name: "flags", linkageName: "_ZNSt3__18ios_base5flagsEj", scope: !16, file: !15, line: 284, type: !103, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!103 = !DISubroutineType(types: !104) 
!104 = !{!28, !105, !28} 
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!106 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEj", scope: !16, file: !15, line: 285, type: !103, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!107 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEjj", scope: !16, file: !15, line: 286, type: !108, scopeLine: 286, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!108 = !DISubroutineType(types: !109) 
!109 = !{!28, !105, !28, !28} 
!110 = !DISubprogram(name: "unsetf", linkageName: "_ZNSt3__18ios_base6unsetfEj", scope: !16, file: !15, line: 287, type: !111, scopeLine: 287, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!111 = !DISubroutineType(types: !112) 
!112 = !{null, !105, !28} 
!113 = !DISubprogram(name: "precision", linkageName: "_ZNKSt3__18ios_base9precisionEv", scope: !16, file: !15, line: 289, type: !114, scopeLine: 289, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!114 = !DISubroutineType(types: !115) 
!115 = !{!63, !100} 
!116 = !DISubprogram(name: "precision", linkageName: "_ZNSt3__18ios_base9precisionEl", scope: !16, file: !15, line: 290, type: !117, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!117 = !DISubroutineType(types: !118) 
!118 = !{!63, !105, !63} 
!119 = !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !16, file: !15, line: 291, type: !114, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!120 = !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !16, file: !15, line: 292, type: !117, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!121 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__18ios_base5imbueERKNS_6localeE", scope: !16, file: !15, line: 295, type: !122, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!122 = !DISubroutineType(types: !123) 
!123 = !{!124, !105, !147} 
!124 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "locale", scope: !17, file: !125, line: 125, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !126, identifier: "_ZTSNSt3__16localeE") 
!125 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__locale", directory: "") 
!126 = !{!127, !130, !131, !132, !133, !134, !135, !136, !137, !140, !144, !149, !155, !955, !958, !961, !964, !965, !968, !972, !975, !976, !979, !982, !1027, !1031, !1074} 
!127 = !DIDerivedType(tag: DW_TAG_member, name: "none", scope: !124, file: !125, line: 135, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0) 
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129) 
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "category", scope: !124, file: !125, line: 132, baseType: !25) 
!130 = !DIDerivedType(tag: DW_TAG_member, name: "collate", scope: !124, file: !125, line: 136, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1) 
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !124, file: !125, line: 137, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2) 
!132 = !DIDerivedType(tag: DW_TAG_member, name: "monetary", scope: !124, file: !125, line: 138, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8) 
!133 = !DIDerivedType(tag: DW_TAG_member, name: "numeric", scope: !124, file: !125, line: 139, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16) 
!134 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !124, file: !125, line: 140, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32) 
!135 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !124, file: !125, line: 141, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4) 
!136 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !124, file: !125, line: 142, baseType: !128, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63) 
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__locale_", scope: !124, file: !125, line: 178, baseType: !138, size: 64) 
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64) 
!139 = !DICompositeType(tag: DW_TAG_class_type, name: "__imp", scope: !124, file: !125, line: 177, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__16locale5__impE") 
!140 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 145, type: !141, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!141 = !DISubroutineType(types: !142) 
!142 = !{null, !143} 
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!144 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 146, type: !145, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!145 = !DISubroutineType(types: !146) 
!146 = !{null, !143, !147} 
!147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !148, size: 64) 
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124) 
!149 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 147, type: !150, scopeLine: 147, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0) 
!150 = !DISubroutineType(types: !151) 
!151 = !{null, !143, !152} 
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64) 
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154) 
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char) 
!155 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 148, type: !156, scopeLine: 148, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0) 
!156 = !DISubroutineType(types: !157) 
!157 = !{null, !143, !158} 
!158 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !159, size: 64) 
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160) 
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !17, file: !161, line: 249, baseType: !162) 
!161 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/iosfwd", directory: "") 
!162 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !17, file: !163, line: 693, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !164, templateParams: !953, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE") 
!163 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/string", directory: "") 
!164 = !{!165, !177, !257, !258, !392, !393, !397, !403, !408, !411, !414, !417, !420, !423, !426, !427, !615, !619, !624, !627, !633, !638, !639, !640, !645, !650, !651, !652, !653, !654, !655, !656, !659, !660, !661, !662, !665, !668, !669, !670, !671, !672, !673, !676, !681, !686, !687, !688, !689, !690, !691, !692, !695, !698, !699, !702, !703, !706, !707, !710, !713, !714, !715, !716, !717, !718, !719, !720, !723, !726, !729, !732, !735, !738, !741, !744, !747, !750, !753, !756, !759, !762, !765, !768, !771, !774, !777, !781, !784, !787, !790, !791, !794, !797, !800, !803, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !829, !832, !835, !838, !841, !844, !845, !846, !847, !848, !852, !855, !856, !857, !858, !859, !860, !861, !862, !865, !868, !877, !878, !879, !880, !881, !882, !885, !888, !891, !892, !893, !896, !899, !900, !903, !904, !922, !937, !938, !941, !944, !945, !946, !947, !948, !949, !952} 
!165 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !162, baseType: !166, extraData: i32 0) 
!166 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__basic_string_common<true>", scope: !17, file: !163, line: 640, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !174, identifier: "_ZTSNSt3__121__basic_string_commonILb1EEE") 
!167 = !{!168, !173} 
!168 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv", scope: !166, file: !163, line: 622, type: !169, scopeLine: 622, flags: DIFlagProtected | DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!169 = !DISubroutineType(types: !170) 
!170 = !{null, !171} 
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166) 
!173 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_out_of_rangeEv", scope: !166, file: !163, line: 623, type: !169, scopeLine: 623, flags: DIFlagProtected | DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!174 = !{!175} 
!175 = !DITemplateValueParameter(type: !176, value: i8 1) 
!176 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean) 
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__short_mask", scope: !162, file: !163, line: 738, baseType: !178, flags: DIFlagStaticMember, extraData: i64 128) 
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179) 
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !162, file: !163, line: 703, baseType: !180) 
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !182, file: !181, line: 238, baseType: !252) 
!181 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/allocator_traits.h", directory: "") 
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !17, file: !181, line: 229, size: 8, flags: DIFlagTypePassByValue, elements: !183, templateParams: !251, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE") 
!183 = !{!184, !248} 
!184 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !182, file: !181, line: 261, type: !185, scopeLine: 261, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!185 = !DISubroutineType(types: !186) 
!186 = !{!187, !246, !180} 
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !182, file: !181, line: 233, baseType: !188) 
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !189, file: !181, line: 39, baseType: !221) 
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer<char, std::__1::allocator<char>, std::__1::allocator<char>, true>", scope: !17, file: !181, line: 38, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !191, identifier: "_ZTSNSt3__19__pointerIcNS_9allocatorIcEES2_Lb1EEE") 
!190 = !{} 
!191 = !{!192, !193, !245, !175} 
!192 = !DITemplateTypeParameter(name: "_Tp", type: !154) 
!193 = !DITemplateTypeParameter(name: "_Alloc", type: !194) 
!194 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !17, file: !195, line: 83, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !196, templateParams: !244, identifier: "_ZTSNSt3__19allocatorIcEE") 
!195 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/allocator.h", directory: "") 
!196 = !{!197, !207, !211, !215, !218, !226, !232, !237, !241} 
!197 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !194, baseType: !198, extraData: i32 0) 
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__non_trivial_if<true, std::__1::allocator<char> >", scope: !17, file: !195, line: 72, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !199, templateParams: !204, identifier: "_ZTSNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEE") 
!199 = !{!200} 
!200 = !DISubprogram(name: "__non_trivial_if", scope: !198, file: !195, line: 74, type: !201, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!201 = !DISubroutineType(types: !202) 
!202 = !{null, !203} 
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!204 = !{!205, !206} 
!205 = !DITemplateValueParameter(name: "_Cond", type: !176, value: i8 1) 
!206 = !DITemplateTypeParameter(name: "_Unique", type: !194) 
!207 = !DISubprogram(name: "allocator", scope: !194, file: !195, line: 94, type: !208, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!208 = !DISubroutineType(types: !209) 
!209 = !{null, !210} 
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!211 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEm", scope: !194, file: !195, line: 101, type: !212, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!212 = !DISubroutineType(types: !213) 
!213 = !{!214, !210, !83} 
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64) 
!215 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !194, file: !195, line: 113, type: !216, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!216 = !DISubroutineType(types: !217) 
!217 = !{null, !210, !214, !83} 
!218 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERc", scope: !194, file: !195, line: 134, type: !219, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!219 = !DISubroutineType(types: !220) 
!220 = !{!221, !222, !224} 
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !194, file: !195, line: 123, baseType: !214) 
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194) 
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !194, file: !195, line: 125, baseType: !225) 
!225 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64) 
!226 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERKc", scope: !194, file: !195, line: 138, type: !227, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!227 = !DISubroutineType(types: !228) 
!228 = !{!229, !222, !230} 
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !194, file: !195, line: 124, baseType: !152) 
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !194, file: !195, line: 126, baseType: !231) 
!231 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !153, size: 64) 
!232 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !194, file: !195, line: 143, type: !233, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!233 = !DISubroutineType(types: !234) 
!234 = !{!214, !210, !83, !235} 
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64) 
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null) 
!237 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeEv", scope: !194, file: !195, line: 147, type: !238, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!238 = !DISubroutineType(types: !239) 
!239 = !{!240, !222} 
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !195, line: 87, baseType: !83) 
!241 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyEPc", scope: !194, file: !195, line: 158, type: !242, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!242 = !DISubroutineType(types: !243) 
!243 = !{null, !210, !221} 
!244 = !{!192} 
!245 = !DITemplateTypeParameter(name: "_RawAlloc", type: !194) 
!246 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !247, size: 64) 
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !182, file: !181, line: 231, baseType: !194) 
!248 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !182, file: !181, line: 281, type: !249, scopeLine: 281, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!249 = !DISubroutineType(types: !250) 
!250 = !{null, !246, !187, !180} 
!251 = !{!193} 
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !253, file: !181, line: 100, baseType: !256) 
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<char>, long, true>", scope: !17, file: !181, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !254, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIcEElLb1EEE") 
!254 = !{!193, !255, !175} 
!255 = !DITemplateTypeParameter(name: "_DiffType", type: !66) 
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !194, file: !195, line: 87, baseType: !83) 
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__long_mask", scope: !162, file: !163, line: 739, baseType: !178, flags: DIFlagStaticMember, extraData: i64 -9223372036854775808) 
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !162, file: !163, line: 806, baseType: !259, size: 192) 
!259 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !17, file: !260, line: 109, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !261, templateParams: !389, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE") 
!260 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/compressed_pair.h", directory: "") 
!261 = !{!262, !329, !359, !363, !368, !371, !374, !380, !385} 
!262 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !259, baseType: !263, extraData: i32 0) 
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !17, file: !260, line: 35, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !264, templateParams: !325, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE") 
!264 = !{!265, !303, !308, !312, !317} 
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !263, file: !260, line: 70, baseType: !266, size: 192, flags: DIFlagPrivate) 
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !162, file: !163, line: 796, size: 192, flags: DIFlagTypePassByValue, elements: !267, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE") 
!267 = !{!268} 
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !163, line: 798, baseType: !269, size: 192) 
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !163, line: 798, size: 192, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !270, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E") 
!270 = !{!271, !278, !296} 
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !269, file: !163, line: 800, baseType: !272, size: 192) 
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !162, file: !163, line: 727, size: 192, flags: DIFlagTypePassByValue, elements: !273, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE") 
!273 = !{!274, !276, !277} 
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !272, file: !163, line: 729, baseType: !275, size: 64) 
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !162, file: !163, line: 707, baseType: !187) 
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !272, file: !163, line: 730, baseType: !179, size: 64, offset: 64) 
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !272, file: !163, line: 731, baseType: !179, size: 64, offset: 128) 
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !269, file: !163, line: 801, baseType: !279, size: 192) 
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !162, file: !163, line: 745, size: 192, flags: DIFlagTypePassByValue, elements: !280, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE") 
!280 = !{!281, !286} 
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !279, file: !163, line: 747, baseType: !282, size: 184) 
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 184, elements: !284) 
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !162, file: !163, line: 700, baseType: !154) 
!284 = !{!285} 
!285 = !DISubrange(count: 23) 
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !163, line: 748, baseType: !287, size: 8, offset: 184) 
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !163, line: 748, size: 8, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !288, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortUt_E") 
!288 = !{!289, !294} 
!289 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !287, baseType: !290, extraData: i32 0) 
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__padding<char, 1>", scope: !17, file: !163, line: 668, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !291, identifier: "_ZTSNSt3__19__paddingIcLm1EEE") 
!291 = !{!292, !293} 
!292 = !DITemplateTypeParameter(name: "_CharT", type: !154) 
!293 = !DITemplateValueParameter(type: !84, value: i64 1) 
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !287, file: !163, line: 751, baseType: !295, size: 8) 
!295 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char) 
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !269, file: !163, line: 802, baseType: !297, size: 192) 
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !162, file: !163, line: 791, size: 192, flags: DIFlagTypePassByValue, elements: !298, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE") 
!298 = !{!299} 
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !297, file: !163, line: 793, baseType: !300, size: 192) 
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 192, elements: !301) 
!301 = !{!302} 
!302 = !DISubrange(count: 3) 
!303 = !DISubprogram(name: "__compressed_pair_elem", scope: !263, file: !260, line: 41, type: !304, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!304 = !DISubroutineType(types: !305) 
!305 = !{null, !306, !307} 
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__default_init_tag", scope: !17, file: !260, line: 29, size: 8, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTSNSt3__118__default_init_tagE") 
!308 = !DISubprogram(name: "__compressed_pair_elem", scope: !263, file: !260, line: 43, type: !309, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!309 = !DISubroutineType(types: !310) 
!310 = !{null, !306, !311} 
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__value_init_tag", scope: !17, file: !260, line: 30, size: 8, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTSNSt3__116__value_init_tagE") 
!312 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !263, file: !260, line: 65, type: !313, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!313 = !DISubroutineType(types: !314) 
!314 = !{!315, !306} 
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !263, file: !260, line: 37, baseType: !316) 
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !266, size: 64) 
!317 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !263, file: !260, line: 67, type: !318, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!318 = !DISubroutineType(types: !319) 
!319 = !{!320, !323} 
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !263, file: !260, line: 38, baseType: !321) 
!321 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !322, size: 64) 
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266) 
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263) 
!325 = !{!326, !327, !328} 
!326 = !DITemplateTypeParameter(name: "_Tp", type: !266) 
!327 = !DITemplateValueParameter(name: "_Idx", type: !25, value: i32 0) 
!328 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !176, value: i8 0) 
!329 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !259, baseType: !330, extraData: i32 0) 
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !17, file: !260, line: 74, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !331, templateParams: !355, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE") 
!331 = !{!332, !333, !337, !340, !343, !348} 
!332 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !330, baseType: !194, flags: DIFlagPrivate, extraData: i32 0) 
!333 = !DISubprogram(name: "__compressed_pair_elem", scope: !330, file: !260, line: 80, type: !334, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!334 = !DISubroutineType(types: !335) 
!335 = !{null, !336} 
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!337 = !DISubprogram(name: "__compressed_pair_elem", scope: !330, file: !260, line: 82, type: !338, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!338 = !DISubroutineType(types: !339) 
!339 = !{null, !336, !307} 
!340 = !DISubprogram(name: "__compressed_pair_elem", scope: !330, file: !260, line: 84, type: !341, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!341 = !DISubroutineType(types: !342) 
!342 = !{null, !336, !311} 
!343 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !330, file: !260, line: 103, type: !344, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!344 = !DISubroutineType(types: !345) 
!345 = !{!346, !336} 
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !330, file: !260, line: 76, baseType: !347) 
!347 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !194, size: 64) 
!348 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !330, file: !260, line: 105, type: !349, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!349 = !DISubroutineType(types: !350) 
!350 = !{!351, !353} 
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !330, file: !260, line: 77, baseType: !352) 
!352 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !223, size: 64) 
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330) 
!355 = !{!356, !357, !358} 
!356 = !DITemplateTypeParameter(name: "_Tp", type: !194) 
!357 = !DITemplateValueParameter(name: "_Idx", type: !25, value: i32 1) 
!358 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !176, value: i8 1) 
!359 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !259, file: !260, line: 150, type: !360, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!360 = !DISubroutineType(types: !361) 
!361 = !{!315, !362} 
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!363 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !259, file: !260, line: 155, type: !364, scopeLine: 155, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!364 = !DISubroutineType(types: !365) 
!365 = !{!320, !366} 
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259) 
!368 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !259, file: !260, line: 160, type: !369, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!369 = !DISubroutineType(types: !370) 
!370 = !{!346, !362} 
!371 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !259, file: !260, line: 165, type: !372, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!372 = !DISubroutineType(types: !373) 
!373 = !{!351, !366} 
!374 = !DISubprogram(name: "__get_first_base", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E16__get_first_baseEPS8_", scope: !259, file: !260, line: 170, type: !375, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!375 = !DISubroutineType(types: !376) 
!376 = !{!377, !379} 
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64) 
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base1", scope: !259, file: !260, line: 121, baseType: !263) 
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64) 
!380 = !DISubprogram(name: "__get_second_base", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E17__get_second_baseEPS8_", scope: !259, file: !260, line: 174, type: !381, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!381 = !DISubroutineType(types: !382) 
!382 = !{!383, !379} 
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64) 
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base2", scope: !259, file: !260, line: 122, baseType: !330) 
!385 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapERS8_", scope: !259, file: !260, line: 179, type: !386, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!386 = !DISubroutineType(types: !387) 
!387 = !{null, !362, !388} 
!388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !259, size: 64) 
!389 = !{!390, !391} 
!390 = !DITemplateTypeParameter(name: "_T1", type: !266) 
!391 = !DITemplateTypeParameter(name: "_T2", type: !194) 
!392 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !162, file: !163, line: 810, baseType: !178, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1) 
!393 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 812, type: !394, scopeLine: 812, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!394 = !DISubroutineType(types: !395) 
!395 = !{null, !396} 
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!397 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 815, type: !398, scopeLine: 815, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!398 = !DISubroutineType(types: !399) 
!399 = !{null, !396, !400} 
!400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !401, size: 64) 
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402) 
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !162, file: !163, line: 701, baseType: !194) 
!403 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 822, type: !404, scopeLine: 822, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!404 = !DISubroutineType(types: !405) 
!405 = !{null, !396, !406} 
!406 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !407, size: 64) 
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162) 
!408 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 823, type: !409, scopeLine: 823, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!409 = !DISubroutineType(types: !410) 
!410 = !{null, !396, !406, !400} 
!411 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 857, type: !412, scopeLine: 857, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!412 = !DISubroutineType(types: !413) 
!413 = !{null, !396, !152, !179} 
!414 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 859, type: !415, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!415 = !DISubroutineType(types: !416) 
!416 = !{null, !396, !152, !179, !352} 
!417 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 861, type: !418, scopeLine: 861, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!418 = !DISubroutineType(types: !419) 
!419 = !{null, !396, !179, !154} 
!420 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 867, type: !421, scopeLine: 867, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!421 = !DISubroutineType(types: !422) 
!422 = !{null, !396, !406, !179, !179, !352} 
!423 = !DISubprogram(name: "basic_string", scope: !162, file: !163, line: 870, type: !424, scopeLine: 870, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!424 = !DISubroutineType(types: !425) 
!425 = !{null, !396, !406, !179, !352} 
!426 = !DISubprogram(name: "~basic_string", scope: !162, file: !163, line: 900, type: !394, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!427 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv", scope: !162, file: !163, line: 903, type: !428, scopeLine: 903, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!428 = !DISubroutineType(types: !429) 
!429 = !{!430, !614} 
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !162, file: !163, line: 698, baseType: !431) 
!431 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !17, file: !432, line: 233, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !433, templateParams: !563, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE") 
!432 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/string_view", directory: "") 
!433 = !{!434, !437, !441, !442, !446, !451, !455, !458, !461, !467, !468, !469, !470, !476, !477, !478, !479, !482, !483, !484, !487, !491, !492, !495, !496, !499, !502, !503, !506, !510, !513, !516, !519, !522, !525, !528, !531, !534, !537, !540, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562} 
!434 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !431, file: !432, line: 248, baseType: !435, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1) 
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436) 
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !432, line: 246, baseType: !83) 
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !431, file: !432, line: 663, baseType: !438, size: 64) 
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64) 
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440) 
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !431, file: !432, line: 237, baseType: !154) 
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !431, file: !432, line: 664, baseType: !436, size: 64, offset: 64) 
!442 = !DISubprogram(name: "basic_string_view", scope: !431, file: !432, line: 258, type: !443, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!443 = !DISubroutineType(types: !444) 
!444 = !{null, !445} 
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!446 = !DISubprogram(name: "basic_string_view", scope: !431, file: !432, line: 261, type: !447, scopeLine: 261, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!447 = !DISubroutineType(types: !448) 
!448 = !{null, !445, !449} 
!449 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !450, size: 64) 
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431) 
!451 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSERKS3_", scope: !431, file: !432, line: 264, type: !452, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!452 = !DISubroutineType(types: !453) 
!453 = !{!454, !445, !449} 
!454 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !431, size: 64) 
!455 = !DISubprogram(name: "basic_string_view", scope: !431, file: !432, line: 267, type: !456, scopeLine: 267, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!456 = !DISubroutineType(types: !457) 
!457 = !{null, !445, !152, !436} 
!458 = !DISubprogram(name: "basic_string_view", scope: !431, file: !432, line: 276, type: !459, scopeLine: 276, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!459 = !DISubroutineType(types: !460) 
!460 = !{null, !445, !152} 
!461 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginEv", scope: !431, file: !432, line: 285, type: !462, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!462 = !DISubroutineType(types: !463) 
!463 = !{!464, !466} 
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !431, file: !432, line: 242, baseType: !465) 
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !431, file: !432, line: 239, baseType: !152) 
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!467 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endEv", scope: !431, file: !432, line: 288, type: !462, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!468 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginEv", scope: !431, file: !432, line: 291, type: !462, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!469 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendEv", scope: !431, file: !432, line: 294, type: !462, scopeLine: 294, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!470 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginEv", scope: !431, file: !432, line: 297, type: !471, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!471 = !DISubroutineType(types: !472) 
!472 = !{!473, !466} 
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !431, file: !432, line: 244, baseType: !474) 
!474 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !17, file: !475, line: 37, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE") 
!475 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/reverse_iterator.h", directory: "") 
!476 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendEv", scope: !431, file: !432, line: 300, type: !471, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!477 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginEv", scope: !431, file: !432, line: 303, type: !471, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!478 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendEv", scope: !431, file: !432, line: 306, type: !471, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!479 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv", scope: !431, file: !432, line: 310, type: !480, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!480 = !DISubroutineType(types: !481) 
!481 = !{!436, !466} 
!482 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthEv", scope: !431, file: !432, line: 313, type: !480, scopeLine: 313, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!483 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeEv", scope: !431, file: !432, line: 316, type: !480, scopeLine: 316, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!484 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyEv", scope: !431, file: !432, line: 319, type: !485, scopeLine: 319, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!485 = !DISubroutineType(types: !486) 
!486 = !{!176, !466} 
!487 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixEm", scope: !431, file: !432, line: 323, type: !488, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!488 = !DISubroutineType(types: !489) 
!489 = !{!490, !466, !436} 
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !431, file: !432, line: 241, baseType: !231) 
!491 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atEm", scope: !431, file: !432, line: 328, type: !488, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!492 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontEv", scope: !431, file: !432, line: 336, type: !493, scopeLine: 336, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!493 = !DISubroutineType(types: !494) 
!494 = !{!490, !466} 
!495 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backEv", scope: !431, file: !432, line: 342, type: !493, scopeLine: 342, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!496 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv", scope: !431, file: !432, line: 348, type: !497, scopeLine: 348, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!497 = !DISubroutineType(types: !498) 
!498 = !{!465, !466} 
!499 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixEm", scope: !431, file: !432, line: 352, type: !500, scopeLine: 352, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!500 = !DISubroutineType(types: !501) 
!501 = !{null, !445, !436} 
!502 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixEm", scope: !431, file: !432, line: 360, type: !500, scopeLine: 360, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!503 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapERS3_", scope: !431, file: !432, line: 367, type: !504, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!504 = !DISubroutineType(types: !505) 
!505 = !{null, !445, !454} 
!506 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyEPcmm", scope: !431, file: !432, line: 379, type: !507, scopeLine: 379, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!507 = !DISubroutineType(types: !508) 
!508 = !{!509, !466, !214, !436, !436} 
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !431, file: !432, line: 246, baseType: !83) 
!510 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrEmm", scope: !431, file: !432, line: 389, type: !511, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!511 = !DISubroutineType(types: !512) 
!512 = !{!431, !466, !436, !436} 
!513 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !431, file: !432, line: 396, type: !514, scopeLine: 396, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!514 = !DISubroutineType(types: !515) 
!515 = !{!25, !466, !431} 
!516 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_", scope: !431, file: !432, line: 406, type: !517, scopeLine: 406, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!517 = !DISubroutineType(types: !518) 
!518 = !{!25, !466, !436, !436, !431} 
!519 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_mm", scope: !431, file: !432, line: 412, type: !520, scopeLine: 412, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!520 = !DISubroutineType(types: !521) 
!521 = !{!25, !466, !436, !436, !431, !436, !436} 
!522 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEPKc", scope: !431, file: !432, line: 419, type: !523, scopeLine: 419, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!523 = !DISubroutineType(types: !524) 
!524 = !{!25, !466, !152} 
!525 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKc", scope: !431, file: !432, line: 425, type: !526, scopeLine: 425, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!526 = !DISubroutineType(types: !527) 
!527 = !{!25, !466, !436, !436, !152} 
!528 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKcm", scope: !431, file: !432, line: 431, type: !529, scopeLine: 431, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!529 = !DISubroutineType(types: !530) 
!530 = !{!25, !466, !436, !436, !152, !436} 
!531 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findES3_m", scope: !431, file: !432, line: 438, type: !532, scopeLine: 438, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!532 = !DISubroutineType(types: !533) 
!533 = !{!509, !466, !431, !436} 
!534 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEcm", scope: !431, file: !432, line: 446, type: !535, scopeLine: 446, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!535 = !DISubroutineType(types: !536) 
!536 = !{!509, !466, !154, !436} 
!537 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcmm", scope: !431, file: !432, line: 453, type: !538, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!538 = !DISubroutineType(types: !539) 
!539 = !{!509, !466, !152, !436, !436} 
!540 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcm", scope: !431, file: !432, line: 461, type: !541, scopeLine: 461, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!541 = !DISubroutineType(types: !542) 
!542 = !{!509, !466, !152, !436} 
!543 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindES3_m", scope: !431, file: !432, line: 470, type: !532, scopeLine: 470, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!544 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEcm", scope: !431, file: !432, line: 478, type: !535, scopeLine: 478, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!545 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcmm", scope: !431, file: !432, line: 485, type: !538, scopeLine: 485, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!546 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcm", scope: !431, file: !432, line: 493, type: !541, scopeLine: 493, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!547 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofES3_m", scope: !431, file: !432, line: 502, type: !532, scopeLine: 502, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!548 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEcm", scope: !431, file: !432, line: 510, type: !535, scopeLine: 510, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!549 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcmm", scope: !431, file: !432, line: 514, type: !538, scopeLine: 514, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!550 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcm", scope: !431, file: !432, line: 522, type: !541, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!551 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofES3_m", scope: !431, file: !432, line: 531, type: !532, scopeLine: 531, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!552 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEcm", scope: !431, file: !432, line: 539, type: !535, scopeLine: 539, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!553 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcmm", scope: !431, file: !432, line: 543, type: !538, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!554 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcm", scope: !431, file: !432, line: 551, type: !541, scopeLine: 551, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!555 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofES3_m", scope: !431, file: !432, line: 560, type: !532, scopeLine: 560, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!556 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEcm", scope: !431, file: !432, line: 568, type: !535, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!557 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcmm", scope: !431, file: !432, line: 575, type: !538, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!558 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcm", scope: !431, file: !432, line: 583, type: !541, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!559 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofES3_m", scope: !431, file: !432, line: 592, type: !532, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!560 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEcm", scope: !431, file: !432, line: 600, type: !535, scopeLine: 600, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!561 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcmm", scope: !431, file: !432, line: 607, type: !538, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!562 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcm", scope: !431, file: !432, line: 615, type: !541, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!563 = !{!292, !564} 
!564 = !DITemplateTypeParameter(name: "_Traits", type: !565) 
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !17, file: !566, line: 324, size: 8, flags: DIFlagTypePassByValue, elements: !567, templateParams: !613, identifier: "_ZTSNSt3__111char_traitsIcEE") 
!566 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__string", directory: "") 
!567 = !{!568, !575, !578, !579, !583, !586, !589, !593, !594, !597, !601, !604, !607, !610} 
!568 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !565, file: !566, line: 333, type: !569, scopeLine: 333, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!569 = !DISubroutineType(types: !570) 
!570 = !{null, !571, !573} 
!571 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !572, size: 64) 
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !565, file: !566, line: 326, baseType: !154) 
!573 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !574, size: 64) 
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572) 
!575 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !565, file: !566, line: 334, type: !576, scopeLine: 334, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!576 = !DISubroutineType(types: !577) 
!577 = !{!176, !572, !572} 
!578 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !565, file: !566, line: 336, type: !576, scopeLine: 336, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!579 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !565, file: !566, line: 340, type: !580, scopeLine: 340, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!580 = !DISubroutineType(types: !581) 
!581 = !{!25, !582, !582, !83} 
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64) 
!583 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !565, file: !566, line: 342, type: !584, scopeLine: 342, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!584 = !DISubroutineType(types: !585) 
!585 = !{!83, !582} 
!586 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !565, file: !566, line: 344, type: !587, scopeLine: 344, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!587 = !DISubroutineType(types: !588) 
!588 = !{!582, !582, !83, !573} 
!589 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !565, file: !566, line: 346, type: !590, scopeLine: 346, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!590 = !DISubroutineType(types: !591) 
!591 = !{!592, !592, !582, !83} 
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64) 
!593 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !565, file: !566, line: 353, type: !590, scopeLine: 353, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!594 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !565, file: !566, line: 361, type: !595, scopeLine: 361, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!595 = !DISubroutineType(types: !596) 
!596 = !{!592, !592, !83, !572} 
!597 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !565, file: !566, line: 368, type: !598, scopeLine: 368, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!598 = !DISubroutineType(types: !599) 
!599 = !{!600, !600} 
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !565, file: !566, line: 327, baseType: !25) 
!601 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !565, file: !566, line: 370, type: !602, scopeLine: 370, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!602 = !DISubroutineType(types: !603) 
!603 = !{!572, !600} 
!604 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !565, file: !566, line: 372, type: !605, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!605 = !DISubroutineType(types: !606) 
!606 = !{!600, !572} 
!607 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !565, file: !566, line: 374, type: !608, scopeLine: 374, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!608 = !DISubroutineType(types: !609) 
!609 = !{!176, !600, !600} 
!610 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !565, file: !566, line: 376, type: !611, scopeLine: 376, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!611 = !DISubroutineType(types: !612) 
!612 = !{!600} 
!613 = !{!292} 
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!615 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !162, file: !163, line: 905, type: !616, scopeLine: 905, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!616 = !DISubroutineType(types: !617) 
!617 = !{!618, !396, !406} 
!618 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !162, size: 64) 
!619 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !162, file: !163, line: 918, type: !620, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!620 = !DISubroutineType(types: !621) 
!621 = !{!618, !396, !622} 
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64) 
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283) 
!624 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !162, file: !163, line: 922, type: !625, scopeLine: 922, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!625 = !DISubroutineType(types: !626) 
!626 = !{!618, !396, !283} 
!627 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !162, file: !163, line: 939, type: !628, scopeLine: 939, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!628 = !DISubroutineType(types: !629) 
!629 = !{!630, !396} 
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !162, file: !163, line: 718, baseType: !631) 
!631 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !17, file: !632, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__111__wrap_iterIPcEE") 
!632 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/wrap_iter.h", directory: "") 
!633 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !162, file: !163, line: 942, type: !634, scopeLine: 942, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!634 = !DISubroutineType(types: !635) 
!635 = !{!636, !614} 
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !162, file: !163, line: 719, baseType: !637) 
!637 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !17, file: !632, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE") 
!638 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !162, file: !163, line: 945, type: !628, scopeLine: 945, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!639 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !162, file: !163, line: 948, type: !634, scopeLine: 948, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!640 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !162, file: !163, line: 952, type: !641, scopeLine: 952, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!641 = !DISubroutineType(types: !642) 
!642 = !{!643, !396} 
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !162, file: !163, line: 720, baseType: !644) 
!644 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !17, file: !475, line: 37, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE") 
!645 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !162, file: !163, line: 955, type: !646, scopeLine: 955, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!646 = !DISubroutineType(types: !647) 
!647 = !{!648, !614} 
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !162, file: !163, line: 721, baseType: !649) 
!649 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !17, file: !475, line: 37, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE") 
!650 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !162, file: !163, line: 958, type: !641, scopeLine: 958, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!651 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !162, file: !163, line: 961, type: !646, scopeLine: 961, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!652 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginEv", scope: !162, file: !163, line: 965, type: !634, scopeLine: 965, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!653 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendEv", scope: !162, file: !163, line: 968, type: !634, scopeLine: 968, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!654 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginEv", scope: !162, file: !163, line: 971, type: !646, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!655 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendEv", scope: !162, file: !163, line: 974, type: !646, scopeLine: 974, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!656 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !162, file: !163, line: 977, type: !657, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!657 = !DISubroutineType(types: !658) 
!658 = !{!179, !614} 
!659 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv", scope: !162, file: !163, line: 979, type: !657, scopeLine: 979, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!660 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv", scope: !162, file: !163, line: 980, type: !657, scopeLine: 980, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!661 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv", scope: !162, file: !163, line: 981, type: !657, scopeLine: 981, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!662 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !162, file: !163, line: 985, type: !663, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!663 = !DISubroutineType(types: !664) 
!664 = !{null, !396, !179, !283} 
!665 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm", scope: !162, file: !163, line: 986, type: !666, scopeLine: 986, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!666 = !DISubroutineType(types: !667) 
!667 = !{null, !396, !179} 
!668 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !162, file: !163, line: 988, type: !666, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!669 = !DISubprogram(name: "__resize_default_init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__resize_default_initEm", scope: !162, file: !163, line: 989, type: !666, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!670 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEv", scope: !162, file: !163, line: 992, type: !394, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!671 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitEv", scope: !162, file: !163, line: 994, type: !394, scopeLine: 994, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!672 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv", scope: !162, file: !163, line: 996, type: !394, scopeLine: 996, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!673 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyEv", scope: !162, file: !163, line: 998, type: !674, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!674 = !DISubroutineType(types: !675) 
!675 = !{!176, !614} 
!676 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !162, file: !163, line: 1000, type: !677, scopeLine: 1000, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!677 = !DISubroutineType(types: !678) 
!678 = !{!679, !614, !179} 
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !162, file: !163, line: 706, baseType: !680) 
!680 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !623, size: 64) 
!681 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !162, file: !163, line: 1001, type: !682, scopeLine: 1001, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!682 = !DISubroutineType(types: !683) 
!683 = !{!684, !396, !179} 
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !162, file: !163, line: 705, baseType: !685) 
!685 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !283, size: 64) 
!686 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !162, file: !163, line: 1003, type: !677, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!687 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !162, file: !163, line: 1004, type: !682, scopeLine: 1004, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!688 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLERKS5_", scope: !162, file: !163, line: 1006, type: !616, scopeLine: 1006, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!689 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEPKc", scope: !162, file: !163, line: 1017, type: !620, scopeLine: 1017, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!690 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc", scope: !162, file: !163, line: 1018, type: !625, scopeLine: 1018, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!691 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_", scope: !162, file: !163, line: 1024, type: !616, scopeLine: 1024, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!692 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !162, file: !163, line: 1034, type: !693, scopeLine: 1034, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!693 = !DISubroutineType(types: !694) 
!694 = !{!618, !396, !406, !179, !179} 
!695 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !162, file: !163, line: 1045, type: !696, scopeLine: 1045, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!696 = !DISubroutineType(types: !697) 
!697 = !{!618, !396, !622, !179} 
!698 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !162, file: !163, line: 1046, type: !620, scopeLine: 1046, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!699 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !162, file: !163, line: 1047, type: !700, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!700 = !DISubroutineType(types: !701) 
!701 = !{!618, !396, !179, !283} 
!702 = !DISubprogram(name: "__append_default_init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__append_default_initEm", scope: !162, file: !163, line: 1050, type: !666, scopeLine: 1050, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!703 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !162, file: !163, line: 1080, type: !704, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!704 = !DISubroutineType(types: !705) 
!705 = !{null, !396, !283} 
!706 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backEv", scope: !162, file: !163, line: 1082, type: !394, scopeLine: 1082, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!707 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !162, file: !163, line: 1083, type: !708, scopeLine: 1083, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!708 = !DISubroutineType(types: !709) 
!709 = !{!684, !396} 
!710 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !162, file: !163, line: 1084, type: !711, scopeLine: 1084, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!711 = !DISubroutineType(types: !712) 
!712 = !{!679, !614} 
!713 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !162, file: !163, line: 1085, type: !708, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!714 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !162, file: !163, line: 1086, type: !711, scopeLine: 1086, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!715 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_", scope: !162, file: !163, line: 1097, type: !616, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!716 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !162, file: !163, line: 1104, type: !693, scopeLine: 1104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!717 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !162, file: !163, line: 1114, type: !696, scopeLine: 1114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!718 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !162, file: !163, line: 1115, type: !620, scopeLine: 1115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!719 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !162, file: !163, line: 1116, type: !700, scopeLine: 1116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!720 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_", scope: !162, file: !163, line: 1139, type: !721, scopeLine: 1139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!721 = !DISubroutineType(types: !722) 
!722 = !{!618, !396, !179, !406} 
!723 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !162, file: !163, line: 1159, type: !724, scopeLine: 1159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!724 = !DISubroutineType(types: !725) 
!725 = !{!618, !396, !179, !406, !179, !179} 
!726 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !162, file: !163, line: 1160, type: !727, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!727 = !DISubroutineType(types: !728) 
!728 = !{!618, !396, !179, !622, !179} 
!729 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !162, file: !163, line: 1161, type: !730, scopeLine: 1161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!730 = !DISubroutineType(types: !731) 
!731 = !{!618, !396, !179, !622} 
!732 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !162, file: !163, line: 1162, type: !733, scopeLine: 1162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!733 = !DISubroutineType(types: !734) 
!734 = !{!618, !396, !179, !179, !283} 
!735 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !162, file: !163, line: 1163, type: !736, scopeLine: 1163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!736 = !DISubroutineType(types: !737) 
!737 = !{!630, !396, !636, !283} 
!738 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEmc", scope: !162, file: !163, line: 1165, type: !739, scopeLine: 1165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!739 = !DISubroutineType(types: !740) 
!740 = !{!630, !396, !636, !179, !283} 
!741 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !162, file: !163, line: 1188, type: !742, scopeLine: 1188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!742 = !DISubroutineType(types: !743) 
!743 = !{!618, !396, !179, !179} 
!744 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEE", scope: !162, file: !163, line: 1190, type: !745, scopeLine: 1190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!745 = !DISubroutineType(types: !746) 
!746 = !{!630, !396, !636} 
!747 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEES9_", scope: !162, file: !163, line: 1192, type: !748, scopeLine: 1192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!748 = !DISubroutineType(types: !749) 
!749 = !{!630, !396, !636, !636} 
!750 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_", scope: !162, file: !163, line: 1195, type: !751, scopeLine: 1195, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!751 = !DISubroutineType(types: !752) 
!752 = !{!618, !396, !179, !179, !406} 
!753 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !162, file: !163, line: 1205, type: !754, scopeLine: 1205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!754 = !DISubroutineType(types: !755) 
!755 = !{!618, !396, !179, !179, !406, !179, !179} 
!756 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !162, file: !163, line: 1214, type: !757, scopeLine: 1214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!757 = !DISubroutineType(types: !758) 
!758 = !{!618, !396, !179, !179, !622, !179} 
!759 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !162, file: !163, line: 1215, type: !760, scopeLine: 1215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!760 = !DISubroutineType(types: !761) 
!761 = !{!618, !396, !179, !179, !622} 
!762 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !162, file: !163, line: 1216, type: !763, scopeLine: 1216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!763 = !DISubroutineType(types: !764) 
!764 = !{!618, !396, !179, !179, !179, !283} 
!765 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_RKS5_", scope: !162, file: !163, line: 1218, type: !766, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!766 = !DISubroutineType(types: !767) 
!767 = !{!618, !396, !636, !636, !406} 
!768 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_m", scope: !162, file: !163, line: 1230, type: !769, scopeLine: 1230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!769 = !DISubroutineType(types: !770) 
!770 = !{!618, !396, !636, !636, !622, !179} 
!771 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_", scope: !162, file: !163, line: 1232, type: !772, scopeLine: 1232, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!772 = !DISubroutineType(types: !773) 
!773 = !{!618, !396, !636, !636, !622} 
!774 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_mc", scope: !162, file: !163, line: 1234, type: !775, scopeLine: 1234, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!775 = !DISubroutineType(types: !776) 
!776 = !{!618, !396, !636, !636, !179, !283} 
!777 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !162, file: !163, line: 1249, type: !778, scopeLine: 1249, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!778 = !DISubroutineType(types: !779) 
!779 = !{!179, !614, !780, !179, !179} 
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64) 
!781 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrEmm", scope: !162, file: !163, line: 1251, type: !782, scopeLine: 1251, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!782 = !DISubroutineType(types: !783) 
!783 = !{!162, !614, !179, !179} 
!784 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapERS5_", scope: !162, file: !163, line: 1254, type: !785, scopeLine: 1254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!785 = !DISubroutineType(types: !786) 
!786 = !{null, !396, !618} 
!787 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv", scope: !162, file: !163, line: 1263, type: !788, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!788 = !DISubroutineType(types: !789) 
!789 = !{!622, !614} 
!790 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !162, file: !163, line: 1265, type: !788, scopeLine: 1265, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!791 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv", scope: !162, file: !163, line: 1272, type: !792, scopeLine: 1272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!792 = !DISubroutineType(types: !793) 
!793 = !{!402, !614} 
!794 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findERKS5_m", scope: !162, file: !163, line: 1275, type: !795, scopeLine: 1275, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!795 = !DISubroutineType(types: !796) 
!796 = !{!179, !614, !406, !179} 
!797 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !162, file: !163, line: 1285, type: !798, scopeLine: 1285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!798 = !DISubroutineType(types: !799) 
!799 = !{!179, !614, !622, !179, !179} 
!800 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcm", scope: !162, file: !163, line: 1287, type: !801, scopeLine: 1287, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!801 = !DISubroutineType(types: !802) 
!802 = !{!179, !614, !622, !179} 
!803 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !162, file: !163, line: 1288, type: !804, scopeLine: 1288, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!804 = !DISubroutineType(types: !805) 
!805 = !{!179, !614, !283, !179} 
!806 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindERKS5_m", scope: !162, file: !163, line: 1291, type: !795, scopeLine: 1291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!807 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !162, file: !163, line: 1301, type: !798, scopeLine: 1301, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!808 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcm", scope: !162, file: !163, line: 1303, type: !801, scopeLine: 1303, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!809 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !162, file: !163, line: 1304, type: !804, scopeLine: 1304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!810 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofERKS5_m", scope: !162, file: !163, line: 1307, type: !795, scopeLine: 1307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!811 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !162, file: !163, line: 1317, type: !798, scopeLine: 1317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!812 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcm", scope: !162, file: !163, line: 1319, type: !801, scopeLine: 1319, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!813 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEcm", scope: !162, file: !163, line: 1321, type: !804, scopeLine: 1321, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!814 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofERKS5_m", scope: !162, file: !163, line: 1324, type: !795, scopeLine: 1324, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!815 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !162, file: !163, line: 1334, type: !798, scopeLine: 1334, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!816 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcm", scope: !162, file: !163, line: 1336, type: !801, scopeLine: 1336, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!817 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEcm", scope: !162, file: !163, line: 1338, type: !804, scopeLine: 1338, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!818 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofERKS5_m", scope: !162, file: !163, line: 1341, type: !795, scopeLine: 1341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!819 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !162, file: !163, line: 1351, type: !798, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!820 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcm", scope: !162, file: !163, line: 1353, type: !801, scopeLine: 1353, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!821 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEcm", scope: !162, file: !163, line: 1355, type: !804, scopeLine: 1355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!822 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofERKS5_m", scope: !162, file: !163, line: 1358, type: !795, scopeLine: 1358, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!823 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !162, file: !163, line: 1368, type: !798, scopeLine: 1368, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!824 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcm", scope: !162, file: !163, line: 1370, type: !801, scopeLine: 1370, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!825 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEcm", scope: !162, file: !163, line: 1372, type: !804, scopeLine: 1372, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!826 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_", scope: !162, file: !163, line: 1375, type: !827, scopeLine: 1375, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!827 = !DISubroutineType(types: !828) 
!828 = !{!25, !614, !406} 
!829 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_", scope: !162, file: !163, line: 1396, type: !830, scopeLine: 1396, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!830 = !DISubroutineType(types: !831) 
!831 = !{!25, !614, !179, !179, !406} 
!832 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !162, file: !163, line: 1397, type: !833, scopeLine: 1397, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!833 = !DISubroutineType(types: !834) 
!834 = !{!25, !614, !179, !179, !406, !179, !179} 
!835 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !162, file: !163, line: 1407, type: !836, scopeLine: 1407, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!836 = !DISubroutineType(types: !837) 
!837 = !{!25, !614, !622} 
!838 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !162, file: !163, line: 1408, type: !839, scopeLine: 1408, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!839 = !DISubroutineType(types: !840) 
!840 = !{!25, !614, !179, !179, !622} 
!841 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !162, file: !163, line: 1409, type: !842, scopeLine: 1409, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!842 = !DISubroutineType(types: !843) 
!843 = !{!25, !614, !179, !179, !622, !179} 
!844 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsEv", scope: !162, file: !163, line: 1451, type: !674, scopeLine: 1451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!845 = !DISubprogram(name: "__clear_and_shrink", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__clear_and_shrinkEv", scope: !162, file: !163, line: 1453, type: !394, scopeLine: 1453, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!846 = !DISubprogram(name: "__shrink_or_extend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__shrink_or_extendEm", scope: !162, file: !163, line: 1455, type: !666, scopeLine: 1455, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!847 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !162, file: !163, line: 1458, type: !674, scopeLine: 1458, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!848 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !162, file: !163, line: 1472, type: !849, scopeLine: 1472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!849 = !DISubroutineType(types: !850) 
!850 = !{!851, !396} 
!851 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !402, size: 64) 
!852 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !162, file: !163, line: 1475, type: !853, scopeLine: 1475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!853 = !DISubroutineType(types: !854) 
!854 = !{!400, !614} 
!855 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !162, file: !163, line: 1481, type: !666, scopeLine: 1481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!856 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !162, file: !163, line: 1489, type: !657, scopeLine: 1489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!857 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !162, file: !163, line: 1517, type: !666, scopeLine: 1517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!858 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !162, file: !163, line: 1520, type: !657, scopeLine: 1520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!859 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm", scope: !162, file: !163, line: 1523, type: !666, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!860 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !162, file: !163, line: 1527, type: !666, scopeLine: 1527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!861 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv", scope: !162, file: !163, line: 1530, type: !657, scopeLine: 1530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!862 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !162, file: !163, line: 1534, type: !863, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!863 = !DISubroutineType(types: !864) 
!864 = !{null, !396, !275} 
!865 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !162, file: !163, line: 1537, type: !866, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!866 = !DISubroutineType(types: !867) 
!867 = !{!275, !396} 
!868 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !162, file: !163, line: 1540, type: !869, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!869 = !DISubroutineType(types: !870) 
!870 = !{!871, !614} 
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !162, file: !163, line: 708, baseType: !872) 
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !182, file: !181, line: 234, baseType: !873) 
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !874, file: !181, line: 51, baseType: !229) 
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<char, char *, std::__1::allocator<char>, true>", scope: !17, file: !181, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !875, identifier: "_ZTSNSt3__115__const_pointerIcPcNS_9allocatorIcEELb1EEE") 
!875 = !{!192, !876, !193, !175} 
!876 = !DITemplateTypeParameter(name: "_Ptr", type: !214) 
!877 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !162, file: !163, line: 1543, type: !866, scopeLine: 1543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!878 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !162, file: !163, line: 1546, type: !869, scopeLine: 1546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!879 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !162, file: !163, line: 1549, type: !866, scopeLine: 1549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!880 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !162, file: !163, line: 1552, type: !869, scopeLine: 1552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!881 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv", scope: !162, file: !163, line: 1556, type: !394, scopeLine: 1556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!882 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !162, file: !163, line: 1569, type: !883, scopeLine: 1569, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!883 = !DISubroutineType(types: !884) 
!884 = !{!179, !179} 
!885 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !162, file: !163, line: 1579, type: !886, scopeLine: 1579, flags: DIFlagPrototyped, spFlags: 0) 
!886 = !DISubroutineType(types: !887) 
!887 = !{null, !396, !622, !179, !179} 
!888 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !162, file: !163, line: 1581, type: !889, scopeLine: 1581, flags: DIFlagPrototyped, spFlags: 0) 
!889 = !DISubroutineType(types: !890) 
!890 = !{null, !396, !622, !179} 
!891 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !162, file: !163, line: 1583, type: !663, scopeLine: 1583, flags: DIFlagPrototyped, spFlags: 0) 
!892 = !DISubprogram(name: "__init_copy_ctor_external", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm", scope: !162, file: !163, line: 1593, type: !889, scopeLine: 1593, flags: DIFlagPrototyped, spFlags: 0) 
!893 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !162, file: !163, line: 1611, type: !894, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: 0) 
!894 = !DISubroutineType(types: !895) 
!895 = !{null, !396, !179, !179, !179, !179, !179, !179} 
!896 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !162, file: !163, line: 1613, type: !897, scopeLine: 1613, flags: DIFlagPrototyped, spFlags: 0) 
!897 = !DISubroutineType(types: !898) 
!898 = !{null, !396, !179, !179, !179, !179, !179, !179, !622} 
!899 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endEm", scope: !162, file: !163, line: 1624, type: !666, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!900 = !DISubprogram(name: "__erase_external_with_move", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__erase_external_with_moveEmm", scope: !162, file: !163, line: 1628, type: !901, scopeLine: 1628, flags: DIFlagPrototyped, spFlags: 0) 
!901 = !DISubroutineType(types: !902) 
!902 = !{null, !396, !179, !179} 
!903 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_", scope: !162, file: !163, line: 1631, type: !404, scopeLine: 1631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!904 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb1EEE", scope: !162, file: !163, line: 1636, type: !905, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!905 = !DISubroutineType(types: !906) 
!906 = !{null, !396, !406, !907} 
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !17, file: !908, line: 458, baseType: !909) 
!908 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/type_traits", directory: "") 
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !17, file: !908, line: 434, size: 8, flags: DIFlagTypePassByValue, elements: !910, templateParams: !919, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE") 
!910 = !{!911, !913} 
!911 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !909, file: !908, line: 436, baseType: !912, flags: DIFlagStaticMember, extraData: i1 true) 
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176) 
!913 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbEv", scope: !909, file: !908, line: 440, type: !914, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!914 = !DISubroutineType(types: !915) 
!915 = !{!916, !917} 
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !909, file: !908, line: 437, baseType: !176) 
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !909) 
!919 = !{!920, !921} 
!920 = !DITemplateTypeParameter(name: "_Tp", type: !176) 
!921 = !DITemplateValueParameter(name: "__v", type: !176, value: i8 1) 
!922 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb0EEE", scope: !162, file: !163, line: 1661, type: !923, scopeLine: 1661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!923 = !DISubroutineType(types: !924) 
!924 = !{null, !396, !406, !925} 
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !17, file: !908, line: 459, baseType: !926) 
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !17, file: !908, line: 434, size: 8, flags: DIFlagTypePassByValue, elements: !927, templateParams: !935, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE") 
!927 = !{!928, !929} 
!928 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !926, file: !908, line: 436, baseType: !912, flags: DIFlagStaticMember, extraData: i1 false) 
!929 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbEv", scope: !926, file: !908, line: 440, type: !930, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!930 = !DISubroutineType(types: !931) 
!931 = !{!932, !933} 
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !926, file: !908, line: 437, baseType: !176) 
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926) 
!935 = !{!920, !936} 
!936 = !DITemplateValueParameter(name: "__v", type: !176, value: i8 0) 
!937 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_", scope: !162, file: !163, line: 1679, type: !785, scopeLine: 1679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!938 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb1EEE", scope: !162, file: !163, line: 1687, type: !939, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!939 = !DISubroutineType(types: !940) 
!940 = !{null, !396, !618, !907} 
!941 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb0EEE", scope: !162, file: !163, line: 1694, type: !942, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!942 = !DISubroutineType(types: !943) 
!943 = !{null, !396, !618, !925} 
!944 = !DISubprogram(name: "__assign_external", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKc", scope: !162, file: !163, line: 1698, type: !620, scopeLine: 1698, flags: DIFlagPrototyped, spFlags: 0) 
!945 = !DISubprogram(name: "__assign_external", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm", scope: !162, file: !163, line: 1699, type: !696, scopeLine: 1699, flags: DIFlagPrototyped, spFlags: 0) 
!946 = !DISubprogram(name: "__assign_short", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm", scope: !162, file: !163, line: 1702, type: !696, scopeLine: 1702, flags: DIFlagPrototyped, spFlags: 0) 
!947 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv", scope: !162, file: !163, line: 1711, type: !394, scopeLine: 1711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!948 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm", scope: !162, file: !163, line: 1712, type: !666, scopeLine: 1712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!949 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv", scope: !162, file: !163, line: 1722, type: !950, scopeLine: 1722, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit) 
!950 = !DISubroutineType(types: !951) 
!951 = !{null, !614} 
!952 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeEv", scope: !162, file: !163, line: 1731, type: !950, scopeLine: 1731, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit) 
!953 = !{!292, !564, !954} 
!954 = !DITemplateTypeParameter(name: "_Allocator", type: !194) 
!955 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 149, type: !956, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!956 = !DISubroutineType(types: !957) 
!957 = !{null, !143, !147, !152, !129} 
!958 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 150, type: !959, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!959 = !DISubroutineType(types: !960) 
!960 = !{null, !143, !147, !158, !129} 
!961 = !DISubprogram(name: "locale", scope: !124, file: !125, line: 153, type: !962, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!962 = !DISubroutineType(types: !963) 
!963 = !{null, !143, !147, !147, !129} 
!964 = !DISubprogram(name: "~locale", scope: !124, file: !125, line: 155, type: !141, scopeLine: 155, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!965 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16localeaSERKS0_", scope: !124, file: !125, line: 157, type: !966, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!966 = !DISubroutineType(types: !967) 
!967 = !{!147, !143, !147} 
!968 = !DISubprogram(name: "name", linkageName: "_ZNKSt3__16locale4nameEv", scope: !124, file: !125, line: 164, type: !969, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!969 = !DISubroutineType(types: !970) 
!970 = !{!160, !971} 
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!972 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt3__16localeeqERKS0_", scope: !124, file: !125, line: 165, type: !973, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!973 = !DISubroutineType(types: !974) 
!974 = !{!176, !971, !147} 
!975 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt3__16localeneERKS0_", scope: !124, file: !125, line: 166, type: !973, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!976 = !DISubprogram(name: "global", linkageName: "_ZNSt3__16locale6globalERKS0_", scope: !124, file: !125, line: 173, type: !977, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!977 = !DISubroutineType(types: !978) 
!978 = !{!124, !147} 
!979 = !DISubprogram(name: "classic", linkageName: "_ZNSt3__16locale7classicEv", scope: !124, file: !125, line: 174, type: !980, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!980 = !DISubroutineType(types: !981) 
!981 = !{!147} 
!982 = !DISubprogram(name: "__install_ctor", linkageName: "_ZNSt3__16locale14__install_ctorERKS0_PNS0_5facetEl", scope: !124, file: !125, line: 180, type: !983, scopeLine: 180, flags: DIFlagPrototyped, spFlags: 0) 
!983 = !DISubroutineType(types: !984) 
!984 = !{null, !143, !147, !985, !66} 
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64) 
!986 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "facet", scope: !124, file: !125, line: 189, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !987, vtableHolder: !989) 
!987 = !{!988, !1019, !1023, !1026} 
!988 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !986, baseType: !989, flags: DIFlagPublic, extraData: i32 0) 
!989 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count", scope: !17, file: !990, line: 149, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !991, vtableHolder: !989) 
!990 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/shared_ptr.h", directory: "") 
!991 = !{!992, !993, !994, !1000, !1004, !1007, !1008, !1011, !1012, !1015} 
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$__shared_count", scope: !990, file: !990, baseType: !21, size: 64, flags: DIFlagArtificial) 
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__shared_owners_", scope: !989, file: !990, line: 155, baseType: !66, size: 64, offset: 64, flags: DIFlagProtected) 
!994 = !DISubprogram(name: "__shared_count", scope: !989, file: !990, line: 151, type: !995, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0) 
!995 = !DISubroutineType(types: !996) 
!996 = !{null, !997, !998} 
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!998 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !999, size: 64) 
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989) 
!1000 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__shared_countaSERKS0_", scope: !989, file: !990, line: 152, type: !1001, scopeLine: 152, flags: DIFlagPrototyped, spFlags: 0) 
!1001 = !DISubroutineType(types: !1002) 
!1002 = !{!1003, !997, !998} 
!1003 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !989, size: 64) 
!1004 = !DISubprogram(name: "~__shared_count", scope: !989, file: !990, line: 156, type: !1005, scopeLine: 156, containingType: !989, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1005 = !DISubroutineType(types: !1006) 
!1006 = !{null, !997} 
!1007 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__114__shared_count16__on_zero_sharedEv", scope: !989, file: !990, line: 158, type: !1005, scopeLine: 158, containingType: !989, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual) 
!1008 = !DISubprogram(name: "__shared_count", scope: !989, file: !990, line: 162, type: !1009, scopeLine: 162, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1009 = !DISubroutineType(types: !1010) 
!1010 = !{null, !997, !66} 
!1011 = !DISubprogram(name: "__add_shared", linkageName: "_ZNSt3__114__shared_count12__add_sharedEv", scope: !989, file: !990, line: 171, type: !1005, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1012 = !DISubprogram(name: "__release_shared", linkageName: "_ZNSt3__114__shared_count16__release_sharedEv", scope: !989, file: !990, line: 175, type: !1013, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1013 = !DISubroutineType(types: !1014) 
!1014 = !{!176, !997} 
!1015 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt3__114__shared_count9use_countEv", scope: !989, file: !990, line: 184, type: !1016, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1016 = !DISubroutineType(types: !1017) 
!1017 = !{!66, !1018} 
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1019 = !DISubprogram(name: "facet", scope: !986, file: !125, line: 194, type: !1020, scopeLine: 194, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1020 = !DISubroutineType(types: !1021) 
!1021 = !{null, !1022, !83} 
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1023 = !DISubprogram(name: "~facet", scope: !986, file: !125, line: 197, type: !1024, scopeLine: 197, containingType: !986, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1024 = !DISubroutineType(types: !1025) 
!1025 = !{null, !1022} 
!1026 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__16locale5facet16__on_zero_sharedEv", scope: !986, file: !125, line: 202, type: !1024, scopeLine: 202, containingType: !986, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1027 = !DISubprogram(name: "__global", linkageName: "_ZNSt3__16locale8__globalEv", scope: !124, file: !125, line: 181, type: !1028, scopeLine: 181, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!1028 = !DISubroutineType(types: !1029) 
!1029 = !{!1030} 
!1030 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !124, size: 64) 
!1031 = !DISubprogram(name: "has_facet", linkageName: "_ZNKSt3__16locale9has_facetERNS0_2idE", scope: !124, file: !125, line: 182, type: !1032, scopeLine: 182, flags: DIFlagPrototyped, spFlags: 0) 
!1032 = !DISubroutineType(types: !1033) 
!1033 = !{!176, !971, !1034} 
!1034 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1035, size: 64) 
!1035 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !124, file: !125, line: 205, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1036, identifier: "_ZTSNSt3__16locale2idE") 
!1036 = !{!1037, !1056, !1059, !1060, !1064, !1065, !1070, !1071} 
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "__flag_", scope: !1035, file: !125, line: 207, baseType: !1038, size: 64) 
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_flag", scope: !17, file: !1039, line: 574, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1040, identifier: "_ZTSNSt3__19once_flagE") 
!1039 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/mutex", directory: "") 
!1040 = !{!1041, !1043, !1047, !1052} 
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__state_", scope: !1038, file: !1039, line: 591, baseType: !1042, size: 64, flags: DIFlagPrivate) 
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "_State_type", scope: !1038, file: !1039, line: 583, baseType: !84) 
!1043 = !DISubprogram(name: "once_flag", scope: !1038, file: !1039, line: 578, type: !1044, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1044 = !DISubroutineType(types: !1045) 
!1045 = !{null, !1046} 
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1047 = !DISubprogram(name: "once_flag", scope: !1038, file: !1039, line: 588, type: !1048, scopeLine: 588, flags: DIFlagPrivate | DIFlagPrototyped, spFlags: 0) 
!1048 = !DISubroutineType(types: !1049) 
!1049 = !{null, !1046, !1050} 
!1050 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1051, size: 64) 
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038) 
!1052 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__19once_flagaSERKS0_", scope: !1038, file: !1039, line: 589, type: !1053, scopeLine: 589, flags: DIFlagPrivate | DIFlagPrototyped, spFlags: 0) 
!1053 = !DISubroutineType(types: !1054) 
!1054 = !{!1055, !1046, !1050} 
!1055 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1038, size: 64) 
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1035, file: !125, line: 208, baseType: !1057, size: 32, offset: 64) 
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1058, line: 30, baseType: !25) 
!1058 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "") 
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "__next_id", scope: !1035, file: !125, line: 210, baseType: !1057, flags: DIFlagStaticMember) 
!1060 = !DISubprogram(name: "id", scope: !1035, file: !125, line: 212, type: !1061, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1061 = !DISubroutineType(types: !1062) 
!1062 = !{null, !1063} 
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1064 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__16locale2id6__initEv", scope: !1035, file: !125, line: 214, type: !1061, scopeLine: 214, flags: DIFlagPrototyped, spFlags: 0) 
!1065 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16locale2idaSERKS1_", scope: !1035, file: !125, line: 215, type: !1066, scopeLine: 215, flags: DIFlagPrototyped, spFlags: 0) 
!1066 = !DISubroutineType(types: !1067) 
!1067 = !{null, !1063, !1068} 
!1068 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1069, size: 64) 
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035) 
!1070 = !DISubprogram(name: "id", scope: !1035, file: !125, line: 216, type: !1066, scopeLine: 216, flags: DIFlagPrototyped, spFlags: 0) 
!1071 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__16locale2id5__getEv", scope: !1035, file: !125, line: 218, type: !1072, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1072 = !DISubroutineType(types: !1073) 
!1073 = !{!66, !1063} 
!1074 = !DISubprogram(name: "use_facet", linkageName: "_ZNKSt3__16locale9use_facetERNS0_2idE", scope: !124, file: !125, line: 183, type: !1075, scopeLine: 183, flags: DIFlagPrototyped, spFlags: 0) 
!1075 = !DISubroutineType(types: !1076) 
!1076 = !{!1077, !971, !1034} 
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64) 
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986) 
!1079 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__18ios_base6getlocEv", scope: !16, file: !15, line: 296, type: !1080, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1080 = !DISubroutineType(types: !1081) 
!1081 = !{!124, !100} 
!1082 = !DISubprogram(name: "xalloc", linkageName: "_ZNSt3__18ios_base6xallocEv", scope: !16, file: !15, line: 299, type: !23, scopeLine: 299, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!1083 = !DISubprogram(name: "iword", linkageName: "_ZNSt3__18ios_base5iwordEi", scope: !16, file: !15, line: 300, type: !1084, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1084 = !DISubroutineType(types: !1085) 
!1085 = !{!1086, !105, !25} 
!1086 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64) 
!1087 = !DISubprogram(name: "pword", linkageName: "_ZNSt3__18ios_base5pwordEi", scope: !16, file: !15, line: 301, type: !1088, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1088 = !DISubroutineType(types: !1089) 
!1089 = !{!1090, !105, !25} 
!1090 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64) 
!1091 = !DISubprogram(name: "~ios_base", scope: !16, file: !15, line: 304, type: !1092, scopeLine: 304, containingType: !16, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1092 = !DISubroutineType(types: !1093) 
!1093 = !{null, !105} 
!1094 = !DISubprogram(name: "register_callback", linkageName: "_ZNSt3__18ios_base17register_callbackEPFvNS0_5eventERS0_iEi", scope: !16, file: !15, line: 309, type: !1095, scopeLine: 309, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1095 = !DISubroutineType(types: !1096) 
!1096 = !{null, !105, !75, !25} 
!1097 = !DISubprogram(name: "ios_base", scope: !16, file: !15, line: 312, type: !1098, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0) 
!1098 = !DISubroutineType(types: !1099) 
!1099 = !{null, !105, !1100} 
!1100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !101, size: 64) 
!1101 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__18ios_baseaSERKS0_", scope: !16, file: !15, line: 313, type: !1102, scopeLine: 313, flags: DIFlagPrototyped, spFlags: 0) 
!1102 = !DISubroutineType(types: !1103) 
!1103 = !{!79, !105, !1100} 
!1104 = !DISubprogram(name: "sync_with_stdio", linkageName: "_ZNSt3__18ios_base15sync_with_stdioEb", scope: !16, file: !15, line: 316, type: !1105, scopeLine: 316, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!1105 = !DISubroutineType(types: !1106) 
!1106 = !{!176, !176} 
!1107 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__18ios_base7rdstateEv", scope: !16, file: !15, line: 318, type: !1108, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1108 = !DISubroutineType(types: !1109) 
!1109 = !{!49, !100} 
!1110 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__18ios_base5clearEj", scope: !16, file: !15, line: 319, type: !1111, scopeLine: 319, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1111 = !DISubroutineType(types: !1112) 
!1112 = !{null, !105, !49} 
!1113 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !16, file: !15, line: 320, type: !1111, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1114 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__18ios_base4goodEv", scope: !16, file: !15, line: 322, type: !1115, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1115 = !DISubroutineType(types: !1116) 
!1116 = !{!176, !100} 
!1117 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__18ios_base3eofEv", scope: !16, file: !15, line: 323, type: !1115, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1118 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__18ios_base4failEv", scope: !16, file: !15, line: 324, type: !1115, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1119 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__18ios_base3badEv", scope: !16, file: !15, line: 325, type: !1115, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1120 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__18ios_base10exceptionsEv", scope: !16, file: !15, line: 327, type: !1108, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1121 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__18ios_base10exceptionsEj", scope: !16, file: !15, line: 328, type: !1111, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1122 = !DISubprogram(name: "__set_badbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv", scope: !16, file: !15, line: 330, type: !1092, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1123 = !DISubprogram(name: "__set_failbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base34__set_failbit_and_consider_rethrowEv", scope: !16, file: !15, line: 331, type: !1092, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1124 = !DISubprogram(name: "__setstate_nothrow", linkageName: "_ZNSt3__18ios_base18__setstate_nothrowEj", scope: !16, file: !15, line: 334, type: !1111, scopeLine: 334, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1125 = !DISubprogram(name: "ios_base", scope: !16, file: !15, line: 344, type: !1092, scopeLine: 344, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1126 = !DISubprogram(name: "init", linkageName: "_ZNSt3__18ios_base4initEPv", scope: !16, file: !15, line: 347, type: !1127, scopeLine: 347, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1127 = !DISubroutineType(types: !1128) 
!1128 = !{null, !105, !71} 
!1129 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !16, file: !15, line: 348, type: !1130, scopeLine: 348, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1130 = !DISubroutineType(types: !1131) 
!1131 = !{!71, !100} 
!1132 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__18ios_base5rdbufEPv", scope: !16, file: !15, line: 351, type: !1127, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1133 = !DISubprogram(name: "__call_callbacks", linkageName: "_ZNSt3__18ios_base16__call_callbacksENS0_5eventE", scope: !16, file: !15, line: 357, type: !1134, scopeLine: 357, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1134 = !DISubroutineType(types: !1135) 
!1135 = !{null, !105, !14} 
!1136 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__18ios_base7copyfmtERKS0_", scope: !16, file: !15, line: 358, type: !1098, scopeLine: 358, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1137 = !DISubprogram(name: "move", linkageName: "_ZNSt3__18ios_base4moveERS0_", scope: !16, file: !15, line: 359, type: !1138, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1138 = !DISubroutineType(types: !1139) 
!1139 = !{null, !105, !79} 
!1140 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__18ios_base4swapERS0_", scope: !16, file: !15, line: 360, type: !1138, scopeLine: 360, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1141 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__18ios_base9set_rdbufEPv", scope: !16, file: !15, line: 363, type: !1127, scopeLine: 363, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1142 = !{!1143, !1144, !1145} 
!1143 = !DIEnumerator(name: "erase_event", value: 0, isUnsigned: true) 
!1144 = !DIEnumerator(name: "imbue_event", value: 1, isUnsigned: true) 
!1145 = !DIEnumerator(name: "copyfmt_event", value: 2, isUnsigned: true) 
!1146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "seekdir", scope: !16, file: !15, line: 269, baseType: !29, size: 32, elements: !1147, identifier: "_ZTSNSt3__18ios_base7seekdirE") 
!1147 = !{!1148, !1149, !1150} 
!1148 = !DIEnumerator(name: "beg", value: 0, isUnsigned: true) 
!1149 = !DIEnumerator(name: "cur", value: 1, isUnsigned: true) 
!1150 = !DIEnumerator(name: "end", value: 2, isUnsigned: true) 
!1151 = !{!176, !1152, !1452, !1194, !600, !162, !16} 
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1154, file: !1153, line: 717, baseType: !1496) 
!1153 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/ostream", directory: "") 
!1154 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !17, file: !1153, line: 707, type: !1155, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !563, retainedNodes: !190) 
!1155 = !DISubroutineType(types: !1156) 
!1156 = !{!1157, !1157, !152, !83} 
!1157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1158, size: 64) 
!1158 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !17, file: !1153, line: 1089, size: 1280, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1159, vtableHolder: !1158, templateParams: !563) 
!1159 = !{!1160, !1357, !1358, !1362, !1365, !1369, !1372, !1375, !1380, !1383, !1389, !1395, !1401, !1404, !1408, !1412, !1415, !1418, !1421, !1424, !1427, !1431, !1435, !1439, !1443, !1446, !1449, !1472, !1476, !1481, !1484, !1488, !1491, !1495} 
!1160 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1158, baseType: !1161, offset: 24, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0) 
!1161 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !17, file: !1162, line: 491, size: 1216, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1163, vtableHolder: !16, templateParams: !563) 
!1162 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/streambuf", directory: "") 
!1163 = !{!1164, !1165, !1167, !1169, !1174, !1177, !1180, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1310, !1313, !1316, !1319, !1322, !1325, !1330, !1334, !1337, !1340, !1343, !1346, !1347, !1348, !1351, !1355, !1356} 
!1164 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1161, baseType: !16, flags: DIFlagPublic, extraData: i32 0) 
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1161, file: !15, line: 679, baseType: !1166, size: 64, offset: 1088) 
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64) 
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1161, file: !15, line: 680, baseType: !1168, size: 32, offset: 1152) 
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1161, file: !15, line: 603, baseType: !600) 
!1169 = !DISubprogram(name: "operator void *", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvPvEv", scope: !1161, file: !15, line: 614, type: !1170, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1170 = !DISubroutineType(types: !1171) 
!1171 = !{!71, !1172} 
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161) 
!1174 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntEv", scope: !1161, file: !15, line: 620, type: !1175, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1175 = !DISubroutineType(types: !1176) 
!1176 = !{!176, !1172} 
!1177 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateEv", scope: !1161, file: !15, line: 621, type: !1178, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1178 = !DISubroutineType(types: !1179) 
!1179 = !{!49, !1172} 
!1180 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj", scope: !1161, file: !15, line: 622, type: !1181, scopeLine: 622, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1181 = !DISubroutineType(types: !1182) 
!1182 = !{null, !1183, !49} 
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1184 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1161, file: !15, line: 623, type: !1181, scopeLine: 623, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1185 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodEv", scope: !1161, file: !15, line: 624, type: !1175, scopeLine: 624, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1186 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofEv", scope: !1161, file: !15, line: 625, type: !1175, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1187 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv", scope: !1161, file: !15, line: 626, type: !1175, scopeLine: 626, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1188 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badEv", scope: !1161, file: !15, line: 627, type: !1175, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1189 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEv", scope: !1161, file: !15, line: 629, type: !1178, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1190 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEj", scope: !1161, file: !15, line: 630, type: !1181, scopeLine: 630, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1191 = !DISubprogram(name: "basic_ios", scope: !1161, file: !15, line: 634, type: !1192, scopeLine: 634, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1192 = !DISubroutineType(types: !1193) 
!1193 = !{null, !1183, !1194} 
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64) 
!1195 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !17, file: !1162, line: 488, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1196, vtableHolder: !1195, templateParams: !563) 
!1196 = !{!1197, !1198, !1199, !1202, !1203, !1204, !1205, !1206, !1207, !1211, !1214, !1219, !1222, !1233, !1236, !1239, !1242, !1246, !1247, !1248, !1251, !1254, !1255, !1256, !1261, !1262, !1266, !1270, !1273, !1276, !1277, !1278, !1281, !1284, !1285, !1286, !1287, !1288, !1291, !1294, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1308, !1309} 
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1162, file: !1162, baseType: !21, size: 64, flags: DIFlagArtificial) 
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1195, file: !1162, line: 295, baseType: !124, size: 64, offset: 64) 
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1195, file: !1162, line: 296, baseType: !1200, size: 64, offset: 128) 
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64) 
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1195, file: !1162, line: 128, baseType: !154) 
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1195, file: !1162, line: 297, baseType: !1200, size: 64, offset: 192) 
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1195, file: !1162, line: 298, baseType: !1200, size: 64, offset: 256) 
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1195, file: !1162, line: 299, baseType: !1200, size: 64, offset: 320) 
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1195, file: !1162, line: 300, baseType: !1200, size: 64, offset: 384) 
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1195, file: !1162, line: 301, baseType: !1200, size: 64, offset: 448) 
!1207 = !DISubprogram(name: "~basic_streambuf", scope: !1195, file: !1162, line: 137, type: !1208, scopeLine: 137, containingType: !1195, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1208 = !DISubroutineType(types: !1209) 
!1209 = !{null, !1210} 
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1211 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueERKNS_6localeE", scope: !1195, file: !1162, line: 141, type: !1212, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1212 = !DISubroutineType(types: !1213) 
!1213 = !{!124, !1210, !147} 
!1214 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv", scope: !1195, file: !1162, line: 149, type: !1215, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1215 = !DISubroutineType(types: !1216) 
!1216 = !{!124, !1217} 
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195) 
!1219 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufEPcl", scope: !1195, file: !1162, line: 153, type: !1220, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1220 = !DISubroutineType(types: !1221) 
!1221 = !{!1194, !1210, !1200, !63} 
!1222 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffExNS_8ios_base7seekdirEj", scope: !1195, file: !1162, line: 157, type: !1223, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1223 = !DISubroutineType(types: !1224) 
!1224 = !{!1225, !1210, !1229, !1146, !55} 
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1195, file: !1162, line: 131, baseType: !1226) 
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !565, file: !566, line: 329, baseType: !1227) 
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !17, file: !161, line: 228, baseType: !1228) 
!1228 = !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !17, file: !161, line: 227, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE") 
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1195, file: !1162, line: 132, baseType: !1230) 
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !565, file: !566, line: 328, baseType: !1231) 
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !17, file: !161, line: 242, baseType: !1232) 
!1232 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed) 
!1233 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposENS_4fposI11__mbstate_tEEj", scope: !1195, file: !1162, line: 162, type: !1234, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1234 = !DISubroutineType(types: !1235) 
!1235 = !{!1225, !1210, !1225, !55} 
!1236 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncEv", scope: !1195, file: !1162, line: 167, type: !1237, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1237 = !DISubroutineType(types: !1238) 
!1238 = !{!25, !1210} 
!1239 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availEv", scope: !1195, file: !1162, line: 172, type: !1240, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1240 = !DISubroutineType(types: !1241) 
!1241 = !{!63, !1210} 
!1242 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcEv", scope: !1195, file: !1162, line: 179, type: !1243, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1243 = !DISubroutineType(types: !1244) 
!1244 = !{!1245, !1210} 
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1195, file: !1162, line: 130, baseType: !600) 
!1246 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv", scope: !1195, file: !1162, line: 186, type: !1243, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1247 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv", scope: !1195, file: !1162, line: 193, type: !1243, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1248 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnEPcl", scope: !1195, file: !1162, line: 200, type: !1249, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1249 = !DISubroutineType(types: !1250) 
!1250 = !{!63, !1210, !1200, !63} 
!1251 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcEc", scope: !1195, file: !1162, line: 205, type: !1252, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1252 = !DISubroutineType(types: !1253) 
!1253 = !{!1245, !1210, !1201} 
!1254 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcEv", scope: !1195, file: !1162, line: 212, type: !1243, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1255 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc", scope: !1195, file: !1162, line: 220, type: !1252, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1256 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1195, file: !1162, line: 228, type: !1257, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1257 = !DISubroutineType(types: !1258) 
!1258 = !{!63, !1210, !1259, !63} 
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64) 
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201) 
!1261 = !DISubprogram(name: "basic_streambuf", scope: !1195, file: !1162, line: 232, type: !1208, scopeLine: 232, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1262 = !DISubprogram(name: "basic_streambuf", scope: !1195, file: !1162, line: 233, type: !1263, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1263 = !DISubroutineType(types: !1264) 
!1264 = !{null, !1210, !1265} 
!1265 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1218, size: 64) 
!1266 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1195, file: !1162, line: 234, type: !1267, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1267 = !DISubroutineType(types: !1268) 
!1268 = !{!1269, !1210, !1265} 
!1269 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1195, size: 64) 
!1270 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1195, file: !1162, line: 235, type: !1271, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0) 
!1271 = !DISubroutineType(types: !1272) 
!1272 = !{null, !1210, !1269} 
!1273 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv", scope: !1195, file: !1162, line: 238, type: !1274, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1274 = !DISubroutineType(types: !1275) 
!1275 = !{!1200, !1217} 
!1276 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv", scope: !1195, file: !1162, line: 239, type: !1274, scopeLine: 239, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1277 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv", scope: !1195, file: !1162, line: 240, type: !1274, scopeLine: 240, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1278 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi", scope: !1195, file: !1162, line: 243, type: !1279, scopeLine: 243, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1279 = !DISubroutineType(types: !1280) 
!1280 = !{null, !1210, !25} 
!1281 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_", scope: !1195, file: !1162, line: 246, type: !1282, scopeLine: 246, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1282 = !DISubroutineType(types: !1283) 
!1283 = !{null, !1210, !1200, !1200, !1200} 
!1284 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv", scope: !1195, file: !1162, line: 253, type: !1274, scopeLine: 253, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1285 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv", scope: !1195, file: !1162, line: 254, type: !1274, scopeLine: 254, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1286 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv", scope: !1195, file: !1162, line: 255, type: !1274, scopeLine: 255, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1287 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi", scope: !1195, file: !1162, line: 258, type: !1279, scopeLine: 258, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1288 = !DISubprogram(name: "__pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl", scope: !1195, file: !1162, line: 261, type: !1289, scopeLine: 261, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1289 = !DISubroutineType(types: !1290) 
!1290 = !{null, !1210, !63} 
!1291 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_", scope: !1195, file: !1162, line: 264, type: !1292, scopeLine: 264, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1292 = !DISubroutineType(types: !1293) 
!1293 = !{null, !1210, !1200, !1200} 
!1294 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1195, file: !1162, line: 271, type: !1295, scopeLine: 271, containingType: !1195, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1295 = !DISubroutineType(types: !1296) 
!1296 = !{null, !1210, !147} 
!1297 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1195, file: !1162, line: 274, type: !1220, scopeLine: 274, containingType: !1195, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1298 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1195, file: !1162, line: 275, type: !1223, scopeLine: 275, containingType: !1195, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1299 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1195, file: !1162, line: 277, type: !1234, scopeLine: 277, containingType: !1195, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1300 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1195, file: !1162, line: 279, type: !1237, scopeLine: 279, containingType: !1195, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1301 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1195, file: !1162, line: 282, type: !1240, scopeLine: 282, containingType: !1195, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1302 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1195, file: !1162, line: 283, type: !1249, scopeLine: 283, containingType: !1195, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1303 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1195, file: !1162, line: 284, type: !1243, scopeLine: 284, containingType: !1195, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1304 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1195, file: !1162, line: 285, type: !1243, scopeLine: 285, containingType: !1195, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1305 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1195, file: !1162, line: 288, type: !1306, scopeLine: 288, containingType: !1195, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1306 = !DISubroutineType(types: !1307) 
!1307 = !{!1245, !1210, !1245} 
!1308 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1195, file: !1162, line: 291, type: !1257, scopeLine: 291, containingType: !1195, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1309 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1195, file: !1162, line: 292, type: !1306, scopeLine: 292, containingType: !1195, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1310 = !DISubprogram(name: "~basic_ios", scope: !1161, file: !15, line: 635, type: !1311, scopeLine: 635, containingType: !1161, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1311 = !DISubroutineType(types: !1312) 
!1312 = !{null, !1183} 
!1313 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEv", scope: !1161, file: !15, line: 639, type: !1314, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1314 = !DISubroutineType(types: !1315) 
!1315 = !{!1166, !1172} 
!1316 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEPNS_13basic_ostreamIcS2_EE", scope: !1161, file: !15, line: 641, type: !1317, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1317 = !DISubroutineType(types: !1318) 
!1318 = !{!1166, !1183, !1166} 
!1319 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1161, file: !15, line: 644, type: !1320, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1320 = !DISubroutineType(types: !1321) 
!1321 = !{!1194, !1172} 
!1322 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEPNS_15basic_streambufIcS2_EE", scope: !1161, file: !15, line: 646, type: !1323, scopeLine: 646, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1323 = !DISubroutineType(types: !1324) 
!1324 = !{!1194, !1183, !1194} 
!1325 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1161, file: !15, line: 648, type: !1326, scopeLine: 648, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1326 = !DISubroutineType(types: !1327) 
!1327 = !{!1328, !1183, !1329} 
!1328 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1161, size: 64) 
!1329 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1173, size: 64) 
!1330 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1161, file: !15, line: 651, type: !1331, scopeLine: 651, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1331 = !DISubroutineType(types: !1332) 
!1332 = !{!1333, !1172} 
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1161, file: !15, line: 600, baseType: !154) 
!1334 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEc", scope: !1161, file: !15, line: 653, type: !1335, scopeLine: 653, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1335 = !DISubroutineType(types: !1336) 
!1336 = !{!1333, !1183, !1333} 
!1337 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1161, file: !15, line: 656, type: !1338, scopeLine: 656, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1338 = !DISubroutineType(types: !1339) 
!1339 = !{!124, !1183, !147} 
!1340 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowEcc", scope: !1161, file: !15, line: 659, type: !1341, scopeLine: 659, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1341 = !DISubroutineType(types: !1342) 
!1342 = !{!154, !1172, !1333, !154} 
!1343 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1161, file: !15, line: 661, type: !1344, scopeLine: 661, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1344 = !DISubroutineType(types: !1345) 
!1345 = !{!1333, !1172, !154} 
!1346 = !DISubprogram(name: "basic_ios", scope: !1161, file: !15, line: 665, type: !1311, scopeLine: 665, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1347 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE", scope: !1161, file: !15, line: 668, type: !1192, scopeLine: 668, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1348 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveERS3_", scope: !1161, file: !15, line: 671, type: !1349, scopeLine: 671, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1349 = !DISubroutineType(types: !1350) 
!1350 = !{null, !1183, !1328} 
!1351 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveEOS3_", scope: !1161, file: !15, line: 673, type: !1352, scopeLine: 673, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1352 = !DISubroutineType(types: !1353) 
!1353 = !{null, !1183, !1354} 
!1354 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1161, size: 64) 
!1355 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapERS3_", scope: !1161, file: !15, line: 675, type: !1349, scopeLine: 675, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1356 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufEPNS_15basic_streambufIcS2_EE", scope: !1161, file: !15, line: 677, type: !1192, scopeLine: 677, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1153, file: !1153, baseType: !21, size: 64, flags: DIFlagArtificial) 
!1358 = !DISubprogram(name: "basic_ostream", scope: !1158, file: !1153, line: 164, type: !1359, scopeLine: 164, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1359 = !DISubroutineType(types: !1360) 
!1360 = !{null, !1361, !1194} 
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1362 = !DISubprogram(name: "~basic_ostream", scope: !1158, file: !1153, line: 166, type: !1363, scopeLine: 166, containingType: !1158, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!1363 = !DISubroutineType(types: !1364) 
!1364 = !{null, !1361} 
!1365 = !DISubprogram(name: "basic_ostream", scope: !1158, file: !1153, line: 169, type: !1366, scopeLine: 169, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1366 = !DISubroutineType(types: !1367) 
!1367 = !{null, !1361, !1368} 
!1368 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1158, size: 64) 
!1369 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1158, file: !1153, line: 173, type: !1370, scopeLine: 173, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1370 = !DISubroutineType(types: !1371) 
!1371 = !{!1157, !1361, !1368} 
!1372 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapERS3_", scope: !1158, file: !1153, line: 176, type: !1373, scopeLine: 176, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1373 = !DISubroutineType(types: !1374) 
!1374 = !{null, !1361, !1157} 
!1375 = !DISubprogram(name: "basic_ostream", scope: !1158, file: !1153, line: 179, type: !1376, scopeLine: 179, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagDeleted) 
!1376 = !DISubroutineType(types: !1377) 
!1377 = !{null, !1361, !1378} 
!1378 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1379, size: 64) 
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158) 
!1380 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1158, file: !1153, line: 180, type: !1381, scopeLine: 180, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagDeleted) 
!1381 = !DISubroutineType(types: !1382) 
!1382 = !{!1157, !1361, !1378} 
!1383 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E", scope: !1158, file: !1153, line: 188, type: !1384, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1384 = !DISubroutineType(types: !1385) 
!1385 = !{!1157, !1361, !1386} 
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64) 
!1387 = !DISubroutineType(types: !1388) 
!1388 = !{!1157, !1157} 
!1389 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_9basic_iosIcS2_EES6_E", scope: !1158, file: !1153, line: 192, type: !1390, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1390 = !DISubroutineType(types: !1391) 
!1391 = !{!1157, !1361, !1392} 
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64) 
!1393 = !DISubroutineType(types: !1394) 
!1394 = !{!1328, !1328} 
!1395 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E", scope: !1158, file: !1153, line: 197, type: !1396, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1396 = !DISubroutineType(types: !1397) 
!1397 = !{!1157, !1361, !1398} 
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64) 
!1399 = !DISubroutineType(types: !1400) 
!1400 = !{!79, !79} 
!1401 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1158, file: !1153, line: 200, type: !1402, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1402 = !DISubroutineType(types: !1403) 
!1403 = !{!1157, !1361, !176} 
!1404 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1158, file: !1153, line: 201, type: !1405, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1405 = !DISubroutineType(types: !1406) 
!1406 = !{!1157, !1361, !1407} 
!1407 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed) 
!1408 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1158, file: !1153, line: 202, type: !1409, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1409 = !DISubroutineType(types: !1410) 
!1410 = !{!1157, !1361, !1411} 
!1411 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned) 
!1412 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1158, file: !1153, line: 203, type: !1413, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1413 = !DISubroutineType(types: !1414) 
!1414 = !{!1157, !1361, !25} 
!1415 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1158, file: !1153, line: 204, type: !1416, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1416 = !DISubroutineType(types: !1417) 
!1417 = !{!1157, !1361, !29} 
!1418 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1158, file: !1153, line: 205, type: !1419, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1419 = !DISubroutineType(types: !1420) 
!1420 = !{!1157, !1361, !66} 
!1421 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1158, file: !1153, line: 206, type: !1422, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1422 = !DISubroutineType(types: !1423) 
!1423 = !{!1157, !1361, !84} 
!1424 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1158, file: !1153, line: 207, type: !1425, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1425 = !DISubroutineType(types: !1426) 
!1426 = !{!1157, !1361, !1232} 
!1427 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1158, file: !1153, line: 208, type: !1428, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1428 = !DISubroutineType(types: !1429) 
!1429 = !{!1157, !1361, !1430} 
!1430 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned) 
!1431 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1158, file: !1153, line: 209, type: !1432, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1432 = !DISubroutineType(types: !1433) 
!1433 = !{!1157, !1361, !1434} 
!1434 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float) 
!1435 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1158, file: !1153, line: 210, type: !1436, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1436 = !DISubroutineType(types: !1437) 
!1437 = !{!1157, !1361, !1438} 
!1438 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float) 
!1439 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1158, file: !1153, line: 211, type: !1440, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1440 = !DISubroutineType(types: !1441) 
!1441 = !{!1157, !1361, !1442} 
!1442 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float) 
!1443 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1158, file: !1153, line: 212, type: !1444, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1444 = !DISubroutineType(types: !1445) 
!1445 = !{!1157, !1361, !235} 
!1446 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1158, file: !1153, line: 213, type: !1447, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1447 = !DISubroutineType(types: !1448) 
!1448 = !{!1157, !1361, !1194} 
!1449 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsENS_9nullptr_tE", scope: !1158, file: !1153, line: 216, type: !1450, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1450 = !DISubroutineType(types: !1451) 
!1451 = !{!1157, !1361, !1452} 
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nullptr_t", scope: !17, file: !1453, line: 23, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1454, identifier: "_ZTSNSt3__19nullptr_tE") 
!1453 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__nullptr", directory: "") 
!1454 = !{!1455, !1456, !1460, !1467} 
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !1452, file: !1453, line: 25, baseType: !71, size: 64) 
!1456 = !DISubprogram(name: "nullptr_t", scope: !1452, file: !1453, line: 29, type: !1457, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1457 = !DISubroutineType(types: !1458) 
!1458 = !{null, !1459} 
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1460 = !DISubprogram(name: "nullptr_t", scope: !1452, file: !1453, line: 30, type: !1461, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1461 = !DISubroutineType(types: !1462) 
!1462 = !{null, !1459, !1463} 
!1463 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !25, size: 64, extraData: !1464) 
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !1452, file: !1453, line: 27, size: 32, flags: DIFlagTypePassByValue, elements: !1465, identifier: "_ZTSNSt3__19nullptr_t5__natE") 
!1465 = !{!1466} 
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__for_bool_", scope: !1464, file: !1453, line: 27, baseType: !25, size: 32) 
!1467 = !DISubprogram(name: "operator int std::nullptr_t::__nat::*", linkageName: "_ZNKSt3__19nullptr_tcvMNS0_5__natEiEv", scope: !1452, file: !1453, line: 32, type: !1468, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1468 = !DISubroutineType(types: !1469) 
!1469 = !{!1463, !1470} 
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452) 
!1472 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1158, file: !1153, line: 220, type: !1473, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1473 = !DISubroutineType(types: !1474) 
!1474 = !{!1157, !1361, !1475} 
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1158, file: !1153, line: 156, baseType: !154) 
!1476 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1158, file: !1153, line: 221, type: !1477, scopeLine: 221, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1477 = !DISubroutineType(types: !1478) 
!1478 = !{!1157, !1361, !1479, !63} 
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64) 
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475) 
!1481 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1158, file: !1153, line: 222, type: !1482, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!1482 = !DISubroutineType(types: !1483) 
!1483 = !{!1157, !1361} 
!1484 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1158, file: !1153, line: 226, type: !1485, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1485 = !DISubroutineType(types: !1486) 
!1486 = !{!1487, !1361} 
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1158, file: !1153, line: 159, baseType: !1226) 
!1488 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1158, file: !1153, line: 228, type: !1489, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1489 = !DISubroutineType(types: !1490) 
!1490 = !{!1157, !1361, !1487} 
!1491 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1158, file: !1153, line: 230, type: !1492, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1492 = !DISubroutineType(types: !1493) 
!1493 = !{!1157, !1361, !1494, !1146} 
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1158, file: !1153, line: 160, baseType: !1230) 
!1495 = !DISubprogram(name: "basic_ostream", scope: !1158, file: !1153, line: 234, type: !1363, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1496 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !17, file: !1497, line: 29, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1498, templateParams: !563, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE") 
!1497 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/ostreambuf_iterator.h", directory: "") 
!1498 = !{!1499, !1510, !1513, !1519, !1522, !1526, !1529, !1530, !1533} 
!1499 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1496, baseType: !1500, flags: DIFlagPublic, extraData: i32 0) 
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !17, file: !1501, line: 27, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !1502, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE") 
!1501 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/iterator.h", directory: "") 
!1502 = !{!1503, !1506, !1507, !1508, !1509} 
!1503 = !DITemplateTypeParameter(name: "_Category", type: !1504) 
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !17, file: !1505, line: 53, size: 8, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTSNSt3__119output_iterator_tagE") 
!1505 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__iterator/iterator_traits.h", directory: "") 
!1506 = !DITemplateTypeParameter(name: "_Tp", type: null) 
!1507 = !DITemplateTypeParameter(name: "_Distance", type: null) 
!1508 = !DITemplateTypeParameter(name: "_Pointer", type: null) 
!1509 = !DITemplateTypeParameter(name: "_Reference", type: null) 
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !1496, file: !1497, line: 51, baseType: !1511, size: 64) 
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64) 
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !1496, file: !1497, line: 47, baseType: !1195) 
!1513 = !DISubprogram(name: "ostreambuf_iterator", scope: !1496, file: !1497, line: 53, type: !1514, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1514 = !DISubroutineType(types: !1515) 
!1515 = !{null, !1516, !1517} 
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1517 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1518, size: 64) 
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !1496, file: !1497, line: 48, baseType: !1158) 
!1519 = !DISubprogram(name: "ostreambuf_iterator", scope: !1496, file: !1497, line: 55, type: !1520, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1520 = !DISubroutineType(types: !1521) 
!1521 = !{null, !1516, !1511} 
!1522 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSEc", scope: !1496, file: !1497, line: 57, type: !1523, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1523 = !DISubroutineType(types: !1524) 
!1524 = !{!1525, !1516, !154} 
!1525 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1496, size: 64) 
!1526 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeEv", scope: !1496, file: !1497, line: 63, type: !1527, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1527 = !DISubroutineType(types: !1528) 
!1528 = !{!1525, !1516} 
!1529 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEv", scope: !1496, file: !1497, line: 64, type: !1527, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1530 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEi", scope: !1496, file: !1497, line: 65, type: !1531, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1531 = !DISubroutineType(types: !1532) 
!1532 = !{!1525, !1516, !25} 
!1533 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1496, file: !1497, line: 66, type: !1534, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1534 = !DISubroutineType(types: !1535) 
!1535 = !{!176, !1536} 
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496) 
!1538 = !{!1539, !1541, !1555, !1557, !1558, !1560, !1567, !1573, !1579, !1583, !1587, !1591, !1595, !1600, !1604, !1608, !1612, !1616, !1620, !1624, !1626, !1630, !1635, !1639, !1643, !1647, !1651, !1656, !1660, !1662, !1666, !1668, !1675, !1679, !1684, !1688, !1692, !1696, !1700, !1702, !1706, !1712, !1716, !1720, !1726, !1731, !1734, !1735, !1738, !1741, !1744, !1747, !1750, !1753, !1755, !1757, !1759, !1761, !1763, !1765, !1767, !1769, !1771, !1773, !1775, !1777, !1779, !1781, !1783, !1787, !1790, !1793, !1796, !1798, !1803, !1805, !1809, !1813, !1815, !1817, !1821, !1825, !1829, !1831, !1835, !1840, !1844, !1848, !1850, !1852, !1854, !1856, !1858, !1860, !1864, !1868, !1873, !1874, !1878, !1893, !1897, !1901, !1906, !1911, !1917, !1923, !1927, !1929, !1933, !1986, !1987, !1988, !1994, !1996, !2000, !2004, !2008, !2010, !2014, !2018, !2022, !2030, !2032, !2036, !2040, !2044, !2046, !2050, !2054, !2058, !2060, !2062, !2064, !2068, !2072, !2077, !2081, !2087, !2091, !2095, !2097, !2099, !2101, !2105, !2109, !2113, !2115, !2117, !2121, !2125, !2127, !2129, !2133, !2137, !2139, !2143, !2145, !2147, !2151, !2153, !2155, !2157, !2159, !2161, !2163, !2165, !2167, !2169, !2171, !2173, !2175, !2177, !2182, !2187, !2192, !2197, !2199, !2202, !2204, !2206, !2208, !2210, !2212, !2214, !2216, !2218, !2220, !2224, !2228, !2232, !2234, !2238, !2242, !2244, !2245, !2246, !2247, !2248, !2253, !2255, !2259, !2263, !2267, !2271, !2273, !2277, !2281, !2285, !2289, !2293, !2297, !2299, !2301, !2305, !2310, !2314, !2318, !2322, !2326, !2330, !2334, !2338, !2342, !2344, !2346, !2350, !2352, !2356, !2360, !2365, !2367, !2369, !2371, !2375, !2379, !2383, !2385, !2389, !2391, !2393, !2395, !2397, !2401, !2405, !2407, !2413, !2418, !2422, !2426, !2431, !2436, !2440, !2444, !2448, !2452, !2454, !2456} 
!1539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1452, file: !1540, line: 51) 
!1540 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/stddef.h", directory: "") 
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1542, file: !1554, line: 42) 
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1543, line: 32, baseType: !1544) 
!1543 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mbstate_t.h", directory: "") 
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !1545, line: 59, baseType: !1546) 
!1545 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/arm/_types.h", directory: "") 
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1545, line: 57, baseType: !1547) 
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1545, line: 54, size: 1024, flags: DIFlagTypePassByValue, elements: !1548, identifier: "_ZTS11__mbstate_t") 
!1548 = !{!1549, !1553} 
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !1547, file: !1545, line: 55, baseType: !1550, size: 1024) 
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1024, elements: !1551) 
!1551 = !{!1552} 
!1552 = !DISubrange(count: 128) 
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !1547, file: !1545, line: 56, baseType: !1232, size: 64) 
!1554 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__mbstate_t.h", directory: "") 
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !64, file: !1556, line: 49) 
!1556 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstddef", directory: "") 
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1556, line: 50) 
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1559, line: 99) 
!1559 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdlib", directory: "") 
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1561, file: !1559, line: 100) 
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1562, line: 86, baseType: !1563) 
!1562 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h", directory: "") 
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 83, size: 64, flags: DIFlagTypePassByValue, elements: !1564, identifier: "_ZTS5div_t") 
!1564 = !{!1565, !1566} 
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1563, file: !1562, line: 84, baseType: !25, size: 32) 
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1563, file: !1562, line: 85, baseType: !25, size: 32, offset: 32) 
!1567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1568, file: !1559, line: 101) 
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1562, line: 91, baseType: !1569) 
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 88, size: 128, flags: DIFlagTypePassByValue, elements: !1570, identifier: "_ZTS6ldiv_t") 
!1570 = !{!1571, !1572} 
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1569, file: !1562, line: 89, baseType: !66, size: 64) 
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1569, file: !1562, line: 90, baseType: !66, size: 64, offset: 64) 
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1574, file: !1559, line: 103) 
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1562, line: 97, baseType: !1575) 
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 94, size: 128, flags: DIFlagTypePassByValue, elements: !1576, identifier: "_ZTS7lldiv_t") 
!1576 = !{!1577, !1578} 
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1575, file: !1562, line: 95, baseType: !1232, size: 64) 
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1575, file: !1562, line: 96, baseType: !1232, size: 64, offset: 64) 
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1580, file: !1559, line: 105) 
!1580 = !DISubprogram(name: "atof", scope: !1562, file: !1562, line: 134, type: !1581, flags: DIFlagPrototyped, spFlags: 0) 
!1581 = !DISubroutineType(types: !1582) 
!1582 = !{!1438, !152} 
!1583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1584, file: !1559, line: 106) 
!1584 = !DISubprogram(name: "atoi", scope: !1562, file: !1562, line: 135, type: !1585, flags: DIFlagPrototyped, spFlags: 0) 
!1585 = !DISubroutineType(types: !1586) 
!1586 = !{!25, !152} 
!1587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1588, file: !1559, line: 107) 
!1588 = !DISubprogram(name: "atol", scope: !1562, file: !1562, line: 136, type: !1589, flags: DIFlagPrototyped, spFlags: 0) 
!1589 = !DISubroutineType(types: !1590) 
!1590 = !{!66, !152} 
!1591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1592, file: !1559, line: 109) 
!1592 = !DISubprogram(name: "atoll", scope: !1562, file: !1562, line: 139, type: !1593, flags: DIFlagPrototyped, spFlags: 0) 
!1593 = !DISubroutineType(types: !1594) 
!1594 = !{!1232, !152} 
!1595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1596, file: !1559, line: 111) 
!1596 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !1562, file: !1562, line: 165, type: !1597, flags: DIFlagPrototyped, spFlags: 0) 
!1597 = !DISubroutineType(types: !1598) 
!1598 = !{!1438, !152, !1599} 
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64) 
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1601, file: !1559, line: 112) 
!1601 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !1562, file: !1562, line: 166, type: !1602, flags: DIFlagPrototyped, spFlags: 0) 
!1602 = !DISubroutineType(types: !1603) 
!1603 = !{!1434, !152, !1599} 
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1605, file: !1559, line: 113) 
!1605 = !DISubprogram(name: "strtold", scope: !1562, file: !1562, line: 169, type: !1606, flags: DIFlagPrototyped, spFlags: 0) 
!1606 = !DISubroutineType(types: !1607) 
!1607 = !{!1442, !152, !1599} 
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1609, file: !1559, line: 114) 
!1609 = !DISubprogram(name: "strtol", scope: !1562, file: !1562, line: 167, type: !1610, flags: DIFlagPrototyped, spFlags: 0) 
!1610 = !DISubroutineType(types: !1611) 
!1611 = !{!66, !152, !1599, !25} 
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1613, file: !1559, line: 116) 
!1613 = !DISubprogram(name: "strtoll", scope: !1562, file: !1562, line: 172, type: !1614, flags: DIFlagPrototyped, spFlags: 0) 
!1614 = !DISubroutineType(types: !1615) 
!1615 = !{!1232, !152, !1599, !25} 
!1616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1617, file: !1559, line: 118) 
!1617 = !DISubprogram(name: "strtoul", scope: !1562, file: !1562, line: 175, type: !1618, flags: DIFlagPrototyped, spFlags: 0) 
!1618 = !DISubroutineType(types: !1619) 
!1619 = !{!84, !152, !1599, !25} 
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1621, file: !1559, line: 120) 
!1621 = !DISubprogram(name: "strtoull", scope: !1562, file: !1562, line: 178, type: !1622, flags: DIFlagPrototyped, spFlags: 0) 
!1622 = !DISubroutineType(types: !1623) 
!1623 = !{!1430, !152, !1599, !25} 
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1625, file: !1559, line: 122) 
!1625 = !DISubprogram(name: "rand", scope: !1562, file: !1562, line: 162, type: !23, flags: DIFlagPrototyped, spFlags: 0) 
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1627, file: !1559, line: 123) 
!1627 = !DISubprogram(name: "srand", scope: !1562, file: !1562, line: 164, type: !1628, flags: DIFlagPrototyped, spFlags: 0) 
!1628 = !DISubroutineType(types: !1629) 
!1629 = !{null, !29} 
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1631, file: !1559, line: 124) 
!1631 = !DISubprogram(name: "calloc", scope: !1632, file: !1632, line: 41, type: !1633, flags: DIFlagPrototyped, spFlags: 0) 
!1632 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h", directory: "") 
!1633 = !DISubroutineType(types: !1634) 
!1634 = !{!71, !83, !83} 
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1636, file: !1559, line: 125) 
!1636 = !DISubprogram(name: "free", scope: !1632, file: !1632, line: 42, type: !1637, flags: DIFlagPrototyped, spFlags: 0) 
!1637 = !DISubroutineType(types: !1638) 
!1638 = !{null, !71} 
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1640, file: !1559, line: 126) 
!1640 = !DISubprogram(name: "malloc", scope: !1632, file: !1632, line: 40, type: !1641, flags: DIFlagPrototyped, spFlags: 0) 
!1641 = !DISubroutineType(types: !1642) 
!1642 = !{!71, !83} 
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1644, file: !1559, line: 127) 
!1644 = !DISubprogram(name: "realloc", scope: !1632, file: !1632, line: 43, type: !1645, flags: DIFlagPrototyped, spFlags: 0) 
!1645 = !DISubroutineType(types: !1646) 
!1646 = !{!71, !71, !83} 
!1647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1648, file: !1559, line: 128) 
!1648 = !DISubprogram(name: "abort", scope: !1562, file: !1562, line: 131, type: !1649, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!1649 = !DISubroutineType(types: !1650) 
!1650 = !{null} 
!1651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1652, file: !1559, line: 129) 
!1652 = !DISubprogram(name: "atexit", scope: !1562, file: !1562, line: 133, type: !1653, flags: DIFlagPrototyped, spFlags: 0) 
!1653 = !DISubroutineType(types: !1654) 
!1654 = !{!25, !1655} 
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64) 
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1657, file: !1559, line: 130) 
!1657 = !DISubprogram(name: "exit", scope: !1562, file: !1562, line: 145, type: !1658, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!1658 = !DISubroutineType(types: !1659) 
!1659 = !{null, !25} 
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1661, file: !1559, line: 131) 
!1661 = !DISubprogram(name: "_Exit", scope: !1562, file: !1562, line: 191, type: !1658, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0) 
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1663, file: !1559, line: 133) 
!1663 = !DISubprogram(name: "getenv", scope: !1562, file: !1562, line: 147, type: !1664, flags: DIFlagPrototyped, spFlags: 0) 
!1664 = !DISubroutineType(types: !1665) 
!1665 = !{!214, !152} 
!1666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1667, file: !1559, line: 134) 
!1667 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !1562, file: !1562, line: 184, type: !1585, flags: DIFlagPrototyped, spFlags: 0) 
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1669, file: !1559, line: 136) 
!1669 = !DISubprogram(name: "bsearch", scope: !1562, file: !1562, line: 141, type: !1670, flags: DIFlagPrototyped, spFlags: 0) 
!1670 = !DISubroutineType(types: !1671) 
!1671 = !{!71, !235, !235, !83, !83, !1672} 
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64) 
!1673 = !DISubroutineType(types: !1674) 
!1674 = !{!25, !235, !235} 
!1675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1676, file: !1559, line: 137) 
!1676 = !DISubprogram(name: "qsort", scope: !1562, file: !1562, line: 160, type: !1677, flags: DIFlagPrototyped, spFlags: 0) 
!1677 = !DISubroutineType(types: !1678) 
!1678 = !{null, !71, !83, !83, !1672} 
!1679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1680, file: !1559, line: 138) 
!1680 = !DISubprogram(name: "abs", linkageName: "_ZL3abse", scope: !1681, file: !1681, line: 127, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1681 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/stdlib.h", directory: "") 
!1682 = !DISubroutineType(types: !1683) 
!1683 = !{!1442, !1442} 
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1685, file: !1559, line: 139) 
!1685 = !DISubprogram(name: "labs", scope: !1562, file: !1562, line: 148, type: !1686, flags: DIFlagPrototyped, spFlags: 0) 
!1686 = !DISubroutineType(types: !1687) 
!1687 = !{!66, !66} 
!1688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1689, file: !1559, line: 141) 
!1689 = !DISubprogram(name: "llabs", scope: !1562, file: !1562, line: 152, type: !1690, flags: DIFlagPrototyped, spFlags: 0) 
!1690 = !DISubroutineType(types: !1691) 
!1691 = !{!1232, !1232} 
!1692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1693, file: !1559, line: 143) 
!1693 = !DISubprogram(name: "div", linkageName: "_ZL3divxx", scope: !1681, file: !1681, line: 146, type: !1694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1694 = !DISubroutineType(types: !1695) 
!1695 = !{!1574, !1232, !1232} 
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1697, file: !1559, line: 144) 
!1697 = !DISubprogram(name: "ldiv", scope: !1562, file: !1562, line: 149, type: !1698, flags: DIFlagPrototyped, spFlags: 0) 
!1698 = !DISubroutineType(types: !1699) 
!1699 = !{!1568, !66, !66} 
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1701, file: !1559, line: 146) 
!1701 = !DISubprogram(name: "lldiv", scope: !1562, file: !1562, line: 153, type: !1694, flags: DIFlagPrototyped, spFlags: 0) 
!1702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1703, file: !1559, line: 148) 
!1703 = !DISubprogram(name: "mblen", scope: !1562, file: !1562, line: 156, type: !1704, flags: DIFlagPrototyped, spFlags: 0) 
!1704 = !DISubroutineType(types: !1705) 
!1705 = !{!25, !152, !83} 
!1706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1707, file: !1559, line: 149) 
!1707 = !DISubprogram(name: "mbtowc", scope: !1562, file: !1562, line: 158, type: !1708, flags: DIFlagPrototyped, spFlags: 0) 
!1708 = !DISubroutineType(types: !1709) 
!1709 = !{!25, !1710, !152, !83} 
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64) 
!1711 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed) 
!1712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1713, file: !1559, line: 150) 
!1713 = !DISubprogram(name: "wctomb", scope: !1562, file: !1562, line: 188, type: !1714, flags: DIFlagPrototyped, spFlags: 0) 
!1714 = !DISubroutineType(types: !1715) 
!1715 = !{!25, !214, !1711} 
!1716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1717, file: !1559, line: 151) 
!1717 = !DISubprogram(name: "mbstowcs", scope: !1562, file: !1562, line: 157, type: !1718, flags: DIFlagPrototyped, spFlags: 0) 
!1718 = !DISubroutineType(types: !1719) 
!1719 = !{!83, !1710, !152, !83} 
!1720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1721, file: !1559, line: 152) 
!1721 = !DISubprogram(name: "wcstombs", scope: !1562, file: !1562, line: 187, type: !1722, flags: DIFlagPrototyped, spFlags: 0) 
!1722 = !DISubroutineType(types: !1723) 
!1723 = !{!83, !214, !1724, !83} 
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64) 
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711) 
!1726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1727, file: !1730, line: 152) 
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1728, line: 30, baseType: !1729) 
!1728 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h", directory: "") 
!1729 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char) 
!1730 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdint", directory: "") 
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1732, file: !1730, line: 153) 
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1733, line: 30, baseType: !1407) 
!1733 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h", directory: "") 
!1734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1057, file: !1730, line: 154) 
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1736, file: !1730, line: 155) 
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1737, line: 30, baseType: !1232) 
!1737 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h", directory: "") 
!1738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1739, file: !1730, line: 157) 
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1740, line: 31, baseType: !295) 
!1740 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "") 
!1741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1742, file: !1730, line: 158) 
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1743, line: 31, baseType: !1411) 
!1743 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "") 
!1744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1745, file: !1730, line: 159) 
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1746, line: 31, baseType: !29) 
!1746 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "") 
!1747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1748, file: !1730, line: 160) 
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1749, line: 31, baseType: !1430) 
!1749 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "") 
!1750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1751, file: !1730, line: 162) 
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1752, line: 29, baseType: !1727) 
!1752 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h", directory: "") 
!1753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1754, file: !1730, line: 163) 
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1752, line: 30, baseType: !1732) 
!1755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1756, file: !1730, line: 164) 
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1752, line: 31, baseType: !1057) 
!1757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1758, file: !1730, line: 165) 
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1752, line: 32, baseType: !1736) 
!1759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1760, file: !1730, line: 167) 
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1752, line: 33, baseType: !1739) 
!1761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1762, file: !1730, line: 168) 
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1752, line: 34, baseType: !1742) 
!1763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1764, file: !1730, line: 169) 
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1752, line: 35, baseType: !1745) 
!1765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1766, file: !1730, line: 170) 
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1752, line: 36, baseType: !1748) 
!1767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1768, file: !1730, line: 172) 
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1752, line: 40, baseType: !1727) 
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1770, file: !1730, line: 173) 
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1752, line: 41, baseType: !1732) 
!1771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1772, file: !1730, line: 174) 
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1752, line: 42, baseType: !1057) 
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1774, file: !1730, line: 175) 
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1752, line: 43, baseType: !1736) 
!1775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1776, file: !1730, line: 177) 
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1752, line: 44, baseType: !1739) 
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1778, file: !1730, line: 178) 
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1752, line: 45, baseType: !1742) 
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1780, file: !1730, line: 179) 
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1752, line: 46, baseType: !1745) 
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1782, file: !1730, line: 180) 
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1752, line: 47, baseType: !1748) 
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1784, file: !1730, line: 182) 
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1785, line: 32, baseType: !1786) 
!1785 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h", directory: "") 
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !1545, line: 27, baseType: !66) 
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1788, file: !1730, line: 183) 
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1789, line: 34, baseType: !84) 
!1789 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "") 
!1790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1791, file: !1730, line: 185) 
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1792, line: 32, baseType: !66) 
!1792 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h", directory: "") 
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1794, file: !1730, line: 186) 
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1795, line: 32, baseType: !84) 
!1795 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "") 
!1796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1797, line: 68) 
!1797 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstring", directory: "") 
!1798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1799, file: !1797, line: 69) 
!1799 = !DISubprogram(name: "memcpy", scope: !1800, file: !1800, line: 72, type: !1801, flags: DIFlagPrototyped, spFlags: 0) 
!1800 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h", directory: "") 
!1801 = !DISubroutineType(types: !1802) 
!1802 = !{!71, !71, !235, !83} 
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1804, file: !1797, line: 70) 
!1804 = !DISubprogram(name: "memmove", scope: !1800, file: !1800, line: 73, type: !1801, flags: DIFlagPrototyped, spFlags: 0) 
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1806, file: !1797, line: 71) 
!1806 = !DISubprogram(name: "strcpy", scope: !1800, file: !1800, line: 79, type: !1807, flags: DIFlagPrototyped, spFlags: 0) 
!1807 = !DISubroutineType(types: !1808) 
!1808 = !{!214, !214, !152} 
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1810, file: !1797, line: 72) 
!1810 = !DISubprogram(name: "strncpy", scope: !1800, file: !1800, line: 85, type: !1811, flags: DIFlagPrototyped, spFlags: 0) 
!1811 = !DISubroutineType(types: !1812) 
!1812 = !{!214, !214, !152, !83} 
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1814, file: !1797, line: 73) 
!1814 = !DISubprogram(name: "strcat", scope: !1800, file: !1800, line: 75, type: !1807, flags: DIFlagPrototyped, spFlags: 0) 
!1815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1816, file: !1797, line: 74) 
!1816 = !DISubprogram(name: "strncat", scope: !1800, file: !1800, line: 83, type: !1811, flags: DIFlagPrototyped, spFlags: 0) 
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1818, file: !1797, line: 75) 
!1818 = !DISubprogram(name: "memcmp", scope: !1800, file: !1800, line: 71, type: !1819, flags: DIFlagPrototyped, spFlags: 0) 
!1819 = !DISubroutineType(types: !1820) 
!1820 = !{!25, !235, !235, !83} 
!1821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1822, file: !1797, line: 76) 
!1822 = !DISubprogram(name: "strcmp", scope: !1800, file: !1800, line: 77, type: !1823, flags: DIFlagPrototyped, spFlags: 0) 
!1823 = !DISubroutineType(types: !1824) 
!1824 = !{!25, !152, !152} 
!1825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1826, file: !1797, line: 77) 
!1826 = !DISubprogram(name: "strncmp", scope: !1800, file: !1800, line: 84, type: !1827, flags: DIFlagPrototyped, spFlags: 0) 
!1827 = !DISubroutineType(types: !1828) 
!1828 = !{!25, !152, !152, !83} 
!1829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1830, file: !1797, line: 78) 
!1830 = !DISubprogram(name: "strcoll", scope: !1800, file: !1800, line: 78, type: !1823, flags: DIFlagPrototyped, spFlags: 0) 
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1832, file: !1797, line: 79) 
!1832 = !DISubprogram(name: "strxfrm", scope: !1800, file: !1800, line: 91, type: !1833, flags: DIFlagPrototyped, spFlags: 0) 
!1833 = !DISubroutineType(types: !1834) 
!1834 = !{!83, !214, !152, !83} 
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1836, file: !1797, line: 80) 
!1836 = !DISubprogram(name: "memchr", linkageName: "_ZL6memchrUa9enable_ifIXLb1EEEPvim", scope: !1837, file: !1837, line: 98, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1837 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/string.h", directory: "") 
!1838 = !DISubroutineType(types: !1839) 
!1839 = !{!71, !71, !25, !83} 
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1841, file: !1797, line: 81) 
!1841 = !DISubprogram(name: "strchr", linkageName: "_ZL6strchrUa9enable_ifIXLb1EEEPci", scope: !1837, file: !1837, line: 77, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1842 = !DISubroutineType(types: !1843) 
!1843 = !{!214, !214, !25} 
!1844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1845, file: !1797, line: 82) 
!1845 = !DISubprogram(name: "strcspn", scope: !1800, file: !1800, line: 80, type: !1846, flags: DIFlagPrototyped, spFlags: 0) 
!1846 = !DISubroutineType(types: !1847) 
!1847 = !{!83, !152, !152} 
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1849, file: !1797, line: 83) 
!1849 = !DISubprogram(name: "strpbrk", linkageName: "_ZL7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !1837, file: !1837, line: 84, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1851, file: !1797, line: 84) 
!1851 = !DISubprogram(name: "strrchr", linkageName: "_ZL7strrchrUa9enable_ifIXLb1EEEPci", scope: !1837, file: !1837, line: 91, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1853, file: !1797, line: 85) 
!1853 = !DISubprogram(name: "strspn", scope: !1800, file: !1800, line: 88, type: !1846, flags: DIFlagPrototyped, spFlags: 0) 
!1854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1855, file: !1797, line: 86) 
!1855 = !DISubprogram(name: "strstr", linkageName: "_ZL6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !1837, file: !1837, line: 105, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1857, file: !1797, line: 88) 
!1857 = !DISubprogram(name: "strtok", scope: !1800, file: !1800, line: 90, type: !1807, flags: DIFlagPrototyped, spFlags: 0) 
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1859, file: !1797, line: 90) 
!1859 = !DISubprogram(name: "memset", scope: !1800, file: !1800, line: 74, type: !1838, flags: DIFlagPrototyped, spFlags: 0) 
!1860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1861, file: !1797, line: 91) 
!1861 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !1800, file: !1800, line: 81, type: !1862, flags: DIFlagPrototyped, spFlags: 0) 
!1862 = !DISubroutineType(types: !1863) 
!1863 = !{!214, !25} 
!1864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1865, file: !1797, line: 92) 
!1865 = !DISubprogram(name: "strlen", scope: !1800, file: !1800, line: 82, type: !1866, flags: DIFlagPrototyped, spFlags: 0) 
!1866 = !DISubroutineType(types: !1867) 
!1867 = !{!83, !152} 
!1868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1869, file: !1872, line: 75) 
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1870, line: 31, baseType: !1871) 
!1870 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h", directory: "") 
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !1545, line: 95, baseType: !84) 
!1872 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/ctime", directory: "") 
!1873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1872, line: 77) 
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1875, file: !1872, line: 79) 
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1876, line: 31, baseType: !1877) 
!1876 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h", directory: "") 
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !1545, line: 98, baseType: !66) 
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1879, file: !1872, line: 80) 
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1880, line: 75, size: 448, flags: DIFlagTypePassByValue, elements: !1881, identifier: "_ZTS2tm") 
!1880 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h", directory: "") 
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892} 
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1879, file: !1880, line: 76, baseType: !25, size: 32) 
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1879, file: !1880, line: 77, baseType: !25, size: 32, offset: 32) 
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1879, file: !1880, line: 78, baseType: !25, size: 32, offset: 64) 
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1879, file: !1880, line: 79, baseType: !25, size: 32, offset: 96) 
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1879, file: !1880, line: 80, baseType: !25, size: 32, offset: 128) 
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1879, file: !1880, line: 81, baseType: !25, size: 32, offset: 160) 
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1879, file: !1880, line: 82, baseType: !25, size: 32, offset: 192) 
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1879, file: !1880, line: 83, baseType: !25, size: 32, offset: 224) 
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1879, file: !1880, line: 84, baseType: !25, size: 32, offset: 256) 
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1879, file: !1880, line: 85, baseType: !66, size: 64, offset: 320) 
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1879, file: !1880, line: 86, baseType: !214, size: 64, offset: 384) 
!1893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1894, file: !1872, line: 84) 
!1894 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !1880, file: !1880, line: 109, type: !1895, flags: DIFlagPrototyped, spFlags: 0) 
!1895 = !DISubroutineType(types: !1896) 
!1896 = !{!1869} 
!1897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1898, file: !1872, line: 85) 
!1898 = !DISubprogram(name: "difftime", scope: !1880, file: !1880, line: 111, type: !1899, flags: DIFlagPrototyped, spFlags: 0) 
!1899 = !DISubroutineType(types: !1900) 
!1900 = !{!1438, !1875, !1875} 
!1901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1902, file: !1872, line: 86) 
!1902 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !1880, file: !1880, line: 115, type: !1903, flags: DIFlagPrototyped, spFlags: 0) 
!1903 = !DISubroutineType(types: !1904) 
!1904 = !{!1875, !1905} 
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64) 
!1906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1907, file: !1872, line: 87) 
!1907 = !DISubprogram(name: "time", scope: !1880, file: !1880, line: 118, type: !1908, flags: DIFlagPrototyped, spFlags: 0) 
!1908 = !DISubroutineType(types: !1909) 
!1909 = !{!1875, !1910} 
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64) 
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1912, file: !1872, line: 89) 
!1912 = !DISubprogram(name: "asctime", scope: !1880, file: !1880, line: 108, type: !1913, flags: DIFlagPrototyped, spFlags: 0) 
!1913 = !DISubroutineType(types: !1914) 
!1914 = !{!214, !1915} 
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64) 
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879) 
!1917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1918, file: !1872, line: 90) 
!1918 = !DISubprogram(name: "ctime", scope: !1880, file: !1880, line: 110, type: !1919, flags: DIFlagPrototyped, spFlags: 0) 
!1919 = !DISubroutineType(types: !1920) 
!1920 = !{!214, !1921} 
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64) 
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875) 
!1923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1924, file: !1872, line: 91) 
!1924 = !DISubprogram(name: "gmtime", scope: !1880, file: !1880, line: 113, type: !1925, flags: DIFlagPrototyped, spFlags: 0) 
!1925 = !DISubroutineType(types: !1926) 
!1926 = !{!1905, !1921} 
!1927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1928, file: !1872, line: 92) 
!1928 = !DISubprogram(name: "localtime", scope: !1880, file: !1880, line: 114, type: !1925, flags: DIFlagPrototyped, spFlags: 0) 
!1929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1930, file: !1872, line: 94) 
!1930 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !1880, file: !1880, line: 116, type: !1931, flags: DIFlagPrototyped, spFlags: 0) 
!1931 = !DISubroutineType(types: !1932) 
!1932 = !{!83, !214, !83, !152, !1915} 
!1933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1934, file: !1985, line: 107) 
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1935, line: 157, baseType: !1936) 
!1935 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h", directory: "") 
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1935, line: 126, size: 1216, flags: DIFlagTypePassByValue, elements: !1937, identifier: "_ZTS7__sFILE") 
!1937 = !{!1938, !1940, !1941, !1942, !1943, !1944, !1949, !1950, !1951, !1955, !1959, !1967, !1971, !1972, !1975, !1976, !1978, !1982, !1983, !1984} 
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1936, file: !1935, line: 127, baseType: !1939, size: 64) 
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64) 
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1936, file: !1935, line: 128, baseType: !25, size: 32, offset: 64) 
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1936, file: !1935, line: 129, baseType: !25, size: 32, offset: 96) 
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1936, file: !1935, line: 130, baseType: !1407, size: 16, offset: 128) 
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1936, file: !1935, line: 131, baseType: !1407, size: 16, offset: 144) 
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1936, file: !1935, line: 132, baseType: !1945, size: 128, offset: 192) 
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1935, line: 92, size: 128, flags: DIFlagTypePassByValue, elements: !1946, identifier: "_ZTS6__sbuf") 
!1946 = !{!1947, !1948} 
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1945, file: !1935, line: 93, baseType: !1939, size: 64) 
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1945, file: !1935, line: 94, baseType: !25, size: 32, offset: 64) 
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1936, file: !1935, line: 133, baseType: !25, size: 32, offset: 320) 
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1936, file: !1935, line: 136, baseType: !71, size: 64, offset: 384) 
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1936, file: !1935, line: 137, baseType: !1952, size: 64, offset: 448) 
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64) 
!1953 = !DISubroutineType(types: !1954) 
!1954 = !{!25, !71} 
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1936, file: !1935, line: 138, baseType: !1956, size: 64, offset: 512) 
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64) 
!1957 = !DISubroutineType(types: !1958) 
!1958 = !{!25, !71, !214, !25} 
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1936, file: !1935, line: 139, baseType: !1960, size: 64, offset: 576) 
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64) 
!1961 = !DISubroutineType(types: !1962) 
!1962 = !{!1963, !71, !1963, !25} 
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1935, line: 81, baseType: !1964) 
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !1965, line: 71, baseType: !1966) 
!1965 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "") 
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1545, line: 24, baseType: !1232) 
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1936, file: !1935, line: 140, baseType: !1968, size: 64, offset: 640) 
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64) 
!1969 = !DISubroutineType(types: !1970) 
!1970 = !{!25, !71, !152, !25} 
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1936, file: !1935, line: 143, baseType: !1945, size: 128, offset: 704) 
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !1936, file: !1935, line: 144, baseType: !1973, size: 64, offset: 832) 
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64) 
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !1935, line: 98, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8__sFILEX") 
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1936, file: !1935, line: 145, baseType: !25, size: 32, offset: 896) 
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1936, file: !1935, line: 148, baseType: !1977, size: 24, offset: 928) 
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 24, elements: !301) 
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1936, file: !1935, line: 149, baseType: !1979, size: 8, offset: 952) 
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 8, elements: !1980) 
!1980 = !{!1981} 
!1981 = !DISubrange(count: 1) 
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1936, file: !1935, line: 152, baseType: !1945, size: 128, offset: 960) 
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1936, file: !1935, line: 155, baseType: !25, size: 32, offset: 1088) 
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1936, file: !1935, line: 156, baseType: !1963, size: 64, offset: 1152) 
!1985 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cstdio", directory: "") 
!1986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1963, file: !1985, line: 108) 
!1987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !1985, line: 109) 
!1988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1989, file: !1985, line: 111) 
!1989 = !DISubprogram(name: "fclose", scope: !1990, file: !1990, line: 143, type: !1991, flags: DIFlagPrototyped, spFlags: 0) 
!1990 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h", directory: "") 
!1991 = !DISubroutineType(types: !1992) 
!1992 = !{!25, !1993} 
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64) 
!1994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1995, file: !1985, line: 112) 
!1995 = !DISubprogram(name: "fflush", scope: !1990, file: !1990, line: 146, type: !1991, flags: DIFlagPrototyped, spFlags: 0) 
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1997, file: !1985, line: 113) 
!1997 = !DISubprogram(name: "setbuf", scope: !1990, file: !1990, line: 178, type: !1998, flags: DIFlagPrototyped, spFlags: 0) 
!1998 = !DISubroutineType(types: !1999) 
!1999 = !{null, !1993, !214} 
!2000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2001, file: !1985, line: 114) 
!2001 = !DISubprogram(name: "setvbuf", scope: !1990, file: !1990, line: 179, type: !2002, flags: DIFlagPrototyped, spFlags: 0) 
!2002 = !DISubroutineType(types: !2003) 
!2003 = !{!25, !1993, !214, !25, !83} 
!2004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2005, file: !1985, line: 115) 
!2005 = !DISubprogram(name: "fprintf", scope: !1990, file: !1990, line: 155, type: !2006, flags: DIFlagPrototyped, spFlags: 0) 
!2006 = !DISubroutineType(types: !2007) 
!2007 = !{!25, !1993, !152, null} 
!2008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2009, file: !1985, line: 116) 
!2009 = !DISubprogram(name: "fscanf", scope: !1990, file: !1990, line: 161, type: !2006, flags: DIFlagPrototyped, spFlags: 0) 
!2010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2011, file: !1985, line: 117) 
!2011 = !DISubprogram(name: "snprintf", scope: !1990, file: !1990, line: 327, type: !2012, flags: DIFlagPrototyped, spFlags: 0) 
!2012 = !DISubroutineType(types: !2013) 
!2013 = !{!25, !214, !83, !152, null} 
!2014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2015, file: !1985, line: 118) 
!2015 = !DISubprogram(name: "sprintf", scope: !1990, file: !1990, line: 180, type: !2016, flags: DIFlagPrototyped, spFlags: 0) 
!2016 = !DISubroutineType(types: !2017) 
!2017 = !{!25, !214, !152, null} 
!2018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2019, file: !1985, line: 119) 
!2019 = !DISubprogram(name: "sscanf", scope: !1990, file: !1990, line: 181, type: !2020, flags: DIFlagPrototyped, spFlags: 0) 
!2020 = !DISubroutineType(types: !2021) 
!2021 = !{!25, !152, !152, null} 
!2022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2023, file: !1985, line: 120) 
!2023 = !DISubprogram(name: "vfprintf", scope: !1990, file: !1990, line: 190, type: !2024, flags: DIFlagPrototyped, spFlags: 0) 
!2024 = !DISubroutineType(types: !2025) 
!2025 = !{!25, !1993, !152, !2026} 
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2027, line: 32, baseType: !2028) 
!2027 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h", directory: "") 
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !1545, line: 76, baseType: !2029) 
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !12, baseType: !214) 
!2030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2031, file: !1985, line: 121) 
!2031 = !DISubprogram(name: "vfscanf", scope: !1990, file: !1990, line: 328, type: !2024, flags: DIFlagPrototyped, spFlags: 0) 
!2032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2033, file: !1985, line: 122) 
!2033 = !DISubprogram(name: "vsscanf", scope: !1990, file: !1990, line: 331, type: !2034, flags: DIFlagPrototyped, spFlags: 0) 
!2034 = !DISubroutineType(types: !2035) 
!2035 = !{!25, !152, !152, !2026} 
!2036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2037, file: !1985, line: 123) 
!2037 = !DISubprogram(name: "vsnprintf", scope: !1990, file: !1990, line: 330, type: !2038, flags: DIFlagPrototyped, spFlags: 0) 
!2038 = !DISubroutineType(types: !2039) 
!2039 = !{!25, !214, !83, !152, !2026} 
!2040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2041, file: !1985, line: 124) 
!2041 = !DISubprogram(name: "vsprintf", scope: !1990, file: !1990, line: 192, type: !2042, flags: DIFlagPrototyped, spFlags: 0) 
!2042 = !DISubroutineType(types: !2043) 
!2043 = !{!25, !214, !152, !2026} 
!2044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2045, file: !1985, line: 125) 
!2045 = !DISubprogram(name: "fgetc", scope: !1990, file: !1990, line: 147, type: !1991, flags: DIFlagPrototyped, spFlags: 0) 
!2046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2047, file: !1985, line: 126) 
!2047 = !DISubprogram(name: "fgets", scope: !1990, file: !1990, line: 149, type: !2048, flags: DIFlagPrototyped, spFlags: 0) 
!2048 = !DISubroutineType(types: !2049) 
!2049 = !{!214, !214, !25, !1993} 
!2050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2051, file: !1985, line: 127) 
!2051 = !DISubprogram(name: "fputc", scope: !1990, file: !1990, line: 156, type: !2052, flags: DIFlagPrototyped, spFlags: 0) 
!2052 = !DISubroutineType(types: !2053) 
!2053 = !{!25, !25, !1993} 
!2054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2055, file: !1985, line: 128) 
!2055 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !1990, file: !1990, line: 157, type: !2056, flags: DIFlagPrototyped, spFlags: 0) 
!2056 = !DISubroutineType(types: !2057) 
!2057 = !{!25, !152, !1993} 
!2058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2059, file: !1985, line: 129) 
!2059 = !DISubprogram(name: "getc", scope: !1990, file: !1990, line: 166, type: !1991, flags: DIFlagPrototyped, spFlags: 0) 
!2060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2061, file: !1985, line: 130) 
!2061 = !DISubprogram(name: "putc", scope: !1990, file: !1990, line: 171, type: !2052, flags: DIFlagPrototyped, spFlags: 0) 
!2062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2063, file: !1985, line: 131) 
!2063 = !DISubprogram(name: "ungetc", scope: !1990, file: !1990, line: 189, type: !2052, flags: DIFlagPrototyped, spFlags: 0) 
!2064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2065, file: !1985, line: 132) 
!2065 = !DISubprogram(name: "fread", scope: !1990, file: !1990, line: 158, type: !2066, flags: DIFlagPrototyped, spFlags: 0) 
!2066 = !DISubroutineType(types: !2067) 
!2067 = !{!83, !71, !83, !83, !1993} 
!2068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2069, file: !1985, line: 133) 
!2069 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !1990, file: !1990, line: 165, type: !2070, flags: DIFlagPrototyped, spFlags: 0) 
!2070 = !DISubroutineType(types: !2071) 
!2071 = !{!83, !235, !83, !83, !1993} 
!2072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2073, file: !1985, line: 135) 
!2073 = !DISubprogram(name: "fgetpos", scope: !1990, file: !1990, line: 148, type: !2074, flags: DIFlagPrototyped, spFlags: 0) 
!2074 = !DISubroutineType(types: !2075) 
!2075 = !{!25, !1993, !2076} 
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64) 
!2077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2078, file: !1985, line: 137) 
!2078 = !DISubprogram(name: "fseek", scope: !1990, file: !1990, line: 162, type: !2079, flags: DIFlagPrototyped, spFlags: 0) 
!2079 = !DISubroutineType(types: !2080) 
!2080 = !{!25, !1993, !66, !25} 
!2081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2082, file: !1985, line: 139) 
!2082 = !DISubprogram(name: "fsetpos", scope: !1990, file: !1990, line: 163, type: !2083, flags: DIFlagPrototyped, spFlags: 0) 
!2083 = !DISubroutineType(types: !2084) 
!2084 = !{!25, !1993, !2085} 
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64) 
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1963) 
!2087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2088, file: !1985, line: 141) 
!2088 = !DISubprogram(name: "ftell", scope: !1990, file: !1990, line: 164, type: !2089, flags: DIFlagPrototyped, spFlags: 0) 
!2089 = !DISubroutineType(types: !2090) 
!2090 = !{!66, !1993} 
!2091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2092, file: !1985, line: 142) 
!2092 = !DISubprogram(name: "rewind", scope: !1990, file: !1990, line: 176, type: !2093, flags: DIFlagPrototyped, spFlags: 0) 
!2093 = !DISubroutineType(types: !2094) 
!2094 = !{null, !1993} 
!2095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2096, file: !1985, line: 143) 
!2096 = !DISubprogram(name: "clearerr", scope: !1990, file: !1990, line: 142, type: !2093, flags: DIFlagPrototyped, spFlags: 0) 
!2097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2098, file: !1985, line: 144) 
!2098 = !DISubprogram(name: "feof", scope: !1990, file: !1990, line: 144, type: !1991, flags: DIFlagPrototyped, spFlags: 0) 
!2099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2100, file: !1985, line: 145) 
!2100 = !DISubprogram(name: "ferror", scope: !1990, file: !1990, line: 145, type: !1991, flags: DIFlagPrototyped, spFlags: 0) 
!2101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2102, file: !1985, line: 146) 
!2102 = !DISubprogram(name: "perror", scope: !1990, file: !1990, line: 169, type: !2103, flags: DIFlagPrototyped, spFlags: 0) 
!2103 = !DISubroutineType(types: !2104) 
!2104 = !{null, !152} 
!2105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2106, file: !1985, line: 149) 
!2106 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !1990, file: !1990, line: 153, type: !2107, flags: DIFlagPrototyped, spFlags: 0) 
!2107 = !DISubroutineType(types: !2108) 
!2108 = !{!1993, !152, !152} 
!2109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2110, file: !1985, line: 150) 
!2110 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !1990, file: !1990, line: 159, type: !2111, flags: DIFlagPrototyped, spFlags: 0) 
!2111 = !DISubroutineType(types: !2112) 
!2112 = !{!1993, !152, !152, !1993} 
!2113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2114, file: !1985, line: 152) 
!2114 = !DISubprogram(name: "remove", scope: !1990, file: !1990, line: 174, type: !1585, flags: DIFlagPrototyped, spFlags: 0) 
!2115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2116, file: !1985, line: 154) 
!2116 = !DISubprogram(name: "rename", scope: !1990, file: !1990, line: 175, type: !1823, flags: DIFlagPrototyped, spFlags: 0) 
!2117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2118, file: !1985, line: 155) 
!2118 = !DISubprogram(name: "tmpfile", scope: !1990, file: !1990, line: 182, type: !2119, flags: DIFlagPrototyped, spFlags: 0) 
!2119 = !DISubroutineType(types: !2120) 
!2120 = !{!1993} 
!2121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2122, file: !1985, line: 156) 
!2122 = !DISubprogram(name: "tmpnam", scope: !1990, file: !1990, line: 188, type: !2123, flags: DIFlagPrototyped, spFlags: 0) 
!2123 = !DISubroutineType(types: !2124) 
!2124 = !{!214, !214} 
!2125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2126, file: !1985, line: 160) 
!2126 = !DISubprogram(name: "getchar", scope: !1990, file: !1990, line: 167, type: !23, flags: DIFlagPrototyped, spFlags: 0) 
!2127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2128, file: !1985, line: 162) 
!2128 = !DISubprogram(name: "gets", scope: !1990, file: !1990, line: 168, type: !2123, flags: DIFlagPrototyped, spFlags: 0) 
!2129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2130, file: !1985, line: 164) 
!2130 = !DISubprogram(name: "scanf", scope: !1990, file: !1990, line: 177, type: !2131, flags: DIFlagPrototyped, spFlags: 0) 
!2131 = !DISubroutineType(types: !2132) 
!2132 = !{!25, !152, null} 
!2133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2134, file: !1985, line: 165) 
!2134 = !DISubprogram(name: "vscanf", scope: !1990, file: !1990, line: 329, type: !2135, flags: DIFlagPrototyped, spFlags: 0) 
!2135 = !DISubroutineType(types: !2136) 
!2136 = !{!25, !152, !2026} 
!2137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2138, file: !1985, line: 169) 
!2138 = !DISubprogram(name: "printf", scope: !1990, file: !1990, line: 170, type: !2131, flags: DIFlagPrototyped, spFlags: 0) 
!2139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2140, file: !1985, line: 170) 
!2140 = !DISubprogram(name: "putchar", scope: !1990, file: !1990, line: 172, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2141 = !DISubroutineType(types: !2142) 
!2142 = !{!25, !25} 
!2143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2144, file: !1985, line: 171) 
!2144 = !DISubprogram(name: "puts", scope: !1990, file: !1990, line: 173, type: !1585, flags: DIFlagPrototyped, spFlags: 0) 
!2145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2146, file: !1985, line: 172) 
!2146 = !DISubprogram(name: "vprintf", scope: !1990, file: !1990, line: 191, type: !2135, flags: DIFlagPrototyped, spFlags: 0) 
!2147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2148, file: !2150, line: 103) 
!2148 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !2149, file: !2149, line: 212, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2149 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctype.h", directory: "") 
!2150 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cctype", directory: "") 
!2151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2152, file: !2150, line: 104) 
!2152 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !2149, file: !2149, line: 218, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2154, file: !2150, line: 105) 
!2154 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !2149, file: !2149, line: 224, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2156, file: !2150, line: 106) 
!2156 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !2149, file: !2149, line: 230, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2158, file: !2150, line: 107) 
!2158 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !2149, file: !2149, line: 237, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2160, file: !2150, line: 108) 
!2160 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !2149, file: !2149, line: 243, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2162, file: !2150, line: 109) 
!2162 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !2149, file: !2149, line: 249, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2164, file: !2150, line: 110) 
!2164 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !2149, file: !2149, line: 255, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2166, file: !2150, line: 111) 
!2166 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !2149, file: !2149, line: 261, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2168, file: !2150, line: 112) 
!2168 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !2149, file: !2149, line: 267, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2170, file: !2150, line: 113) 
!2170 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !2149, file: !2149, line: 273, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2172, file: !2150, line: 114) 
!2172 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !2149, file: !2149, line: 280, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2174, file: !2150, line: 115) 
!2174 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !2149, file: !2149, line: 292, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2176, file: !2150, line: 116) 
!2176 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !2149, file: !2149, line: 298, type: !2141, flags: DIFlagPrototyped, spFlags: 0) 
!2177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2178, file: !2181, line: 63) 
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2179, line: 32, baseType: !2180) 
!2179 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h", directory: "") 
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !1545, line: 90, baseType: !25) 
!2181 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cwctype", directory: "") 
!2182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2183, file: !2181, line: 64) 
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2184, line: 32, baseType: !2185) 
!2184 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_wctrans_t.h", directory: "") 
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !2186, line: 41, baseType: !25) 
!2186 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h", directory: "") 
!2187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2188, file: !2181, line: 65) 
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2189, line: 32, baseType: !2190) 
!2189 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_wctype_t.h", directory: "") 
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !2186, line: 43, baseType: !2191) 
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1545, line: 23, baseType: !29) 
!2192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2193, file: !2181, line: 66) 
!2193 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !2194, file: !2194, line: 51, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2194 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_wctype.h", directory: "") 
!2195 = !DISubroutineType(types: !2196) 
!2196 = !{!25, !2178} 
!2197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2198, file: !2181, line: 67) 
!2198 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !2194, file: !2194, line: 57, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2200, file: !2181, line: 68) 
!2200 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !2201, file: !2201, line: 50, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2201 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/wctype.h", directory: "") 
!2202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2203, file: !2181, line: 69) 
!2203 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !2194, file: !2194, line: 63, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2205, file: !2181, line: 70) 
!2205 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !2194, file: !2194, line: 75, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2207, file: !2181, line: 71) 
!2207 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !2194, file: !2194, line: 81, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2209, file: !2181, line: 72) 
!2209 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !2194, file: !2194, line: 87, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2211, file: !2181, line: 73) 
!2211 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !2194, file: !2194, line: 93, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2213, file: !2181, line: 74) 
!2213 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !2194, file: !2194, line: 99, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2215, file: !2181, line: 75) 
!2215 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !2194, file: !2194, line: 105, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2217, file: !2181, line: 76) 
!2217 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !2194, file: !2194, line: 111, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2219, file: !2181, line: 77) 
!2219 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !2194, file: !2194, line: 117, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2221, file: !2181, line: 78) 
!2221 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !2194, file: !2194, line: 69, type: !2222, flags: DIFlagPrototyped, spFlags: 0) 
!2222 = !DISubroutineType(types: !2223) 
!2223 = !{!25, !2178, !2188} 
!2224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2225, file: !2181, line: 79) 
!2225 = !DISubprogram(name: "wctype", scope: !2194, file: !2194, line: 157, type: !2226, flags: DIFlagPrototyped, spFlags: 0) 
!2226 = !DISubroutineType(types: !2227) 
!2227 = !{!2188, !152} 
!2228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2229, file: !2181, line: 80) 
!2229 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !2194, file: !2194, line: 123, type: !2230, flags: DIFlagPrototyped, spFlags: 0) 
!2230 = !DISubroutineType(types: !2231) 
!2231 = !{!2178, !2178} 
!2232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2233, file: !2181, line: 81) 
!2233 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !2194, file: !2194, line: 129, type: !2230, flags: DIFlagPrototyped, spFlags: 0) 
!2234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2235, file: !2181, line: 82) 
!2235 = !DISubprogram(name: "towctrans", scope: !2201, file: !2201, line: 121, type: !2236, flags: DIFlagPrototyped, spFlags: 0) 
!2236 = !DISubroutineType(types: !2237) 
!2237 = !{!2178, !2178, !2183} 
!2238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2239, file: !2181, line: 83) 
!2239 = !DISubprogram(name: "wctrans", scope: !2201, file: !2201, line: 123, type: !2240, flags: DIFlagPrototyped, spFlags: 0) 
!2240 = !DISubroutineType(types: !2241) 
!2241 = !{!2183, !152} 
!2242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1542, file: !2243, line: 115) 
!2243 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/cwchar", directory: "") 
!2244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !83, file: !2243, line: 116) 
!2245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1879, file: !2243, line: 117) 
!2246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2178, file: !2243, line: 118) 
!2247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1934, file: !2243, line: 119) 
!2248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2249, file: !2243, line: 120) 
!2249 = !DISubprogram(name: "fwprintf", scope: !2250, file: !2250, line: 103, type: !2251, flags: DIFlagPrototyped, spFlags: 0) 
!2250 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/wchar.h", directory: "") 
!2251 = !DISubroutineType(types: !2252) 
!2252 = !{!25, !1993, !1724, null} 
!2253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2254, file: !2243, line: 121) 
!2254 = !DISubprogram(name: "fwscanf", scope: !2250, file: !2250, line: 104, type: !2251, flags: DIFlagPrototyped, spFlags: 0) 
!2255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2256, file: !2243, line: 122) 
!2256 = !DISubprogram(name: "swprintf", scope: !2250, file: !2250, line: 115, type: !2257, flags: DIFlagPrototyped, spFlags: 0) 
!2257 = !DISubroutineType(types: !2258) 
!2258 = !{!25, !1710, !83, !1724, null} 
!2259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2260, file: !2243, line: 123) 
!2260 = !DISubprogram(name: "vfwprintf", scope: !2250, file: !2250, line: 118, type: !2261, flags: DIFlagPrototyped, spFlags: 0) 
!2261 = !DISubroutineType(types: !2262) 
!2262 = !{!25, !1993, !1724, !2028} 
!2263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2264, file: !2243, line: 124) 
!2264 = !DISubprogram(name: "vswprintf", scope: !2250, file: !2250, line: 120, type: !2265, flags: DIFlagPrototyped, spFlags: 0) 
!2265 = !DISubroutineType(types: !2266) 
!2266 = !{!25, !1710, !83, !1724, !2028} 
!2267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2268, file: !2243, line: 125) 
!2268 = !DISubprogram(name: "swscanf", scope: !2250, file: !2250, line: 116, type: !2269, flags: DIFlagPrototyped, spFlags: 0) 
!2269 = !DISubroutineType(types: !2270) 
!2270 = !{!25, !1724, !1724, null} 
!2271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2272, file: !2243, line: 126) 
!2272 = !DISubprogram(name: "vfwscanf", scope: !2250, file: !2250, line: 170, type: !2261, flags: DIFlagPrototyped, spFlags: 0) 
!2273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2274, file: !2243, line: 127) 
!2274 = !DISubprogram(name: "vswscanf", scope: !2250, file: !2250, line: 172, type: !2275, flags: DIFlagPrototyped, spFlags: 0) 
!2275 = !DISubroutineType(types: !2276) 
!2276 = !{!25, !1724, !1724, !2028} 
!2277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2278, file: !2243, line: 128) 
!2278 = !DISubprogram(name: "fgetwc", scope: !2250, file: !2250, line: 98, type: !2279, flags: DIFlagPrototyped, spFlags: 0) 
!2279 = !DISubroutineType(types: !2280) 
!2280 = !{!2178, !1993} 
!2281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2282, file: !2243, line: 129) 
!2282 = !DISubprogram(name: "fgetws", scope: !2250, file: !2250, line: 99, type: !2283, flags: DIFlagPrototyped, spFlags: 0) 
!2283 = !DISubroutineType(types: !2284) 
!2284 = !{!1710, !1710, !25, !1993} 
!2285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2286, file: !2243, line: 130) 
!2286 = !DISubprogram(name: "fputwc", scope: !2250, file: !2250, line: 100, type: !2287, flags: DIFlagPrototyped, spFlags: 0) 
!2287 = !DISubroutineType(types: !2288) 
!2288 = !{!2178, !1711, !1993} 
!2289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2290, file: !2243, line: 131) 
!2290 = !DISubprogram(name: "fputws", scope: !2250, file: !2250, line: 101, type: !2291, flags: DIFlagPrototyped, spFlags: 0) 
!2291 = !DISubroutineType(types: !2292) 
!2292 = !{!25, !1724, !1993} 
!2293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2294, file: !2243, line: 132) 
!2294 = !DISubprogram(name: "fwide", scope: !2250, file: !2250, line: 102, type: !2295, flags: DIFlagPrototyped, spFlags: 0) 
!2295 = !DISubroutineType(types: !2296) 
!2296 = !{!25, !1993, !25} 
!2297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2298, file: !2243, line: 133) 
!2298 = !DISubprogram(name: "getwc", scope: !2250, file: !2250, line: 105, type: !2279, flags: DIFlagPrototyped, spFlags: 0) 
!2299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2300, file: !2243, line: 134) 
!2300 = !DISubprogram(name: "putwc", scope: !2250, file: !2250, line: 113, type: !2287, flags: DIFlagPrototyped, spFlags: 0) 
!2301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2302, file: !2243, line: 135) 
!2302 = !DISubprogram(name: "ungetwc", scope: !2250, file: !2250, line: 117, type: !2303, flags: DIFlagPrototyped, spFlags: 0) 
!2303 = !DISubroutineType(types: !2304) 
!2304 = !{!2178, !2178, !1993} 
!2305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2306, file: !2243, line: 136) 
!2306 = !DISubprogram(name: "wcstod", scope: !2250, file: !2250, line: 144, type: !2307, flags: DIFlagPrototyped, spFlags: 0) 
!2307 = !DISubroutineType(types: !2308) 
!2308 = !{!1438, !1724, !2309} 
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64) 
!2310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2311, file: !2243, line: 137) 
!2311 = !DISubprogram(name: "wcstof", scope: !2250, file: !2250, line: 175, type: !2312, flags: DIFlagPrototyped, spFlags: 0) 
!2312 = !DISubroutineType(types: !2313) 
!2313 = !{!1434, !1724, !2309} 
!2314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2315, file: !2243, line: 138) 
!2315 = !DISubprogram(name: "wcstold", scope: !2250, file: !2250, line: 177, type: !2316, flags: DIFlagPrototyped, spFlags: 0) 
!2316 = !DISubroutineType(types: !2317) 
!2317 = !{!1442, !1724, !2309} 
!2318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2319, file: !2243, line: 139) 
!2319 = !DISubprogram(name: "wcstol", scope: !2250, file: !2250, line: 147, type: !2320, flags: DIFlagPrototyped, spFlags: 0) 
!2320 = !DISubroutineType(types: !2321) 
!2321 = !{!66, !1724, !2309, !25} 
!2322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2323, file: !2243, line: 141) 
!2323 = !DISubprogram(name: "wcstoll", scope: !2250, file: !2250, line: 180, type: !2324, flags: DIFlagPrototyped, spFlags: 0) 
!2324 = !DISubroutineType(types: !2325) 
!2325 = !{!1232, !1724, !2309, !25} 
!2326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2327, file: !2243, line: 143) 
!2327 = !DISubprogram(name: "wcstoul", scope: !2250, file: !2250, line: 149, type: !2328, flags: DIFlagPrototyped, spFlags: 0) 
!2328 = !DISubroutineType(types: !2329) 
!2329 = !{!84, !1724, !2309, !25} 
!2330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2331, file: !2243, line: 145) 
!2331 = !DISubprogram(name: "wcstoull", scope: !2250, file: !2250, line: 182, type: !2332, flags: DIFlagPrototyped, spFlags: 0) 
!2332 = !DISubroutineType(types: !2333) 
!2333 = !{!1430, !1724, !2309, !25} 
!2334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2335, file: !2243, line: 147) 
!2335 = !DISubprogram(name: "wcscpy", scope: !2250, file: !2250, line: 128, type: !2336, flags: DIFlagPrototyped, spFlags: 0) 
!2336 = !DISubroutineType(types: !2337) 
!2337 = !{!1710, !1710, !1724} 
!2338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2339, file: !2243, line: 148) 
!2339 = !DISubprogram(name: "wcsncpy", scope: !2250, file: !2250, line: 135, type: !2340, flags: DIFlagPrototyped, spFlags: 0) 
!2340 = !DISubroutineType(types: !2341) 
!2341 = !{!1710, !1710, !1724, !83} 
!2342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2343, file: !2243, line: 149) 
!2343 = !DISubprogram(name: "wcscat", scope: !2250, file: !2250, line: 124, type: !2336, flags: DIFlagPrototyped, spFlags: 0) 
!2344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2345, file: !2243, line: 150) 
!2345 = !DISubprogram(name: "wcsncat", scope: !2250, file: !2250, line: 133, type: !2340, flags: DIFlagPrototyped, spFlags: 0) 
!2346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2347, file: !2243, line: 151) 
!2347 = !DISubprogram(name: "wcscmp", scope: !2250, file: !2250, line: 126, type: !2348, flags: DIFlagPrototyped, spFlags: 0) 
!2348 = !DISubroutineType(types: !2349) 
!2349 = !{!25, !1724, !1724} 
!2350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2351, file: !2243, line: 152) 
!2351 = !DISubprogram(name: "wcscoll", scope: !2250, file: !2250, line: 127, type: !2348, flags: DIFlagPrototyped, spFlags: 0) 
!2352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2353, file: !2243, line: 153) 
!2353 = !DISubprogram(name: "wcsncmp", scope: !2250, file: !2250, line: 134, type: !2354, flags: DIFlagPrototyped, spFlags: 0) 
!2354 = !DISubroutineType(types: !2355) 
!2355 = !{!25, !1724, !1724, !83} 
!2356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2357, file: !2243, line: 154) 
!2357 = !DISubprogram(name: "wcsxfrm", scope: !2250, file: !2250, line: 142, type: !2358, flags: DIFlagPrototyped, spFlags: 0) 
!2358 = !DISubroutineType(types: !2359) 
!2359 = !{!83, !1710, !1724, !83} 
!2360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2361, file: !2243, line: 155) 
!2361 = !DISubprogram(name: "wcschr", linkageName: "_ZL6wcschrUa9enable_ifIXLb1EEEPww", scope: !2362, file: !2362, line: 145, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!2362 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/wchar.h", directory: "") 
!2363 = !DISubroutineType(types: !2364) 
!2364 = !{!1710, !1710, !1711} 
!2365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2366, file: !2243, line: 156) 
!2366 = !DISubprogram(name: "wcspbrk", linkageName: "_ZL7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !2362, file: !2362, line: 152, type: !2336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!2367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2368, file: !2243, line: 157) 
!2368 = !DISubprogram(name: "wcsrchr", linkageName: "_ZL7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !2362, file: !2362, line: 159, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!2369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2370, file: !2243, line: 158) 
!2370 = !DISubprogram(name: "wcsstr", linkageName: "_ZL6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !2362, file: !2362, line: 166, type: !2336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!2371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2372, file: !2243, line: 159) 
!2372 = !DISubprogram(name: "wmemchr", linkageName: "_ZL7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !2362, file: !2362, line: 173, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!2373 = !DISubroutineType(types: !2374) 
!2374 = !{!1710, !1710, !1711, !83} 
!2375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2376, file: !2243, line: 160) 
!2376 = !DISubprogram(name: "wcscspn", scope: !2250, file: !2250, line: 129, type: !2377, flags: DIFlagPrototyped, spFlags: 0) 
!2377 = !DISubroutineType(types: !2378) 
!2378 = !{!83, !1724, !1724} 
!2379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2380, file: !2243, line: 161) 
!2380 = !DISubprogram(name: "wcslen", scope: !2250, file: !2250, line: 132, type: !2381, flags: DIFlagPrototyped, spFlags: 0) 
!2381 = !DISubroutineType(types: !2382) 
!2382 = !{!83, !1724} 
!2383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2384, file: !2243, line: 162) 
!2384 = !DISubprogram(name: "wcsspn", scope: !2250, file: !2250, line: 140, type: !2377, flags: DIFlagPrototyped, spFlags: 0) 
!2385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2386, file: !2243, line: 163) 
!2386 = !DISubprogram(name: "wcstok", scope: !2250, file: !2250, line: 145, type: !2387, flags: DIFlagPrototyped, spFlags: 0) 
!2387 = !DISubroutineType(types: !2388) 
!2388 = !{!1710, !1710, !1724, !2309} 
!2389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2390, file: !2243, line: 164) 
!2390 = !DISubprogram(name: "wmemcmp", scope: !2250, file: !2250, line: 151, type: !2354, flags: DIFlagPrototyped, spFlags: 0) 
!2391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2392, file: !2243, line: 165) 
!2392 = !DISubprogram(name: "wmemcpy", scope: !2250, file: !2250, line: 152, type: !2340, flags: DIFlagPrototyped, spFlags: 0) 
!2393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2394, file: !2243, line: 166) 
!2394 = !DISubprogram(name: "wmemmove", scope: !2250, file: !2250, line: 153, type: !2340, flags: DIFlagPrototyped, spFlags: 0) 
!2395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2396, file: !2243, line: 167) 
!2396 = !DISubprogram(name: "wmemset", scope: !2250, file: !2250, line: 154, type: !2373, flags: DIFlagPrototyped, spFlags: 0) 
!2397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2398, file: !2243, line: 168) 
!2398 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !2250, file: !2250, line: 130, type: !2399, flags: DIFlagPrototyped, spFlags: 0) 
!2399 = !DISubroutineType(types: !2400) 
!2400 = !{!83, !1710, !83, !1724, !1915} 
!2401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2402, file: !2243, line: 169) 
!2402 = !DISubprogram(name: "btowc", scope: !2250, file: !2250, line: 97, type: !2403, flags: DIFlagPrototyped, spFlags: 0) 
!2403 = !DISubroutineType(types: !2404) 
!2404 = !{!2178, !25} 
!2405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2406, file: !2243, line: 170) 
!2406 = !DISubprogram(name: "wctob", scope: !2250, file: !2250, line: 143, type: !2195, flags: DIFlagPrototyped, spFlags: 0) 
!2407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2408, file: !2243, line: 171) 
!2408 = !DISubprogram(name: "mbsinit", scope: !2250, file: !2250, line: 110, type: !2409, flags: DIFlagPrototyped, spFlags: 0) 
!2409 = !DISubroutineType(types: !2410) 
!2410 = !{!25, !2411} 
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64) 
!2412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542) 
!2413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2414, file: !2243, line: 172) 
!2414 = !DISubprogram(name: "mbrlen", scope: !2250, file: !2250, line: 107, type: !2415, flags: DIFlagPrototyped, spFlags: 0) 
!2415 = !DISubroutineType(types: !2416) 
!2416 = !{!83, !152, !83, !2417} 
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64) 
!2418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2419, file: !2243, line: 173) 
!2419 = !DISubprogram(name: "mbrtowc", scope: !2250, file: !2250, line: 108, type: !2420, flags: DIFlagPrototyped, spFlags: 0) 
!2420 = !DISubroutineType(types: !2421) 
!2421 = !{!83, !1710, !152, !83, !2417} 
!2422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2423, file: !2243, line: 174) 
!2423 = !DISubprogram(name: "wcrtomb", scope: !2250, file: !2250, line: 123, type: !2424, flags: DIFlagPrototyped, spFlags: 0) 
!2424 = !DISubroutineType(types: !2425) 
!2425 = !{!83, !214, !1711, !2417} 
!2426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2427, file: !2243, line: 175) 
!2427 = !DISubprogram(name: "mbsrtowcs", scope: !2250, file: !2250, line: 111, type: !2428, flags: DIFlagPrototyped, spFlags: 0) 
!2428 = !DISubroutineType(types: !2429) 
!2429 = !{!83, !1710, !2430, !83, !2417} 
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64) 
!2431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2432, file: !2243, line: 176) 
!2432 = !DISubprogram(name: "wcsrtombs", scope: !2250, file: !2250, line: 138, type: !2433, flags: DIFlagPrototyped, spFlags: 0) 
!2433 = !DISubroutineType(types: !2434) 
!2434 = !{!83, !214, !2435, !83, !2417} 
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64) 
!2436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2437, file: !2243, line: 179) 
!2437 = !DISubprogram(name: "getwchar", scope: !2250, file: !2250, line: 106, type: !2438, flags: DIFlagPrototyped, spFlags: 0) 
!2438 = !DISubroutineType(types: !2439) 
!2439 = !{!2178} 
!2440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2441, file: !2243, line: 180) 
!2441 = !DISubprogram(name: "vwscanf", scope: !2250, file: !2250, line: 174, type: !2442, flags: DIFlagPrototyped, spFlags: 0) 
!2442 = !DISubroutineType(types: !2443) 
!2443 = !{!25, !1724, !2028} 
!2444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2445, file: !2243, line: 181) 
!2445 = !DISubprogram(name: "wscanf", scope: !2250, file: !2250, line: 156, type: !2446, flags: DIFlagPrototyped, spFlags: 0) 
!2446 = !DISubroutineType(types: !2447) 
!2447 = !{!25, !1724, null} 
!2448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2449, file: !2243, line: 185) 
!2449 = !DISubprogram(name: "putwchar", scope: !2250, file: !2250, line: 114, type: !2450, flags: DIFlagPrototyped, spFlags: 0) 
!2450 = !DISubroutineType(types: !2451) 
!2451 = !{!2178, !1711} 
!2452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2453, file: !2243, line: 186) 
!2453 = !DISubprogram(name: "vwprintf", scope: !2250, file: !2250, line: 122, type: !2442, flags: DIFlagPrototyped, spFlags: 0) 
!2454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2455, file: !2243, line: 187) 
!2455 = !DISubprogram(name: "wprintf", scope: !2250, file: !2250, line: 155, type: !2446, flags: DIFlagPrototyped, spFlags: 0) 
!2456 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !11, entity: !18, file: !12, line: 4) 
!2457 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.102)"} 
!2458 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 6, type: !23, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !190) 
!2459 = !DILocalVariable(name: "tempstr", scope: !2458, file: !12, line: 8, type: !160) 
!2460 = !DILocation(line: 8, column: 10, scope: !2458) 
!2461 = !DILocation(line: 8, column: 20, scope: !2458) 
!2462 = !DILocation(line: 9, column: 11, scope: !2458) 
!2463 = !DILocation(line: 11, column: 3, scope: !2458) 
!2464 = !DILocation(line: 11, column: 14, scope: !2458) 
!2465 = !DILocation(line: 13, column: 8, scope: !2458) 
!2466 = !DILocation(line: 13, column: 19, scope: !2458) 
!2467 = !DILocation(line: 15, column: 6, scope: !2468) 
!2468 = distinct !DILexicalBlock(scope: !2458, file: !12, line: 15, column: 6) 
!2469 = !DILocation(line: 15, column: 17, scope: !2468) 
!2470 = !DILocation(line: 15, column: 6, scope: !2458) 
!2471 = !DILocation(line: 16, column: 5, scope: !2468) 
!2472 = !DILocation(line: 16, column: 16, scope: !2468) 
!2473 = !DILocation(line: 32, column: 1, scope: !2458) 
!2474 = !DILocation(line: 18, column: 5, scope: !2468) 
!2475 = !DILocation(line: 18, column: 16, scope: !2468) 
!2476 = !DILocalVariable(name: "num1", scope: !2458, file: !12, line: 20, type: !25) 
!2477 = !DILocation(line: 20, column: 5, scope: !2458) 
!2478 = !DILocation(line: 21, column: 14, scope: !2479) 
!2479 = distinct !DILexicalBlock(scope: !2458, file: !12, line: 21, column: 6) 
!2480 = !DILocation(line: 21, column: 6, scope: !2458) 
!2481 = !DILocalVariable(name: "num333", scope: !2482, file: !12, line: 23, type: !25) 
!2482 = distinct !DILexicalBlock(scope: !2479, file: !12, line: 22, column: 3) 
!2483 = !DILocation(line: 23, column: 9, scope: !2482) 
!2484 = !DILocation(line: 24, column: 5, scope: !2482) 
!2485 = !DILocation(line: 24, column: 18, scope: !2482) 
!2486 = !DILocation(line: 25, column: 3, scope: !2482) 
!2487 = !DILocation(line: 27, column: 1, scope: !2458) 
!2488 = !DILocation(line: 27, column: 12, scope: !2458) 
!2489 = !DILocation(line: 28, column: 14, scope: !2490) 
!2490 = distinct !DILexicalBlock(scope: !2458, file: !12, line: 28, column: 6) 
!2491 = !DILocation(line: 28, column: 6, scope: !2458) 
!2492 = !DILocation(line: 31, column: 3, scope: !2493) 
!2493 = distinct !DILexicalBlock(scope: !2490, file: !12, line: 29, column: 3) 
!2494 = distinct !DISubprogram(name: "basic_string<std::__1::nullptr_t>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc", scope: !162, file: !163, line: 840, type: !2495, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !2498, declaration: !2497, retainedNodes: !190) 
!2495 = !DISubroutineType(types: !2496) 
!2496 = !{null, !396, !152} 
!2497 = !DISubprogram(name: "basic_string<std::__1::nullptr_t>", scope: !162, file: !163, line: 840, type: !2495, scopeLine: 840, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !2498) 
!2498 = !{!2499} 
!2499 = !DITemplateTypeParameter(type: !1452) 
!2500 = !DILocalVariable(name: "this", arg: 1, scope: !2494, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64) 
!2502 = !DILocation(line: 0, scope: !2494) 
!2503 = !DILocalVariable(name: "__s", arg: 2, scope: !2494, file: !163, line: 840, type: !152) 
!2504 = !DILocation(line: 840, column: 32, scope: !2494) 
!2505 = !DILocation(line: 840, column: 88, scope: !2494) 
!2506 = !DILocation(line: 846, column: 5, scope: !2494) 
!2507 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !162, file: !163, line: 918, type: !620, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !619, retainedNodes: !190) 
!2508 = !DILocalVariable(name: "this", arg: 1, scope: !2507, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2509 = !DILocation(line: 0, scope: !2507) 
!2510 = !DILocalVariable(name: "__s", arg: 2, scope: !2507, file: !163, line: 918, type: !622) 
!2511 = !DILocation(line: 918, column: 73, scope: !2507) 
!2512 = !DILocation(line: 918, column: 93, scope: !2507) 
!2513 = !DILocation(line: 918, column: 86, scope: !2507) 
!2514 = !DILocation(line: 918, column: 79, scope: !2507) 
!2515 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !162, file: !163, line: 3435, type: !682, scopeLine: 3436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !681, retainedNodes: !190) 
!2516 = !DILocalVariable(name: "this", arg: 1, scope: !2515, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2517 = !DILocation(line: 0, scope: !2515) 
!2518 = !DILocalVariable(name: "__pos", arg: 2, scope: !2515, file: !163, line: 1001, type: !179) 
!2519 = !DILocation(line: 1001, column: 68, scope: !2515) 
!2520 = !DILocation(line: 3438, column: 14, scope: !2515) 
!2521 = !DILocation(line: 3438, column: 32, scope: !2515) 
!2522 = !DILocation(line: 3438, column: 30, scope: !2515) 
!2523 = !DILocation(line: 3438, column: 5, scope: !2515) 
!2524 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !17, file: !1153, line: 855, type: !2525, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !2527, retainedNodes: !190) 
!2525 = !DISubroutineType(types: !2526) 
!2526 = !{!1157, !1157, !152} 
!2527 = !{!564} 
!2528 = !DILocalVariable(name: "__os", arg: 1, scope: !2524, file: !1153, line: 855, type: !1157) 
!2529 = !DILocation(line: 855, column: 42, scope: !2524) 
!2530 = !DILocalVariable(name: "__str", arg: 2, scope: !2524, file: !1153, line: 855, type: !152) 
!2531 = !DILocation(line: 855, column: 60, scope: !2524) 
!2532 = !DILocation(line: 857, column: 44, scope: !2524) 
!2533 = !DILocation(line: 857, column: 50, scope: !2524) 
!2534 = !DILocation(line: 857, column: 73, scope: !2524) 
!2535 = !DILocation(line: 857, column: 57, scope: !2524) 
!2536 = !DILocation(line: 857, column: 12, scope: !2524) 
!2537 = !DILocation(line: 857, column: 5, scope: !2524) 
!2538 = distinct !DISubprogram(name: "operator<<<char, std::__1::char_traits<char>, std::__1::allocator<char> >", linkageName: "_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE", scope: !17, file: !1153, line: 1038, type: !2539, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !953, retainedNodes: !190) 
!2539 = !DISubroutineType(types: !2540) 
!2540 = !{!1157, !1157, !406} 
!2541 = !DILocalVariable(name: "__os", arg: 1, scope: !2538, file: !1153, line: 1038, type: !1157) 
!2542 = !DILocation(line: 1038, column: 44, scope: !2538) 
!2543 = !DILocalVariable(name: "__str", arg: 2, scope: !2538, file: !1153, line: 1039, type: !406) 
!2544 = !DILocation(line: 1039, column: 61, scope: !2538) 
!2545 = !DILocation(line: 1041, column: 44, scope: !2538) 
!2546 = !DILocation(line: 1041, column: 50, scope: !2538) 
!2547 = !DILocation(line: 1041, column: 56, scope: !2538) 
!2548 = !DILocation(line: 1041, column: 64, scope: !2538) 
!2549 = !DILocation(line: 1041, column: 70, scope: !2538) 
!2550 = !DILocation(line: 1041, column: 12, scope: !2538) 
!2551 = !DILocation(line: 1041, column: 5, scope: !2538) 
!2552 = distinct !DISubprogram(name: "operator==<char, std::__1::char_traits<char>, std::__1::allocator<char> >", linkageName: "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_", scope: !17, file: !163, line: 4112, type: !2553, scopeLine: 4114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !953, retainedNodes: !190) 
!2553 = !DISubroutineType(types: !2554) 
!2554 = !{!176, !406, !152} 
!2555 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2552, file: !163, line: 4112, type: !406) 
!2556 = !DILocation(line: 4112, column: 59, scope: !2552) 
!2557 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2552, file: !163, line: 4113, type: !152) 
!2558 = !DILocation(line: 4113, column: 26, scope: !2552) 
!2559 = !DILocalVariable(name: "__rhs_len", scope: !2552, file: !163, line: 4117, type: !83) 
!2560 = !DILocation(line: 4117, column: 12, scope: !2552) 
!2561 = !DILocation(line: 4117, column: 40, scope: !2552) 
!2562 = !DILocation(line: 4117, column: 24, scope: !2552) 
!2563 = !DILocation(line: 4118, column: 9, scope: !2564) 
!2564 = distinct !DILexicalBlock(scope: !2552, file: !163, line: 4118, column: 9) 
!2565 = !DILocation(line: 4118, column: 22, scope: !2564) 
!2566 = !DILocation(line: 4118, column: 28, scope: !2564) 
!2567 = !DILocation(line: 4118, column: 19, scope: !2564) 
!2568 = !DILocation(line: 4118, column: 9, scope: !2552) 
!2569 = !DILocation(line: 4118, column: 36, scope: !2564) 
!2570 = !DILocation(line: 4119, column: 12, scope: !2552) 
!2571 = !DILocation(line: 4119, column: 44, scope: !2552) 
!2572 = !DILocation(line: 4119, column: 51, scope: !2552) 
!2573 = !DILocation(line: 4119, column: 18, scope: !2552) 
!2574 = !DILocation(line: 4119, column: 62, scope: !2552) 
!2575 = !DILocation(line: 4119, column: 5, scope: !2552) 
!2576 = !DILocation(line: 4120, column: 1, scope: !2552) 
!2577 = distinct !DISubprogram(name: "basic_string<std::__1::nullptr_t>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc", scope: !162, file: !163, line: 840, type: !2495, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !2498, declaration: !2497, retainedNodes: !190) 
!2578 = !DILocalVariable(name: "this", arg: 1, scope: !2577, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2579 = !DILocation(line: 0, scope: !2577) 
!2580 = !DILocalVariable(name: "__s", arg: 2, scope: !2577, file: !163, line: 840, type: !152) 
!2581 = !DILocation(line: 840, column: 32, scope: !2577) 
!2582 = !DILocation(line: 840, column: 88, scope: !2577) 
!2583 = !DILocation(line: 840, column: 39, scope: !2577) 
!2584 = !DILocation(line: 842, column: 14, scope: !2585) 
!2585 = distinct !DILexicalBlock(scope: !2577, file: !163, line: 840, column: 88) 
!2586 = !DILocation(line: 842, column: 39, scope: !2585) 
!2587 = !DILocation(line: 842, column: 19, scope: !2585) 
!2588 = !DILocation(line: 842, column: 7, scope: !2585) 
!2589 = !DILocation(line: 846, column: 5, scope: !2577) 
!2590 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__default_init_tag, std::__1::__default_init_tag>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_", scope: !259, file: !260, line: 135, type: !2591, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !2595, declaration: !2594, retainedNodes: !190) 
!2591 = !DISubroutineType(types: !2592) 
!2592 = !{null, !362, !2593, !2593} 
!2593 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !307, size: 64) 
!2594 = !DISubprogram(name: "__compressed_pair<std::__1::__default_init_tag, std::__1::__default_init_tag>", scope: !259, file: !260, line: 135, type: !2591, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !2595) 
!2595 = !{!2596, !2597} 
!2596 = !DITemplateTypeParameter(name: "_U1", type: !307) 
!2597 = !DITemplateTypeParameter(name: "_U2", type: !307) 
!2598 = !DILocalVariable(name: "this", arg: 1, scope: !2590, type: !379, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2599 = !DILocation(line: 0, scope: !2590) 
!2600 = !DILocalVariable(name: "__t1", arg: 2, scope: !2590, file: !260, line: 135, type: !2593) 
!2601 = !DILocation(line: 135, column: 27, scope: !2590) 
!2602 = !DILocalVariable(name: "__t2", arg: 3, scope: !2590, file: !260, line: 135, type: !2593) 
!2603 = !DILocation(line: 135, column: 39, scope: !2590) 
!2604 = !DILocation(line: 136, column: 78, scope: !2590) 
!2605 = !DILocation(line: 136, column: 79, scope: !2590) 
!2606 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !565, file: !566, line: 342, type: !584, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !583, retainedNodes: !190) 
!2607 = !DILocalVariable(name: "__s", arg: 1, scope: !2606, file: !566, line: 342, type: !582) 
!2608 = !DILocation(line: 342, column: 29, scope: !2606) 
!2609 = !DILocation(line: 342, column: 70, scope: !2606) 
!2610 = !DILocation(line: 342, column: 53, scope: !2606) 
!2611 = !DILocation(line: 342, column: 46, scope: !2606) 
!2612 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__default_init_tag, std::__1::__default_init_tag>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_", scope: !259, file: !260, line: 135, type: !2591, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !2595, declaration: !2594, retainedNodes: !190) 
!2613 = !DILocalVariable(name: "this", arg: 1, scope: !2612, type: !379, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2614 = !DILocation(line: 0, scope: !2612) 
!2615 = !DILocalVariable(name: "__t1", arg: 2, scope: !2612, file: !260, line: 135, type: !2593) 
!2616 = !DILocation(line: 135, column: 27, scope: !2612) 
!2617 = !DILocalVariable(name: "__t2", arg: 3, scope: !2612, file: !260, line: 135, type: !2593) 
!2618 = !DILocation(line: 135, column: 39, scope: !2612) 
!2619 = !DILocation(line: 136, column: 78, scope: !2612) 
!2620 = !DILocation(line: 136, column: 36, scope: !2612) 
!2621 = !DILocation(line: 136, column: 16, scope: !2612) 
!2622 = !DILocation(line: 136, column: 9, scope: !2612) 
!2623 = !DILocation(line: 136, column: 71, scope: !2612) 
!2624 = !DILocation(line: 136, column: 51, scope: !2612) 
!2625 = !DILocation(line: 136, column: 44, scope: !2612) 
!2626 = !DILocation(line: 136, column: 79, scope: !2612) 
!2627 = distinct !DISubprogram(name: "forward<std::__1::__default_init_tag>", linkageName: "_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE", scope: !17, file: !2628, line: 27, type: !2629, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !2634, retainedNodes: !190) 
!2628 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__utility/forward.h", directory: "") 
!2629 = !DISubroutineType(types: !2630) 
!2630 = !{!2593, !2631} 
!2631 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2632, size: 64) 
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2633, file: !908, line: 1334, baseType: !307) 
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::__default_init_tag>", scope: !17, file: !908, line: 1334, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !2634, identifier: "_ZTSNSt3__116remove_referenceINS_18__default_init_tagEEE") 
!2634 = !{!2635} 
!2635 = !DITemplateTypeParameter(name: "_Tp", type: !307) 
!2636 = !DILocalVariable(name: "__t", arg: 1, scope: !2627, file: !2628, line: 27, type: !2631) 
!2637 = !DILocation(line: 27, column: 47, scope: !2627) 
!2638 = !DILocation(line: 28, column: 29, scope: !2627) 
!2639 = !DILocation(line: 28, column: 3, scope: !2627) 
!2640 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE", scope: !263, file: !260, line: 41, type: !304, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !303, retainedNodes: !190) 
!2641 = !DILocalVariable(name: "this", arg: 1, scope: !2640, type: !2642, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64) 
!2643 = !DILocation(line: 0, scope: !2640) 
!2644 = !DILocalVariable(arg: 2, scope: !2640, file: !260, line: 41, type: !307) 
!2645 = !DILocation(line: 41, column: 44, scope: !2640) 
!2646 = !DILocation(line: 41, column: 3, scope: !2640) 
!2647 = !DILocation(line: 41, column: 47, scope: !2640) 
!2648 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE", scope: !330, file: !260, line: 82, type: !338, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !337, retainedNodes: !190) 
!2649 = !DILocalVariable(name: "this", arg: 1, scope: !2648, type: !2650, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64) 
!2651 = !DILocation(line: 0, scope: !2648) 
!2652 = !DILocalVariable(arg: 2, scope: !2648, file: !260, line: 82, type: !307) 
!2653 = !DILocation(line: 82, column: 44, scope: !2648) 
!2654 = !DILocation(line: 82, column: 46, scope: !2648) 
!2655 = !DILocation(line: 82, column: 3, scope: !2648) 
!2656 = !DILocation(line: 82, column: 47, scope: !2648) 
!2657 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSt3__19allocatorIcEC2Ev", scope: !194, file: !195, line: 94, type: !208, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !207, retainedNodes: !190) 
!2658 = !DILocalVariable(name: "this", arg: 1, scope: !2657, type: !2659, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64) 
!2660 = !DILocation(line: 0, scope: !2657) 
!2661 = !DILocation(line: 94, column: 27, scope: !2657) 
!2662 = !DILocation(line: 94, column: 5, scope: !2657) 
!2663 = distinct !DISubprogram(name: "__non_trivial_if", linkageName: "_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev", scope: !198, file: !195, line: 74, type: !201, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !200, retainedNodes: !190) 
!2664 = !DILocalVariable(name: "this", arg: 1, scope: !2663, type: !2665, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64) 
!2666 = !DILocation(line: 0, scope: !2663) 
!2667 = !DILocation(line: 74, column: 54, scope: !2663) 
!2668 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !162, file: !163, line: 1549, type: !866, scopeLine: 1550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !879, retainedNodes: !190) 
!2669 = !DILocalVariable(name: "this", arg: 1, scope: !2668, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2670 = !DILocation(line: 0, scope: !2668) 
!2671 = !DILocation(line: 1550, column: 17, scope: !2668) 
!2672 = !DILocation(line: 1550, column: 31, scope: !2668) 
!2673 = !DILocation(line: 1550, column: 54, scope: !2668) 
!2674 = !DILocation(line: 1550, column: 10, scope: !2668) 
!2675 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !162, file: !163, line: 1458, type: !674, scopeLine: 1459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !847, retainedNodes: !190) 
!2676 = !DILocalVariable(name: "this", arg: 1, scope: !2675, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64) 
!2678 = !DILocation(line: 0, scope: !2675) 
!2679 = !DILocation(line: 1459, column: 22, scope: !2675) 
!2680 = !DILocation(line: 1459, column: 27, scope: !2675) 
!2681 = !DILocation(line: 1459, column: 35, scope: !2675) 
!2682 = !DILocation(line: 1459, column: 39, scope: !2675) 
!2683 = !DILocation(line: 1459, column: 47, scope: !2675) 
!2684 = !DILocation(line: 1459, column: 10, scope: !2675) 
!2685 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !162, file: !163, line: 1537, type: !866, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !865, retainedNodes: !190) 
!2686 = !DILocalVariable(name: "this", arg: 1, scope: !2685, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2687 = !DILocation(line: 0, scope: !2685) 
!2688 = !DILocation(line: 1538, column: 17, scope: !2685) 
!2689 = !DILocation(line: 1538, column: 22, scope: !2685) 
!2690 = !DILocation(line: 1538, column: 30, scope: !2685) 
!2691 = !DILocation(line: 1538, column: 34, scope: !2685) 
!2692 = !DILocation(line: 1538, column: 10, scope: !2685) 
!2693 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !162, file: !163, line: 1543, type: !866, scopeLine: 1544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !877, retainedNodes: !190) 
!2694 = !DILocalVariable(name: "this", arg: 1, scope: !2693, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2695 = !DILocation(line: 0, scope: !2693) 
!2696 = !DILocation(line: 1544, column: 53, scope: !2693) 
!2697 = !DILocation(line: 1544, column: 58, scope: !2693) 
!2698 = !DILocation(line: 1544, column: 66, scope: !2693) 
!2699 = !DILocation(line: 1544, column: 70, scope: !2693) 
!2700 = !DILocation(line: 1544, column: 17, scope: !2693) 
!2701 = !DILocation(line: 1544, column: 10, scope: !2693) 
!2702 = distinct !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !259, file: !260, line: 155, type: !364, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !363, retainedNodes: !190) 
!2703 = !DILocalVariable(name: "this", arg: 1, scope: !2702, type: !2704, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64) 
!2705 = !DILocation(line: 0, scope: !2702) 
!2706 = !DILocation(line: 156, column: 39, scope: !2702) 
!2707 = !DILocation(line: 156, column: 46, scope: !2702) 
!2708 = !DILocation(line: 156, column: 5, scope: !2702) 
!2709 = distinct !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !263, file: !260, line: 67, type: !318, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !317, retainedNodes: !190) 
!2710 = !DILocalVariable(name: "this", arg: 1, scope: !2709, type: !2711, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64) 
!2712 = !DILocation(line: 0, scope: !2709) 
!2713 = !DILocation(line: 67, column: 52, scope: !2709) 
!2714 = !DILocation(line: 67, column: 45, scope: !2709) 
!2715 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !259, file: !260, line: 150, type: !360, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !359, retainedNodes: !190) 
!2716 = !DILocalVariable(name: "this", arg: 1, scope: !2715, type: !379, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2717 = !DILocation(line: 0, scope: !2715) 
!2718 = !DILocation(line: 151, column: 33, scope: !2715) 
!2719 = !DILocation(line: 151, column: 40, scope: !2715) 
!2720 = !DILocation(line: 151, column: 5, scope: !2715) 
!2721 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !263, file: !260, line: 65, type: !313, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !312, retainedNodes: !190) 
!2722 = !DILocalVariable(name: "this", arg: 1, scope: !2721, type: !2642, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2723 = !DILocation(line: 0, scope: !2721) 
!2724 = !DILocation(line: 65, column: 66, scope: !2721) 
!2725 = !DILocation(line: 65, column: 59, scope: !2721) 
!2726 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !2728, file: !2727, line: 152, type: !2731, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !2730, retainedNodes: !190) 
!2727 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/pointer_traits.h", directory: "") 
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !17, file: !2727, line: 136, size: 8, flags: DIFlagTypePassByValue, elements: !2729, templateParams: !2742, identifier: "_ZTSNSt3__114pointer_traitsIPcEE") 
!2729 = !{!2730} 
!2730 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !2728, file: !2727, line: 152, type: !2731, scopeLine: 152, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!2731 = !DISubroutineType(types: !2732) 
!2732 = !{!2733, !2734} 
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2728, file: !2727, line: 138, baseType: !214) 
!2734 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2735, size: 64) 
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2736, file: !908, line: 540, baseType: !154) 
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<char *>::__nat, char>", scope: !17, file: !908, line: 540, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !2737, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPcE5__natEcEE") 
!2737 = !{!2738, !2739, !2741} 
!2738 = !DITemplateValueParameter(name: "_Bp", type: !176, value: i8 0) 
!2739 = !DITemplateTypeParameter(name: "_If", type: !2740) 
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !2728, file: !2727, line: 149, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__114pointer_traitsIPcE5__natE") 
!2741 = !DITemplateTypeParameter(name: "_Then", type: !154) 
!2742 = !{!876} 
!2743 = !DILocalVariable(name: "__r", arg: 1, scope: !2726, file: !2727, line: 153, type: !2734) 
!2744 = !DILocation(line: 153, column: 67, scope: !2726) 
!2745 = !DILocation(line: 154, column: 34, scope: !2726) 
!2746 = !DILocation(line: 154, column: 17, scope: !2726) 
!2747 = !DILocation(line: 154, column: 10, scope: !2726) 
!2748 = distinct !DISubprogram(name: "addressof<char>", linkageName: "_ZNSt3__1L9addressofIcEEPT_RS1_", scope: !17, file: !2749, line: 30, type: !2750, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !244, retainedNodes: !190) 
!2749 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/__memory/addressof.h", directory: "") 
!2750 = !DISubroutineType(types: !2751) 
!2751 = !{!214, !225} 
!2752 = !DILocalVariable(name: "__x", arg: 1, scope: !2748, file: !2749, line: 30, type: !225) 
!2753 = !DILocation(line: 30, column: 16, scope: !2748) 
!2754 = !DILocation(line: 32, column: 32, scope: !2748) 
!2755 = !DILocation(line: 32, column: 5, scope: !2748) 
!2756 = !DILocalVariable(name: "__os", arg: 1, scope: !1154, file: !1153, line: 707, type: !1157) 
!2757 = !DILocation(line: 707, column: 58, scope: !1154) 
!2758 = !DILocalVariable(name: "__str", arg: 2, scope: !1154, file: !1153, line: 708, type: !152) 
!2759 = !DILocation(line: 708, column: 41, scope: !1154) 
!2760 = !DILocalVariable(name: "__len", arg: 3, scope: !1154, file: !1153, line: 708, type: !83) 
!2761 = !DILocation(line: 708, column: 55, scope: !1154) 
!2762 = !DILocalVariable(name: "__s", scope: !2763, file: !1153, line: 714, type: !2764) 
!2763 = distinct !DILexicalBlock(scope: !1154, file: !1153, line: 712, column: 5) 
!2764 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1158, file: !1153, line: 184, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2765, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE") 
!2765 = !{!2766, !2767, !2768, !2774, !2778, !2781, !2784} 
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !2764, file: !1153, line: 240, baseType: !176, size: 8) 
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !2764, file: !1153, line: 241, baseType: !1157, size: 64, offset: 64) 
!2768 = !DISubprogram(name: "sentry", scope: !2764, file: !1153, line: 243, type: !2769, scopeLine: 243, flags: DIFlagPrototyped, spFlags: 0) 
!2769 = !DISubroutineType(types: !2770) 
!2770 = !{null, !2771, !2772} 
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2772 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2773, size: 64) 
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764) 
!2774 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !2764, file: !1153, line: 244, type: !2775, scopeLine: 244, flags: DIFlagPrototyped, spFlags: 0) 
!2775 = !DISubroutineType(types: !2776) 
!2776 = !{!2777, !2771, !2772} 
!2777 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2764, size: 64) 
!2778 = !DISubprogram(name: "sentry", scope: !2764, file: !1153, line: 247, type: !2779, scopeLine: 247, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0) 
!2779 = !DISubroutineType(types: !2780) 
!2780 = !{null, !2771, !1157} 
!2781 = !DISubprogram(name: "~sentry", scope: !2764, file: !1153, line: 248, type: !2782, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0) 
!2782 = !DISubroutineType(types: !2783) 
!2783 = !{null, !2771} 
!2784 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !2764, file: !1153, line: 251, type: !2785, scopeLine: 251, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!2785 = !DISubroutineType(types: !2786) 
!2786 = !{!176, !2787} 
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2788 = !DILocation(line: 714, column: 57, scope: !2763) 
!2789 = !DILocation(line: 714, column: 61, scope: !2763) 
!2790 = !DILocation(line: 715, column: 13, scope: !2791) 
!2791 = distinct !DILexicalBlock(scope: !2763, file: !1153, line: 715, column: 13) 
!2792 = !DILocation(line: 715, column: 13, scope: !2763) 
!2793 = !DILocation(line: 718, column: 38, scope: !2794) 
!2794 = distinct !DILexicalBlock(scope: !2795, file: !1153, line: 718, column: 17) 
!2795 = distinct !DILexicalBlock(scope: !2791, file: !1153, line: 716, column: 9) 
!2796 = !DILocation(line: 718, column: 34, scope: !2794) 
!2797 = !DILocation(line: 719, column: 34, scope: !2794) 
!2798 = !DILocation(line: 720, column: 35, scope: !2794) 
!2799 = !DILocation(line: 720, column: 40, scope: !2794) 
!2800 = !DILocation(line: 720, column: 48, scope: !2794) 
!2801 = !DILocation(line: 720, column: 73, scope: !2794) 
!2802 = !DILocation(line: 720, column: 34, scope: !2794) 
!2803 = !DILocation(line: 721, column: 38, scope: !2794) 
!2804 = !DILocation(line: 721, column: 46, scope: !2794) 
!2805 = !DILocation(line: 721, column: 44, scope: !2794) 
!2806 = !DILocation(line: 722, column: 38, scope: !2794) 
!2807 = !DILocation(line: 723, column: 34, scope: !2794) 
!2808 = !DILocation(line: 723, column: 42, scope: !2794) 
!2809 = !DILocation(line: 723, column: 40, scope: !2794) 
!2810 = !DILocation(line: 724, column: 34, scope: !2794) 
!2811 = !DILocation(line: 725, column: 34, scope: !2794) 
!2812 = !DILocation(line: 725, column: 39, scope: !2794) 
!2813 = !DILocation(line: 718, column: 17, scope: !2794) 
!2814 = !DILocation(line: 725, column: 47, scope: !2794) 
!2815 = !DILocation(line: 718, column: 17, scope: !2795) 
!2816 = !DILocation(line: 726, column: 17, scope: !2794) 
!2817 = !DILocation(line: 726, column: 22, scope: !2794) 
!2818 = !DILocation(line: 736, column: 1, scope: !2763) 
!2819 = !DILocation(line: 736, column: 1, scope: !2791) 
!2820 = !DILocation(line: 729, column: 5, scope: !1154) 
!2821 = !DILocation(line: 727, column: 9, scope: !2795) 
!2822 = !DILocation(line: 729, column: 5, scope: !2763) 
!2823 = !DILocation(line: 732, column: 9, scope: !2824) 
!2824 = distinct !DILexicalBlock(scope: !1154, file: !1153, line: 731, column: 5) 
!2825 = !DILocation(line: 732, column: 14, scope: !2824) 
!2826 = !DILocation(line: 733, column: 5, scope: !2824) 
!2827 = !DILocation(line: 735, column: 12, scope: !1154) 
!2828 = !DILocation(line: 735, column: 5, scope: !1154) 
!2829 = !DILocation(line: 736, column: 1, scope: !2824) 
!2830 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !162, file: !163, line: 1265, type: !788, scopeLine: 1265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !790, retainedNodes: !190) 
!2831 = !DILocalVariable(name: "this", arg: 1, scope: !2830, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2832 = !DILocation(line: 0, scope: !2830) 
!2833 = !DILocation(line: 1265, column: 75, scope: !2830) 
!2834 = !DILocation(line: 1265, column: 55, scope: !2830) 
!2835 = !DILocation(line: 1265, column: 48, scope: !2830) 
!2836 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !162, file: !163, line: 977, type: !657, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !656, retainedNodes: !190) 
!2837 = !DILocalVariable(name: "this", arg: 1, scope: !2836, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2838 = !DILocation(line: 0, scope: !2836) 
!2839 = !DILocation(line: 978, column: 17, scope: !2836) 
!2840 = !DILocation(line: 978, column: 31, scope: !2836) 
!2841 = !DILocation(line: 978, column: 51, scope: !2836) 
!2842 = !DILocation(line: 978, column: 10, scope: !2836) 
!2843 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !2764, file: !1153, line: 251, type: !2785, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !2784, retainedNodes: !190) 
!2844 = !DILocalVariable(name: "this", arg: 1, scope: !2843, type: !2845, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64) 
!2846 = !DILocation(line: 0, scope: !2843) 
!2847 = !DILocation(line: 251, column: 44, scope: !2843) 
!2848 = !DILocation(line: 251, column: 37, scope: !2843) 
!2849 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !17, file: !2850, line: 1395, type: !2851, scopeLine: 1398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, templateParams: !563, retainedNodes: !190) 
!2850 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1/locale", directory: "") 
!2851 = !DISubroutineType(types: !2852) 
!2852 = !{!1496, !1496, !152, !152, !152, !79, !154} 
!2853 = !DILocalVariable(name: "__s", arg: 1, scope: !2849, file: !2850, line: 1395, type: !1496) 
!2854 = !DILocation(line: 1395, column: 55, scope: !2849) 
!2855 = !DILocalVariable(name: "__ob", arg: 2, scope: !2849, file: !2850, line: 1396, type: !152) 
!2856 = !DILocation(line: 1396, column: 32, scope: !2849) 
!2857 = !DILocalVariable(name: "__op", arg: 3, scope: !2849, file: !2850, line: 1396, type: !152) 
!2858 = !DILocation(line: 1396, column: 52, scope: !2849) 
!2859 = !DILocalVariable(name: "__oe", arg: 4, scope: !2849, file: !2850, line: 1396, type: !152) 
!2860 = !DILocation(line: 1396, column: 72, scope: !2849) 
!2861 = !DILocalVariable(name: "__iob", arg: 5, scope: !2849, file: !2850, line: 1397, type: !79) 
!2862 = !DILocation(line: 1397, column: 28, scope: !2849) 
!2863 = !DILocalVariable(name: "__fl", arg: 6, scope: !2849, file: !2850, line: 1397, type: !154) 
!2864 = !DILocation(line: 1397, column: 42, scope: !2849) 
!2865 = !DILocation(line: 1399, column: 13, scope: !2866) 
!2866 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 1399, column: 9) 
!2867 = !DILocation(line: 1399, column: 24, scope: !2866) 
!2868 = !DILocation(line: 1399, column: 21, scope: !2866) 
!2869 = !DILocation(line: 1399, column: 9, scope: !2849) 
!2870 = !DILocation(line: 1400, column: 16, scope: !2866) 
!2871 = !DILocation(line: 1400, column: 9, scope: !2866) 
!2872 = !DILocalVariable(name: "__sz", scope: !2849, file: !2850, line: 1401, type: !63) 
!2873 = !DILocation(line: 1401, column: 16, scope: !2849) 
!2874 = !DILocation(line: 1401, column: 23, scope: !2849) 
!2875 = !DILocation(line: 1401, column: 30, scope: !2849) 
!2876 = !DILocation(line: 1401, column: 28, scope: !2849) 
!2877 = !DILocalVariable(name: "__ns", scope: !2849, file: !2850, line: 1402, type: !63) 
!2878 = !DILocation(line: 1402, column: 16, scope: !2849) 
!2879 = !DILocation(line: 1402, column: 23, scope: !2849) 
!2880 = !DILocation(line: 1402, column: 29, scope: !2849) 
!2881 = !DILocation(line: 1403, column: 9, scope: !2882) 
!2882 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 1403, column: 9) 
!2883 = !DILocation(line: 1403, column: 16, scope: !2882) 
!2884 = !DILocation(line: 1403, column: 14, scope: !2882) 
!2885 = !DILocation(line: 1403, column: 9, scope: !2849) 
!2886 = !DILocation(line: 1404, column: 17, scope: !2882) 
!2887 = !DILocation(line: 1404, column: 14, scope: !2882) 
!2888 = !DILocation(line: 1404, column: 9, scope: !2882) 
!2889 = !DILocation(line: 1406, column: 14, scope: !2882) 
!2890 = !DILocalVariable(name: "__np", scope: !2849, file: !2850, line: 1407, type: !63) 
!2891 = !DILocation(line: 1407, column: 16, scope: !2849) 
!2892 = !DILocation(line: 1407, column: 23, scope: !2849) 
!2893 = !DILocation(line: 1407, column: 30, scope: !2849) 
!2894 = !DILocation(line: 1407, column: 28, scope: !2849) 
!2895 = !DILocation(line: 1408, column: 9, scope: !2896) 
!2896 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 1408, column: 9) 
!2897 = !DILocation(line: 1408, column: 14, scope: !2896) 
!2898 = !DILocation(line: 1408, column: 9, scope: !2849) 
!2899 = !DILocation(line: 1410, column: 17, scope: !2900) 
!2900 = distinct !DILexicalBlock(scope: !2901, file: !2850, line: 1410, column: 13) 
!2901 = distinct !DILexicalBlock(scope: !2896, file: !2850, line: 1409, column: 5) 
!2902 = !DILocation(line: 1410, column: 32, scope: !2900) 
!2903 = !DILocation(line: 1410, column: 38, scope: !2900) 
!2904 = !DILocation(line: 1410, column: 26, scope: !2900) 
!2905 = !DILocation(line: 1410, column: 47, scope: !2900) 
!2906 = !DILocation(line: 1410, column: 44, scope: !2900) 
!2907 = !DILocation(line: 1410, column: 13, scope: !2901) 
!2908 = !DILocation(line: 1412, column: 27, scope: !2909) 
!2909 = distinct !DILexicalBlock(scope: !2900, file: !2850, line: 1411, column: 9) 
!2910 = !DILocation(line: 1412, column: 17, scope: !2909) 
!2911 = !DILocation(line: 1412, column: 25, scope: !2909) 
!2912 = !DILocation(line: 1413, column: 20, scope: !2909) 
!2913 = !DILocation(line: 1413, column: 13, scope: !2909) 
!2914 = !DILocation(line: 1415, column: 5, scope: !2901) 
!2915 = !DILocation(line: 1416, column: 9, scope: !2916) 
!2916 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 1416, column: 9) 
!2917 = !DILocation(line: 1416, column: 14, scope: !2916) 
!2918 = !DILocation(line: 1416, column: 9, scope: !2849) 
!2919 = !DILocalVariable(name: "__sp", scope: !2920, file: !2850, line: 1418, type: !162) 
!2920 = distinct !DILexicalBlock(scope: !2916, file: !2850, line: 1417, column: 5) 
!2921 = !DILocation(line: 1418, column: 39, scope: !2920) 
!2922 = !DILocation(line: 1418, column: 44, scope: !2920) 
!2923 = !DILocation(line: 1418, column: 50, scope: !2920) 
!2924 = !DILocation(line: 1419, column: 17, scope: !2925) 
!2925 = distinct !DILexicalBlock(scope: !2920, file: !2850, line: 1419, column: 13) 
!2926 = !DILocation(line: 1419, column: 37, scope: !2925) 
!2927 = !DILocation(line: 1419, column: 45, scope: !2925) 
!2928 = !DILocation(line: 1419, column: 26, scope: !2925) 
!2929 = !DILocation(line: 1419, column: 54, scope: !2925) 
!2930 = !DILocation(line: 1419, column: 51, scope: !2925) 
!2931 = !DILocation(line: 1419, column: 13, scope: !2920) 
!2932 = !DILocation(line: 1421, column: 27, scope: !2933) 
!2933 = distinct !DILexicalBlock(scope: !2925, file: !2850, line: 1420, column: 9) 
!2934 = !DILocation(line: 1421, column: 17, scope: !2933) 
!2935 = !DILocation(line: 1421, column: 25, scope: !2933) 
!2936 = !DILocation(line: 1422, column: 20, scope: !2933) 
!2937 = !DILocation(line: 1422, column: 13, scope: !2933) 
!2938 = !DILocation(line: 1436, column: 1, scope: !2925) 
!2939 = !DILocation(line: 1424, column: 5, scope: !2916) 
!2940 = !DILocation(line: 1424, column: 5, scope: !2920) 
!2941 = !DILocation(line: 1425, column: 12, scope: !2849) 
!2942 = !DILocation(line: 1425, column: 19, scope: !2849) 
!2943 = !DILocation(line: 1425, column: 17, scope: !2849) 
!2944 = !DILocation(line: 1425, column: 10, scope: !2849) 
!2945 = !DILocation(line: 1426, column: 9, scope: !2946) 
!2946 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 1426, column: 9) 
!2947 = !DILocation(line: 1426, column: 14, scope: !2946) 
!2948 = !DILocation(line: 1426, column: 9, scope: !2849) 
!2949 = !DILocation(line: 1428, column: 17, scope: !2950) 
!2950 = distinct !DILexicalBlock(scope: !2951, file: !2850, line: 1428, column: 13) 
!2951 = distinct !DILexicalBlock(scope: !2946, file: !2850, line: 1427, column: 5) 
!2952 = !DILocation(line: 1428, column: 32, scope: !2950) 
!2953 = !DILocation(line: 1428, column: 38, scope: !2950) 
!2954 = !DILocation(line: 1428, column: 26, scope: !2950) 
!2955 = !DILocation(line: 1428, column: 47, scope: !2950) 
!2956 = !DILocation(line: 1428, column: 44, scope: !2950) 
!2957 = !DILocation(line: 1428, column: 13, scope: !2951) 
!2958 = !DILocation(line: 1430, column: 27, scope: !2959) 
!2959 = distinct !DILexicalBlock(scope: !2950, file: !2850, line: 1429, column: 9) 
!2960 = !DILocation(line: 1430, column: 17, scope: !2959) 
!2961 = !DILocation(line: 1430, column: 25, scope: !2959) 
!2962 = !DILocation(line: 1431, column: 20, scope: !2959) 
!2963 = !DILocation(line: 1431, column: 13, scope: !2959) 
!2964 = !DILocation(line: 1433, column: 5, scope: !2951) 
!2965 = !DILocation(line: 1434, column: 5, scope: !2849) 
!2966 = !DILocation(line: 1434, column: 11, scope: !2849) 
!2967 = !DILocation(line: 1435, column: 12, scope: !2849) 
!2968 = !DILocation(line: 1435, column: 5, scope: !2849) 
!2969 = !DILocation(line: 1436, column: 1, scope: !2849) 
!2970 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE", scope: !1496, file: !1497, line: 53, type: !1514, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1513, retainedNodes: !190) 
!2971 = !DILocalVariable(name: "this", arg: 1, scope: !2970, type: !2972, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64) 
!2973 = !DILocation(line: 0, scope: !2970) 
!2974 = !DILocalVariable(name: "__s", arg: 2, scope: !2970, file: !1497, line: 53, type: !1517) 
!2975 = !DILocation(line: 53, column: 65, scope: !2970) 
!2976 = !DILocation(line: 54, column: 32, scope: !2970) 
!2977 = !DILocation(line: 54, column: 33, scope: !2970) 
!2978 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !16, file: !15, line: 459, type: !98, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !97, retainedNodes: !190) 
!2979 = !DILocalVariable(name: "this", arg: 1, scope: !2978, type: !2980, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64) 
!2981 = !DILocation(line: 0, scope: !2978) 
!2982 = !DILocation(line: 461, column: 12, scope: !2978) 
!2983 = !DILocation(line: 461, column: 5, scope: !2978) 
!2984 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1161, file: !15, line: 772, type: !1331, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1330, retainedNodes: !190) 
!2985 = !DILocalVariable(name: "this", arg: 1, scope: !2984, type: !2986, flags: DIFlagArtificial | DIFlagObjectPointer) 
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64) 
!2987 = !DILocation(line: 0, scope: !2984) 
!2988 = !DILocation(line: 774, column: 34, scope: !2989) 
!2989 = distinct !DILexicalBlock(scope: !2984, file: !15, line: 774, column: 9) 
!2990 = !DILocation(line: 774, column: 54, scope: !2989) 
!2991 = !DILocation(line: 774, column: 9, scope: !2989) 
!2992 = !DILocation(line: 774, column: 9, scope: !2984) 
!2993 = !DILocation(line: 775, column: 19, scope: !2989) 
!2994 = !DILocation(line: 775, column: 9, scope: !2989) 
!2995 = !DILocation(line: 775, column: 17, scope: !2989) 
!2996 = !DILocation(line: 776, column: 12, scope: !2984) 
!2997 = !DILocation(line: 776, column: 5, scope: !2984) 
!2998 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1496, file: !1497, line: 66, type: !1534, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1533, retainedNodes: !190) 
!2999 = !DILocalVariable(name: "this", arg: 1, scope: !2998, type: !3000, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64) 
!3001 = !DILocation(line: 0, scope: !2998) 
!3002 = !DILocation(line: 66, column: 69, scope: !2998) 
!3003 = !DILocation(line: 66, column: 80, scope: !2998) 
!3004 = !DILocation(line: 66, column: 77, scope: !2998) 
!3005 = !DILocation(line: 66, column: 62, scope: !2998) 
!3006 = !DILocation(line: 66, column: 88, scope: !2998) 
!3007 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1161, file: !15, line: 623, type: !1181, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1184, retainedNodes: !190) 
!3008 = !DILocalVariable(name: "this", arg: 1, scope: !3007, type: !3009, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64) 
!3010 = !DILocation(line: 0, scope: !3007) 
!3011 = !DILocalVariable(name: "__state", arg: 2, scope: !3007, file: !15, line: 623, type: !49) 
!3012 = !DILocation(line: 623, column: 53, scope: !3007) 
!3013 = !DILocation(line: 623, column: 73, scope: !3007) 
!3014 = !DILocation(line: 623, column: 82, scope: !3007) 
!3015 = !DILocation(line: 623, column: 91, scope: !3007) 
!3016 = distinct !DISubprogram(name: "__get_nullptr_t", linkageName: "_ZNSt3__1L15__get_nullptr_tEv", scope: !17, file: !1453, line: 46, type: !3017, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !190) 
!3017 = !DISubroutineType(types: !3018) 
!3018 = !{!1452} 
!3019 = !DILocation(line: 46, column: 88, scope: !3016) 
!3020 = !DILocation(line: 46, column: 81, scope: !3016) 
!3021 = distinct !DISubprogram(name: "operator std::streambuf *<std::__1::basic_streambuf<char, std::__1::char_traits<char> > >", linkageName: "_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv", scope: !1452, file: !1453, line: 36, type: !3022, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !3025, declaration: !3024, retainedNodes: !190) 
!3022 = !DISubroutineType(types: !3023) 
!3023 = !{!1194, !1470} 
!3024 = !DISubprogram(name: "operator std::streambuf *<std::__1::basic_streambuf<char, std::__1::char_traits<char> > >", linkageName: "_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv", scope: !1452, file: !1453, line: 36, type: !3022, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !3025) 
!3025 = !{!3026} 
!3026 = !DITemplateTypeParameter(name: "_Tp", type: !1195) 
!3027 = !DILocalVariable(name: "this", arg: 1, scope: !3021, type: !3028, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64) 
!3029 = !DILocation(line: 0, scope: !3021) 
!3030 = !DILocation(line: 36, column: 33, scope: !3021) 
!3031 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !16, file: !15, line: 521, type: !114, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !119, retainedNodes: !190) 
!3032 = !DILocalVariable(name: "this", arg: 1, scope: !3031, type: !2980, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3033 = !DILocation(line: 0, scope: !3031) 
!3034 = !DILocation(line: 523, column: 12, scope: !3031) 
!3035 = !DILocation(line: 523, column: 5, scope: !3031) 
!3036 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1195, file: !1162, line: 228, type: !1257, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1256, retainedNodes: !190) 
!3037 = !DILocalVariable(name: "this", arg: 1, scope: !3036, type: !1194, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3038 = !DILocation(line: 0, scope: !3036) 
!3039 = !DILocalVariable(name: "__s", arg: 2, scope: !3036, file: !1162, line: 228, type: !1259) 
!3040 = !DILocation(line: 228, column: 39, scope: !3036) 
!3041 = !DILocalVariable(name: "__n", arg: 3, scope: !3036, file: !1162, line: 228, type: !63) 
!3042 = !DILocation(line: 228, column: 55, scope: !3036) 
!3043 = !DILocation(line: 229, column: 21, scope: !3036) 
!3044 = !DILocation(line: 229, column: 26, scope: !3036) 
!3045 = !DILocation(line: 229, column: 14, scope: !3036) 
!3046 = !DILocation(line: 229, column: 7, scope: !3036) 
!3047 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc", scope: !162, file: !163, line: 2056, type: !418, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !417, retainedNodes: !190) 
!3048 = !DILocalVariable(name: "this", arg: 1, scope: !3047, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3049 = !DILocation(line: 0, scope: !3047) 
!3050 = !DILocalVariable(name: "__n", arg: 2, scope: !3047, file: !163, line: 861, type: !179) 
!3051 = !DILocation(line: 861, column: 28, scope: !3047) 
!3052 = !DILocalVariable(name: "__c", arg: 3, scope: !3047, file: !163, line: 861, type: !154) 
!3053 = !DILocation(line: 861, column: 40, scope: !3047) 
!3054 = !DILocation(line: 2058, column: 1, scope: !3047) 
!3055 = !DILocation(line: 2063, column: 1, scope: !3047) 
!3056 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !16, file: !15, line: 528, type: !117, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !120, retainedNodes: !190) 
!3057 = !DILocalVariable(name: "this", arg: 1, scope: !3056, type: !3058, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64) 
!3059 = !DILocation(line: 0, scope: !3056) 
!3060 = !DILocalVariable(name: "__wide", arg: 2, scope: !3056, file: !15, line: 528, type: !63) 
!3061 = !DILocation(line: 528, column: 28, scope: !3056) 
!3062 = !DILocalVariable(name: "__r", scope: !3056, file: !15, line: 530, type: !63) 
!3063 = !DILocation(line: 530, column: 16, scope: !3056) 
!3064 = !DILocation(line: 530, column: 22, scope: !3056) 
!3065 = !DILocation(line: 531, column: 16, scope: !3056) 
!3066 = !DILocation(line: 531, column: 5, scope: !3056) 
!3067 = !DILocation(line: 531, column: 14, scope: !3056) 
!3068 = !DILocation(line: 532, column: 12, scope: !3056) 
!3069 = !DILocation(line: 532, column: 5, scope: !3056) 
!3070 = distinct !DISubprogram(name: "nullptr_t", linkageName: "_ZNSt3__19nullptr_tC1EMNS0_5__natEi", scope: !1452, file: !1453, line: 30, type: !1461, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1460, retainedNodes: !190) 
!3071 = !DILocalVariable(name: "this", arg: 1, scope: !3070, type: !3072, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64) 
!3073 = !DILocation(line: 0, scope: !3070) 
!3074 = !DILocalVariable(arg: 2, scope: !3070, file: !1453, line: 30, type: !1463) 
!3075 = !DILocation(line: 30, column: 71, scope: !3070) 
!3076 = !DILocation(line: 30, column: 83, scope: !3070) 
!3077 = !DILocation(line: 30, column: 84, scope: !3070) 
!3078 = distinct !DISubprogram(name: "nullptr_t", linkageName: "_ZNSt3__19nullptr_tC2EMNS0_5__natEi", scope: !1452, file: !1453, line: 30, type: !1461, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1460, retainedNodes: !190) 
!3079 = !DILocalVariable(name: "this", arg: 1, scope: !3078, type: !3072, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3080 = !DILocation(line: 0, scope: !3078) 
!3081 = !DILocalVariable(arg: 2, scope: !3078, file: !1453, line: 30, type: !1463) 
!3082 = !DILocation(line: 30, column: 71, scope: !3078) 
!3083 = !DILocation(line: 30, column: 75, scope: !3078) 
!3084 = !DILocation(line: 30, column: 84, scope: !3078) 
!3085 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc", scope: !162, file: !163, line: 2056, type: !418, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !417, retainedNodes: !190) 
!3086 = !DILocalVariable(name: "this", arg: 1, scope: !3085, type: !2501, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3087 = !DILocation(line: 0, scope: !3085) 
!3088 = !DILocalVariable(name: "__n", arg: 2, scope: !3085, file: !163, line: 861, type: !179) 
!3089 = !DILocation(line: 861, column: 28, scope: !3085) 
!3090 = !DILocalVariable(name: "__c", arg: 3, scope: !3085, file: !163, line: 861, type: !154) 
!3091 = !DILocation(line: 861, column: 40, scope: !3085) 
!3092 = !DILocation(line: 2058, column: 1, scope: !3085) 
!3093 = !DILocation(line: 2057, column: 8, scope: !3085) 
!3094 = !DILocation(line: 2059, column: 12, scope: !3095) 
!3095 = distinct !DILexicalBlock(scope: !3085, file: !163, line: 2058, column: 1) 
!3096 = !DILocation(line: 2059, column: 17, scope: !3095) 
!3097 = !DILocation(line: 2059, column: 5, scope: !3095) 
!3098 = !DILocation(line: 2063, column: 1, scope: !3085) 
!3099 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE", scope: !1496, file: !1497, line: 53, type: !1514, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1513, retainedNodes: !190) 
!3100 = !DILocalVariable(name: "this", arg: 1, scope: !3099, type: !2972, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3101 = !DILocation(line: 0, scope: !3099) 
!3102 = !DILocalVariable(name: "__s", arg: 2, scope: !3099, file: !1497, line: 53, type: !1517) 
!3103 = !DILocation(line: 53, column: 65, scope: !3099) 
!3104 = !DILocation(line: 54, column: 32, scope: !3099) 
!3105 = !DILocation(line: 54, column: 11, scope: !3099) 
!3106 = !DILocation(line: 54, column: 19, scope: !3099) 
!3107 = !DILocation(line: 54, column: 23, scope: !3099) 
!3108 = !DILocation(line: 54, column: 33, scope: !3099) 
!3109 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1161, file: !15, line: 726, type: !1320, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1319, retainedNodes: !190) 
!3110 = !DILocalVariable(name: "this", arg: 1, scope: !3109, type: !2986, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3111 = !DILocation(line: 0, scope: !3109) 
!3112 = !DILocation(line: 728, column: 76, scope: !3109) 
!3113 = !DILocation(line: 728, column: 12, scope: !3109) 
!3114 = !DILocation(line: 728, column: 5, scope: !3109) 
!3115 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !16, file: !15, line: 348, type: !1130, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1129, retainedNodes: !190) 
!3116 = !DILocalVariable(name: "this", arg: 1, scope: !3115, type: !2980, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3117 = !DILocation(line: 0, scope: !3115) 
!3118 = !DILocation(line: 348, column: 59, scope: !3115) 
!3119 = !DILocation(line: 348, column: 52, scope: !3115) 
!3120 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !565, file: !566, line: 374, type: !608, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !607, retainedNodes: !190) 
!3121 = !DILocalVariable(name: "__c1", arg: 1, scope: !3120, file: !566, line: 374, type: !600) 
!3122 = !DILocation(line: 374, column: 63, scope: !3120) 
!3123 = !DILocalVariable(name: "__c2", arg: 2, scope: !3120, file: !566, line: 374, type: !600) 
!3124 = !DILocation(line: 374, column: 78, scope: !3120) 
!3125 = !DILocation(line: 375, column: 17, scope: !3120) 
!3126 = !DILocation(line: 375, column: 25, scope: !3120) 
!3127 = !DILocation(line: 375, column: 22, scope: !3120) 
!3128 = !DILocation(line: 375, column: 10, scope: !3120) 
!3129 = distinct !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !565, file: !566, line: 376, type: !611, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, declaration: !610, retainedNodes: !190) 
!3130 = !DILocation(line: 377, column: 10, scope: !3129) 
!3131 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1161, file: !15, line: 764, type: !1344, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1343, retainedNodes: !190) 
!3132 = !DILocalVariable(name: "this", arg: 1, scope: !3131, type: !2986, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3133 = !DILocation(line: 0, scope: !3131) 
!3134 = !DILocalVariable(name: "__c", arg: 2, scope: !3131, file: !15, line: 661, type: !154) 
!3135 = !DILocation(line: 661, column: 26, scope: !3131) 
!3136 = !DILocation(line: 766, column: 41, scope: !3131) 
!3137 = !DILocation(line: 766, column: 12, scope: !3131) 
!3138 = !DILocation(line: 766, column: 57, scope: !3131) 
!3139 = !DILocation(line: 766, column: 51, scope: !3131) 
!3140 = !DILocation(line: 766, column: 5, scope: !3131) 
!3141 = !DILocation(line: 767, column: 1, scope: !3131) 
!3142 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !17, file: !125, line: 252, type: !3143, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !3235, retainedNodes: !190) 
!3143 = !DISubroutineType(types: !3144) 
!3144 = !{!3145, !147} 
!3145 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3146, size: 64) 
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3147) 
!3147 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !17, file: !125, line: 630, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3148, vtableHolder: !989, templateParams: !613) 
!3148 = !{!3149, !3150, !3172, !3174, !3175, !3176, !3178, !3182, !3187, !3193, !3196, !3197, !3200, !3204, !3205, !3206, !3209, !3212, !3215, !3218, !3221, !3224, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234} 
!3149 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3147, baseType: !986, flags: DIFlagPublic, extraData: i32 0) 
!3150 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3147, baseType: !3151, flags: DIFlagPublic, extraData: i32 0) 
!3151 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !17, file: !125, line: 404, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3152, identifier: "_ZTSNSt3__110ctype_baseE") 
!3152 = !{!3153, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168} 
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !3151, file: !125, line: 465, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384) 
!3154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3155) 
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !3151, file: !125, line: 459, baseType: !2191) 
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !3151, file: !125, line: 466, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144) 
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !3151, file: !125, line: 467, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512) 
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !3151, file: !125, line: 468, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768) 
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !3151, file: !125, line: 469, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096) 
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !3151, file: !125, line: 470, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256) 
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !3151, file: !125, line: 471, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024) 
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !3151, file: !125, line: 472, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192) 
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !3151, file: !125, line: 473, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536) 
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !3151, file: !125, line: 481, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072) 
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__regex_word", scope: !3151, file: !125, line: 482, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128) 
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !3151, file: !125, line: 517, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280) 
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !3151, file: !125, line: 518, baseType: !3154, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472) 
!3168 = !DISubprogram(name: "ctype_base", scope: !3151, file: !125, line: 520, type: !3169, scopeLine: 520, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3169 = !DISubroutineType(types: !3170) 
!3170 = !{null, !3171} 
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !3147, file: !125, line: 633, baseType: !3173, size: 64, offset: 128) 
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64) 
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !3147, file: !125, line: 634, baseType: !176, size: 8, offset: 192) 
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3147, file: !125, line: 720, baseType: !1035, flags: DIFlagPublic | DIFlagStaticMember) 
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !3147, file: !125, line: 723, baseType: !3177, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256) 
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83) 
!3178 = !DISubprogram(name: "ctype", scope: !3147, file: !125, line: 638, type: !3179, scopeLine: 638, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0) 
!3179 = !DISubroutineType(types: !3180) 
!3180 = !{null, !3181, !3173, !176, !83} 
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3182 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEjc", scope: !3147, file: !125, line: 641, type: !3183, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3183 = !DISubroutineType(types: !3184) 
!3184 = !{!176, !3185, !3155, !3186} 
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !3147, file: !125, line: 636, baseType: !154) 
!3187 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEPKcS3_Pj", scope: !3147, file: !125, line: 647, type: !3188, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3188 = !DISubroutineType(types: !3189) 
!3189 = !{!3190, !3185, !3190, !3190, !3192} 
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64) 
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186) 
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64) 
!3193 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isEjPKcS3_", scope: !3147, file: !125, line: 655, type: !3194, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3194 = !DISubroutineType(types: !3195) 
!3195 = !{!3190, !3185, !3155, !3190, !3190} 
!3196 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notEjPKcS3_", scope: !3147, file: !125, line: 664, type: !3194, scopeLine: 664, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3197 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEc", scope: !3147, file: !125, line: 673, type: !3198, scopeLine: 673, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3198 = !DISubroutineType(types: !3199) 
!3199 = !{!3186, !3185, !3186} 
!3200 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEPcPKc", scope: !3147, file: !125, line: 679, type: !3201, scopeLine: 679, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3201 = !DISubroutineType(types: !3202) 
!3202 = !{!3190, !3185, !3203, !3190} 
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64) 
!3204 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEc", scope: !3147, file: !125, line: 685, type: !3198, scopeLine: 685, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3205 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEPcPKc", scope: !3147, file: !125, line: 691, type: !3201, scopeLine: 691, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3206 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !3147, file: !125, line: 697, type: !3207, scopeLine: 697, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3207 = !DISubroutineType(types: !3208) 
!3208 = !{!3186, !3185, !154} 
!3209 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEPKcS3_Pc", scope: !3147, file: !125, line: 703, type: !3210, scopeLine: 703, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3210 = !DISubroutineType(types: !3211) 
!3211 = !{!152, !3185, !152, !152, !3203} 
!3212 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEcc", scope: !3147, file: !125, line: 709, type: !3213, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3213 = !DISubroutineType(types: !3214) 
!3214 = !{!154, !3185, !3186, !154} 
!3215 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEPKcS3_cPc", scope: !3147, file: !125, line: 715, type: !3216, scopeLine: 715, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3216 = !DISubroutineType(types: !3217) 
!3217 = !{!152, !3185, !3190, !3190, !154, !214} 
!3218 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableEv", scope: !3147, file: !125, line: 727, type: !3219, scopeLine: 727, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit) 
!3219 = !DISubroutineType(types: !3220) 
!3220 = !{!3173, !3185} 
!3221 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !3147, file: !125, line: 728, type: !3222, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0) 
!3222 = !DISubroutineType(types: !3223) 
!3223 = !{!3173} 
!3224 = !DISubprogram(name: "~ctype", scope: !3147, file: !125, line: 739, type: !3225, scopeLine: 739, containingType: !3147, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3225 = !DISubroutineType(types: !3226) 
!3226 = !{null, !3181} 
!3227 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !3147, file: !125, line: 740, type: !3198, scopeLine: 740, containingType: !3147, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3228 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !3147, file: !125, line: 741, type: !3201, scopeLine: 741, containingType: !3147, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3229 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !3147, file: !125, line: 742, type: !3198, scopeLine: 742, containingType: !3147, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3230 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !3147, file: !125, line: 743, type: !3201, scopeLine: 743, containingType: !3147, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3231 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !3147, file: !125, line: 744, type: !3207, scopeLine: 744, containingType: !3147, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3232 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !3147, file: !125, line: 745, type: !3210, scopeLine: 745, containingType: !3147, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3233 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !3147, file: !125, line: 746, type: !3213, scopeLine: 746, containingType: !3147, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3234 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !3147, file: !125, line: 747, type: !3216, scopeLine: 747, containingType: !3147, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual) 
!3235 = !{!3236} 
!3236 = !DITemplateTypeParameter(name: "_Facet", type: !3147) 
!3237 = !DILocalVariable(name: "__l", arg: 1, scope: !3142, file: !125, line: 252, type: !147) 
!3238 = !DILocation(line: 252, column: 25, scope: !3142) 
!3239 = !DILocation(line: 254, column: 40, scope: !3142) 
!3240 = !DILocation(line: 254, column: 44, scope: !3142) 
!3241 = !DILocation(line: 254, column: 12, scope: !3142) 
!3242 = !DILocation(line: 254, column: 5, scope: !3142) 
!3243 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !3147, file: !125, line: 697, type: !3207, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !3206, retainedNodes: !190) 
!3244 = !DILocalVariable(name: "this", arg: 1, scope: !3243, type: !3245, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64) 
!3246 = !DILocation(line: 0, scope: !3243) 
!3247 = !DILocalVariable(name: "__c", arg: 2, scope: !3243, file: !125, line: 697, type: !154) 
!3248 = !DILocation(line: 697, column: 26, scope: !3243) 
!3249 = !DILocation(line: 699, column: 25, scope: !3243) 
!3250 = !DILocation(line: 699, column: 16, scope: !3243) 
!3251 = !DILocation(line: 699, column: 9, scope: !3243) 
!3252 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !16, file: !15, line: 546, type: !1111, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !1113, retainedNodes: !190) 
!3253 = !DILocalVariable(name: "this", arg: 1, scope: !3252, type: !3058, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3254 = !DILocation(line: 0, scope: !3252) 
!3255 = !DILocalVariable(name: "__state", arg: 2, scope: !3252, file: !15, line: 546, type: !49) 
!3256 = !DILocation(line: 546, column: 28, scope: !3252) 
!3257 = !DILocation(line: 548, column: 11, scope: !3252) 
!3258 = !DILocation(line: 548, column: 24, scope: !3252) 
!3259 = !DILocation(line: 548, column: 22, scope: !3252) 
!3260 = !DILocation(line: 548, column: 5, scope: !3252) 
!3261 = !DILocation(line: 549, column: 1, scope: !3252) 
!3262 = distinct !DISubprogram(name: "__to_address<const char>", linkageName: "_ZNSt3__1L12__to_addressIKcEEPT_S3_", scope: !17, file: !2727, line: 173, type: !3263, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !3265, retainedNodes: !190) 
!3263 = !DISubroutineType(types: !3264) 
!3264 = !{!152, !152} 
!3265 = !{!3266} 
!3266 = !DITemplateTypeParameter(name: "_Tp", type: !153) 
!3267 = !DILocalVariable(name: "__p", arg: 1, scope: !3262, file: !2727, line: 173, type: !152) 
!3268 = !DILocation(line: 173, column: 24, scope: !3262) 
!3269 = !DILocation(line: 175, column: 12, scope: !3262) 
!3270 = !DILocation(line: 175, column: 5, scope: !3262) 
!3271 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !162, file: !163, line: 1552, type: !869, scopeLine: 1553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !880, retainedNodes: !190) 
!3272 = !DILocalVariable(name: "this", arg: 1, scope: !3271, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3273 = !DILocation(line: 0, scope: !3271) 
!3274 = !DILocation(line: 1553, column: 17, scope: !3271) 
!3275 = !DILocation(line: 1553, column: 31, scope: !3271) 
!3276 = !DILocation(line: 1553, column: 54, scope: !3271) 
!3277 = !DILocation(line: 1553, column: 10, scope: !3271) 
!3278 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !162, file: !163, line: 1540, type: !869, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !868, retainedNodes: !190) 
!3279 = !DILocalVariable(name: "this", arg: 1, scope: !3278, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3280 = !DILocation(line: 0, scope: !3278) 
!3281 = !DILocation(line: 1541, column: 17, scope: !3278) 
!3282 = !DILocation(line: 1541, column: 22, scope: !3278) 
!3283 = !DILocation(line: 1541, column: 30, scope: !3278) 
!3284 = !DILocation(line: 1541, column: 34, scope: !3278) 
!3285 = !DILocation(line: 1541, column: 10, scope: !3278) 
!3286 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !162, file: !163, line: 1546, type: !869, scopeLine: 1547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !878, retainedNodes: !190) 
!3287 = !DILocalVariable(name: "this", arg: 1, scope: !3286, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3288 = !DILocation(line: 0, scope: !3286) 
!3289 = !DILocation(line: 1547, column: 59, scope: !3286) 
!3290 = !DILocation(line: 1547, column: 64, scope: !3286) 
!3291 = !DILocation(line: 1547, column: 72, scope: !3286) 
!3292 = !DILocation(line: 1547, column: 76, scope: !3286) 
!3293 = !DILocation(line: 1547, column: 17, scope: !3286) 
!3294 = !DILocation(line: 1547, column: 10, scope: !3286) 
!3295 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_", scope: !3296, file: !2727, line: 152, type: !3299, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !3298, retainedNodes: !190) 
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<const char *>", scope: !17, file: !2727, line: 136, size: 8, flags: DIFlagTypePassByValue, elements: !3297, templateParams: !3309, identifier: "_ZTSNSt3__114pointer_traitsIPKcEE") 
!3297 = !{!3298} 
!3298 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_", scope: !3296, file: !2727, line: 152, type: !3299, scopeLine: 152, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit) 
!3299 = !DISubroutineType(types: !3300) 
!3300 = !{!3301, !3302} 
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3296, file: !2727, line: 138, baseType: !152) 
!3302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3303, size: 64) 
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3304, file: !908, line: 540, baseType: !153) 
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<const char *>::__nat, const char>", scope: !17, file: !908, line: 540, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !3305, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPKcE5__natES2_EE") 
!3305 = !{!2738, !3306, !3308} 
!3306 = !DITemplateTypeParameter(name: "_If", type: !3307) 
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !3296, file: !2727, line: 149, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3__114pointer_traitsIPKcE5__natE") 
!3308 = !DITemplateTypeParameter(name: "_Then", type: !153) 
!3309 = !{!3310} 
!3310 = !DITemplateTypeParameter(name: "_Ptr", type: !152) 
!3311 = !DILocalVariable(name: "__r", arg: 1, scope: !3295, file: !2727, line: 153, type: !3302) 
!3312 = !DILocation(line: 153, column: 67, scope: !3295) 
!3313 = !DILocation(line: 154, column: 34, scope: !3295) 
!3314 = !DILocation(line: 154, column: 17, scope: !3295) 
!3315 = !DILocation(line: 154, column: 10, scope: !3295) 
!3316 = distinct !DISubprogram(name: "addressof<const char>", linkageName: "_ZNSt3__1L9addressofIKcEEPT_RS2_", scope: !17, file: !2749, line: 30, type: !3317, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, templateParams: !3265, retainedNodes: !190) 
!3317 = !DISubroutineType(types: !3318) 
!3318 = !{!152, !231} 
!3319 = !DILocalVariable(name: "__x", arg: 1, scope: !3316, file: !2749, line: 30, type: !231) 
!3320 = !DILocation(line: 30, column: 16, scope: !3316) 
!3321 = !DILocation(line: 32, column: 32, scope: !3316) 
!3322 = !DILocation(line: 32, column: 5, scope: !3316) 
!3323 = distinct !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !162, file: !163, line: 1520, type: !657, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !858, retainedNodes: !190) 
!3324 = !DILocalVariable(name: "this", arg: 1, scope: !3323, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3325 = !DILocation(line: 0, scope: !3323) 
!3326 = !DILocation(line: 1521, column: 17, scope: !3323) 
!3327 = !DILocation(line: 1521, column: 22, scope: !3323) 
!3328 = !DILocation(line: 1521, column: 30, scope: !3323) 
!3329 = !DILocation(line: 1521, column: 34, scope: !3323) 
!3330 = !DILocation(line: 1521, column: 10, scope: !3323) 
!3331 = distinct !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !162, file: !163, line: 1489, type: !657, scopeLine: 1493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, declaration: !856, retainedNodes: !190) 
!3332 = !DILocalVariable(name: "this", arg: 1, scope: !3331, type: !2677, flags: DIFlagArtificial | DIFlagObjectPointer) 
!3333 = !DILocation(line: 0, scope: !3331) 
!3334 = !DILocation(line: 1493, column: 17, scope: !3331) 
!3335 = !DILocation(line: 1493, column: 22, scope: !3331) 
!3336 = !DILocation(line: 1493, column: 30, scope: !3331) 
!3337 = !DILocation(line: 1493, column: 34, scope: !3331) 
!3338 = !DILocation(line: 1493, column: 10, scope: !3331) 
; =========================================================== 
; =================   writeDeclare start =================   
; =========================================================== 
; =========================================================== 
; =================   writeDeclare end   =================   
; =========================================================== 

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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cc, i8* null }] 

; ; #include <string> 
; %"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" } 
; %"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" } 
; %"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" } 
; %"struct.std::__1::basic_string<char>::__rep" = type { %union.anon } 
; %union.anon = type { %"struct.std::__1::basic_string<char>::__long" } 
; %"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 } 
; %"struct.std::__1::__default_init_tag" = type { i8 } 
; %"class.std::__1::__basic_string_common" = type { i8 } 
; %"struct.std::__1::__compressed_pair_elem.0" = type { i8 } 
; %"class.std::__1::allocator" = type { i8 } 
; %"struct.std::__1::__non_trivial_if" = type { i8 } 

; %"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon } 
; %struct.anon = type { i8 } 

; 비교를 위한 전역변수 선언 
;int tempint; 
;float tempfloat; 
@tempint = global i32 0, align 4 
@tempfloat = global float 0.000000e+00, align 4 

; 변수명 출력	// 지우면 culry_record3.cpp 에서 탐지 못함, 변수명 이후부터 쓰기 시작하기 때문 
; 새로운 전역 str 작성 시작
@__const_culry.retval = private unnamed_addr constant [8 x i8] c"retval \00", align 1 
@__const_culry.tempstr = private unnamed_addr constant [9 x i8] c"tempstr \00", align 1 
@__const_culry.exn.slot = private unnamed_addr constant [10 x i8] c"exn.slot \00", align 1 
@__const_culry.ehselector.slot = private unnamed_addr constant [17 x i8] c"ehselector.slot \00", align 1 
@__const_culry.num1 = private unnamed_addr constant [6 x i8] c"num1 \00", align 1 
@__const_culry.num333 = private unnamed_addr constant [8 x i8] c"num333 \00", align 1 
@__const_culry.this.addr = private unnamed_addr constant [11 x i8] c"this.addr \00", align 1 
@__const_culry.__s.addr = private unnamed_addr constant [10 x i8] c"__s.addr \00", align 1 
@__const_culry.__pos.addr = private unnamed_addr constant [12 x i8] c"__pos.addr \00", align 1 
@__const_culry.__os.addr = private unnamed_addr constant [11 x i8] c"__os.addr \00", align 1 
@__const_culry.__str.addr = private unnamed_addr constant [12 x i8] c"__str.addr \00", align 1 
@__const_culry.__lhs.addr = private unnamed_addr constant [12 x i8] c"__lhs.addr \00", align 1 
@__const_culry.__rhs.addr = private unnamed_addr constant [12 x i8] c"__rhs.addr \00", align 1 
@__const_culry.__rhs_len = private unnamed_addr constant [11 x i8] c"__rhs_len \00", align 1 
@__const_culry.ref.tmp = private unnamed_addr constant [9 x i8] c"ref.tmp \00", align 1 
@__const_culry.ref.tmp2 = private unnamed_addr constant [10 x i8] c"ref.tmp2 \00", align 1 
@__const_culry.__t1.addr = private unnamed_addr constant [11 x i8] c"__t1.addr \00", align 1 
@__const_culry.__t2.addr = private unnamed_addr constant [11 x i8] c"__t2.addr \00", align 1 
@__const_culry.agg.tmp = private unnamed_addr constant [9 x i8] c"agg.tmp \00", align 1 
@__const_culry.agg.tmp3 = private unnamed_addr constant [10 x i8] c"agg.tmp3 \00", align 1 
@__const_culry.__t.addr = private unnamed_addr constant [10 x i8] c"__t.addr \00", align 1 
@__const_culry.0 = private unnamed_addr constant [3 x i8] c"0 \00", align 1 
@__const_culry.__r.addr = private unnamed_addr constant [10 x i8] c"__r.addr \00", align 1 
@__const_culry.__x.addr = private unnamed_addr constant [10 x i8] c"__x.addr \00", align 1 
@__const_culry.__len.addr = private unnamed_addr constant [12 x i8] c"__len.addr \00", align 1 
@__const_culry.__s = private unnamed_addr constant [5 x i8] c"__s \00", align 1 
@__const_culry.__ob.addr = private unnamed_addr constant [11 x i8] c"__ob.addr \00", align 1 
@__const_culry.__op.addr = private unnamed_addr constant [11 x i8] c"__op.addr \00", align 1 
@__const_culry.__oe.addr = private unnamed_addr constant [11 x i8] c"__oe.addr \00", align 1 
@__const_culry.__iob.addr = private unnamed_addr constant [12 x i8] c"__iob.addr \00", align 1 
@__const_culry.__fl.addr = private unnamed_addr constant [11 x i8] c"__fl.addr \00", align 1 
@__const_culry.__sz = private unnamed_addr constant [6 x i8] c"__sz \00", align 1 
@__const_culry.__ns = private unnamed_addr constant [6 x i8] c"__ns \00", align 1 
@__const_culry.__np = private unnamed_addr constant [6 x i8] c"__np \00", align 1 
@__const_culry.ref.tmp17 = private unnamed_addr constant [11 x i8] c"ref.tmp17 \00", align 1 
@__const_culry.__sp = private unnamed_addr constant [6 x i8] c"__sp \00", align 1 
@__const_culry.ref.tmp33 = private unnamed_addr constant [11 x i8] c"ref.tmp33 \00", align 1 
@__const_culry.cleanup.dest.slot = private unnamed_addr constant [19 x i8] c"cleanup.dest.slot \00", align 1 
@__const_culry.ref.tmp55 = private unnamed_addr constant [11 x i8] c"ref.tmp55 \00", align 1 
@__const_culry.__state.addr = private unnamed_addr constant [14 x i8] c"__state.addr \00", align 1 
@__const_culry.__n.addr = private unnamed_addr constant [10 x i8] c"__n.addr \00", align 1 
@__const_culry.__c.addr = private unnamed_addr constant [10 x i8] c"__c.addr \00", align 1 
@__const_culry.__wide.addr = private unnamed_addr constant [13 x i8] c"__wide.addr \00", align 1 
@__const_culry.__r = private unnamed_addr constant [5 x i8] c"__r \00", align 1 
@__const_culry..addr = private unnamed_addr constant [7 x i8] c".addr \00", align 1 
@__const_culry.__c1.addr = private unnamed_addr constant [11 x i8] c"__c1.addr \00", align 1 
@__const_culry.__c2.addr = private unnamed_addr constant [11 x i8] c"__c2.addr \00", align 1 
@__const_culry.__l.addr = private unnamed_addr constant [10 x i8] c"__l.addr \00", align 1 
@__const_culry.__p.addr = private unnamed_addr constant [10 x i8] c"__p.addr \00", align 1 
; 새로운 전역 str 작성 종료
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


; for string to char arr func 
declare i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm_culry(%"class.std::__1::basic_string"*, i8*, i64, i64) #555555 


attributes #100009 = { argmemonly nofree nounwind willreturn } 
attributes #555555 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #10000003 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" } 
attributes #10000007 = { nounwind } 

;;3 7 

;;; string 길이 출력 함수 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv_culry(%"class.std::__1::basic_string"* %this) #10000003 align 2 { 
entry: 
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv_culry(%"class.std::__1::basic_string"* %this1) #10000007 
  %var_length = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 %call) 
  ret i64 %call 
} 

define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv_culry(%"class.std::__1::basic_string"* %this) #10000003 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv_culry(%"class.std::__1::basic_string"* %this1) #10000007 
  br i1 %call, label %cond.true, label %cond.false 

cond.true:                                        ; preds = %entry 
  %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv_culry(%"class.std::__1::basic_string"* %this1) #10000007 
  br label %cond.end 

cond.false:                                       ; preds = %entry 
  %call3 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv_culry(%"class.std::__1::basic_string"* %this1) #10000007 
  br label %cond.end 

cond.end:                                         ; preds = %cond.false, %cond.true 
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ] 
  ret i64 %cond 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv_culry(%"class.std::__1::basic_string"* %this) #10000003 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv_culry(%"class.std::__1::__compressed_pair"* %__r_) #10000007 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0 
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"* 
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 1 
  %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0 
  %2 = load i8, i8* %__size_, align 1 
  %conv = zext i8 %2 to i64 
  %and = and i64 %conv, 128 
  %tobool = icmp ne i64 %and, 0 
  ret i1 %tobool 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv_culry(%"class.std::__1::basic_string"* %this) #10000003 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv_culry(%"class.std::__1::__compressed_pair"* %__r_) #10000007 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0 
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"* 
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 1 
  %1 = load i64, i64* %__size_, align 8 
  ret i64 %1 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv_culry(%"class.std::__1::basic_string"* %this) #10000003 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8 
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8 
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8 
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv_culry(%"class.std::__1::__compressed_pair"* %__r_) #10000007 
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0 
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"* 
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 1 
  %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0 
  %2 = load i8, i8* %__size_, align 1 
  %conv = zext i8 %2 to i64 
  ret i64 %conv 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv_culry(%"class.std::__1::__compressed_pair"* %this) #10000003 align 2 { 
entry: 
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8 
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8 
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"* 
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv_culry(%"struct.std::__1::__compressed_pair_elem"* %0) #10000007 
  ret %"struct.std::__1::basic_string<char>::__rep"* %call 
} 

; Function Attrs: noinline nounwind optnone ssp uwtable 
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv_culry(%"struct.std::__1::__compressed_pair_elem"* %this) #10000003 align 2 { 
entry: 
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8 
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8 
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0 
  ret %"struct.std::__1::basic_string<char>::__rep"* %__value_ 
} 

;====================================================================== 
;====================================================================== 




; record_above.ll File Write End 
