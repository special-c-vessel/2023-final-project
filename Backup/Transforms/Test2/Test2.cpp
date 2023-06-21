//===- Test2.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Test2 World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/CodeGen/AsmPrinter.h"  // not use
#include "llvm/IR/IRBuilder.h"        // use for write inst
#include "llvm/Support/raw_ostream.h" // write_escaped
#include "llvm/IR/Instruction.h"      // llvm:Instruction, +StoreInst
#include <iostream>

using namespace llvm;
using namespace std;



#define DEBUG_TYPE "Test2"

static llvm::Module *TheModule;

STATISTIC(Test2Counter, "Counts number of functions greeted");



namespace {
// Test2 - The first implementation, without getAnalysisUsage.
struct Test2 : public FunctionPass {
  static char ID; // Pass identification, replacement for typeid
  Test2() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    ++Test2Counter;
    errs() << "Test2: ";
    errs().write_escaped(F.getName()) << '\n';

    for (Function::iterator bb = F.begin(), e = F.end(); bb != e; ++bb) {
      std::cout << "start --------------------\n";
      for (BasicBlock::iterator i = bb->begin(), e = bb->end(); i != e; ++i) {
        std::cout << "basic start @@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";

        // if(i->getOpcode() == llvm::Instruction::Add )
        // {
        //   llvm::BinaryOperator::Create(
        //       llvm::Instruction::Add,
        //       llvm::ConstantInt::get( llvm::IntegerType::get ( *TheContext, 21 ), 1, true),
        //       llvm::ConstantInt::get( llvm::IntegerType::get ( *TheContext, 21 ), 1, true),
        //       "addtemp",
        //       i );
        // }

        // if (i->getOpcode() == llvm::Instruction::Add) 
        // {
        //   std::cout << "find\n";
        //   //llvm::BinaryOperator::Create();
        // }
        llvm::outs() << "opcodeName is : " << i->getOpcodeName() << "\n";

        if (StoreInst *si = dyn_cast<StoreInst>(&*i))
        {
          cout << "in StoreInst ----------------------------------- \n";
        IRBuilder<> Builder(si);
        Value *StoreAddr = Builder.CreatePtrToInt(si->getPointerOperand(), Builder.getInt32Ty());
        Value *Masked = Builder.CreateAnd(StoreAddr, 5);
        Value *AlignedAddr = Builder.CreateIntToPtr(Masked, si->getPointerOperand()->getType());
        
        //use  PtrTointInst
        //PtrToIntInst* ptrToInt = new PtrToIntInst(si->getPointerOperand(), IntegerType::get(si->getContext(), 5), "aaa", si);

        //https://stackoverflow.com/questions/13370306/how-to-insert-a-llvm-instruction
        //https://github.com/powcoder/CMPT-379-compilers-class-hw/blob/65f7367a3e05ffe571038ac9d3856b96a28b4960/llvm-practice/globalscalar.cc
    
        llvm::FunctionType *FT = llvm::FunctionType::get(Builder.getInt32Ty(), std::vector<llvm::Type*>(), false);
        llvm::Function *TheFunction = llvm::Function::Create(FT, llvm::Function::ExternalLinkage, "main", TheModule);

        }
        
        TheModule->dump();


        std::cout << "basic end @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n";
      }
// std::shared_ptr<A> a_ptr {new A {}};
// std::shared_ptr<A<>> a_ptr {new A<> {}};

      return false;
    }
  };
};
} // namespace

char Test2::ID = 0;
static RegisterPass<Test2> X("Test2", "Test2 World Pass");