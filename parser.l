%{
    #include "tree.h"
    #include <string>
    #include <stdio.h>
    #include <stdlib.h>
    #include "tokenStruct.h"
    #include "parser.tab.h"

    extern int numwarnings;
    int lineno = 1;

    char* copystring(char* s)
    {
        int n;
        char* t;
        if(s==NULL) return NULL;
        n = strlen(s)+1;
        t = (char*)malloc(n);
        if(t==NULL)
            printf("Error Copystring");
        else strcpy(t,s);
        
        return t;
    }

    char* stripliterals(char* s, int type)
    {
        int i;
        char *t = copystring(s);
        int n = strlen(t) + 1;
        
        
        for(i=0; i<n; i++)
        {
            if(t[i]=='\\')
            {
                int j = i;
                while(j < n)
                {
                    t[j] = t[j+1];
                    j++;
                }
                t[j] = '\0';
                switch(t[i])
                {
                    case 'n':
                        t[i]='\n';
                        break;
                    case 't':
                        t[i]='\t';
                        break;
                    case '0':
                        t[i+1]='\0';
                        if(type == 0)
                        {
                            t[i] = '\'';
                        }
                        else
                            t[i] = '\"';
                        break;
                    default:
                        printf("String literal you didn't account for");
                        break;
                }
                j++;
            }
            else if(t[i]== '^')
            {
                int j = i;
                while(j < n)
                {
                    t[j] = t[j+i];
                    j++;
                }
                t[j] = '\0';
                t[i] = t[i] ^ 0x40;
            }
            else
                t[i]=s[i];
        }
        return t;
    }


    extern char* lasttokenscanned;
    extern int globallineno;
    
    int setValue(int linenum, int tokenClass, char* svalue)
    {

            //printf("Token: %s [line: %d]\n", svalue, linenum);
            yylval.tokenData = new TokenData;
            yylval.tokenData->tokenClass = tokenClass;
            yylval.tokenData->lineno = linenum;

            lasttokenscanned = svalue;
            globallineno = linenum;
            
            switch(tokenClass)
            {
                case NUMCONST:
                    yylval.tokenData->numvalue = atoi(svalue);
                case ID:
                    yylval.tokenData->idvalue = copystring(svalue);
                case CHARCONST:
                    yylval.tokenData->tokenstr = copystring(stripliterals(svalue, 0));
                case STRINGCONST:
                    yylval.tokenData->tokenstr = copystring(stripliterals(svalue, 0));
                default:
                    yylval.tokenData->keyvalue = svalue;
            }

            return tokenClass;

    }

//.					{return setValue(lineno, yytext[0], yytext);}
%}

%%


[ \t]					; //whitespace
\n                                      lineno++;

\/\/.*\n                                lineno++; //comments


"and"                                   {return setValue(lineno, AND, yytext);}
"break"                                 {return setValue(lineno, BREAK, yytext);}
"bool"                                  {return setValue(lineno, BOOL, yytext);}
"char"                                  {return setValue(lineno, CHAR, yytext);}
"else"                                  {return setValue(lineno, ELSE, yytext);}
"false"                                 {return setValue(lineno, FALSE, yytext);}
"foreach"                               {return setValue(lineno, FOREACH, yytext);}
"if"                                    {return setValue(lineno, IF, yytext);}
"in"                                    {return setValue(lineno, IN, yytext);}
"int"                                   {return setValue(lineno, INT, yytext);}
"or"                                    {return setValue(lineno, OR, yytext);}
"not"                                   {return setValue(lineno, NOT, yytext);}
"return"                                {return setValue(lineno, RETURN, yytext);}
"true"                                  {return setValue(lineno, TRUE, yytext);}
"static"                                {return setValue(lineno, STATIC, yytext);}
"while"                                 {return setValue(lineno, WHILE, yytext);}

","                                     {return setValue(lineno, COMMA, yytext);}
"["                                     {return setValue(lineno, LBRACKET, yytext);}
"]"                                     {return setValue(lineno, RBRACKET, yytext);}
"("                                     {return setValue(lineno, LPAREN, yytext);}
")"                                     {return setValue(lineno, RPAREN, yytext);}
"{"                                     {return setValue(lineno, LBRACE, yytext);}
"}"                                     {return setValue(lineno, RBRACE, yytext);}
";"                                     {return setValue(lineno, SEMI, yytext);}


"=="                                    {return setValue(lineno, EQUIV, yytext);}
"!="                                    {return setValue(lineno, NEQ, yytext);}
"<="                                    {return setValue(lineno, LEQ, yytext);}
"<"                                     {return setValue(lineno, LESSER, yytext);}
">="                                    {return setValue(lineno, GEQ, yytext);}
">"                                     {return setValue(lineno, GREATER, yytext);}
"="                                     {return setValue(lineno, ASSIGN, yytext);}
"+="                                    {return setValue(lineno, PASSIGN, yytext);}
"-="                                    {return setValue(lineno, MASSIGN, yytext);}
"--"                                    {return setValue(lineno, DEC, yytext);}
"++"                                    {return setValue(lineno, INC, yytext);}
":"                                     {return setValue(lineno, COLON, yytext);}

"+"                                     {return setValue(lineno, PLUS, yytext);}
"-"                                     {return setValue(lineno, MINUS, yytext);}
"/"                                     {return setValue(lineno, DIVIDE, yytext);}
"%"                                     {return setValue(lineno, MOD, yytext);}
"*"                                     {return setValue(lineno, MULTI, yytext);}

[a-zA-Z][a-zA-Z0-9_]*                   {return setValue(lineno, ID, yytext);}
[0-9]+                                  {return setValue(lineno, NUMCONST, yytext);}
\'([^'\\\n]|\\.|^.)\'                   {return setValue(lineno, CHARCONST, yytext);}
\"(\\.|[^\\"])*\"                       {return setValue(lineno, STRINGCONST, yytext);}

.                                       {
                                            printf("WARNING(%d): Invalid input character: %s, Character ignored.\n", lineno, yytext);
                                            numwarnings++;
                                        }




%%