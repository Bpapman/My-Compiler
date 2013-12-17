#include "emitcode.cpp"
#include "tree.h"
//#include "tree.c"

#ifndef codegen
#define codegen

extern char* out;
extern int goff2;
extern int goff;
extern int params;

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
bool inexp = false;
bool opexp = false;
bool ifexp = false;
int toff = 0;
int tempparam = 0;
int framesize = 0;
//int params = 0;
TreeNode *t1 = NULL;
TreeNode *t2 = NULL;


void codeGen(TreeNode* currnode)
{
    bool texp = false;
    while(currnode != NULL)
    {
        if(currnode->nodekind==DeclK)
        {
            switch(currnode->kind.decl)
            {
                case varK:
                    codeGen(currnode->child[0]);
                    t2 = (TreeNode*)tab->lookup(currnode->attr.name);
                    if(t2 == NULL && currnode->isArray)
                    {
                        emitRM2((char*)"LDC", AC, currnode->size - 1, AC3, (char*)"load size of array", currnode->attr.name);
                        emitRM2((char*)"ST", AC, currnode->location + 1, FP, (char*)"save size of array", currnode->attr.name);
                    }
                    if(t2 == NULL && currnode->child[0] != NULL)
                        emitRM2((char*)"ST", AC, currnode->location, FP, (char*)"Store variable", currnode->attr.name);
                    if(t2 != NULL && currnode->child[0] != NULL)
                        codeGen(currnode->child[0]);
                    break;
                case paramK:
                    
                    break;
                case funcK:                   
                    //printf("test\n");
                    t1 = (TreeNode*)tab->lookup(currnode->attr.name);
                    t1->location = emitSkip(0);
                    currnode->location = t1->location;
                    toff = 0;
                    framesize = currnode->size;
                    //toff = 0 - t1->size;
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
                    toff = 0;
                    break;
            }
            //in_exp = false;
        }
        else if(currnode->nodekind==StmtK)
            switch(currnode->kind.stmt)
            {
                case ifK:
                    int breakk;
                    int breakk2;
                    emitComment((char*)"IF");
                    currloc2 = emitSkip(0);
                    ifexp = true;
                    codeGen(currnode->child[0]);
                    ifexp = false;
                    emitRM((char*)"JGT", AC, 1, PC, (char*)"Jump to then part");
                    emitComment((char*)"THEN");
                    
                    skiploc2 = breakk2;
                    breakk2 = emitSkip(1);
                    
                    codeGen(currnode->child[1]);
                    if(currnode->child[2] != NULL)
                    {
                        emitComment((char*)"ELSE");
                        breakk = emitSkip(1);
                        backPatchJumpToHere(breakk2, (char*)"Jump around the THEN [backpatch]");
                        codeGen(currnode->child[2]);
                        backPatchJumpToHere(breakk, (char*)"Jump around the ELSE [backpatch]");
                    }
                    else
                        backPatchJumpToHere(breakloc, (char*)"Jump around the THEN [backpatch]");
                    
                    emitComment((char*)"ENDIF");
                    break;
                case returnK:
                    emitComment((char*)"RETURN");
                    if (currnode->child[0] != NULL) 
                    {
                        codeGen(currnode->child[0]);                  // generate any return value 
                        //t2 = (TreeNode*)tab->lookup(currnode->attr.name);
                        if(currnode->child[0] != NULL)
                        {
                            if(currnode->child[0]->scopeT == local || currnode->child[0]->scopeT == param)
                                offReg = 1;
                            else
                                offReg = 0;
                        }
                        if(currnode->child[0]->isArray)
                        {
                            if(currnode->scopeT == param)
                                emitRM2((char*)"LD", AC1, currnode->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                            else
                                emitRM2((char*)"LDA", AC, currnode->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                            
                            emitRM2((char*)"SUB", AC, AC1, AC, (char*)"Compute offset for", currnode->attr.name);
                            emitRM2((char*)"LD", AC, 0, AC, (char*)"load the value", currnode->attr.name);
                        }
                        emitRM((char*)"LDA", RT, 0, AC, (char*)"Copy result to rt register");  // save in return register
                    }

                    // emit return sequence
                    emitRM((char*)"LD", AC, OFPOFF, FP, (char*)"Load return address"); 
                    emitRM((char*)"LD", FP, RETURN_OFFSET, FP, (char*)"Adjust fp");
                    emitRM((char*)"LDA", PC, 0, AC, (char*)"Return");
                    break;
                case compoundK:
                    emitComment((char*)"BEGIN compound statement");
                    codeGen(currnode->child[0]);
                    codeGen(currnode->child[1]);
                    emitComment((char*)"END compound statement");
                    break;
                case breakK:
                    emitComment((char*)"BREAK");
                    emitRM((char*)"LDA", PC, breakloc - emitSkip(0) - 1, PC, (char*)"break");
                    break;
                case foreachK:
                    break;
                case whileK:
                    int currloc;
                    int skiploc;
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
            int offReg = 1;
            if(!in_exp)
            {
                emitComment((char*)"EXPRESSION STMT");
                in_exp = true;
                
            }
                switch(currnode->kind.exp)
                {
                    codeGen(currnode->child[0]);
                    case opK:
                        texp = inexp;
                        inexp = currnode->expType == Bool;
                        
                        opexp = true;
                        //tempparam = params;
                        //params = 1;
                        codeGen(currnode->child[0]);
                        opexp = false;
                        //params = tempparam;
                        if(currnode->child[1] != NULL)
                        {
                            emitRM((char*)"ST", AC, toff-- - framesize, FP, (char*)"Save left side");
                            if(!currnode->child[1]->isArray)
                                codeGen(currnode->child[1]);
                            else
                            {
                                codeGen(currnode->child[1]->child[0]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[1]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local || t2->scopeT == param)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                if(currnode->child[1]->scopeT == param)
                                {
                                    if(currnode->child[1]->child[0] != NULL)
                                        emitRM2((char*)"LD", AC1, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[1]->attr.name);
                                    else
                                        emitRM2((char*)"LD", AC, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[1]->attr.name);
                                }
                                else
                                {
                                    if(currnode->child[0] != NULL)
                                    {
                                        emitRO((char*)"SUB", AC, AC1, AC, (char*)"Computer offset of value");
                                        emitRM((char*)"LD", AC, 0, AC, (char*)"Load the value");
                                    }
                                }
                            }
                            emitRM((char*)"LD", AC1, ++toff - framesize, FP, (char*)"Load left into ac1");
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
                                emitRM((char*)"JEQ", AC, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"True case");
                                break;
                            case modK:
                                emitRO((char*)"DIV", AC2, AC1, AC, (char*)"Op %");
                                emitRO((char*)"MUL", AC2, AC2, AC, (char*)"");
                                emitRO((char*)"SUB", AC, AC1, AC2, (char*)"");
                                break;
                            case UminusK:
                                emitRM((char*)"LDC", AC1, 0, AC3, (char*)"Load 0");
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op unary -");
                                break;
                            case UmultiK:
                                emitRO((char*)"MUL", AC, currnode->size + 1, AC, (char*)"Load array size");
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
                                emitRO((char*)"DIV", AC, AC1, AC, (char*)"Op /");
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
                                emitRM((char*)"JGE", AC1, 1, PC, (char*)"Jump if true");
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"False case");
                                break;
                            case notK:
                                emitRM((char*)"LDA", AC, 1, AC2, (char*)"Not load address");
                                emitRO((char*)"SUB", AC, AC1, AC, (char*)"Op Not");
                                break;
                            case andK:
                                emitRM((char*)"JEQ", AC, 1, PC, (char*)"Op AND");
                                emitRM((char*)"LDA", AC, 0, AC2, (char*)"");
                                break;
                            case orK:
                                emitRM((char*)"JEQ", AC, 1, PC, (char*)"Op OR");
                                emitRM((char*)"LDA", AC, 0, AC2, (char*)"");
                                break;
                        }
                        inexp = texp;
                        break;
                                
                    case constK:
                        if(currnode->expType == Int)
                            emitRM((char*)"LDC", AC, currnode->attr.val, AC3, (char*)"Load constant");
                        if(currnode->expType == Bool)
                        {
                            if(currnode->attr.bval)
                                emitRM((char*)"LDC", AC, 1, AC3, (char*)"Load constant");
                            else
                                emitRM((char*)"LDC", AC, 0, AC3, (char*)"Load constant");
                        }
                        if(currnode->expType == Char)
                            emitRM((char*)"LDC",AC, currnode->attr.string[1], AC3, (char*)"Load constant");
                        break;
                    case idK:
                        codeGen(currnode->child[0]);
                        t2 = (TreeNode*)tab->lookup(currnode->attr.name);
                        if(t2 != NULL)
                        {
                            if(currnode->scopeT == local || currnode->scopeT == param)
                                offReg = 1;
                            else
                                offReg = 0;
                        }
                        if(currnode->isArray)
                        {
                            if((params != 0 && !inexp) || opexp || ifexp)
                            {
                                if(currnode->scopeT == param)
                                {
                                    //emitRM2((char*)"LD", AC1, currnode->location, FP, (char*)"Load address of base of array", currnode->attr.name);
                                    if(currnode->child[0] != NULL)
                                        emitRM2((char*)"LD", AC1, currnode->location, offReg, (char*)"Load address of base of array", currnode->attr.name);
                                    else
                                        emitRM2((char*)"LD", AC, currnode->location, offReg, (char*)"Load address of base of array", currnode->attr.name);
                                }
                                else
                                {
                                    if(currnode->child[0] != NULL)
                                        emitRM2((char*)"LDA", AC1, currnode->location, offReg, (char*)"Load address of base of array", currnode->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC, currnode->location, offReg, (char*)"Load address of base of array", currnode->attr.name);
                                }
                                if(currnode->child[0] != NULL)
                                {
                                    emitRO((char*)"SUB", AC, AC1, AC, (char*)"Compute offset of value");
                                    emitRM((char*)"LD", AC, 0, AC, (char*)"load the value");
                                }
                            }
                            //in = true;
                        }
                        else if(currnode->scopeT != param && currnode->scopeT != local)
                            emitRM2((char*)"LD", AC, currnode->location, offReg, (char*)"Load variable", currnode->attr.name);
                        else
                            emitRM2((char*)"LD", AC, currnode->location, offReg, (char*)"Load variable", currnode->attr.name);
                        break;
                    case assignK:
                        texp = inexp;
                        inexp = true;
                        switch(currnode->attr.op)
                        {
                            case peqK:
                                if(currnode->child[0]->isArray)
                                {
                                    codeGen(currnode->child[0]);
                                    emitRM((char*)"ST", AC, toff-- - framesize, FP, (char*)"Save index");
                                }
                                codeGen(currnode->child[1]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local || t2->scopeT == param)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                if(currnode->child[1]->isArray)
                                {
                                    if(currnode->child[1]->scopeT == param)
                                        emitRM2((char*)"LD", AC1, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC1, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC, AC1, AC, (char*)"Compute offset of value");
                                    emitRM((char*)"LD", AC, 0, AC2, (char*)"Load the value"); 
                                }
                                if(currnode->child[0]->isArray)
                                {
                                    emitRM((char*)"LD", AC1, ++toff - framesize, FP, (char*)"Restore index");
                                    if(currnode->child[0]->scopeT == param)
                                        emitRM2((char*)"LD", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC2, AC2, AC1, (char*)"Compute offset of value");
                                    emitRM2((char*)"LD", AC1, 0, AC2, (char*)"loah lhs variable", currnode->child[0]->attr.name);
                                    emitRO((char*)"ADD", AC, AC1, AC, (char*)"op +=");                                          // decrement
                                    emitRM2((char*)"ST", AC, 0, AC2, (char*)"Store variable", currnode->child[0]->attr.name);        
                                }
                                else
                                {
                                    emitRM2((char*)"LD", AC1, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                    emitRO((char*)"ADD", AC, AC1, AC, (char*)"op +=");                                          // decrement
                                    emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                }
                                break;
                            case meqK:
                                if(currnode->child[0]->isArray)
                                {
                                    codeGen(currnode->child[0]);
                                    emitRM((char*)"ST", AC, toff-- - framesize, FP, (char*)"Save index");
                                }
                                codeGen(currnode->child[1]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local || t2->scopeT == param)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                if(currnode->child[1]->isArray)
                                {
                                    if(currnode->child[1]->scopeT == param)
                                        emitRM2((char*)"LD", AC1, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC1, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC, AC1, AC, (char*)"Compute offset of value");
                                    emitRM((char*)"LD", AC, 0, AC2, (char*)"Load the value"); 
                                }
                                if(currnode->child[0]->isArray)
                                {
                                    emitRM((char*)"LD", AC1, ++toff - framesize, FP, (char*)"Restore index");
                                    if(currnode->child[0]->scopeT == param)
                                        emitRM2((char*)"LD", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC2, AC2, AC1, (char*)"Compute offset of value");
                                    emitRM2((char*)"LD", AC1, 0, AC2, (char*)"loah lhs variable", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC, AC1, AC, (char*)"op -=");                                          // decrement
                                    emitRM2((char*)"ST", AC, 0, AC2, (char*)"Store variable", currnode->child[0]->attr.name);        
                                }
                                else
                                {
                                    emitRM2((char*)"LD", AC1, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                    emitRO((char*)"SUB", AC, AC1, AC, (char*)"op -=");                                          // decrement
                                    emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                }
                                break;
                            case eqK:
                                if(currnode->child[0]->isArray)
                                {
                                    codeGen(currnode->child[0]);
                                    emitRM((char*)"ST", AC, toff-- - framesize, FP, (char*)"Save index");
                                }
                                codeGen(currnode->child[1]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local || t2->scopeT == param)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                if(currnode->child[1]->isArray)
                                {
                                    if(currnode->child[1]->scopeT == param)
                                        emitRM2((char*)"LD", AC1, currnode->child[1]->location, offReg, (char*)"Load address of base of array", currnode->child[1]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC1, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC, AC1, AC, (char*)"Compute offset of value");
                                    emitRM((char*)"LD", AC, 0, AC, (char*)"Load the value");
                                }
                                if(currnode->child[0]->isArray)
                                {
                                    emitRM((char*)"LD", AC1, ++toff - framesize, FP, (char*)"Restore index");
                                    if(currnode->child[0]->scopeT == param)
                                        emitRM2((char*)"LD", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC2, AC2, AC1, (char*)"Compute offset of value");
                                    emitRM2((char*)"ST", AC, 0, AC2, (char*)"Store variable", currnode->child[0]->attr.name);        
                                }
                                else
                                    emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);
                                break;
                            case ppK:
                                if(currnode->child[0]->isArray)
                                {
                                    codeGen(currnode->child[0]);
                                    emitRM((char*)"ST", AC, toff-- - framesize, FP, (char*)"Save index");
                                }
                                //codeGen(currnode->child[0]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local || t2->scopeT == param)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                if(currnode->child[0]->isArray)
                                {
                                    emitRM((char*)"LD", AC1, ++toff - framesize, FP, (char*)"Restore index");
                                    if(currnode->child[0]->scopeT == param)
                                        emitRM2((char*)"LD", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC2, AC2, AC1, (char*)"Compute offset of the value");
                                    emitRM2((char*)"LD", AC, 0, AC2, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                    emitRM2((char*)"LDA", AC, 1, AC, (char*)"increment value of", currnode->child[0]->attr.name);              // decrement
                                    emitRM2((char*)"ST", AC, 0, AC2, (char*)"Store variable", currnode->child[0]->attr.name);
                                }
                                else
                                {
                                    emitRM2((char*)"LD", AC, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                    emitRM2((char*)"LDA", AC, 1, AC, (char*)"increment value of", currnode->child[0]->attr.name);              // decrement
                                    emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                }
                                break;
                            case mmK:
                                if(currnode->child[0]->isArray)
                                {
                                    codeGen(currnode->child[0]);
                                    emitRM((char*)"ST", AC, toff-- - framesize, FP, (char*)"Save index");
                                }
                                //codeGen(currnode->child[0]);
                                t2 = (TreeNode*)tab->lookup(currnode->child[0]->attr.name);
                                if(t2 != NULL)
                                {
                                    if(t2->scopeT == local || t2->scopeT == param)
                                        offReg = 1;
                                    else
                                        offReg = 0;
                                }
                                if(currnode->child[0]->isArray)
                                {
                                    emitRM((char*)"LD", AC1, ++toff - framesize, FP, (char*)"Restore index");
                                    if(currnode->child[0]->scopeT == param)
                                        emitRM2((char*)"LD", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    else
                                        emitRM2((char*)"LDA", AC2, currnode->child[0]->location, offReg, (char*)"Load address of base of array", currnode->child[0]->attr.name);
                                    emitRO((char*)"SUB", AC2, AC2, AC1, (char*)"Compute offset of the value");
                                    emitRM2((char*)"LD", AC, 0, AC2, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                    emitRM2((char*)"LDA", AC, -1, AC, (char*)"increment value of", currnode->child[0]->attr.name);              // decrement
                                    emitRM2((char*)"ST", AC, 0, AC2, (char*)"Store variable", currnode->child[0]->attr.name);
                                }
                                else
                                {
                                    emitRM2((char*)"LD", AC, currnode->child[0]->location, offReg, (char*)"load lhs variable", currnode->child[0]->attr.name);  // load mutable
                                    emitRM2((char*)"LDA", AC, -1, AC, (char*)"increment value of", currnode->child[0]->attr.name);              // decrement
                                    emitRM2((char*)"ST", AC, currnode->child[0]->location, offReg, (char*)"Store variable", currnode->child[0]->attr.name);     // store mutable
                                }
                                break;
                            inexp = texp;
                        }
                        inexp = false;
                        break;
                    case callK:
                        texp = inexp;
                        inexp = false;
                        int ttemp = toff;
                        TreeNode *tmp = currnode->child[0];
                        //emitComment((char*)"EXPRESSION STMT");
                        emitComment2((char*)"\t\t\tBegin call to ", currnode->attr.name);
                        emitRM((char*)"ST", FP, toff - framesize, 1, (char*)"Store old fp in ghost frame");
                        toff -= 2;
                        while(tmp != NULL)
                        {
                            params++;
                            emitComment((char*)"\t\t\tLoad param 1");
                            codeGen(tmp);
                            emitRM((char*)"ST", AC, toff-- - framesize,FP, (char*)"Store parameter");
                            paramoff--;
                            tmp = tmp->sibling;
                            params--;
                        }
                        toff = ttemp;
                        paramoff = -2;
                        //t1 = (TreeNode*)tab->lookup(currnode->attr.name);
                        emitComment2((char*)"\t\t\tJump to", currnode->attr.name);
                        emitRM((char*)"LDA", FP, toff - framesize, 1, (char*)"Load address of new frame");
                        emitRM((char*)"LDA", AC, 1, PC, (char*)"Return address in ac");
                        //FIX THE DAMN symbtable
                        TreeNode* t = (TreeNode*)tab->lookup(currnode->attr.name);
                        emitRM2((char*)"LDA", PC, t->location - emitSkip(0) - 1, PC, (char*)"CALL", t->attr.name);
                        emitRM((char*)"LDA", AC, 0, RT, (char*)"Save the result in ac");
                        emitComment2((char*)"\t\t\tEnd call to", currnode->attr.name);
                        emitComment((char*)"EXPRESSION STMT");
                        calloff += 2;
                        inexp = texp;
                        break;                        
                }//end switch exp
                in_exp = false;
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
    emitComment((char*)"C- Compiler version C-F13");
    emitComment((char*)"Built: Dec 12, 2013");
    emitComment((char*)"Author: Brett Papineau");
    //filename conversion here
    emitComment2((char*)"File compiled: ", (char*)out);
}

void emitEnd()
{
    TreeNode *temp = (TreeNode*)tab->lookup((char*)"main");
    //if(temp == NULL)
    //{
    //    printf("ERROR(LINKER): Procedure main is not defined\n");
    //}
    
    if(temp != NULL)
    {
        backPatchJumpToHere(0, (char*)"Jump to init [backpatch]");
        emitComment((char*)"BEGIN Init");
        emitRM((char*)"LD", GP, 0, GP, (char*)"Set the global pointer");
        emitComment((char*)"BEGIN init of globals");
        //start
        int gloads = goff2;
        SymTabEntry* intable = (SymTabEntry*)tab->firstSymTabEntry();
        intable = (SymTabEntry*)tab->nextSymTabEntry(intable);
        //skip null
        //intable = (SymTabEntry*)tab->nextSymTabEntry(intable);
        TreeNode* tmp = (TreeNode*)tab->lookup(intable->name);
        while(tmp != NULL)
        {        
            if(tmp->kind.decl == varK)
            {
                if(!tmp->isArray)
                {
                    params = 1;
                    codeGen(tmp);
                }
                else
                {
                   emitRM2((char*)"LDC", AC, tmp->size - 1, AC3, (char*)"load size of array", tmp->attr.name);
                   emitRM2((char*)"ST", AC, tmp->location + 1, 0, (char*)"save size of array", tmp->attr.name); 
                }
            }
            tmp=tmp->sibling;
        }

        emitComment((char*)"END init of globals");
        emitRM((char*)"LDA", FP, goff, GP, (char*)"set first frame at end of globals");
        emitRM((char*)"ST", FP, 0, FP, (char*)"store old fp (point to self)");
        emitRM((char*)"LDA", AC, 1, PC, (char*)"Return address in ac");
        emitRM((char*)"LDA", PC, temp->location - emitSkip(0) - 1, PC, (char*)"Jump to main");
        emitRO((char*)"HALT", 0, 0, 0, (char*)"DONE!");
        emitComment((char*)"END Init");
    }
}