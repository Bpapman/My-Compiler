%{
    #include <iostream>
    #include <stdlib.h>
    #include <stdio.h>
    #include "tokenStruct.h"
    #include "tree.c"
    #include "analyze.c"

    extern int yylex();
    extern int yydebug;
    extern FILE* yyin;

    extern SymTab* tab;

    static TreeNode *savedTree;
    static TreeNode *output = (TreeNode*) malloc(sizeof(TreeNode));

    extern int numerrors;
    extern int numwarnings;

    bool stat = false;

    #ifndef  prepro
    #define  prepro

    void preProcess()
    {
        //output preprocess
        //static TreeNode *output = (TreeNode*) malloc(sizeof(TreeNode));
        output->attr.name=(char*)"output";
        output->lineno=-1;
        output->nodekind=DeclK;
        output->kind.decl=funcK;
        output->expType=Void;
        output->isPre=true;
        static TreeNode *outputN = (TreeNode*) malloc(sizeof(TreeNode));
        output->child[0] = outputN;
        outputN->lineno=-1;
        outputN->nodekind=DeclK;
        outputN->kind.decl=paramK;
        outputN->isPre=true;
        outputN->expType=Int;


        //outputb preprocess
        static TreeNode *outputb = (TreeNode*) malloc(sizeof(TreeNode));
        output->sibling=outputb;
        outputb->attr.name=(char*)"outputb";
        outputb->lineno=-1;
        outputb->nodekind=DeclK;
        outputb->kind.decl=funcK;
        outputb->expType=Void;
        outputb->isPre=true;
        static TreeNode *outputbN = (TreeNode*) malloc(sizeof(TreeNode));
        outputb->child[0] = outputbN;
        outputbN->lineno=-1;
        outputbN->nodekind=DeclK;
        outputbN->kind.decl=paramK;
        outputbN->isPre=true;
        outputbN->expType=Bool;


        //outputc preprocess
        static TreeNode *outputc = (TreeNode*) malloc(sizeof(TreeNode));
        outputb->sibling=outputc;
        outputc->attr.name=(char*)"outputc";
        outputc->lineno=-1;
        outputc->nodekind=DeclK;
        outputc->kind.decl=funcK;
        outputc->expType=Void;
        outputc->isPre=true;
        static TreeNode *outputcN = (TreeNode*) malloc(sizeof(TreeNode));
        outputc->child[0] = outputcN;
        outputcN->lineno=-1;
        outputcN->nodekind=DeclK;
        outputcN->kind.decl=paramK;
        outputcN->isPre=true;
        outputcN->expType=Char;


        //input preprocess
        static TreeNode *input = (TreeNode*) malloc(sizeof(TreeNode));
        outputc->sibling=input;
        input->attr.name=(char*)"input";
        input->lineno=-1;
        input->nodekind=DeclK;
        input->kind.decl=funcK;
        input->expType=Int;
        input->isPre=true;


        //inputb preprocess
        static TreeNode *inputb = (TreeNode*) malloc(sizeof(TreeNode));
        input->sibling=inputb;
        inputb->attr.name=(char*)"inputb";
        inputb->lineno=-1;
        inputb->nodekind=DeclK;
        inputb->kind.decl=funcK;
        inputb->expType=Bool;
        inputb->isPre=true;


        //input preprocess
        static TreeNode *inputc = (TreeNode*) malloc(sizeof(TreeNode));
        inputb->sibling=inputc;
        inputc->attr.name=(char*)"inputc";
        inputc->lineno=-1;
        inputc->nodekind=DeclK;
        inputc->kind.decl=funcK;
        inputc->expType=Char;
        inputc->isPre=true;


        //outnl preprocess
        static TreeNode *outnl = (TreeNode*) malloc(sizeof(TreeNode));
        inputc->sibling=outnl;
        outnl->attr.name=(char*)"outnl";
        outnl->lineno=-1;
        outnl->nodekind=DeclK;
        outnl->kind.decl=funcK;
        outnl->expType=Void;
        outnl->isPre=true;
        outnl->sibling=savedTree;

    }
    #endif

#ifndef yyerr
#define yyerr
void yyerror(const char* err)
{
      printf("yyerror: %s\n", err);
}
#endif
    using namespace std;


%}


