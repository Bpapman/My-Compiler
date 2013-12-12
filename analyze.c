#include "tree.h"
#include "symtab.cpp"

int numerrors = 0;
int numwarnings = 0;
int globaloffset = 0;
int frameoffset = -2;

void errorSimpleVariable(int line, char* name)
{
    printf("ERROR(%d): '%s' is a simple variable and cannot be called.\n", line, name);
    numerrors++;
}
    
void errorLHS(int line, char* op, char* type, char* lhs)
{
    printf("ERROR(%d): '%s' requires operands of type %s but lhs is of type %s.\n", line, op, type, lhs);
    numerrors++;
}

void errorRHS(int line, char* op, char* type, char* rhs)
{
    printf("ERROR(%d): '%s' requires operands of type %s but rhs is of type %s.\n", line, op, type, rhs);
    numerrors++;
}

void errorTypeCompare(int line, char* op, char* lhs, char* rhs)
{
    printf("ERROR(%d): '%s' requires operands of the same type but lhs is type %s and rhs is type %s.\n", line, op, lhs, rhs);
    numerrors++;
}

void errorMatchArray(int line, char* node)
{
    printf("ERROR(%d): '%s' requires that if one operand is an array so must the other operand.\n", line, node);
    numerrors++;
}

void errorTypeCharInt(int line, char* op, char* side, char* type)
{
    printf("ERROR(%d): %s requires operands of type char or type but %s is of type %s.\n", line, op, side, type);
    numerrors++;
}
void errorCharInit(int line, char* name, char* type)
{
    printf("ERROR(%d): Array '%s' must be of type char to be initialized, but is of type %s.\n", line, name, type);
    numerrors++;
}

void errorArrayIndex(int line, char* name, char* type)
{
    printf("ERROR(%d): Array '%s' should be indexed by type int but got type %s.\n", line, name, type);
    numerrors++;
}

void errorUnindexed(int line, char* error)
{
    printf("ERROR(%d): Array index is the unindexed array '%s'.\n", line, error);
    numerrors++;
}

void errorBreak(int line)
{
    printf("ERROR(%d): Cannot have a break statement outside of loop.\n", line);
    numerrors++;
}

void errorNonArray(int line, char* var)
{
    printf("ERROR(%d): Cannot index nonarray '%s'.\n", line, var);
    numerrors++;
}

void errorArrayReturn(int line)
{
    printf("ERROR(%d): Cannot return an array.\n", line);
    numerrors++;
}

void errorArrayStatement(int line, char* statement)
{
    printf("ERROR(%d): Cannot use array as test condition in %s statement.\n", line, statement);
    numerrors++;
}

void errorSimpleFunction(int line, char* func)
{
    printf("ERROR(%d): Cannot use function '%s' as a simple variable.\n", line, func);
    numerrors++;
}

void errorParam(int line, char* type, int param, char* call, int decl, char* expect)
{
    printf("ERROR(%d): Expecting type %s in parameter %i of call to '%s' defined on line %d but got type %s.\n", line, type, param, call, decl, expect);
    numerrors++;
}

void errorNonBool(int line, char* statement, char* type)
{
    printf("ERROR(%d): Expecting Boolean test condition in %s statement but got type %s.\n", line, statement, type);
    numerrors++;
}

void errorParamArray(int line, int call, char* param, int defined)
{
    printf("ERROR(%d): Expecting array in parameter %i of call to '%s' defined on line %d.\n", line, call, param, defined);
    numerrors++;
}

void errorForeachType(int line, char* lhs, char* rhs)
{
    printf("ERROR(%d): Foreach requires operands of 'in' be the same type but lhs is type %s and rhs array is type %s.\n", line, lhs, rhs);
    numerrors++;
}

void errorNonVoidReturn(int line, char* func, int defined)
{
    printf("ERROR(%d): Function '%s' at line %d is expecting no return value, but return has return value.\n", line, func, defined);
    numerrors++;
}

void errorTypeReturn(int line, char* func, int defined, char* rtype, char* type)
{
    printf("ERROR(%d): Function '%s' at line %d is expecting to return type %s but got type %s.\n", line, func, defined, rtype, type);
    numerrors++;
}

void errorNoReturn(int line, char* func, int defined, char* rtype)
{
    printf("ERROR(%d): Function '%s' at line %d is expecting to return type %s but return has no return value.\n", line, func, defined, rtype);
    numerrors++;
}

