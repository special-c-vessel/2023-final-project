#include <iostream>
#include <map>
#include <string>

#include "llvm/ADT/StringRef.h"
#include "llvm/CodeGen/AsmPrinter.h" // not use
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DiagnosticInfo.h" // get line, column
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h" // use for write inst
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Value.h"
#include "llvm/LTO/Config.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h" // write_escaped

#include <optional>

using namespace llvm;
using namespace std;

#define DEBUG_TYPE "AddInfo"

int totalCount = 1; // for Eigenvariable

// llvm::LLVMContext* TheContext;

void printLineAndColNum(const DebugLoc &location) {
  // print line, col number
  //const DebugLoc &location = i->getDebugLoc();
  if (location) {
    llvm::outs() << "Instruction location in cpp file:\n";
    llvm::outs() << "Line: " << location.getLine() << ", ";
    llvm::outs() << "Col : " << location.getCol() << "\n\n";
  } else {
    // No location metadata available
    // 함수의 인자 같은 arg의 가능성
    // -> 다음 줄의 !dbg !number 를 읽어 반환
    // OPCODE 판별 전 임시 BB (ii) 선언하여 ++, -- 하여 사용해야 함
  }
  return;
}

void printStoreInst(BasicBlock::iterator i, llvm::StoreInst * x) {
  //llvm::outs() << "this op name is : Store\n\n";

  llvm::outs() << "print two operand\n";
  llvm::Value *op1 = x->getValueOperand();
  llvm::Value *op2 = x->getPointerOperand();

  llvm::outs() << "first op name  : ";
  llvm::outs() << op1->getName() << ",  type : " << *(op1->getType()) << "\n";

  llvm::outs() << "second op name : ";
  llvm::outs() << op2->getName() << ",  type : " << *(op2->getType()) << "\n";
  llvm::outs() << "\n";

  printLineAndColNum(i->getDebugLoc());

  // llvm::outs() << "op1  : " << op1 << "\n";
  // llvm::outs() << "*op1 : " << *op1 << "\n";

  // llvm::outs() << "op2  : " << op2 << "\n";
  // llvm::outs() << "*op2 : " << *op2 << "\n";

  // llvm::outs() << *(x->op_end()) << "\n";

  // ConstantInt *op11 = static_cast<ConstantInt *>(i->getOperand(0));
  // ConstantInt *op22 = static_cast<ConstantInt *>(x->getOperand(1));

  // Align ali = x->getAlign();
  // auto getprt = x->getPointerAddressSpace();

  // llvm::outs() << x->getNumSuccessors() << "\n";

  return;
}

void printAddInst(BasicBlock::iterator i, llvm::AddOperator *x,
                  std::string tempstr) {
  /*
  AddOperator
  SubOperator
  MulOperator
  SDivOperator
  */

  llvm::outs() << "print two operand\n";
  llvm::Value *op1 = x->getOperand(0);
  llvm::Value *op2 = x->getOperand(1);

  int gfv = 5;
  StringRef age1 = op1->getName();
  StringRef ages1 = op2->getName();
  std::string ager1 = age1.data();
  std::string agerh1 = ages1.data();

  ager1 = tempstr + std::to_string(gfv++);
  agerh1 = tempstr + std::to_string(gfv++);

  op1->setName(ager1);
  op2->setName(agerh1);

  llvm::outs() << "first op name  : ";
  llvm::outs() << op1->getName() << ",  type : " << *(op1->getType()) << "\n";
  llvm::outs() << "second op name : ";
  llvm::outs() << op2->getName() << ",  type : " << *(op2->getType()) << "\n";
  llvm::outs() << "\n";

  outs() << "change instr :" << *i << "\n\n";

  printLineAndColNum(i->getDebugLoc());

  return;
}

