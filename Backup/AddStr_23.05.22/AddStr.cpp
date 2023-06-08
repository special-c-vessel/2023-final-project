//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/JSON.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Value.h"

#include "llvm/IR/DerivedTypes.h"


#include <fstream>
#include <string>
#include <vector>

using namespace llvm;

#define DEBUG_TYPE "AddStr"

STATISTIC(CulryCounter, "Counts number of functions greeted");

namespace {
  // Culry - The first implementation, without getAnalysisUsage.
  struct AddStr : public FunctionPass 
  {
    static char ID; // Pass identification, replacement for typeid
    
    AddStr() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      
      LLVMContext &C = F.getContext();
      std::vector<Type*> printfArgs;
      printfArgs.push_back(Type::getInt8PtrTy(C));

      //declare i32 @fprintf(i16*, i16*, i16*, ...)
      std::vector<Type*> printfArgs2;

      //%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
      std::vector<Value*> struct_type;
      // find builder.create type array
      //struct_type.push_back(builder.CreateGlobalStringPtr("test string\n"));
      printfArgs2.push_back(Type::getInt8PtrTy(C));
      printfArgs2.push_back(Type::getInt8PtrTy(C));
      
      //  call i32 , getInt64로 하면 i32 -> i64
      // https://llvm.org/doxygen/classllvm_1_1FunctionType.html 
      FunctionType *printfType = FunctionType::get(Type::getInt32Ty(C), printfArgs, true);
      FunctionType *printfType2 = FunctionType::get(Type::getInt32Ty(C), printfArgs, true);
      FunctionType *printfType3 = FunctionType::get(Type::getInt32Ty(C), printfArgs2, true);
      
      // create declare i32 @printf(i8*, ...)
      // 함수 내부는 어떻게 생성하는지
      FunctionCallee printfFunc = F.getParent()->getOrInsertFunction("printf", printfType2);

      // create declare i32 @fprintf(i8*, ...)
      FunctionCallee fprintfFunc = F.getParent()->getOrInsertFunction("fprintf", printfType3);

      //목표
      //call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
      //declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222


      //현재
      //
      //declare i32 @fprintf(i8*, i8*, ...)

      // 뒤에 # 번호 붙히는거 https://llvm.org/doxygen/classllvm_1_1AttributeList.html 
      // 


      /*
      
      */


      for (auto &BB : F) {
        for (auto &I : BB) {
          if (auto *op = dyn_cast<BinaryOperator>(&I)) {
            if (op->getOpcode() == Instruction::Add) {
              IRBuilder<> builder(op);

              std::vector<Value*> args;
              args.push_back(builder.CreateGlobalStringPtr("test string\n"));
              builder.CreateCall(printfFunc, args);
              //        call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8] , [6 x i8] * @.str.3, i64 0, i64 0))
              //  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7,      i32 0, i32 0))


              std::vector<Value*> vec;
              vec.push_back(builder.CreateGlobalStringPtr("22222g\n"));
              vec.push_back(builder.CreateGlobalStringPtr("333\n"));
              builder.CreateCall(fprintfFunc, vec);
            } //create call 후 args 추가
          }
        }
      }

      return true;
    }
  };
  
  struct AddStr2 : public FunctionPass 
  {
    static char ID2; // Pass identification, replacement for typeid
    
    AddStr2() : FunctionPass(ID2) {}

    bool runOnFunction(Function &F) override {
      
      /*
      instr 실행 구문 넣어 추가된 코드 동작하는지 확인
      */

      return true;
    }
  };

}

char AddStr::ID = 0;
static RegisterPass<AddStr> X("AddStr", "AddStr Pass");
