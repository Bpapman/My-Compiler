#include "emitcode.cpp"
#include "tree.h"
#include "tree.c"

#ifndef codegen
#define codegen

int backPatchJumpToHere(int addr, char *comment)
{
    int currloc;

    currloc = emitSkip(0);
    emitBackup(addr);
    emitRMAbs((char*)"LDA", PC, currloc, comment);
    emitBackup(currloc);
}

int calloff = 2;
int paramoff = -2;
int currloc = 0;
int currloc2 = 0;
int backloc = 0;
int breakloc = 0;
int breakloc2 = 0;
int skiploc = 0;
int skiploc2 = 0;
int OFPOFF = -1;
int RETURN_OFFSET = 0;
int offReg = 1;
bool in_exp = false;
int callparam = 0;
int toff = 0;
TreeNode *t1 = NULL;
TreeNode *t2 = NULL;



void codeGen(TreeNode* currnode)
{
    //printf("Got here\n");
    while(currnode != NULL)
    {
        if(currnode->nodekind==DeclK)
        {
            switch(currnode->kind.decl)
            {
                case varK:
                    t2 = (TreeNode*)tab->lookup(currnode->attr.name);
                    if(t2 != NULL && currnode->isArray)
                    {
                        emitRM2((char*)"LDC", AC, currnode->size - 1, AC3, (char*)"Load size of array", currnode->attr.name);
                        emitRM2((char*)"ST", AC, currnode->location, FP, (char*)"Load size of array", currnode->attr.name);
                    }
                    break;
                case paramK:
                    
                    break;
                case funcK:                   
                    //printf("test\n");
                    t1 = (TreeNode*)tab->lookup(currnode->attr.name);
                    t1->location = emitSkip(0);
                    toff = 0 - t1->size;
                    emitComment2((char*)"BEGIN function", currnode->attr.name);
                    if(currnode->isPre)
                        emitRM((char*)"ST", AC, -1, FP, (char*)"Store return address");
                    else
                        emitRM((char*)"ST", AC, -1, FP, (char*)"Store return address.");
                    codeGen(currnode->child[0]);
                    codeGen(currnode->child[1]);
                    if(currnode->isPre)
                    {
                        switch(currnode->pnum)
                        {
                            case 0://input
                                emitRO((char*)"IN", RT, RT, RT, (char*)"Grab int input");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                break;
                            case 1://output
                                emitRM((char*)"LD", AC, -2, FP, (char*)"Load parameter");
                                emitRO((char*)"OUT", AC, AC, AC, (char*)"Output integer");
                                emitRM((char*)"LDC", RT, 0, AC3, (char*)"Set return to 0");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                break;
                            case 2://inputb
                                emitRO((char*)"INB", RT, RT, RT, (char*)"Grab bool input");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                break;
                            case 3://ouptutb
                                emitRM((char*)"LD", AC, -2, FP, (char*)"Load parameter");
                                emitRO((char*)"OUTB", AC, AC, AC, (char*)"Output bool");
                                emitRM((char*)"LDC", RT, 0, AC3, (char*)"Set return to 0");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                break;
                            case 4://inputc
                                emitRO((char*)"INC", RT, RT, RT, (char*)"Grab char input");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                break;
                            case 5://outputc
                                emitRM((char*)"LD", AC, -2, FP, (char*)"Load parameter");
                                emitRO((char*)"OUTC", AC, AC, AC, (char*)"Output char");
                                emitRM((char*)"LDC", RT, 0, AC3, (char*)"Set return to 0");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                break;
                            case 6://outnl
                                emitRO((char*)"OUTNL", AC, AC, AC, (char*)"Output a newline");
                                emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                                emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                                emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                                
                        }
                    }
                    if(!currnode->isPre)
                    {
                        emitComment((char*)"Add standard closing in case there is no return statement");
                        emitRM((char*)"LDC", RT, 0, AC3, (char*)"Set return value to 0");
                        emitRM((char*)"LD", AC, -1, FP, (char*)"Load return address");
                        emitRM((char*)"LD", FP, 0, FP, (char*)"Adjust fp");
                        emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                        
                    }
                    emitComment2((char*)"END of function", currnode->attr.name);
                    break;
            }
            in_exp = false;
        }
        else if(currnode->nodekind==StmtK)
            switch(currnode->kind.stmt)
            {
                case ifK:
                    emitComment((char*)"IF");
                    currloc2 = emitSkip(0);
                    codeGen(currnode->child[0]);
                    emitRM((char*)"JGT", AC, 1, PC, (char*)"Jump to then part");
                    emitComment((char*)"THEN");
                    
                    skiploc2 = breakloc2;
                    breakloc2 = emitSkip(1);
                    
                    codeGen(currnode->child[1]);
                    backPatchJumpToHere(breakloc, (char*)"Jump around the THEN [backpatch]");
                    breakloc2 = skiploc2;
                    
                    emitComment((char*)"ENDIF");
                    break;
                case returnK:
                    emitComment((char*)"RETURN");
                    if (currnode->child[0]) 
                    {
                        codeGen(currnode->child[0]);                  // generate any return value 
                        emitRM((char*)"LDA", RT, 0, AC, (char*)"Copy result to rt register");  // save in return register
                    }

                    // emit return sequence
                    emitRM((char*)"LD", AC, OFPOFF, FP, (char*)"Load return address"); 
                    emitRM((char*)"LD", FP, RETURN_OFFSET, FP, (char*)"Adjust fp");
                    emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                    break;
                case compoundK:
                    emitComment((char*)"BEGIN compound statement");
                    //emitComment((char*)"EXPRESSION STMT");
                    codeGen(currnode->child[0]);
                    codeGen(currnode->child[1]);
                    emitComment((char*)"END compound statement");
                    break;
                case breakK:
                        
                    break;
                case foreachK:
                        
                    break;
                case whileK:
                    //printf("WhileK found\n");
                    emitComment((char*)"WHILE");
                    currloc = emitSkip(0);                    // save location to return to
                    codeGen(currnode->child[0]);   // generate code for test

                    emitRM((char*)"JGT", AC, 1, PC, (char*)"Jump to while part");  // test and jump
                    emitComment((char*)"DO");

                    skiploc = breakloc;                // save the old break statement return point
                    breakloc = emitSkip(1);            // addr of instr that jumps to end of loop
                                           // this is also the backpatch point
                    
                    codeGen(currnode->child[1]);  // generate body of loop

                    emitRMAbs((char*)"LDA", PC, currloc, (char*)"go to beginning of loop");   // jump to top of loop
                    backPatchJumpToHere(breakloc, (char*)"No more loop [backpatch]");              // backpatch jump to end of loop at breakloc

                    breakloc = skiploc;              // restore for break statement

                    emitComment((char*)"ENDWHILE");    
                    break;
                  
            }
        else if(currnode->nodekind==ExpK)
        {
            if(!in_exp)
            {
                emitComment((char*)"EXPRESSION STMT");
                in_exp = true;
                
            }
                switch(currnode->kind.exp)
                {
                    case opK:
                        codeGen(currnode->child[0]);
                        if(currnode->child[1] != NULL)
                        {
                            emitRM((char*)"ST", AC, toff--, FP, (char*)"Save left side");
                            codeGen(currnode->child[1]);
                            emitRM((char*)"LD", AC1, ++toff, FP, (char*)"Load left into ac1");
                        }
                        switch(currnode->attr.op)
                        {
                            case ltK:
                                emitRO((char*)"SUB", AC1, AC1, AC, (char*)"Op <");
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"True case");
                                emitRM((char*)"JLT", AC1, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"False case");
                                break;
                            case gtK:
                                emitRO((char*)"SUB", AC1, AC1, AC, (char*)"Op <");
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"True case");
                                emitRM((char*)"JGT", AC1, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"False case");
                                break;
                            case equivK:
                                emitRO((char*)"SUB", AC1, AC1, AC, (char*)"Op ==");
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"True case");
                                emitRM((char*)"JEQ", AC1, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"False case");
                                break;
                            case neqK:
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op !=");
                                break;
                            case modK:
                                emitRO((char*)"DIV", AC1, AC1, AC, (char*)"Op %");
                                emitRO((char*)"MUL", AC2, AC2, AC, (char*)"Op *");
                                emitRO((char*)"SUB", AC, AC1, AC2, (char*)"Op -");
                                break;
                            case UminusK:
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op -");
                                break;
                            case UmultiK:
                                emitRO((char*)"MUL", AC, AC1, AC, (char*)"Op *");
                                break;
                            case minusK:
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op -");
                                break;
                            case plusK:
                                emitRO((char*)"ADD", AC, AC1, AC, (char*)"Op +");
                                break;
                            case multiK:
                                emitRO((char*)"MUL", AC, AC1, AC, (char*)"Op *");
                                break;
                            case divideK:
                                emitRO((char*)"DIV", AC, AC1, AC, (char*)"Op div");
                                break;
                            case lteqK:
                                emitRO((char*)"SUB", AC1, AC1, AC, (char*)"Op <=");
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"True case");
                                emitRM((char*)"JLE", AC1, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"False case");
                                break;
                            case gteqK:
                                emitRO((char*)"SUB", AC1, AC1, AC, (char*)"Op >=");
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"True case");
                                emitRM((char*)"JTE", AC1, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"False case");
                                break;
                            case notK:
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op =");
                                break;
                            case eqK:
                                emitRO((char*)"SUB", AC1, AC1, AC, (char*)"Op =");
                            case andK:
                                emitRM2((char*)"JEQ", AC, 1, PC, (char*)"Op AND", (char*)"");
                                break;
                            case orK:
                                emitRM2((char*)"JEQ", AC, 1, PC, (char*)"Op OR", (char*)"");
                                break;
                        }
                        break;
                                
                    case constK:
                        emitRM((char*)"LDC", AC, currnode->attr.val, AC3, (char*)"Load constant");
                        break;
                    case idK:
                        codeGen(currnode->child[0]);
                        t2 = (TreeNode*)tab->lookup(currnode->attr.name);

                        //if(currnode->isArray)
                        //{
                            
                        //}
                            if(t2 != NULL)
                            {
                                if(t2->scopeT == local)
                                    offReg = 1;
                                else
                                    offReg = 0;
                            }
                        emitRM2((char*)"LD", AC, currnode->location, offReg, (char*)"Load variable", currnode->attr.name);
                        break;
                    case assignK:
                        switch(currnode->attr.op)
                        {
                            case peqK:
                                codeGen(currnode->child[1]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                emitRM2((char*)"LD", AC1, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                emitRO((char*)"ADD", AC, AC1, AC, (char*)"Op +=");                                          // decrement
                                emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                break;
                            case meqK:
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                codeGen(currnode->child[1]);
                                emitRM2((char*)"LD", AC1, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op +=");                                          // decrement
                                emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                break;
                            case eqK:
                                
                                //emitRM((char*)"LDC", AC, currnode->child[1]->location, offReg, (char*)"Load constant");
                                //emitRM2((char*)"LD", AC, currnode->child[0]->location, offReg, (char*)"Load variable", (char*)currnode->child[0]->attr.name);
                                codeGen(currnode->child[1]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);
                                break;
                            case ppK:
                                emitRM2((char*)"LD", AC, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                emitRM2((char*)"LDA", AC, 1, AC, (char*)"increment value of", currnode->child[0]->attr.name);              // decrement
                                emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                break;
                            case mmK:
                                emitRM2((char*)"LD", AC, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                emitRM2((char*)"LDA", AC, -1, AC, (char*)"decrement value of", currnode->child[0]->attr.name);             // decrement
                                emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                break;
                            default:
                                
                                break;
                        }
                        
                        break;
                    case callK:
                        calloff -= 2;
                        TreeNode *tmp = currnode->child[0];
                        emitComment2((char*)"\t\t\tBegin call to ", currnode->attr.name);
                        emitRM((char*)"ST", FP, toff + calloff, 1, (char*)"Store old fp in ghost frame");
                        while(tmp != NULL)
                        {
                            callparam++;
                            emitComment((char*)"\t\t\tLoad Param 1");
                            codeGen(tmp);
                            paramoff--;
                            tmp = tmp->sibling;
                            callparam--;
                        }
                        paramoff = -2;
                        t1 = (TreeNode*)tab->lookup(currnode->attr.name);
                        emitComment2((char*)"\t\t\tJump to ", currnode->attr.name);
                        emitRM((char*)"LDA", FP, toff + calloff, 1, (char*)"Load address of new frame");
                        emitRM((char*)"LDA", AC, 1, PC, (char*)"Return address in ac");
                        //FIX THE DAMN symbtable
                        TreeNode* t = (TreeNode*)tab->lookup(currnode->attr.name);
                        emitRM2((char*)"LDA", PC, t->location - emitSkip(0) - 1, PC, (char*)"Call ", t->attr.name);
                        emitRM((char*)"LDA", AC, 0, RT, (char*)"Save the result in ac");
                        emitComment2((char*)"\t\t\tEnd call to", currnode->attr.name);
                        calloff += 2;
                        break;                        
                }//end switch exp                 
                if(callparam > 0)
                    emitRM((char*)"ST", AC, toff + paramoff + calloff, FP, (char*)"Store parameter");
        }//end expK
        //else printf("Unknown node kind");
        if(params == 0)
            currnode = currnode->sibling;
        else
            currnode = NULL;
    }//end while
}//end function

#endif

void emitHeader()
{
    emitComment((char*)"C- Compiler version C-F10");
    emitComment((char*)"Built: Dec 6, 2013");
    emitComment((char*)"Author: Brett Papineau");
    //filename conversion here
    emitComment((char*)"File compiled: temp.c-");
}

void emitEnd()
{
    TreeNode *temp = (TreeNode*)tab->lookup((char*)"main");
    if(temp == NULL)
    {
        printf("ERROR(LINKER): Procedure main is not defined\n");
    }
    
    if(temp != NULL)
    {
        backPatchJumpToHere(0, (char*)"Jump to init [backpatch]");
        emitComment((char*)"BEGIN Init");
        emitRM((char*)"LD", GP, 0, GP, (char*)"Set the global pointer");
        emitComment((char*)"BEGIN init of globals");
        //start
    
        //end
        emitComment((char*)"END init of globals");
        emitRM((char*)"LDA", FP, 0, GP, (char*)"set first frame at end of globals");
        emitRM((char*)"ST", FP, 0, FP, (char*)"store old fp (point to self)");
        emitRM((char*)"LDA", AC, 0, PC, (char*)"return address in ac");
        emitRM((char*)"LDA", PC, temp->location - emitSkip(0) - 1, PC, (char*)"Jump to main");
        emitRO((char*)"HALT", 0, 0, 0, (char*)"DONE");
        emitComment((char*)"END init");
    }
}