void errorForeachLHS(int line, char* type)
{
    printf("ERROR(%d): If not an array, foreach requires lhs of 'in' be of type int but it is type %s.\n", line, type);
    numerrors++;
}

void errorForeachRHS(int line, char* type)
{
    printf("ERROR(%d): If not an array, foreach requires rhs of 'in' be of type int but it is type %s.\n", line, type);
    numerrors++;
}

void errorForeachNotArray(int line)
{
    printf("ERROR(%d): In foreach statement the variable to the left of 'in' must not be an array.\n", line);
    numerrors++;
}

void errorArrayCharInit(int line, char* var, char* type)
{
    printf("ERROR(%d): Initializer for array variable '%s' must be a string, but is of nonarray %s.\n", line, var, type);
    numerrors++;
}

void errorVarNonArrayInit(int line, char* var, char* type)
{
    printf("ERROR(%d): Initializer for nonarray variable '%s' of %s cannot be initialized with an array.\n", line, var, type);
    numerrors++;
}

void errorVarConstInit(int line, char* var)
{
    printf("ERROR(%d): Initializer for variable '%s' is not a constant expression.\n", line, var);
    numerrors++;
}

void errorNParamArray(int line, int param, char* call, int defined)
{
    printf("ERROR(%d): Not expecting array in parameter %i of call to '%s' defined on line %d.\n", line, param, call, defined);
    numerrors++;
}

void errorSymbolDefined(int line, char* symbol, int defined)
{
    printf("ERROR(%d): Symbol '%s' is already defined at line %d.\n", line, symbol, defined);
    numerrors++;
}

void errorSymbolNDefined(int line, char* symbol)
{
    printf("ERROR(%d): Symbol '%s' is not defined.\n", line, symbol);
    numerrors++;
}

void errorNArrayOp(int line, char* op)
{
    printf("ERROR(%d): The operation '%s' does not work with arrays.\n", line, op);
    numerrors++;
}

void errorArrayOp(int line, char* op)
{
    printf("ERROR(%d): The operation '%s' only works with arrays.\n", line, op);
    numerrors++;
}

void errorFewParam(int line, char* func, int defined)
{
    printf("ERROR(%d): Too few parameters passed for function '%s' defined on line %d.\n", line, func, defined);
    numerrors++;
}

void errorManyParam(int line, char* func, int defined)
{
    printf("ERROR(%d): Too many parameters passed for function '%s' defined on line %d.\n", line, func, defined);
    numerrors++;
}

void errorUnaryOp(int line, char* id, char* op, char* given)
{
    printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", line, id, op, given);
    numerrors++;
}

void errorVarTypeInit(int line, char* var, char* type, char* init)
{
    printf("ERROR(%d): Variable '%s' is of %s but is being initialized with an expression of %s.\n", line, var, type, init);
    numerrors++;
}

void warningNoReturnStatement(int line, char* ret, char* func)
{
    printf("WARNING(%d): Expecting to return type %s but function '%s' has no return statement.\n", line, ret, func);
    numwarnings++;
}

static SymTab* tab = new SymTab(xPrint);

int params = 0;
int i = 0;
int foff = 0;
int goff = 0;
int goff2 = 0;

bool loop = false;
bool return_flag = false;
bool func = false;
bool infunc = false;
bool badthing = false;

char* funcname;
char* functemp;
char* scope = (char*)"globals"; 

TreeNode* temptree;
TreeNode* prevtree;
TreeNode* prevtree2;
TreeNode* prevtemp;
TreeNode* saveTree;
TreeNode* returnTree;

