# LLVM clone path
# ex) /Users/han/GitHub/llvm-project
LLVM_PATH=/Users/han/GitHub/llvm-project

# 타겟 cpp 프로그램 path 설정
# ex) /Users/han/GitHub/llvm-project/build/tests/test.cpp
TARGET_CPP_PATH=/Users/han/GitHub/llvm-project/build/tests/test.cpp

LLVM_BUILD_PATH=$LLVM_PATH/build
LLVM_CULRY_PATH=$LLVM_BUILD_PATH/culry

# record clone path
# ex) /Users/han/GitHub/2023-final-project
CULRY_RECORD_PATH=/Users/han/GitHub/2023-final-project_wjdrud2532

rm -rf $LLVM_CULRY_PATH # 기존 파일 삭제
mkdir $LLVM_CULRY_PATH  # 새로운 폴더 생성

cd $CULRY_RECORD_PATH
clang -S -emit-llvm -fno-discard-value-names $TARGET_CPP_PATH -g -o $LLVM_CULRY_PATH/culry.ll
clang++ $CULRY_RECORD_PATH/culry_record2.cpp -o $LLVM_CULRY_PATH/record2
clang++ $CULRY_RECORD_PATH/culry_record3.cpp -o $LLVM_CULRY_PATH/record3
$LLVM_CULRY_PATH/record2
$LLVM_CULRY_PATH/record3
clang++ record_result.ll -o $LLVM_CULRY_PATH/rtest;

#$LLVM_BUILD_PATH/bin/lli record_result.ll


