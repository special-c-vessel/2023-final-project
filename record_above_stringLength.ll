

; for string to char arr func
declare i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm_culry(%"class.std::__1::basic_string"*, i8*, i64, i64) #555555

;; string 길이 출력 함수 
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv(%"class.std::__1::basic_string"* %this) #10000003 align 2 {
entry:
%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8 
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %this1) #10000007

  %openFile = call %struct.__sFILE* @"_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) 
  %var_length = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 %call) 
  %closeFile = call i32 @fclose(%struct.__sFILE* %loadfile) 

  ret i64 %call
}

; define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %this) #10000003 align 2 {
; entry:
;   %this.addr = alloca %"class.std::__1::basic_string"*, align 8
;   store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
;   %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
;   %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #10000007
;   br i1 %call, label %cond.true, label %cond.false

; cond.true:                                        ; preds = %entry
;   %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this1) #10000007
;   br label %cond.end

; cond.false:                                       ; preds = %entry
;   %call3 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this1) #10000007
;   br label %cond.end

; cond.end:                                         ; preds = %cond.false, %cond.true
;   %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
;   ret i64 %cond
; }

; Function Attrs: noinline nounwind optnone ssp uwtable
; define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this) #10000003 align 2 {
; entry:
;   %this.addr = alloca %"class.std::__1::basic_string"*, align 8
;   store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
;   %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
;   %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
;   %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #10000007
;   %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
;   %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*
;   %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 1
;   %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
;   %2 = load i8, i8* %__size_, align 1
;   %conv = zext i8 %2 to i64
;   %and = and i64 %conv, 128
;   %tobool = icmp ne i64 %and, 0
;   ret i1 %tobool
; }

; //+++++++++++++++++++++++++++++
; __compressed_pair
; __compressed_pair_elem


; ; Function Attrs: noinline nounwind optnone ssp uwtable
; define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this) #10000003 align 2 {
; entry:
  ; %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  ; store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  ; %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
;   %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
;   %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #10000007
;   %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
;   %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*
;   %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 1
;   %1 = load i64, i64* %__size_, align 8
;   ret i64 %1
; }

; Function Attrs: noinline nounwind optnone ssp uwtable
; define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this) #10000003 align 2 {
; entry:
;   %this.addr = alloca %"class.std::__1::basic_string"*, align 8
;   store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
;   %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
;   %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
;   %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #10000007
;   %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
  
;   %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*
;   %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 1
;   %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
;   %2 = load i8, i8* %__size_, align 1
;   %conv = zext i8 %2 to i64
;   ret i64 %conv
; }

; Function Attrs: noinline nounwind optnone ssp uwtable
; define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #10000003 align 2 {
; entry:
;   %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
;   store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
;   %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
;   %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
;   %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #10000007
;   ret %"struct.std::__1::basic_string<char>::__rep"* %call
; }

; ; Function Attrs: noinline nounwind optnone ssp uwtable
; define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #10000003 align 2 {
; entry:
;   %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
;   store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
;   %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
;   %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
;   ret %"struct.std::__1::basic_string<char>::__rep"* %__value_
; }