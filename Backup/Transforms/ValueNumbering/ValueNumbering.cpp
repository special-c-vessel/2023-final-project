#include <iostream>
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include <string>
#include <stdio.h>

//#include <cstdio>       // for fwrite & fprint

using namespace llvm;
using namespace std;

#define DEBUG_TYPE "ValueNumbering"

using namespace llvm;
using namespace std;

namespace {
struct ValueNumbering : public FunctionPass {

    // open File                                use append mode
    FILE * file = fopen("testValueNumbering.ll", "w");

        int result = fputs("test", file);
    
    // int tempcount = 1;
    //fputs("file put test 1", 100, file);

    // // close file
    // fclose(file);

    string func_name = "test";
    static char ID;
    ValueNumbering() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
	    
        errs() << "ValueNumbering: " << F.getName() << "\n";
        if (F.getName() != func_name) return false;

        for (auto& basic_block : F)
        {
            for (auto& inst : basic_block)
            {
                errs() << inst << "\n";
                if(inst.getOpcode() == Instruction::Load){
                    std::cout << "aaaa\n";
                    errs() << "This is Load"<<"\n";
                }
                if(inst.getOpcode() == Instruction::Store){
                    errs() << "This is Store"<<"\n";
                }
                if (inst.isBinaryOp())
                {
                    errs() << "Op Code:" << inst.getOpcodeName()<<"\n";
                    if(inst.getOpcode() == Instruction::Add){
                        errs() << "add ADD texxt "<<"\n";
                    }
                    if(inst.getOpcode() == Instruction::Sub){
                        errs() << "add sub text"<<"\n";
                    }
                    if(inst.getOpcode() == Instruction::Mul){
                        errs() << "add Mul text"<<"\n";
                        // fputs("\n file put test", file);
                        // fputs(tempcount, file);
                        // fputs("\n", file);
                    }
                    
                    // see other classes, Instruction::Sub, Instruction::UDiv, Instruction::SDiv
                    // errs() << "Operand(0)" << (*inst.getOperand(0))<<"\n";
                    auto* ptr = dyn_cast<User>(&inst);
		    //errs() << "\t" << *ptr << "\n";
                    for (auto it = ptr->op_begin(); it != ptr->op_end(); ++it) {
                        errs() << "\t" <<  *(*it) << "\n";
                        // if ((*it)->hasName()) 
			    // errs() << (*it)->getName() << "\n";                      
                    }
                } // end if
            } // end for inst
        } // end for block
        return false;
    } // end runOnFunction

    
}; // end of struct ValueNumbering
}  // end of anonymous namespace

char ValueNumbering::ID = 0;
static RegisterPass<ValueNumbering> X("ValueNumbering", "ValueNumbering Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);