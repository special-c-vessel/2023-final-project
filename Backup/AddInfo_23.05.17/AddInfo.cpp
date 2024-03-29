#include <iostream>
#include <string>

#include "llvm/IR/Function.h"
#include "llvm/Pass.h"

#include "llvm/Support/raw_ostream.h" // write_escaped

#include "llvm/CodeGen/AsmPrinter.h"  // not use

#include "llvm/IR/IRBuilder.h"        // use for write inst

#include "llvm/IR/BasicBlock.h"

#include "llvm/IR/Instruction.h"

#include "llvm/IR/Type.h"

#include "llvm/IR/InstrTypes.h"

#include "llvm/IR/DataLayout.h"

//get line, column
#include "llvm/IR/DiagnosticInfo.h"

#include "llvm/ADT/StringRef.h"


#include "llvm/IR/Value.h"

#include "llvm/IR/Constants.h"

#include "llvm/IR/User.h"

#include "llvm/IR/LLVMContext.h"

#include "llvm/LTO/Config.h"




#include <optional>

#include <map>
using namespace llvm;
using namespace std;

std::string tempname1 = "";
std::string tempname2 = "";

#define DEBUG_TYPE "AddInfo"

//llvm::LLVMContext* TheContext;

void printLineAndColNum(const DebugLoc &location)
{
  return;
}

void printStoreInst(BasicBlock::iterator i)
{
  return;
}

void printAddInst(BasicBlock::iterator i)
{
  return;
}

int totalCount = 1;