namespace {
struct CountOpcode : public FunctionPass {
  std::map<std::string, int> AddInfo;
  static char ID;
  CountOpcode() : FunctionPass(ID) {}
  virtual bool runOnFunction(Function &F) {
    llvm::outs() << "Function " << F.getName() << '\n';
    for (Function::iterator bb = F.begin(), e = F.end(); bb != e; ++bb) {
      std::cout << "start --------------------\n";
      for (BasicBlock::iterator i = bb->begin(), e = bb->end(); i != e; ++i) {
        std::cout << "================================ basic start ============================= \n";

        Instruction *ii = &*i;
        outs() << "origin instr :" << *ii << "\n\n";
        {
          AddInfo[i->getOpcodeName()] += 1;
          llvm::outs() << "opcodeName is : " << i->getOpcodeName() << "\n\n";

          if (StoreInst *x = llvm::dyn_cast<llvm::StoreInst>(i)) {
              printStoreInst(i, x);
          } else if (auto *x = llvm::dyn_cast<llvm::AllocaInst>(i)) {
            // llvm::outs() << "@@@@@@@   START alloca    @@@@@\n";

            // Instruction *ii = &*i;
            // outs() << *ii << "\n";

            // // llvm::Value* op1 = x->getValueOperand();
            // // llvm::Value* op2 = x->getPointerOperand();
            // // llvm::outs() << op1->getName() << " : " << *(op1->getType())
            // <<
            // // "\n"; llvm::outs() << op2->getName() << " : " <<
            // // *(op2->getType()) << "\n";

            // // cout type && ArraySize
            // // only print i32 use next code              llvm::outs() <<
            // // *(x->getAllocatedType()) << "\n";
            // // llvm::outs() << *(x->getArraySize()) << "\n";

            // // cout alloca type
            // llvm::outs() << *(x->getAllocatedType()) << "\n";

            // // Type* var_type22 = x->getAllocationSize();
            // // outs() << var_type22 << "\n";

            // // llvm::outs() << x->getAllocationSize() << "\n";

            // // std::optional<TypeSize>
            // Optional<TypeSize>;
            // DataLayout DL = i->getModule()->getDataLayout();
            // // Optional<TypeSize> Size = getAllocationSize(DL);
            // // llvm::outs() << getAllocationSize(DL) << "\n";

            // llvm::outs() << "@@@@@@@   END alloca    @@@@@\n";
          } else if (auto *x = llvm::dyn_cast<llvm::AddOperator>(i)) {
            printAddInst(i, x, "add_");

          } else if (auto *x = llvm::dyn_cast<llvm::SubOperator>(i)) {
            //printAddInst(i, x, "sub_");

          } else if (auto *x = llvm::dyn_cast<llvm::MulOperator>(i)) {
            //printAddInst(i, x, "mul_");

          } else if (auto *x = llvm::dyn_cast<llvm::SDivOperator>(i)) {
            //printAddInst(i, x, "div_");

          } else if (i->getOpcode() == 23) // detect srem
           {

          //   llvm::outs() << "find rem Inst \n";

          //   auto *x = dyn_cast<BinaryOperator>(i);

          //   outs() << i->getOpcodeName() << "\n";
          //   llvm::Value *op1 = x->getOperand(0);
          //   llvm::Value *op2 = x->getOperand(1);

          //   llvm::outs() << "first op name  : ";
          //   llvm::outs() << op1->getName() << ",  type : " << *(op1->getType())
          //                << "\n";
          //   llvm::outs() << "second op name : ";
          //   llvm::outs() << op2->getName() << ",  type : " << *(op2->getType())
          //                << "\n";
          //   llvm::outs() << "\n";

          //   const DebugLoc &location = i->getDebugLoc();
          //   if (location) {
          //     llvm::outs() << "Instruction location in cpp file:\n";
          //     llvm::outs() << "Line: " << location.getLine() << ", ";
          //     llvm::outs() << "Col : " << location.getCol();
          //   }
          }
        }

        // if(i->getOpcode() == llvm::Instruction::Add )
        // {
        //   llvm::BinaryOperator::Create(
        //       llvm::Instruction::Add,
        //       llvm::ConstantInt::get( llvm::IntegerType::get ( *TheContext,
        //       21 ), 1, true), llvm::ConstantInt::get( llvm::IntegerType::get
        //       ( *TheContext, 21 ), 1, true), "addtemp", i );
        // }

        std::cout << "================================ basic end ===============================\n\n\n\n";
      }
      std::cout << "end --------------------\n";
    }
    std::map<std::string, int>::iterator i = AddInfo.begin();
    std::map<std::string, int>::iterator e = AddInfo.end();

    std::cout << "\n\norign\n";
    while (i != e) {
      llvm::outs() << i->first << ": " << i->second << "\n";
      i++;
    }
    llvm::outs() << "\n";
    AddInfo.clear();
    return false;
  }
};
} // namespace
char CountOpcode::ID = 0;
static RegisterPass<CountOpcode> X("AddInfo",
                                   "Count number of opcode in a functions");

// 함수 들어있는 모든 키워드를 통계낼 수 있다
//