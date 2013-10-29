%{
    #include <iostream>
    #include <stdlib.h>
    #include <stdio.h>
    #include "tokenStruct.h"
    #include "tree.c"

    extern int yylex();
    extern int yydebug;
    extern FILE* yyin;

    static TreeNode *savedTree;


void yyerror(const char *s)
{
      printf("\nyyerror: %s\n", s);
}


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
                                                                                    $$->isStatic=true; 
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
                        |   vardeclid COLON simpleexpression                    { $$ = $1; $$->child[0] = $3; }
                        ;

vardeclid               :   ID                                                  { $$ = newDeclNode(varK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; }
                        |   ID LBRACKET NUMCONST RBRACKET                       { $$ = newDeclNode(varK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; $$->isArray=true; }
                        ;

scopedtypespecifier     :   STATIC typespecifier                                { $$ = $2; }
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
                        |   paramid                                            
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




expression              :   mutable ASSIGN expression                           { TreeNode* t = $3;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        //t->sibling = $1;
                                                                                        $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = eqK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = eqK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                }
                        |   mutable PASSIGN expression                          { TreeNode* t = $3;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        //t->sibling = $1;
                                                                                        $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = peqK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = peqK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                }
                        |   mutable MASSIGN expression                          { TreeNode* t = $3;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        //t->sibling = $1;
                                                                                        $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = meqK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        $$ = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = meqK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                }
                        |   mutable INC                                         { $$ = newExpNode(assignK,yylval.tokenData->lineno); $$->attr.op = ppK; $$->child[0] = $1; }
                        |   mutable DEC                                         { $$ = newExpNode(assignK,yylval.tokenData->lineno); $$->attr.op = mmK; $$->child[0] = $1; }
                        |   simpleexpression                                    { $$ = $1; }
                        ;

simpleexpression        :   simpleexpression OR andexpression                   { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        $$ = newExpNode(opK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = orK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        $$ = newExpNode(opK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = orK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                }
                        |   andexpression                                       { $$ = $1; }
                        ;

andexpression           :   andexpression AND unaryrelexpression                { TreeNode* t = $1;
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        $$ = newExpNode(opK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = andK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        $$ = newExpNode(opK,yylval.tokenData->lineno);
                                                                                        $$->attr.op = andK;
                                                                                        $$->child[0] = $1;
                                                                                        $$->child[1] = $3;
                                                                                    }
                                                                                }
                        |   unaryrelexpression                                  { $$ = $1; }
                        ;

unaryrelexpression      :   NOT unaryrelexpression                              { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = notK; $$->child[0]=$2; }
                        |   relexpression                                       { $$ = $1; }
                        ;

relexpression           :   sumexpression relop sumexpression                   { $$ = $2; $$->child[0] = $1; $$->child[1] = $3; }
                        |   sumexpression                                       { $$ = $1; }
                        ;

relop                   :   LEQ                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = lteqK; }
                        |   LESSER                                              { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = ltK; }
                        |   GREATER                                             { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = gtK; }
                        |   GEQ                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = gteqK; }
                        |   EQUIV                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = equivK; }
                        |   NEQ                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = neqK; }
                        ;

sumexpression           :   sumexpression sumop term                            { $$ = $2; $$->child[0]=$1; $$->child[1]=$3; }
                        |   term                                                { $$ = $1; }
                        ;

sumop                   :   PLUS                                                { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = plusK; }
                        |   MINUS                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = minusK; }
                        ;

term                    :   term mulop unaryexpression                          { $$ = $2; $$->child[0] = $1; $$->child[1]=$3; }
                        |   unaryexpression                                     { $$ = $1; }
                        ;

mulop                   :   MULTI                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = multiK; }
                        |   DIVIDE                                              { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = divideK; }
                        |   MOD                                                 { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = modK; }
                        ;

unaryexpression         :   unaryop unaryexpression                             { $$ = $1; $$->child[0]=$2; }
                        |   factor                                              { $$ = $1; }
                        ;

unaryop                 :   MINUS                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = UminusK; }
                        |   MULTI                                               { $$ = newExpNode(opK,yylval.tokenData->lineno); $$->attr.op = UmultiK; }
                        ;

factor                  :   immutable                                           { $$ = $1; }
                        |   mutable                                             { $$ = $1; }
                        ;

mutable                 :   ID                                                  { $$ = newExpNode(idK,yylval.tokenData->lineno); $$->attr.name=$1->idvalue; }
                        |   ID LBRACKET expression RBRACKET                     { $$ = newExpNode(idK,$1->lineno); $$->child[0] = $3; $$->attr.name=$1->idvalue; }
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

constant                :   NUMCONST                                            { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->attr.val = $1->numvalue; $$->expType=Int; }
                        |   CHARCONST                                           { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->attr.string = $1->tokenstr; $$->expType=Char; }
                        |   STRINGCONST                                         { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->attr.string = $1->tokenstr; $$->expType=Char; }
                        |   TRUE                                                { $$ = newExpNode(constK,yylval.tokenData->lineno); $$->expType=True; }
                        |   FALSE                                               { $$ = newExpNode(constK,yylval.tokenData->lineno); }
                        ;


%%

main(int argc, char* argv[])
{
    int c;
    extern char* optarg;
    extern int optind;
    char **inputfile;
    yydebug=0;

    //yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");

    while((c = getopt(argc, argv, "d:")) != -1)
    {
        switch(c)
        {
            case 'd':
                yydebug=1;
                printf("YYDEBUG==%d",yydebug);
                break;
            default:
                printf("Unknown option(s)\n");
                break;
        }
        c = getopt(argc, argv, "d:");
     }
     inputfile = argv + optind;
     yyin = fopen((inputfile[0]), "r");


    yyparse();
    //printf("finished parsing\n");
    
    printTree(savedTree);

    return 0;

}