namespace {
struct CountOpcode : public FunctionPass {
  std::map<std::string, int> AddInfo;
  static char ID;
  CountOpcode() : FunctionPass(ID) {}
  virtual bool runOnFunction(Function &F) {
    llvm::outs() << "Function " << F.getName() << '\n';
    for (Function::iterator bb = F.begin(), e = F.end(); bb != e; ++bb) 
    {
      std::cout << "start --------------------\n";
      for (BasicBlock::iterator i = bb->begin(), e = bb->end(); i != e; ++i) 
      {
        std::cout << "basic start @@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";
            Instruction* ii = &*i;
            outs() << "origin instr :" << *ii << "\n\n";
        //llvm::outs() << i.getArraySize() << "\n";
        
        //llvm::outs() << F.getName() << " , ";
        std::cout << "totalCount :  " << totalCount ++ << "\n" ;



        if (AddInfo.find(i->getOpcodeName()) == AddInfo.end()) 
        {
          AddInfo[i->getOpcodeName()] = 1;
          llvm::outs() << "New opcodeName is : " << i->getOpcodeName() << "\n";
          
          std::string tempstr = i->getOpcodeName();

          outs() << "op code is : " << i->getOpcode() << "\n";

          if(tempstr.compare("alloca") == 0)
            llvm::outs() << "is alloca!!\n";
          

          //errs().write_escaped("ret") << '\n';
        } 
        else 
        {
          AddInfo[i->getOpcodeName()] += 1;
          //llvm::outs() << "opcodeName is : " << AddInfo[i->getOpcodeName()] << "\n\n";
          llvm::outs() << "Old opcodeName is : " << i->getOpcodeName() << "\n";
          
          if(auto * x = llvm::dyn_cast<llvm::StoreInst>(i))   // ==========================================================
          {// if store]]
          // x = USER 
          //if(i->getOpcode() == 31)    // if alloca
            llvm::outs() << "###START###############################################\n";

            llvm::outs() << "entire store instruction\n";
            Instruction* ii = &*i;
            outs() << *ii << "\n\n";
            //llvm::outs() << i->getContext();

            llvm::outs() << "this op name is : ";
            llvm::outs() << "Store\n\n";

            llvm::outs() << "print two operand\n";
            llvm::Value* op1 = x->getValueOperand();
            llvm::Value* op2 = x->getPointerOperand();

            llvm::outs() << "first op name  : ";
            llvm::outs() << op1->getName() << ",  type : " << *(op1->getType()) << "\n";

            llvm::outs() << "second op name : ";
            llvm::outs() << op2->getName() << ",  type : " << *(op2->getType()) << "\n";
            llvm::outs() << "\n";

            // //var_name
            // StringRef age = op1->getName();
            // StringRef ages = op2->getName();
            // std::string ager = age.data();
            // std::string agerh = ages.data();
            // cout << "fist op name   : " << ager << "\n";
            // cout << "second op name : " << agerh << "\n\n";
            //char * erhgaeg[] = ages->data();


            //llvm::outs() << op1->getName() << "'s value is : " << op1->Value() << "\n";

            // print line, col number
            const DebugLoc &location = i->getDebugLoc();
            if (location)
            {
                llvm::outs() << "Instruction location in cpp file:\n";
                llvm::outs() << "Line: " << location.getLine() << ", ";
                llvm::outs() << "Col : " << location.getCol() << "\n\n";
            } else {
                // No location metadata available
                // 함수의 인자 같은 arg의 가능성
                // -> 다음 줄의 !dbg !number 를 읽어 반환
                // OPCODE 판별 전 임시 BB (ii) 선언하여 ++, -- 하여 사용해야 함
            }


            //llvm::outs() << " ========================================================= value is :     \n";
            //Value* YourVal = ;
            //llvm::outs() << i->getSExtValue() << "\n";
            
            llvm::outs() << "op1  : " << op1 << "\n";
            llvm::outs() << "*op1 : " << *op1 << "\n";

            //same to             llvm::outs() << "*op1 : " << *op1 << "\n";
            // outs() << "printAsop : ";
            // op1->printAsOperand(errs(), true);
            // outs() << "\n";

            //auto * oopp1 = op1->op_begin();
            //llvm::outs() << oopp1 << "\n";
            // StoreInst *SI = dyn_cast<StoreInst>(i);
            // Value* YourVal = SI->getOperand(0);
            // llvm::outs() << YourVal->getRawSubclassOptionalData() << "\n";

            llvm::outs() << "op2  : " << op2 << "\n";
            llvm::outs() << "*op2 : " << *op2 << "\n";

            
            // llvm::outs() << op2 << "\n";
            // llvm::outs() << *op2 << "\n";
            
            llvm::outs() << *(x->	op_end ()) << "\n";

            auto * test = x->op_begin();
                            llvm::outs() << (*test)->getName() << "\n";

            test ++;
                            llvm::outs() << (*test)->getName() << "\n";
                            //llvm::outs() << x->operand_values () << "\n";
            test ++;
                            llvm::outs() << (*test)->getName() << "\n";
            test ++;
                            // after store    -> same x->op_end()
                            llvm::outs() << (*test)->getName() << "\n";


                     
            ConstantInt *op11 = static_cast<ConstantInt *>(i->getOperand(0));
            ConstantInt *op22 = static_cast<ConstantInt *>(x->getOperand(1));
            
            //errs() << op22->getValue();

            // int64_t op1_realValue = op11->getSExtValue();
            // int64_t op2_realValue = op22->getSExtValue();

            // llvm::outs() << op1_realValue << "\n";
            // llvm::outs() << op2_realValue << "\n";


            llvm::outs() <<"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n";
            
            Align ali = x->getAlign();
            auto getprt = x->getPointerAddressSpace();
            
            llvm::outs() << x->getNumSuccessors () << "\n";




            
            //Instruction * &i;

            // Value *value11 = nullptr;
            // //for (Use &use: x->uses())
            // {
            //     //assert(use.get() == inst);
            //     llvm::Use use = i->uses();
            //     User *user = use.getUser();
            //     unsigned n = use.getOperandNo();
            //     Instruction* userInst = dyn_cast<Instruction>(user);
            //     value11 = userInst->getOperand(n);
            //     //break;
            // }
            // llvm::outs() << value11 << "\n";;
        
            //llvm::outs() << *(op2->getValueName()) << "\n";



            llvm::outs() << "###END###############################################\n";
            //llvm::outs() << "is store!!\n";
            //llvm::outs() << i->getName() << "\n";
            
            


            //llvm::outs() << i->Type::getTypeID() << "\n";


            //llvm::outs() << i->getValueName() << "\n";

            // get instr
            // like  store i32 %add4, i32* %c.addr, align 4

            // Instruction* ii = &*i;
            // errs() << *ii << "\n";
            // outs() << *ii << "\n";

            // //outs() << ii->getIterator() << "\n";
            // BasicBlock::iterator jkl = ii->getIterator();
            // Instruction* iii = &*jkl;
            // errs() << *iii << "\n";

            // //string ttttemp = ii->getContext();

            // // for (BasicBlock::iterator jkl = ii->getIterator().begin(), e = ii->getIterator().end(); jkl != e; ++j) 
            // // {

            // // }

            // // 변수 타입 출력
            // // 가장 앞에 있는 변수의 타입을 출력
            // // %t2 = alloca i32, align 4 경우 i32* 반환
            // // store i32 %add4, i32* %c.addr, align 4 경우 void 반환
            // Type* var_type = ii->getType();
            // outs() << var_type[0] << "\n";
            // outs() << var_type[1] << "\n";
            // outs() << var_type[2] << "\n";
            // outs() << var_type[3] << "\n";
            // outs() << var_type[4] << "\n";
            // outs() << var_type[5] << "\n";
            // outs() << var_type[6] << "\n";
            // outs() << var_type[7] << "\n";
            // outs() << var_type[8] << "\n";
            // outs() << var_type[9] << "\n";
            // outs() << var_type[10] << "\n";

            // //std::string ttempstr = to_string(*var_type);
            // // if(ttempstr.compare("i32*") == 0)
            // // {
            // //   cout << "find int type!!!\n";
            // // }

  
            // for (BasicBlock::iterator j = bb->begin(), e = bb->end(); j != e; ++j) 
            // {
            //   //std::string tempa = j->getName();
            //   //llvm::outs() << j->getValueName() << "\n";
            //   //https://llvm.org/doxygen/classllvm_1_1Instruction.html
            //   //user_back
            //   //getParent
            //   //getOpcode   ====== 함수 코드 출력 alloca = 31, store = 33, load = 32, mul = 17 ...
            //   //getDebugLoc
            //   //getValueName  ==== 변수 주소 출력
            //   //      setValueName 
            //   //getName ========== 변수명 출력, 계산된 값만 출력되고 store에서는 출력 안됨
            // }
            //read line
          }
          else if(auto* x = llvm::dyn_cast<llvm::AllocaInst>(i))
          {
            llvm::outs() << "@@@@@@@   START alloca    @@@@@\n";
            
            
            Instruction* ii = &*i;
            outs() << *ii << "\n";

            //llvm::Value* op1 = x->getValueOperand();
            //llvm::Value* op2 = x->getPointerOperand();
            //llvm::outs() << op1->getName() << " : " << *(op1->getType()) << "\n";
            //llvm::outs() << op2->getName() << " : " << *(op2->getType()) << "\n";


            // cout type && ArraySize
            // only print i32 use next code              llvm::outs() << *(x->getAllocatedType()) << "\n";
            //llvm::outs() << *(x->getArraySize()) << "\n";

            // cout alloca type
            llvm::outs() << *(x->getAllocatedType()) << "\n";

            // Type* var_type22 = x->getAllocationSize();
            // outs() << var_type22 << "\n";

            //llvm::outs() << x->getAllocationSize() << "\n";
            
            //std::optional<TypeSize>
            Optional<TypeSize>;
            DataLayout DL = i->getModule()->getDataLayout();
            //Optional<TypeSize> Size = getAllocationSize(DL);
            //llvm::outs() << getAllocationSize(DL) << "\n";


            

            llvm::outs() << "@@@@@@@   END alloca    @@@@@\n";
          }
          else if(auto* x = llvm::dyn_cast<llvm::AddOperator>(i))
          {
            llvm::outs() << "find add Inst 00000000000000000000000000000000000000000000000000000000000\n";
            
            llvm::outs() << "entire store instruction\n";
            Instruction* ii = &*i;
            outs() << *ii << "\n\n";

            llvm::outs() << "print two operand\n";
            llvm::Value* op1 = x->getOperand(0);
            llvm::Value* op2 = x->getOperand(1);

            

            std::string stradd = "tempadd";
            int gfv = 5;
            StringRef age1 = op1->getName();
            StringRef ages1 = op2->getName();
            std::string ager1 = age1.data();
            std::string agerh1 = ages1.data();

            ager1 = stradd + std::to_string(gfv++);
            agerh1 = stradd + std::to_string(gfv++);

            op1->setName(ager1);
            op2->setName(agerh1);

            llvm::outs() << "first op name  : ";
            llvm::outs() << op1->getName() << ",  type : " << *(op1->getType()) << "\n";
            llvm::outs() << "second op name : ";
            llvm::outs() << op2->getName() << ",  type : " << *(op2->getType()) << "\n";
            llvm::outs() << "\n";

            outs() << "change instr :" << *ii << "\n\n";


            const DebugLoc &location = i->getDebugLoc();
            if (location)
            {
                llvm::outs() << "Instruction location in cpp file:\n";
                llvm::outs() << "Line: " << location.getLine() << ", ";
                llvm::outs() << "Col : " << location.getCol() << "\n\n";
            }


          }
          else if(auto* x = llvm::dyn_cast<llvm::SubOperator>(i))
          {
            llvm::outs() << "find sub Inst 00000000000000000000000000000000000000000000000000000000000\n";
            const DebugLoc &location = i->getDebugLoc();
            if (location)
            {
                llvm::outs() << "Instruction location in cpp file:\n";
                llvm::outs() << "Line: " << location.getLine() << ", ";
                llvm::outs() << "Col : " << location.getCol() << "\n\n";
            }
          }
          else if(auto* x = llvm::dyn_cast<llvm::MulOperator>(i))
          {
            llvm::outs() << "find mul Inst 00000000000000000000000000000000000000000000000000000000000\n";
            const DebugLoc &location = i->getDebugLoc();
            if (location)
            {
                llvm::outs() << "Instruction location in cpp file:\n";
                llvm::outs() << "Line: " << location.getLine() << ", ";
                llvm::outs() << "Col : " << location.getCol() << "\n\n";
            }
          }
          else if(auto* x = llvm::dyn_cast<llvm::SDivOperator>(i))
          {
            llvm::outs() << "find div Inst 00000000000000000000000000000000000000000000000000000000000\n";
            const DebugLoc &location = i->getDebugLoc();
            if (location)
            {
                llvm::outs() << "Instruction location in cpp file:\n";
                llvm::outs() << "Line: " << location.getLine() << ", ";
                llvm::outs() << "Col : " << location.getCol() << "\n\n";
            }
          }
          else if(i->getOpcode() == 23) // detect srem
          {
            
            llvm::outs() << "find rem Inst 00000000000000000000000000000000000000000000000000000000000\n";

            auto* x = dyn_cast<BinaryOperator>(i);

            outs() << i->getOpcodeName() << "\n"; 
            llvm::Value* op1 = x->getOperand(0);
            llvm::Value* op2 = x->getOperand(1);

            llvm::outs() << "first op name  : ";
            llvm::outs() << op1->getName() << ",  type : " << *(op1->getType()) << "\n";
            llvm::outs() << "second op name : ";
            llvm::outs() << op2->getName() << ",  type : " << *(op2->getType()) << "\n";
            llvm::outs() << "\n";

            const DebugLoc &location = i->getDebugLoc();
            if (location)
            {
                llvm::outs() << "Instruction location in cpp file:\n";
                llvm::outs() << "Line: " << location.getLine() << ", ";
                llvm::outs() << "Col : " << location.getCol() << "\n\n";
            }
          }

            

        }

        // if(i->getOpcode() == llvm::Instruction::Add )
        // {
        //   llvm::BinaryOperator::Create(
        //       llvm::Instruction::Add,
        //       llvm::ConstantInt::get( llvm::IntegerType::get ( *TheContext, 21 ), 1, true),
        //       llvm::ConstantInt::get( llvm::IntegerType::get ( *TheContext, 21 ), 1, true),
        //       "addtemp",
        //       i );
        // }

        std::cout << "basic end @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n";
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
static RegisterPass<CountOpcode> X("AddInfo", "Count number of opcode in a functions");

// 함수 들어있는 모든 키워드를 통계낼 수 있다
// 