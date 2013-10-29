/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ID = 258,
     NUMCONST = 259,
     CHARCONST = 260,
     STRINGCONST = 261,
     AND = 262,
     BREAK = 263,
     BOOL = 264,
     CHAR = 265,
     ELSE = 266,
     FALSE = 267,
     FOREACH = 268,
     IF = 269,
     IN = 270,
     INT = 271,
     OR = 272,
     NOT = 273,
     RETURN = 274,
     TRUE = 275,
     STATIC = 276,
     WHILE = 277,
     COMMA = 278,
     LBRACKET = 279,
     RBRACKET = 280,
     LPAREN = 281,
     RPAREN = 282,
     LBRACE = 283,
     RBRACE = 284,
     SEMI = 285,
     EQUIV = 286,
     NEQ = 287,
     LEQ = 288,
     LESSER = 289,
     GEQ = 290,
     GREATER = 291,
     ASSIGN = 292,
     PASSIGN = 293,
     MASSIGN = 294,
     DEC = 295,
     INC = 296,
     COLON = 297,
     PLUS = 298,
     MINUS = 299,
     DIVIDE = 300,
     MOD = 301,
     MULTI = 302
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 2068 of yacc.c  */
#line 28 "parser.y"

    ExpType type;
    TokenData *tokenData;
    TreeNode *tNode;



/* Line 2068 of yacc.c  */
#line 105 "parser.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


