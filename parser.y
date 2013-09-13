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
%token <tokenData> AND BREAK BOOL CHAR ELSE FALSE FOREACH IF IN INT OR NOT TRUE STATIC WHILE
%token <tokenData> COMMA LBRACKET RBRACKET LPAREN RPAREN LBRACE RBRACE SEMI
%token <tokenData> EQUIV NEQ LEQ LESSER GEQ GREATER ASSIGN PASSIGN MASSIGN DEC INC COLON
%token <tokenData> PLUS MINUS DIVIDE MOD MULTI



%%

Execution:  Execution Statement
            | Statement
            ;

Statement:  ID                  { cout << "Line " << yylval.tokenData->linenum << " Token: ID Value: " << yylval.tokenData->tokenstr << endl; }
            |NUMCONST           { cout << "Line " << yylval.tokenData->linenum << " Token: NUMCONST" << " Value: " << yylval.tokenData->numvalue << endl; }
            |CHARCONST          { cout << "Line " << yylval.tokenData->linenum << " Token: CHARCONST" << " Value: " << yylval.tokenData->tokenstr << endl; }
            |STRINGCONST        { cout << "Line " << yylval.tokenData->linenum << " Token: STRINGCONST" << " Value: " << yylval.tokenData->tokenstr << endl; }

            |AND                { cout << "Line " << yylval.tokenData->linenum << " Token: " << "AND" << endl; }
            |BREAK              { cout << "Line " << yylval.tokenData->linenum << " Token: " << "BREAK" << endl; }
            |BOOL               { cout << "Line " << yylval.tokenData->linenum << " Token: " << "BOOLEAN" << endl; }
            |CHAR               { cout << "Line " << yylval.tokenData->linenum << " Token: " << "CHAR" << endl; }
            |ELSE               { cout << "Line " << yylval.tokenData->linenum << " Token: " << "ELSE" << endl; }
            |FALSE              { cout << "Line " << yylval.tokenData->linenum << " Token: " << "FALSE" << endl; }
            |FOREACH            { cout << "Line " << yylval.tokenData->linenum << " Token: " << "FOREACH" << endl; }
            |IF                 { cout << "Line " << yylval.tokenData->linenum << " Token: " << "IF" << endl; }
            |IN                 { cout << "Line " << yylval.tokenData->linenum << " Token: " << "IN" << endl; }
            |INT                { cout << "Line " << yylval.tokenData->linenum << " Token: " << "INT" << endl; }
            |OR                 { cout << "Line " << yylval.tokenData->linenum << " Token: " << "OR" << endl; }
            |NOT                { cout << "Line " << yylval.tokenData->linenum << " Token: " << "NOT" << endl; }
            |TRUE               { cout << "Line " << yylval.tokenData->linenum << " Token: " << "TRUE" << endl; }
            |STATIC             { cout << "Line " << yylval.tokenData->linenum << " Token: " << "STATIC" << endl; }
            |WHILE              { cout << "Line " << yylval.tokenData->linenum << " Token: " << "WHILE" << endl; }

            |COMMA              { cout << "Line " << yylval.tokenData->linenum << " Token: ," << endl; }
            |LBRACKET           { cout << "Line " << yylval.tokenData->linenum << " Token: [" << endl; }
            |RBRACKET           { cout << "Line " << yylval.tokenData->linenum << " Token: ]" << endl; }
            |LPAREN             { cout << "Line " << yylval.tokenData->linenum << " Token: (" << endl; }
            |RPAREN             { cout << "Line " << yylval.tokenData->linenum << " Token: )" << endl; }
            |LBRACE             { cout << "Line " << yylval.tokenData->linenum << " Token: {" << endl; }
            |RBRACE             { cout << "Line " << yylval.tokenData->linenum << " Token: }" << endl; }
            |SEMI               { cout << "Line " << yylval.tokenData->linenum << " Token: ;" << endl; }

            |EQUIV              { cout << "Line " << yylval.tokenData->linenum << " Token: EQ" << endl; }
            |NEQ                { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |LEQ                { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |LESSER             { cout << "Line " << yylval.tokenData->linenum << " Token: <" << endl; }
            |GEQ                { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |GREATER            { cout << "Line " << yylval.tokenData->linenum << " Token: >" << endl; }
            |ASSIGN             { cout << "Line " << yylval.tokenData->linenum << " Token: =" << endl; }
            |PASSIGN            { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MASSIGN            { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |DEC                { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |INC                { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |COLON              { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            
            |PLUS               { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MINUS              { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |DIVIDE             { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MOD                { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            |MULTI              { cout << "Line " << yylval.tokenData->linenum << " Token: " << yylval.tokenData->keyvalue << endl; }
            ;

%%

main(int argc, char* argv[])
{
    yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");


    yyparse();

    return 0;

}