void checkNode(TreeNode* t)
{
    while(t != NULL )
    {
        if(t->nodekind == DeclK)
        {
            switch(t->kind.decl)
            {
                case funcK:
                    infunc = true;
                    funcname = t->attr.name;
                    scope = funcname;
                    returnTree = t;
                    
                    temptree = (TreeNode*)tab->lookup(t->attr.name);
                    if(temptree == NULL)
                    {
                        //type global
                        
                        
                        tab->insert(t->attr.name, t);
                        int line = t->lineno;
                        char* type;
                        bool prepro = t->isPre;
                        
                        //get function type
                        if(t->expType == Int)
                            type = (char*)"int";
                        if(t->expType == Char)
                            type = (char*)"char";
                        if(t->expType == Bool)
                            type = (char*)"bool";
                        
                        tab->enter(t->attr.name);
                        foff = -2;
                        
                        if(t->child[1] != NULL)
                        {
                            if(t->child[1]->kind.stmt == returnK)
                            {
                                badthing = true;
                                checkNode(t->child[0]);
                                checkNode(t->child[1]);
                                badthing = false;
                            }
                            else
                            {
                                checkNode(t->child[0]);
                                checkNode(t->child[1]->child[0]);
                                badthing = true;
                                checkNode(t->child[1]->child[1]);
                                badthing = false;
                            }
                        }//end if child[1] != NULL]
                        if(!return_flag && !prepro && t->expType != Void)
                        {
                            warningNoReturnStatement(line, type, funcname);
                        }
                        
                        tab->leave();
                        t->scopeT = global;
                        t->location = 0;
                        t->size = -foff;
                        foff = -2;
                        return_flag = false;
                    }//end temptree == null
                    else if(temptree != NULL)//temptree != null
                    {
                        errorSymbolDefined(t->lineno, t->attr.name, temptree->lineno);
                        
                        tab->insert(t->attr.name, t);
                        int line = t->lineno;
                        char* type;
                        bool prepro = t->isPre;
                        
                        if(t->expType == Int)
                            type = (char*)"int";
                        if(t->expType == Char)
                            type = (char*)"char";
                        if(t->expType == Bool)
                            type = (char*)"bool";
                        
                        tab->enter(t->attr.name);
                        if(t->child[1] != NULL)
                        {
                            if(t->child[1]->kind.stmt == returnK)
                            {
                                badthing = true;
                                checkNode(t->child[0]);
                                checkNode(t->child[1]);
                                badthing = false;
                            }
                            else
                            {
                                checkNode(t->child[0]);
                                checkNode(t->child[1]->child[0]);
                                badthing = true;
                                checkNode(t->child[1]->child[1]);
                                badthing = false;
                            }   
                        }//end child[1] != null
                        if(!return_flag && !prepro && t->expType != Void)
                        {
                            warningNoReturnStatement(line, type, funcname);
                        }
                        
                        tab->leave();
                        return_flag = false;
                    }//end else
                    
                    infunc = false;
                    //scope = (char*)"globals";
                    
                    break;//break funcK
                case paramK:
                    checkNode(t->child[0]);
                    checkNode(t->child[1]);
                    checkNode(t->child[2]);
                    
                    if(!t->isPre)
                    {
                        tab->insert(t->attr.name, t);
                     
                    }//end isPre
                    t->scopeT = param;
                    t->location = foff--;
                    t->size = 1;
                    break;//break paramK
                case varK:
                    //temptree = (TreeNode*)tab->lookup(t->attr.name)
                    //frameoffset--;
                    checkNode(t->child[0]);
                    temptree = (TreeNode*)tab->lookup(t->attr.name);
                    //redundant here drops randomly
                    //t->expType = t->expType;
                    
                    if(temptree == NULL)
                    {
                        
                            
                            if(!t->isStatic)
                            {
                                if(infunc)
                                {
                                    t->scopeT = local;
                                    t->location = foff--;
                                }
                                else
                                {
                                    t->scopeT = global;
                                    t->location = goff--;
                                }
                                //t->location = globaloffset--;
                                //frameoffset--;
                                //tab->insertGlobal(t->attr.name, t);
                                //type static global
                            }
                            else
                            {
                                t->scopeT = local_static;
                                tab->insertGlobal(t->attr.name, t);
                                t->location = goff--;
                                foff--;
                                //type local
                            }
                            if(!t->isArray)
                            {
                                //size = isize
                                t->size = 1;
                            }
                            else
                            {
                                if(t->scopeT != local)
                                {
                                    goff2--;
                                }
                                t->size += 1;
                                foff = foff - t->size + 1;
                            }

                    }
                    if(true)
                    {
                        if(t->child[0] != NULL)
                        {
                            if(!t->isArray)
                            {
                                if(!t->child[0]->isConstant)
                                {
                                    errorVarConstInit(t->lineno, t->attr.name);
                                }
                                if(t->expType != t->child[0]->expType && t->expType != UNDEF && t->child[0]->expType != UNDEF)
                                {
                                    char* ltype;
                                    char* rtype;
                                    
                                    //lhs type
                                    if(t->expType == Int)
                                        ltype = (char*)"int";
                                    if(t->expType == Char)
                                        ltype = (char*)"char";
                                    if(t->expType == Bool)
                                        ltype = (char*)"bool";
                                    //rhs type
                                    if(t->child[0]->expType == Int)
                                        rtype = (char*)"int";
                                    if(t->child[0]->expType == Char)
                                        rtype = (char*)"char";
                                    if(t->child[0]->expType == Bool)
                                        rtype = (char*)"bool";
                                    
                                    errorVarTypeInit(t->lineno, t->attr.name, ltype, rtype);
                                }//end type compare
                                
                                if(t->child[0]->isArray)
                                {
                                    char* type;
                                    if(t->expType == Int)
                                        type = (char*)"int";
                                    if(t->expType == Char)
                                        type = (char*)"char";
                                    if(t->expType == Bool)
                                        type = (char*)"bool";
                                                
                                    errorVarNonArrayInit(t->lineno, t->attr.name, type);
                                }
                            }//end isArray
                            else
                            {
                                if(!t->child[0]->isConstant)
                                {
                                    errorVarConstInit(t->lineno, t->attr.name);
                                }
                                if(t->isArray && t->expType != Char && t->expType != UNDEF)
                                {
                                    char* type;
                                    if(t->expType == Int)
                                        type = (char*)"int";
                                    if(t->expType == Bool)
                                        type = (char*)"bool";
                                    
                                    errorArrayCharInit(t->lineno, t->attr.name, type);
                                }
                                if(t->isArray && (t->expType != Char || !t->child[0]->isArray))
                                {
                                    char* type;
                                    if(t->child[0]->expType == Int)
                                        type = (char*)"int";
                                    if(t->child[0]->expType == Bool)
                                        type = (char*)"bool";
                                    
                                    errorArrayCharInit(t->lineno, t->attr.name, type);
                                }
                            }//end else
                        }//end child[0] != null]
                    }//end if true
                    if(!tab->insert(t->attr.name, t))
                    {
                        errorSymbolDefined(t->lineno, t->attr.name, temptree->lineno);
                    }                
                    break;//end varK                  
            }//end switch kind.decl
        }//end node DeclK if
        
        if(t->nodekind == StmtK)
        {
            switch(t->kind.stmt)
            {
                case compoundK:
                    if(badthing)
                    {
                        char* tempscope;
                        tempscope = scope;
                        tab->enter((char*)"Compound");
                        scope = (char*)"Compound";
                        
                        checkNode(t->child[0]);
                        checkNode(t->child[1]);
                        checkNode(t->child[2]);
                        tab->leave();
                        scope = tempscope;
                    }//end if badthing                  
                    break;//break compoundK
                case whileK:
                    loop=true;
                    checkNode(t->child[0]);
                    checkNode(t->child[1]);
                    checkNode(t->child[2]);
                    loop=false;
                    
                    if(t->child[0]->expType != Bool && t->child[0]->expType != UNDEF)
                    {
                        char* type;
                        if(t->child[0]->expType == Int)
                            type = (char*)"int";
                        if(t->child[0]->expType == Char)
                            type = (char*)"char";
                        
                        errorNonBool(t->lineno, (char*)"while", type);
                    }
                    if(t->child[0]->isArray == true)
                    {
                        errorArrayStatement(t->lineno, (char*)"while");
                    }
                    break;//break whileK
                case ifK:
                    checkNode(t->child[0]);
                    checkNode(t->child[1]);
                    checkNode(t->child[2]);
                    
                    if(t->child[0]->isArray == true)
                    {
                        errorArrayStatement(t->lineno, (char*)"if");
                    }
                    if(t->child[0]->expType != Bool && t->child[0]->expType != UNDEF)
                    {
                        char* type;
                        if(t->child[0]->expType == Int)
                            type = (char*)"int";
                        if(t->child[0]->expType == Char)
                            type = (char*)"char";
                        
                        errorNonBool(t->lineno, (char*)"if", type);
                    }
                    break;//break ifK
                case foreachK:
                    loop=true;
                    checkNode(t->child[0]);
                    checkNode(t->child[1]);
                    checkNode(t->child[2]);
                    
                    if(t->child[0]->isArray)
                    {
                        errorForeachNotArray(t->lineno);
                    }
                    if(t->child[1]->isArray == false)
                    {
                        if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                        {
                            char* type;
                            if(t->child[0]->expType == Bool)
                                type = (char*)"bool";
                            if(t->child[0]->expType == Char)
                                type = (char*)"char";
                            
                            errorForeachLHS(t->lineno, type);
                        }
                        if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                        {
                            char* type;
                            if(t->child[1]->expType == Bool)
                                type = (char*)"bool";
                            if(t->child[1]->expType == Char)
                                type = (char*)"char";
                            
                            errorForeachRHS(t->lineno, type);
                        }
                    }//end foreach isarray false
                    else if(t->child[0]->expType != Int || t->child[1]->expType != Int && (t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF))
                    {
                        char* ltype;
                        char* rtype;
                        if(t->child[0]->expType == Int)
                            ltype = (char*)"int";
                        if(t->child[0]->expType == Bool)
                            ltype = (char*)"bool";
                        if(t->child[0]->expType == Char)
                            ltype = (char*)"char";
                        if(t->child[1]->expType == Int)
                            rtype = (char*)"int";
                        if(t->child[1]->expType == Bool)
                            rtype = (char*)"bool";
                        if(t->child[1]->expType == Char)
                            rtype = (char*)"char";
                        
                        errorForeachType(t->lineno, ltype, rtype);
                    }
                    loop=false;
                    break;//break foreachK
                case returnK:
                    return_flag=true;
                    //functemp = (char*)funcname;
                    checkNode(t->child[0]);
                    checkNode(t->child[1]);
                    temptree = (TreeNode*)tab->lookup(funcname);
                    //temptree = returnTree;
                    
                    if(t->child[0] != NULL)
                    {
                        if(t->child[0]->isArray == true)
                        {
                            errorArrayReturn(t->lineno);
                        }
                        if(t->child[0] != NULL && temptree->expType == Void)
                        {
                            //char* type;
                            //if(t->expType == Int)
                            //    type = (char*)"Int";
                            //if(t->expType == Bool)
                            //    type = (char*)"bool";
                            //if(t->expType == Char)
                            //    type = (char*)"char";
                            
                            errorNonVoidReturn(t->lineno, temptree->attr.name, temptree->lineno);
                        }
                        else if(t->child[0]->expType != temptree->expType && t->child[0]->expType != UNDEF && temptree->expType != UNDEF)
                        {
                            char* ltype;
                            char* rtype;
                            if(t->child[0]->expType == Int)
                                ltype = (char*)"int";
                            if(t->child[0]->expType == Bool)
                                ltype = (char*)"bool";
                            if(t->child[0]->expType == Char)
                                ltype = (char*)"char";
                            if(temptree->expType == Int)
                                rtype = (char*)"int";
                            if(temptree->expType == Bool)
                                rtype = (char*)"bool";
                            if(temptree->expType == Char)
                                rtype = (char*)"char";
                            
                            errorTypeReturn(t->lineno, temptree->attr.name, temptree->lineno, rtype, ltype);
                        }
                    }//end child0 != null
                    if(temptree->expType != Void && t->child[0] == NULL)
                    {
                        char* type;
                        if(t->expType == Int)
                            type = (char*)"int";
                        if(t->expType == Bool)
                            type = (char*)"bool";
                        if(t->expType == Char)
                            type = (char*)"char";
                        
                        errorNoReturn(t->lineno, temptree->attr.name, temptree->lineno, type);
                    }
                    break;//break returnK
                case breakK:
                    if(!loop)
                        errorBreak(t->lineno);
                    break;//break breakK                    
            }//end switch kind.stmt
        }//end node StmtK if
        
        if(t->nodekind == ExpK)
        {
            switch(t->kind.exp)
            {
                case assignK:
                    switch(t->attr.op)
                    {
                        case eqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Int)
                                    ltype = (char*)"int";
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Int)
                                    rtype = (char*)"int";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"=", ltype, rtype);
                            }
                            if(t->child[0]->isArray == true && t->child[1]->isArray == false)
                            {
                                errorMatchArray(t->lineno, (char*)"=");
                            }
                            if(t->child[0]->isArray == false && t->child[1]->isArray == true)
                            {
                                errorMatchArray(t->lineno, (char*)"=");
                            }
                            t->expType = t->child[0]->expType;
                            break;//break eqK
                        case peqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"+=", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"+=", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"+=", ltype, rtype);
                            }
                            break;//break peqK
                        case meqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"-=", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"-=", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"-=", ltype, rtype);
                            }
                            break;//break meqK
                        case ppK:
                            checkNode(t->child[0]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorUnaryOp(t->lineno, (char*)"++", (char*)"bool", type);
                            }
                            if(t->child[0]->isArray)
                            {
                                errorNArrayOp(t->lineno, (char*)"++");
                            }
                            t->expType = Int;
                            break;//break ppK
                        case mmK:
                            checkNode(t->child[0]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorUnaryOp(t->lineno, (char*)"--", (char*)"bool", type);
                            }
                            if(t->child[0]->isArray)
                            {
                                errorNArrayOp(t->lineno, (char*)"--");
                            }
                            t->expType = Int;
                            break;//break mmK
                        case colonK:
                            
                            
                            break;//break colonK                            
                    }//end switch attr.op
                    break;//break assignK
                case opK:
                    switch(t->attr.op)
                    {
                        case plusK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->isArray || t->child[1]->isArray)
                            {
                                errorNArrayOp(t->lineno, (char*)"+");
                            }
                            else if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"+", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"+", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"+", ltype, rtype);
                            }
                            t->expType = Int;
                            break;//break plusK
                        case minusK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->isArray || t->child[1]->isArray)
                            {
                                errorNArrayOp(t->lineno, (char*)"-");
                            }
                            else if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"-", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"-", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"-", ltype, rtype);
                            }
                            t->expType = Int;
                            break;//break minusK
                        case ppK:
                            checkNode(t->child[0]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorUnaryOp(t->lineno, (char*)"++", (char*)"bool", type);
                            }
                            t->expType = Int;
                            break;//break ppK
                        case mmK:
                            checkNode(t->child[0]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorUnaryOp(t->lineno, (char*)"--", (char*)"bool", type);
                            }
                            t->expType = Int;
                            break;//break mmK
                        case neqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != t->child[1]->expType && (t->child[0]->expType == Int || t->child[0]->expType == Bool) && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"!=", ltype, rtype);
                            }
                            t->expType = Bool;
                            break;//break neqK
                        case gtK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)">", (char*)"lhs", (char*)"bool");
                            if(t->child[1]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)">", (char*)"rhs", (char*)"bool");
                            if(t->child[0]->isArray || t->child[1]->isArray)
                                errorNArrayOp(t->lineno, (char*)">");
                            t->expType = Bool;
                            break;//break gtK
                        case ltK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)"<", (char*)"lhs", (char*)"bool");
                            if(t->child[1]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)"<", (char*)"rhs", (char*)"bool");
                            if(t->child[0]->isArray || t->child[1]->isArray)
                                errorNArrayOp(t->lineno, (char*)"<");
                            t->expType = Bool;
                            break;//break ltK
                        case gteqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)">=", (char*)"lhs", (char*)"bool");
                            if(t->child[1]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)">=", (char*)"rhs", (char*)"bool");
                            if(t->child[0]->isArray || t->child[1]->isArray)
                                errorNArrayOp(t->lineno, (char*)">=");
                            t->expType = Bool;
                            break;//break gteqK
                        case lteqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)"<=", (char*)"lhs", (char*)"bool");
                            if(t->child[1]->expType == Bool)
                                errorTypeCharInt(t->lineno, (char*)"<=", (char*)"rhs", (char*)"bool");
                            if(t->child[0]->isArray || t->child[1]->isArray)
                                errorNArrayOp(t->lineno, (char*)"<=");
                            t->expType = Bool;
                            break;//break lteqK
                        case divideK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"/", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"/", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"/", ltype, rtype);
                            }
                            t->expType = Int;
                            break;//break divideK
                        case multiK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"*", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"*", (char*)"int", type);
                            }
                            if(t->child[0]->isArray || t->child[1]->isArray)
                                errorNArrayOp(t->lineno, (char*)"*");
                            t->expType = Int;
                            break;//break multiK
                        case peqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"+=", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"+=", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"+=", ltype, rtype);
                            }
                            break;//break peqK
                        case meqK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"-=", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"-=", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"-=", ltype, rtype);
                            }
                            break;//break meqK
                        case modK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"%", (char*)"int", type);
                            }
                            else if(t->child[1]->expType != Int && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"%", (char*)"int", type);
                            }
                            else if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                
                                errorTypeCompare(t->lineno, (char*)"%", ltype, rtype);
                            }
                            t->expType = Int;
                            break;//break modK
                        case equivK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != t->child[1]->expType && t->child[0]->expType != UNDEF && t->child[1]->expType != UNDEF)
                            {
                                char* ltype;
                                char* rtype;
                                if(t->child[0]->expType == Int)
                                    ltype = (char*)"int";
                                if(t->child[0]->expType == Bool)
                                    ltype = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    ltype = (char*)"char";
                                //if(t->child[0]->expType == True)
                                //    ltype = (char*)"True";
                                //if(t->child[0]->expType == False)
                                //    ltype = (char*)"False";
                                if(t->child[1]->expType == Int)
                                    rtype = (char*)"int";
                                if(t->child[1]->expType == Bool)
                                    rtype = (char*)"bool";
                                if(t->child[1]->expType == Char)
                                    rtype = (char*)"char";
                                //if(t->child[1]->expType == True)
                                //   rtype = (char*)"True";
                                //if(t->child[1]->expType == False)
                                //    rtype = (char*)"False";
                                
                                errorTypeCompare(t->lineno, (char*)"==", ltype, rtype);
                            }
                            t->expType = Bool;
                            break;//break equivK
                        case notK:
                            checkNode(t->child[0]);
                            if(t->child[0]->expType != Bool && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Int)
                                    type = (char*)"int";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorUnaryOp(t->lineno, (char*)"not", (char*)"bool", type);
                            }
                            if(t->child[0]->isArray)
                                errorNArrayOp(t->lineno, (char*)"not");
                            t->expType = Bool;
                            break;//break notK
                        case andK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Bool && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Int)
                                    type = (char*)"int";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"and", (char*)"bool", type);
                            }
                            if(t->child[1]->expType != Bool && t->child[1]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Int)
                                    type = (char*)"int";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"and", (char*)"bool", type);
                            }
                            if(t->child[0]->isArray || t->child[1]->isArray)
                            {
                                errorNArrayOp(t->lineno, (char*)"and");
                            }
                            t->expType = Bool;
                            break;//break andK
                        case orK:
                            checkNode(t->child[0]);
                            checkNode(t->child[1]);
                            if(t->child[0]->expType != Bool && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Int)
                                    type = (char*)"int";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorLHS(t->lineno, (char*)"or", (char*)"bool", type);
                            }
                            if(t->child[1]->expType != Bool && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[1]->expType == Int)
                                    type = (char*)"int";
                                if(t->child[1]->expType == Char)
                                    type = (char*)"char";
                                
                                errorRHS(t->lineno, (char*)"or", (char*)"bool", type);
                            }
                            if(t->child[0]->isArray || t->child[1]->isArray)
                            {
                                errorNArrayOp(t->lineno, (char*)"or");
                            }
                            t->expType = Bool;
                            break;//break orK
                        case UminusK:
                            checkNode(t->child[0]);
                            if(t->child[0]->isArray)
                                errorNArrayOp(t->lineno, (char*)"-");
                            if(t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                            {
                                char* type;
                                if(t->child[0]->expType == Bool)
                                    type = (char*)"bool";
                                if(t->child[0]->expType == Char)
                                    type = (char*)"char";
                                
                                errorUnaryOp(t->lineno, (char*)"-", (char*)"bool", type);
                            }
                            
                            break;//break UminusK
                        case UmultiK:
                            checkNode(t->child[0]);
                            if(!t->child[0]->isArray)
                                errorArrayOp(t->lineno, (char*)"*");
                            break;//break UmultiK
                    }//end switch attr.op
                    break;//break opK
                case idK:
                    temptree = (TreeNode*)tab->lookup(t->attr.name);
                    if(temptree == NULL)
                        errorSymbolNDefined(t->lineno, t->attr.name);
                    else if(temptree->kind.decl == funcK)
                        errorSimpleFunction(t->lineno, t->attr.name);
                    else if(!temptree->isArray && t->isArray)
                        errorNonArray(t->lineno, t->attr.name);
                    else
                    {
                        checkNode(t->child[0]);
                        if(t->isArray && t->child[0]->expType != Int && t->child[0]->expType != UNDEF)
                        {
                            char* type;
                            if(t->child[0]->expType == Bool)
                                type = (char*)"bool";
                            if(t->child[0]->expType == Bool)
                                type = (char*)"bool";
                            
                            errorArrayIndex(t->lineno, t->attr.name, type);
                        }
                        if(!t->isArray && t->child[0] != NULL)
                            errorUnindexed(t->lineno, t->attr.name);
                        if(t->isArray && t->child[0]->isArray)
                            errorUnindexed(t->lineno, t->attr.name);
                    }
                    if(temptree != NULL)
                    {
                        t->expType = temptree->expType;
                        if(temptree->isArray)
                        {
                            if(t->child[0] == NULL)
                                t->isArray = true;
                            else
                                t->isArray = false;
                        }
                        t->location = temptree->location;
                    }
                    break;//break idK
                case constK:
                    break;//break constK
                case callK:
                    //checkNode(t->child[0]);
                    //checkNode(t->child[1]);
                    //saveTree = t;
                    temptree = (TreeNode*)tab->lookup(t->attr.name);
                    TreeNode* typeholder = temptree;
                    TreeNode* temptree2 = t->child[0];
                    if(temptree == NULL)
                    {
                        errorSymbolNDefined(t->lineno, t->attr.name);
                        params++;
                        while(temptree2 != NULL)
                        {
                            checkNode(temptree2);
                            temptree2 = temptree2->sibling;
                        }
                        params--;
                    }
                    else
                    {
                        t->expType = typeholder->expType;
                        if(temptree->kind.decl != funcK)
                        {
                            errorSimpleVariable(t->lineno, t->attr.name);
                            params++;
                            while(temptree2 != NULL)
                            {
                                checkNode(temptree2);
                                temptree2 = temptree2->sibling;
                            }
                            params--;
                        }
                        else
                        {
                            temptree2 = t->child[0];
                            TreeNode* typeholder = temptree->child[0];
                            int i = 1;
                            while(typeholder != NULL && temptree2 != NULL)
                            {
                                params++;
                                checkNode(temptree2);
                                params--;
                                if(typeholder->expType != temptree2->expType && typeholder->expType != UNDEF && temptree2->expType != UNDEF)
                                {
                                    char* ltype;
                                    char* rtype;
                                    
                                    if(typeholder->expType == Int)
                                        ltype = (char*)"int";
                                    if(typeholder->expType == Bool)
                                        ltype = (char*)"bool";
                                    if(typeholder->expType == Char)
                                        ltype = (char*)"char";
                                    
                                    if(temptree2->expType == Int)
                                        rtype = (char*)"int";
                                    if(temptree2->expType == Bool)
                                        rtype = (char*)"bool";
                                    if(temptree2->expType == Char)
                                        rtype = (char*)"char";
                                    
                                    errorParam(t->lineno, ltype, i, typeholder->attr.name, typeholder->lineno, rtype);
                                }
                                if(typeholder->isArray && !temptree2->isArray)
                                    errorParamArray(t->lineno, i, t->attr.name, typeholder->lineno);
                                if(!typeholder->isArray && temptree2->isArray)
                                    errorNParamArray(t->lineno, i, t->attr.name, typeholder->lineno);
                                prevtemp = typeholder;
                                typeholder = typeholder->sibling;
                                prevtree = temptree2;
                                temptree2 = temptree2->sibling;
                                i++;
                            }//end while
                            if(typeholder != NULL && temptree2 == NULL)
                                errorFewParam(t->lineno, t->attr.name, typeholder->lineno);
                            if(typeholder == NULL && temptree2 != NULL)
                            {
                                errorManyParam(t->lineno, t->attr.name, prevtemp->lineno);
                                params++;
                                while(temptree2 != NULL)
                                {
                                    checkNode(temptree2);
                                    temptree2 = temptree2->sibling;
                                }
                                params--;
                            }
                            
                        }//else funcK
                    }//end else
                    break;//break callK
            }//end switch kind.exp
        }//end node ExpK if
        if(params == 0)
            t = t->sibling;
        else
            t = NULL;
    }//end while t != NULL
}//end checkNode function
