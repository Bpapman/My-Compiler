%{
	#include "tokenStruct.h"
	double var[26]; //places to store variable's values

        extern int yylex();
%}
%union
{
	TokenData *tokenData;
	double value;
}

//terminal symbols

%token <tokenData> Number ID QUIT


//non-terminal symbols

%token <value> expression terminal varornum

//other symbols




%%
		
statementlist   : statement '\n'
		| statement '\n' statementlist
		;
		
statement	: ID '=' expression {var[$1->idvalue]=$3}
		| expression
		| QUIT

statementlist   : statement statementlist
                | statement 
                ;

statement       : assign '\n'      { printf("ANS: %s\n", $1 ? "T" : "F");  }
                | QUIT '\n'        { exit(0); }
                ;

assign          : NAME '=' assign     { vars[$1] = $3; $$ = $3; }
                | iterm               { $$ = $1; }
                ;

iterm           : iterm IMPLIES oterm  { $$ = (1-$1) | $3; }
                | oterm                { $$ = $1; }
                ;

oterm: oterm OR aterm        { $$ = $1 | $3; }
     | oterm XOR aterm        { $$ = $1 ^ $3; }
     | aterm                  { $$ = $1; }
     ;

aterm : aterm AND varortf    { $$ = $1 & $3; }
     | varortf               { $$ = $1; }
     ;

varortf : T                  { $$ = $1; }
        | F                  { $$ = $1; }
        | NAME               { $$ = vars[$1]; }
        | STRING             { printf("%s\n", $1 ); $$=TRUE; }
        | '(' assign ')'     { $$ = $2; }
        | '(' assign '?' assign ':' assign ')' { $$ = ($2 ? $4 : $6); }
        | '(' assign '?' assign ')'             { $$ = ($2 ? $4 : FALSE); }
        | NOT varortf        { $$ =  (1-$2); }
        ;

%%

main()
{
        //int i;

        //for (i=0; i<26; i++) vars[i] = FALSE;
        //yyparse();
}
		 ;