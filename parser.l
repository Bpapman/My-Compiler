%{
    #include <string>
    #include <stdio.h>
    #include <stdlib.h>
    #include "tokenStruct.h"
    #include "parser.tab.c"

    int line = 1;
    
    int setValue(int linenum, int tokenClass, char* svalue)
    {
            yylval.tokenData = new TokenData;
            yylval.tokenData->tokenClass = tokenClass;
            yylval.tokenData->linenum = linenum;
            
            switch(tokenClass)
            {
                case NUMCONST:
                    yylval.tokenData->numvalue = atoi(svalue);
                case ID:
                    yylval.tokenData->idvalue = atoi(svalue);
                case CHARCONST:
                    yylval.tokenData->tokenstr = svalue;
                case STRINGCONST:
                    yylval.tokenData->tokenstr = svalue;
                default:
                    yylval.tokenData->keyvalue = svalue;
            }


            return tokenClass;

    }
%}

%%


[ \t]					; //whitespace
\n                                      line++;

\/\/.*\n                                line++; //comments



\'.\' | \'\\.\'                         {return setValue(line, CHARCONST, yytext);}
[a-zA-z][^\t ]                          {return setValue(line, ID, yytext);}
[0-9]+                                  {return setValue(line, NUMCONST, yytext);}
\'.*\'                                  {return setValue(line, STRINGCONST, yytext);}


"and"                                   {return setValue(line, AND, yytext);}
"break"                                 {return setValue(line, BREAK, yytext);}
"bool"                                  {return setValue(line, BOOL, yytext);}
"char"                                  {return setValue(line, CHAR, yytext);}
"else"                                  {return setValue(line, ELSE, yytext);}
"false"                                 {return setValue(line, FALSE, yytext);}
"foreach"                               {return setValue(line, FOREACH, yytext);}
"if"                                    {return setValue(line, IF, yytext);}
"in"                                    {return setValue(line, IN, yytext);}
"int"                                   {return setValue(line, INT, yytext);}
"or"                                    {return setValue(line, OR, yytext);}
"not"                                   {return setValue(line, NOT, yytext);}
"true"                                  {return setValue(line, TRUE, yytext);}
"static"                                {return setValue(line, STATIC, yytext);}
"while"                                 {return setValue(line, WHILE, yytext);}


\,                                      {return setValue(line, COMMA, yytext);}
\[                                      {return setValue(line, LBRACKET, yytext);}
\]                                      {return setValue(line, RBRACKET, yytext);}
\(                                      {return setValue(line, LPAREN, yytext);}
\)                                      {return setValue(line, RPAREN, yytext);}
\{                                      {return setValue(line, LBRACE, yytext);}
\}                                      {return setValue(line, RBRACE, yytext);}
";"                                     {return setValue(line, SEMI, yytext);}

"=="                                    {return setValue(line, EQUIV, yytext);}
"!="                                    {return setValue(line, NEQ, yytext);}
"<="                                    {return setValue(line, LEQ, yytext);}
"<"                                     {return setValue(line, LESSER, yytext);}
">="                                    {return setValue(line, GEQ, yytext);}
">"                                     {return setValue(line, GREATER, yytext);}
"="                                     {return setValue(line, ASSIGN, yytext);}
"+="                                    {return setValue(line, PASSIGN, yytext);}
"-="                                    {return setValue(line, MASSIGN, yytext);}
"--"                                    {return setValue(line, DEC, yytext);}
"++"                                    {return setValue(line, INC, yytext);}

"+"                                     {return setValue(line, PLUS, yytext);}
"-"                                     {return setValue(line, MINUS, yytext);}
"/"                                     {return setValue(line, DIVIDE, yytext);}
"%"                                     {return setValue(line, MOD, yytext);}
"*"                                     {return setValue(line, MULTI, yytext);}

.					{return setValue(line, yytext[0], yytext);}


%%