%union  
{
    ExpType type;
    TokenData *tokenData;
    TreeNode *tNode;
}


%token <tokenData> ID NUMCONST CHARCONST STRINGCONST
%token <tokenData> AND BREAK BOOL CHAR ELSE FALSE FOREACH IF IN INT OR NOT RETURN TRUE STATIC WHILE
%token <tokenData> COMMA LBRACKET RBRACKET LPAREN RPAREN LBRACE RBRACE SEMI
%token <tokenData> EQUIV NEQ LEQ LESSER GEQ GREATER ASSIGN PASSIGN MASSIGN DEC INC COLON
%token <tokenData> PLUS MINUS DIVIDE MOD MULTI


%type <tNode> program declarationlist declaration

%type <tNode> vardeclaration scopedvardeclaration vardecllist vardeclinitialize vardeclid

%type <tNode> fundeclaration params paramlist paramtypelist paramidlist paramid

%type <tNode> statement sstatement compoundstmt localdeclarations statementlist expressionstmt
%type <tNode> matchedselectionstmt unmatchedselectionstmt
%type <tNode> returnstmt breakstmt

%type <tNode> expression simpleexpression andexpression unaryrelexpression relexpression
%type <tNode> relop sumexpression sumop term mulop unaryexpression unaryop
%type <tNode> factor mutable immutable call args arglist constant

%type <type> typespecifier scopedtypespecifier
%%

program                 :   declarationlist                                     { savedTree = $1; }
                        ;

declarationlist         :   declarationlist declaration                         { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $2;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $2;
                                                                                }
                                                                                    
                        |   declaration                                         { $$ = $1; }
                        ;

declaration             :   vardeclaration                                      { $$ = $1; }
                        |   fundeclaration                                      { $$ = $1; }
                        ;




vardeclaration          :   typespecifier vardecllist SEMI                      { TreeNode* t = $2;
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=$1;
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    $$ = $2;
                                                                                }        
                        ;

scopedvardeclaration    :   scopedtypespecifier vardecllist SEMI                { TreeNode* t = $2;
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=$1;
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    $$ = $2;
                                                                                    if(stat)
                                                                                    {
                                                                                        $$->isStatic=true; 
                                                                                        stat=false;
                                                                                    }
                                                                                }
                        ;

vardecllist             :   vardecllist COMMA vardeclinitialize                 { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $3;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $3;
                                                                                }
                        |   vardeclinitialize                                   { $$ = $1; }
                        ;

vardeclinitialize       :   vardeclid                                           { $$ = $1; }
                        |   vardeclid COLON simpleexpression                    { $$ = $1; $$->child[0] = $3; $$->expType=$3->expType; }
                        ;

