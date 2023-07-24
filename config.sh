#!/bin/bash

# LLVM clone 위치
# ex) /Users/han/GitHub/llvm-project
LLVM_PATH=/Users/han/GitHub/llvm-project

# 타겟 cpp 프로그램 위치 설정
# ex)   /Users/han/GitHub/llvm-project/build/tests/test.cpp
TARGET_CPP_PATH=/Users/han/GitHub/llvm-project/build/tests/test.cpp

LLVM_BUILD_PATH=$LLVM_PATH/build
LLVM_CULRY_PATH=$LLVM_BUILD_PATH/culry

# record clone path
# ex) /Users/han/GitHub/2023-final-project
CULRY_RECORD_PATH=/Users/han/GitHub/2023-final-project

# replay clone path
# ex) /Users/han/GitHub/Replay
CULRY_REPLAY_PATH=/Users/han/GitHub/Replay

# 기존 파일 삭제
rm -rf $LLVM_CULRY_PATH

# 새로운 폴더 생성
mkdir $LLVM_CULRY_PATH

# 기록을 위한 파일 복사 및 컴파일
cd $CULRY_RECORD_PATH & cp culry_record2.cpp culry_record3.cpp record_above.txt record_above_stringLength.ll $TARGET_CPP_PATH $LLVM_CULRY_PATH
clang -S -emit-llvm -fno-discard-value-names $TARGET_CPP_PATH -g -o $LLVM_CULRY_PATH/culry.ll
clang++ culry_record2.cpp -o $LLVM_CULRY_PATH/record2
clang++ culry_record3.cpp -o $LLVM_CULRY_PATH/record3

$LLVM_CULRY_PATH/record2
$LLVM_CULRY_PATH/record3

# 변조한 파일 실행
# 입력 인자가 존재하는 경우를 어떻게 나눌 수 있는지
$LLVM_BUILD_PATH/bin/lli $LLVM_CULRY_PATH/culry.ll

# 재현을 위한 파일 복사 및 컴파일
#cd $CULRY_REPLAY_PATH & mkdir obj
#cd $CULRY_REPLAY_PATH & make
#$CULRY_REPLAY_PATH/replay $TARGET_CPP_PATH
