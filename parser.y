%{
	#include "tokenStruct.h"
	double var[26]; //places to store variable's values
        int line = 1;

        extern int yylex();
        extern FILE* yyin;
        FILE* outputfile;

        using namespace std;

%}
%union  
{
	TokenData *tokenData;
}

//terminal symbols

%token <tokenData> NUMBER ID QUIT





%%

Execution:  Execution Statement
            | Statement

Statement:  STAR            { cout << "Line" << yyval.tokenData->linenum << " Token: " << yyval.tokenData->tokenstr << endl; }
            |MINUS

%%

main(int argc, char* argv[])
{
    yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");


    yyparse();



    }

};