vardeclid               :   ID                                                  { $$ = newDeclNode(varK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; }
                        |   ID LBRACKET NUMCONST RBRACKET                       { $$ = newDeclNode(varK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; $$->isArray=true; }
                        ;

scopedtypespecifier     :   STATIC typespecifier                                { $$ = $2; stat = true; }
                        |   typespecifier                                       { $$ = $1; }
                        ;

typespecifier           :   INT                                                 { $$ = Int; }
                        |   BOOL                                                { $$ = Bool; }
                        |   CHAR                                                { $$ = Char; }
                        ;



fundeclaration          :   typespecifier ID LPAREN params RPAREN statement     { int lineno = $2->lineno; $$ = newDeclNode(funcK,lineno); $$->child[0]=$4; $$->child[1]=$6; $$->attr.name=$2->idvalue; $$->expType=$1; }
                        |   ID LPAREN params RPAREN statement                   { int lineno = $1->lineno; $$ = newDeclNode(funcK,lineno); $$->child[0]=$3; $$->child[1]=$5; $$->attr.name=$1->idvalue; $$->expType=Void; }
                        ;

params                  :   paramlist                                           { $$ = $1; }
                        |                                                       { $$ = NULL; }
                        ;

paramlist               :   paramlist SEMI paramtypelist                        { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $3;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $3;
                                                                                }
                        |   paramtypelist                                       { $$ = $1; }
                        ;

paramtypelist           :   typespecifier paramidlist                           { TreeNode* t = $2;
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=$1;
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    $$ = $2;
                                                                                } 
                        ;

paramidlist             :   paramidlist COMMA paramid                           { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $3;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $3;
                                                                                }
                        |   paramid                                             { $$ = $1; } 
                        ;

paramid                 :   ID                                                  { $$ = newDeclNode(paramK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; }
                        |   ID LBRACKET RBRACKET                                { $$ = newDeclNode(paramK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; $$->isArray=true; }
                        ;


statement               :   matchedselectionstmt                                { $$ = $1; }
                        |   unmatchedselectionstmt                              { $$ = $1; }
                        ;

sstatement              :   expressionstmt                                      { $$ = $1; }
                        |   compoundstmt                                        { $$ = $1; }
                        |   returnstmt                                          { $$ = $1; }
                        |   breakstmt                                           { $$ = $1; }
                        ;

compoundstmt            :   LBRACE localdeclarations statementlist RBRACE       { int lineno=$1->lineno; $$ = newStmtNode(compoundK,lineno); $$->child[0]=$2; $$->child[1]=$3; }
                        ;

localdeclarations       :   localdeclarations scopedvardeclaration              { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $2;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $2;
                                                                                }
                        |                                                       { $$ = NULL; }
                        ;

statementlist           :   statementlist statement                             { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $2;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $2;
                                                                                }
                        |                                                       { $$ = NULL; }
                        ;

expressionstmt          :   expression SEMI                                     { $$ = $1; }
                        |   SEMI                                                { $$ = NULL; }
                        ;

matchedselectionstmt    :   IF LPAREN simpleexpression RPAREN matchedselectionstmt ELSE matchedselectionstmt            { int lineno=$1->lineno; $$ = newStmtNode(ifK,lineno); $$->child[0]=$3; $$->child[1]=$5; $$->child[2]=$7; }
                        |   WHILE LPAREN simpleexpression RPAREN matchedselectionstmt                                   { int lineno=$1->lineno; $$ = newStmtNode(whileK,lineno); $$->child[0]=$3; $$->child[1]=$5; }
                        |   FOREACH LPAREN mutable IN simpleexpression RPAREN matchedselectionstmt                      { int lineno=$1->lineno; $$ = newStmtNode(foreachK,lineno); $$->child[0]=$3; $$->child[1]=$5; $$->child[2]=$7; }
                        |   sstatement                                                                                  { $$ = $1; }
                        ;

unmatchedselectionstmt  :   IF LPAREN simpleexpression RPAREN statement                                                 { int lineno=$1->lineno; $$ = newStmtNode(ifK,lineno); $$->child[0]=$3; $$->child[1]=$5; }
                        |   IF LPAREN simpleexpression RPAREN matchedselectionstmt ELSE unmatchedselectionstmt          { int lineno=$1->lineno; $$ = newStmtNode(ifK,lineno); $$->child[0]=$3; $$->child[1]=$5; $$->child[2]=$7; }
                        |   WHILE LPAREN simpleexpression RPAREN unmatchedselectionstmt                                 { int lineno=$1->lineno; $$ = newStmtNode(whileK,lineno); $$->child[0]=$3; $$->child[1]=$5; }
                        |   FOREACH LPAREN mutable IN simpleexpression RPAREN unmatchedselectionstmt                    { int lineno=$1->lineno; $$ = newStmtNode(foreachK,lineno); $$->child[0]=$3; $$->child[1]=$5; $$->child[2]=$7; }
                        ;

returnstmt              :   RETURN SEMI                                         { $$ = newStmtNode(returnK,yylval.tokenData->lineno); }
                        |   RETURN expression SEMI                              { $$ = newStmtNode(returnK,yylval.tokenData->lineno); $$->child[0] = $2; }
                        ;

breakstmt               :   BREAK SEMI                                          { $$ = newStmtNode(breakK,yylval.tokenData->lineno); }
                        ;




expression              :   mutable ASSIGN expression                           {
                                                                                    $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    $$->attr.op = eqK;
                                                                                    $$->child[0] = $1;
                                                                                    $$->child[1] = $3;
                                                                                }
                        |   mutable PASSIGN expression                          {
                                                                                    $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    $$->attr.op = peqK;
                                                                                    $$->child[0] = $1;
                                                                                    $$->child[1] = $3;
                                                                                }
                        |   mutable MASSIGN expression                          {
                                                                                    $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    $$->attr.op = meqK;
                                                                                    $$->child[0] = $1;
                                                                                    $$->child[1] = $3;
                                                                                }
                        |   mutable INC                                         { $$ = newExpNode(assignK,yylval.tokenData->lineno); $$->attr.op = ppK; $$->child[0] = $1; }
                        |   mutable DEC                                         { $$ = newExpNode(assignK,yylval.tokenData->lineno); $$->attr.op = mmK; $$->child[0] = $1; }
                        |   simpleexpression                                    { $$ = $1; }
                        ;

simpleexpression        :   simpleexpression OR andexpression                   {
                                                                                    $$ = newExpNode(opK,yylval.tokenData->lineno);
                                                                                    $$->attr.op = orK;
                                                                                    $$->child[0] = $1;
                                                                                    $$->child[1] = $3;
                                                                                    $$->isConstant = $1->isConstant & $3->isConstant;
                                                                                }
                        |   andexpression                                       { $$ = $1; $$->isConstant = $1->isConstant; }
                        ;

andexpression           :   andexpression AND unaryrelexpression                {
                                                                                    $$ = newExpNode(opK,yylval.tokenData->lineno);
                                                                                    $$->attr.op = andK;
                                                                                    $$->child[0] = $1;
                                                                                    $$->child[1] = $3;
                                                                                    $$->isConstant = $1->isConstant & $3->isConstant;
                                                                                }
                        |   unaryrelexpression                                  { $$ = $1; $$->isConstant = $1->isConstant; }
                        ;

unaryrelexpression      :   NOT unaryrelexpression                              { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = notK; $$->child[0]=$2; $$->isConstant = $2->isConstant; }
                        |   relexpression                                       { $$ = $1; $$->isConstant = $1->isConstant; }
                        ;

relexpression           :   sumexpression relop sumexpression                   { $$ = $2; $$->child[0] = $1; $$->child[1] = $3; $$->isConstant = $1->isConstant & $3->isConstant; }
                        |   sumexpression                                       { $$ = $1; $$->isConstant = $1->isConstant; }
                        ;

relop                   :   LEQ                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = lteqK; }
                        |   LESSER                                              { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = ltK; }
                        |   GREATER                                             { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = gtK; }
                        |   GEQ                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = gteqK; }
                        |   EQUIV                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = equivK; }
                        |   NEQ                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = neqK; }
                        ;

