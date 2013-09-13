%{
        #include <iostream>
        #include <stdlib.h>
        #include <stdio.h>
	#include "tokenStruct.h"
	//double var[26]; //places to store variable's values

        extern int yylex();
        extern FILE* yyin;

        using namespace std;

        void yyerror(const char* msg)
        {
            printf("done derped");
        }

%}

%union  
{
	TokenData *tokenData;
}


%token <tokenData> ID NUMCONST CHARCONST STRINGCONST
%token <tokenData> AND BREAK BOOL CHAR ELSE FALSE FOREACH IF IN INT OR NOT TRUE STATIC WHILE
%token <tokenData> COMMA LBRACKET RBRACKET LPAREN RPAREN LBRACE RBRACE SEMI
%token <tokenData> EQUIV NEQ LEQ LESSER GEQ GREATER ASSIGN PASSIGN MASSIGN DEC INC
%token <tokenData> PLUS MINUS DIVIDE MOD MULTI



%%

Execution:  Execution Statement
            | Statement
            ;

Statement:  ID                  { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << " Value: " << yylval.tokenData->idvalue << endl; }
            |NUMCONST           { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << " Value: " << yylval.tokenData->numvalue << endl; }
            |CHARCONST          { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << " Value: " << yylval.tokenData->tokenstr << endl; }
            |STRINGCONST        { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << " Value: " << yylval.tokenData->tokenstr << endl; }

            |AND                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |BREAK              { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |BOOL               { cout << "Line" << yylval.tokenData->linenum << " Token: " << "Boolean" << endl; }
            |CHAR               { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |ELSE               { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |FALSE              { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |FOREACH            { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |IF                 { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |IN                 { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |INT                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |OR                 { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |NOT                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |TRUE               { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |STATIC             { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |WHILE              { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }

            |COMMA              { cout << "Line" << yylval.tokenData->linenum << " Token: ," << endl; }
            |LBRACKET           { cout << "Line" << yylval.tokenData->linenum << " Token: [" << endl; }
            |RBRACKET           { cout << "Line" << yylval.tokenData->linenum << " Token: ]" << endl; }
            |LPAREN             { cout << "Line" << yylval.tokenData->linenum << " Token: (" << endl; }
            |RPAREN             { cout << "Line" << yylval.tokenData->linenum << " Token: )" << endl; }
            |LBRACE             { cout << "Line" << yylval.tokenData->linenum << " Token: {" << endl; }
            |RBRACE             { cout << "Line" << yylval.tokenData->linenum << " Token: }" << endl; }
            |SEMI               { cout << "Line" << yylval.tokenData->linenum << " Token: ;" << endl; }

            |EQUIV              { cout << "Line" << yylval.tokenData->linenum << " Token: EQ" << endl; }
            |NEQ                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |LEQ                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |LESSER             { cout << "Line" << yylval.tokenData->linenum << " Token: <" << endl; }
            |GEQ                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |GREATER            { cout << "Line" << yylval.tokenData->linenum << " Token: >" << endl; }
            |ASSIGN             { cout << "Line" << yylval.tokenData->linenum << " Token: =" << endl; }
            |PASSIGN            { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |MASSIGN            { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |DEC                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }
            |INC                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->tokenstr << endl; }

            |PLUS               { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MINUS              { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |DIVIDE             { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MOD                { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MULTI              { cout << "Line" << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            ;

%%

main(int argc, char* argv[])
{
    yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");


    yyparse();

}