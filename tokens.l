%{
    #include <string>
    #include <cstdlib>
    #include "tokenStruct.h"
    #include "parser.tab.h"

    int line = 1;
    
    int setValue(int linenum, int tokenClass, char* svalue)
    {
            yylval.tokenData = new TokenData;
            yylval.tokenData->tokenClass = tokenClass;
            yylval.tokenData->linenum = linenum;
            
            Switch(tokenClass)
            {
                case NUMBER:
                    yyval.tokenData->numvalue = atof(svalue);



            }





    }
%}

%%


[ \t\n]					;
[a-zA-Z_][a-zA-Z0-9_]*                  SAVE_TOKEN; return TIDENTIFIER;
[0-9]+\.[0-9]*                          SAVE_TOKEN; return TDOUBLE;
[0-9]+					SAVE_TOKEN; return TINTEGER;
"="					return TOKEN(TEQUAL);
"=="					return TOKEN(TCEQ);
"!="					return TOKEN(TCNE);
"<"					return TOKEN(TCLT);
"<="					return TOKEN(TCLE);
">"					return TOKEN(TCGT);
">="					return TOKEN(TCGE);
"("					return TOKEN(TLPAREN);
")"					return TOKEN(TRPAREN);
"{"					return TOKEN(TLBRACE);
"}"					return TOKEN(TRBRACE);
"."					return TOKEN(TDOT);
","					return TOKEN(TCOMMA);
"+"					return TOKEN(TPLUS);
"-"					return TOKEN(TMINUS);
"*"					return TOKEN(TMUL);
"/"					return TOKEN(TDIV);
.					printf("Unknown token!\n"); yyterminate();

%%