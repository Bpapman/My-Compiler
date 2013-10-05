%{
    #include <iostream>
    #include <stdlib.h>
    #include <stdio.h>
    #include "tokenStruct.h"
    
    //double var[26]; //places to store variable's values

    extern int yylex();
    extern FILE* yyin;


void yyerror(const char *s)
{
      printf("%s\n", s);
}

    using namespace std;


%}


%union  
{
	TokenData *tokenData;
}


%token <tokenData> ID NUMCONST CHARCONST STRINGCONST
%token <tokenData> AND BREAK BOOL CHAR ELSE FALSE FOREACH IF IN INT OR NOT RETURN TRUE STATIC WHILE
%token <tokenData> COMMA LBRACKET RBRACKET LPAREN RPAREN LBRACE RBRACE SEMI
%token <tokenData> EQUIV NEQ LEQ LESSER GEQ GREATER ASSIGN PASSIGN MASSIGN DEC INC COLON
%token <tokenData> PLUS MINUS DIVIDE MOD MULTI



%%

program                 :   declaration-list
                        ;

declaration-list        :   declaration-list declaration
                        |   declaration
                        ;

declaration             :   var-declaration
                        |   fun-declaration
                        ;




var-declaration         :   type-specifier var-decl-list SEMI
                        ;

scoped-var-declaration  :   scoped-type-specifier var-decl-list SEMI
                        ;

var-decl-list           :   var-decl-list COMMA var-decl-initialize
                        |   var-decl-initialize
                        ;

var-decl-initialize     :   var-decl-id
                        |   var-decl-id COLON simple-expression
                        ;

var-decl-id             :   ID
                        |   ID LBRACKET NUMCONST RBRACKET
                        ;

scoped-type-specifier   :   STATIC type-specifier
                        |   type-specifier
                        ;

type-specifier          :   INT
                        |   BOOL
                        |   CHAR
                        ;



fun-declaration         :   type-specifier ID LPAREN params RPAREN statement   { cout << "Line: " << yyval.tokenData->linenum << " Got to new function dec" << endl; }
                        |   ID LPAREN params RPAREN statement   { cout << "Line: " << yyval.tokenData->linenum << " Got to new function dec" << endl; }
                        ;

params                  :   param-list
                        |   
                        ;

param-list              :   param-list SEMI param-type-list
                        |   param-type-list
                        ;

param-type-list         :   type-specifier param-id-list
                        ;

param-id-list           :   param-id-list COMMA param-id
                        |   param-id
                        ;

param-id                :   ID
                        |   ID LBRACKET RBRACKET
                        ;


statement               :   matched
                        |   unmatched-selection-stmt
                        ;

matched                 :   expression-stmt
                        |   compound-stmt
                        |   matched-selection-stmt
                        |   iteration-stmt
                        |   return-stmt
                        |   break-stmt
                        ;

compound-stmt           :   LBRACE local-declarations statement-list RBRACE
                        ;

local-declarations      :   local-declarations scoped-var-declaration
                        |   
                        ;

statement-list          :   statement-list statement
                        |
                        ;

expression-stmt         :   expression SEMI
                        |   SEMI
                        ;

unmatched-selection-stmt:   IF LPAREN simple-expression RPAREN statement    { cout << "Line: " << yyval.tokenData->linenum << " Got inside unmatched IF" << endl; }
                        |   IF LPAREN simple-expression RPAREN matched ELSE unmatched-selection-stmt   { cout << "Line: " << yyval.tokenData->linenum << " Got inside unmatched IF" << endl; }
                        ;

matched-selection-stmt  :   IF LPAREN simple-expression RPAREN matched ELSE matched { cout << "Line: " << yyval.tokenData->linenum << " Got inside matched IF" << endl; }
                        ;

iteration-stmt          :   WHILE LPAREN simple-expression RPAREN statement    { cout << "Line: " << yyval.tokenData->linenum << " Got inside iteration stmt" << endl; }
                        |   FOREACH LPAREN mutable IN simple-expression RPAREN statement   { cout << "Line: " << yyval.tokenData->linenum << " Got inside iteration stmt" << endl; }
                        ;

return-stmt             :   RETURN SEMI   { cout << "Line: " << yyval.tokenData->linenum << " Got to the return statement" << endl; }
                        |   RETURN expression SEMI   { cout << "Line: " << yyval.tokenData->linenum << " Got to the return statement" << endl; }
                        ;

break-stmt              :   BREAK SEMI   { cout << "Line: " << yyval.tokenData->linenum << " Got to break stmt" << endl; }
                        ;





expression              :   mutable ASSIGN expression  { cout << "Line: " << yyval.tokenData->linenum << " Got inside assignment expression" << endl; }
                        |   mutable PASSIGN expression
                        |   mutable MASSIGN expression
                        |   mutable INC
                        |   mutable DEC
                        |   simple-expression
                        ;

simple-expression       :   simple-expression OR and-expression
                        |   and-expression
                        ;

and-expression          :   and-expression AND unary-rel-expression
                        |   unary-rel-expression
                        ;

unary-rel-expression    :   NOT unary-rel-expression
                        |   rel-expression
                        ;

rel-expression          :   sum-expression relop sum-expression
                        |   sum-expression
                        ;

relop                   :   LEQ
                        |   LESSER
                        |   GREATER
                        |   GEQ
                        |   EQUIV
                        |   NEQ
                        ;

sum-expression          :   sum-expression sumop term
                        |   term
                        ;

sumop                   :   PLUS
                        |   MINUS
                        ;

term                    :   term mulop unary-expression
                        |   unary-expression
                        ;

mulop                   :   MULTI
                        |   DIVIDE
                        |   MOD
                        ;

unary-expression        :   unaryop unary-expression
                        |   factor
                        ;

unaryop                 :   MINUS
                        |   MULTI
                        ;

factor                  :   immutable
                        |   mutable
                        ;

mutable                 :   ID
                        |   ID LBRACKET expression RBRACKET
                        ;

immutable               :   LPAREN expression RPAREN
                        |   call
                        |   constant
                        ;

call                    :   ID LPAREN args RPAREN
                        ;

args                    :   arg-list
                        |   
                        ;

arg-list                :   arg-list COMMA expression
                        |   expression
                        ;

constant                :   NUMCONST
                        |   CHARCONST
                        |   STRINGCONST
                        |   TRUE
                        |   FALSE
                        ;


%%

main(int argc, char* argv[])
{
    yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");


    yyparse();

    return 0;

}

