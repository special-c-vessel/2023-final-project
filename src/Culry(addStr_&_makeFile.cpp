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

#include "TestClass.h"

using namespace llvm;

#define DEBUG_TYPE "culry"

STATISTIC(CulryCounter, "Counts number of functions greeted");

namespace {
  // Culry - The first implementation, without getAnalysisUsage.
  struct Culry : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    
    Culry() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      /*
      TestClass* testClass = new TestClass();

      ++CulryCounter;
      errs() << "Culry : " << testClass -> TestFunc(5) << " ";
      errs().write_escaped(F.getName()) << '\n';

      for (auto &BB : F) {
        errs() << "Basic Block:\n";
        errs() << "  Name: " << BB.getName() << "\n";
        errs() << "  Number of Instructions: " << BB.size() << "\n";
        errs() << "  Instructions:\n";

        for (auto &I : BB) {
            errs() << "    " << I << " name :  ";
            if (auto *Add = dyn_cast<BinaryOperator>(&I)) {
              if (Add->getOpcode() == Instruction::Add) {
                errs() << "Add is occured";
              }
            }
            errs() << "\n";
        }
      }
      return false;
      */

     /*
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
            }
          }
        }
      }

      return true;
      */
      for (auto &BB : F) {
        for (auto &I : BB) {
          if (DbgDeclareInst *DDI = dyn_cast<DbgDeclareInst>(&I)) {
            Value *Var = DDI->getAddress();
            errs() << "Variable Name: " << Var->getName() << "\n";
            if (AllocaInst *AI = dyn_cast<AllocaInst>(Var)) {
              StringRef Name = AI->getName();
              //errs() << "Variable Name: " << Name << "\n";
            }
          }
        }
      }
      return false;
    }
  };
}

char Culry::ID = 0;
static RegisterPass<Culry> X("culry", "Culry Pass");
