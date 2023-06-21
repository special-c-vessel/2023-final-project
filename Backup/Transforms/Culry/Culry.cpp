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
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

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
    TestClass *testClass = new TestClass();

    ++CulryCounter;
    errs() << "Culry : " << testClass->TestFunc(5) << " ";
    errs().write_escaped(F.getName()) << '\n';
    std::cout << "aaa " << std::endl;
  }
};

}// namespace
char Culry::ID = 0;
static RegisterPass<Culry> X("culry", "Culry Pass");