sumexpression           :   sumexpression sumop term                            { $$ = $2; $$->child[0]=$1; $$->child[1]=$3; $$->isConstant = $1->isConstant & $3->isConstant; }
                        |   term                                                { $$ = $1; $$->isConstant=$1->isConstant; }
                        ;

sumop                   :   PLUS                                                { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = plusK; }
                        |   MINUS                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = minusK; }
                        ;

term                    :   term mulop unaryexpression                          { $$ = $2; $$->child[0] = $1; $$->child[1]=$3; $$->isConstant = $1->isConstant & $3->isConstant; }
                        |   unaryexpression                                     { $$ = $1; $$->isConstant = $1->isConstant; }
                        ;

mulop                   :   MULTI                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = multiK; }
                        |   DIVIDE                                              { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = divideK; }
                        |   MOD                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = modK; }
                        ;

unaryexpression         :   unaryop unaryexpression                             { $$ = $1; $$->child[0]=$2; $$->isConstant = $2->isConstant; }
                        |   factor                                              { $$ = $1; }
                        ;

unaryop                 :   MINUS                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = UminusK; }
                        |   MULTI                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = UmultiK; }
                        ;

factor                  :   immutable                                           { $$ = $1; }
                        |   mutable                                             { $$ = $1; }
                        ;

