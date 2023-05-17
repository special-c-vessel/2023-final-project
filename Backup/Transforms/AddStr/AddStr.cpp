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

#include <fstream>
#include <string>
#include <vector>

using namespace llvm;

#define DEBUG_TYPE "AddStr"

STATISTIC(CulryCounter, "Counts number of functions greeted");

namespace {
  // Culry - The first implementation, without getAnalysisUsage.
  struct AddStr : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    
    AddStr() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      

      LLVMContext &C = F.getContext();
      std::vector<Type*> printfArgs;
      printfArgs.push_back(Type::getInt8PtrTy(C));
      FunctionType *printfType = FunctionType::get(Type::getInt32Ty(C), printfArgs, true);
      FunctionCallee printfFunc = F.getParent()->getOrInsertFunction("printf", printfType);

      for (auto &BB : F) {
        for (auto &I : BB) {
          if (auto *op = dyn_cast<BinaryOperator>(&I)) {
            if (op->getOpcode() == Instruction::Add) {
              IRBuilder<> builder(op);
              std::vector<Value*> args;
              args.push_back(builder.CreateGlobalStringPtr("add operation detected\n"));
              builder.CreateCall(printfFunc, args);
            } //create call 후 args 추가
          }
        }
      }

      return true;
    }
  };
}

char AddStr::ID = 0;
static RegisterPass<AddStr> X("AddStr", "AddStr Pass");
