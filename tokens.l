%{
    #include <string>
    #include <stdio.h>
    #include <cstdlib>
    #include "tokenStruct.h"
    #include "parser.tab.h"

    extern int line;
    
    int setValue(int linenum, int tokenClass, char* svalue)
    {
            yylval.tokenData = new TokenData;
            yylval.tokenData->tokenClass = tokenClass;
            yylval.tokenData->linenum = linenum;
            
            Switch(tokenClass)
            {
                case NUMCONSTANT:
                    yyval.tokenData->numvalue = atoi(svalue);
                case ID:
                    yyval.tokenData->idvalue = svalue;
                case CHARCONSTANT:
                    yyval.tokenData->tokenStr = svalue;
                case STRINGCONSTANT:
                    yyval.tokenData->tokenStr = svalue;
                default:
                    yyval.tokenData->keyvalue = svalue;
            }


            return tokenclass;

    }
%}

%%


[ \t]					; //whitespace
\n                                      line++;

\/\/.*\n                                line++;





"and"                                   {return setValue(line, AND, yytext);}
"break"                                 {return setValue(line, BREAK, yytext);}
"bool"                                  {return setValue(line, BOOL, yytext);}
"char"                                  {return setValue(line, CHAR, yytext);}
\'.\' | \'\\.\'                         {return setValue(line, CHARCONST, yytext);}
"else"                                  {return setValue(line, ELSE, yytext);}
"false"                                 {return setValue(line, FALSE, yytext);}
"foreach"                               {return setValue(line, FOREACH, yytext);}
[a-zA-z][^\t ]                          {return setValue(line, ID, yytext);}
"if"                                    {return setValue(line, IF, yytext);}
"in"                                    {return setValue(line, IN, yytext);}
"int"                                   {return setValue(line, AND, yytext);}
"or"                                    {return setValue(line, OR, yytext);}
"not"                                   {return setValue(line, NOT, yytext);}
[0-9]+                                  {return setValue(line, NUMCONST, yytext);}
"true"                                  {return setValue(line, TRUE, yytext);}
"static"                                {return setValue(line, STATIC, yytext);}
\'.*\'                                  {return setValue(line, STRINGCONST, yytext);}
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
"*"                                     {return setValue(line, MULT, yytext);}


.					{return yytext;}


%%