mutable                 :   ID                                                  { $$ = newExpNode(idK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; }
                        |   ID LBRACKET expression RBRACKET                     { $$ = newExpNode(idK,$1->lineno); $$->child[0] = $3; $$->attr.name=$1->idvalue; $$->isArray=true; }
                        ;

immutable               :   LPAREN expression RPAREN                            { $$ = $2; }
                        |   call                                                { $$ = $1; }
                        |   constant                                            { $$ = $1; $$->isConstant = true; }
                        ;

call                    :   ID LPAREN args RPAREN                               { $$ = newExpNode(callK, yylval.tokenData->lineno); $$->child[0] = $3; $$->attr.name=$1->idvalue;  }
                        ;

args                    :   arglist                                             { $$ = $1; }
                        |                                                       { $$ = NULL; }
                        ;

arglist                 :   arglist COMMA expression                            { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = $3;
                                                                                        $$ = $1;
                                                                                    }
                                                                                    else
                                                                                        $$ = $3;
                                                                                }
                        |   expression                                          { $$ = $1; }
                        ;

constant                :   NUMCONST                                            { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->attr.val = $1->numvalue; $$->expType=Int; $$->isConstant=true; }
                        |   CHARCONST                                           { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->attr.string = $1->tokenstr; $$->expType=Char; $$->isConstant=true; }
                        |   STRINGCONST                                         { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->attr.string = $1->tokenstr; $$->expType=Char; $$->isConstant=true; }
                        |   TRUE                                                { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->expType=Bool; $$->attr.bval=true; $$->isConstant=true; }
                        |   FALSE                                               { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->expType=Bool; $$->attr.bval=false; $$->isConstant=true; }
                        ;


%%

main(int argc, char* argv[])
{
    int c;
    extern char* optarg;
    extern int optind;
    char **inputfile;
    yydebug=0;

    int printTreeFlag = 0;
    int symbolTracing = 0;

    //yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");

    while((c = getopt(argc, argv, "dps:")) != EOF)
    {
        switch(c)
        {
            case 'd':
                yydebug=1;
                printf("YYDEBUG==%d",yydebug);
                break;
            case 'p':
                printTreeFlag = 1;
                break;
            case 's':
                symbolTracing = 1;
                break;
            default:
                printf("Unknown option(s)\n");
                break;
        }
        c = getopt(argc, argv, "d:p:s");
     }
     inputfile = argv + optind;
     yyin = fopen((inputfile[0]), "r");


    yyparse();
    
    if(printTreeFlag)
        printTree(savedTree);

    //set the preprocess to savedTree
    preProcess();
    savedTree = output;

    checkNode(savedTree);

    if(symbolTracing)
        tab->print();

    printf("Number of Warnings: %d\n", numwarnings);
    printf("Number of Errors: %d\n", numerrors);
  

    //derpNode(savedTree);

    //checkNode(savedTree);

    //printf("Number of Errors: %d\n", numerrors);
    //printf("Number of Warnings: %d\n", numwarnings);

    return 0;

}

