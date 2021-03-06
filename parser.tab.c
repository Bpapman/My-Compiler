/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison implementation for Yacc-like parsers in C
   
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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.5"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Copy the first part of user declarations.  */

/* Line 268 of yacc.c  */
#line 1 "parser.y"

    #include <iostream>
    #include <stdlib.h>
    #include <stdio.h>
    #include "tokenStruct.h"
    #include "tree.c"
    #include "analyze.c"
    #include "mystrings.h"
    #include "yyerror.h"
    #include "codegen.cpp"

    extern int yylex();
    extern int yydebug;
    extern FILE* yyin;
    FILE *code;
    char* out;

    extern SymTab* tab;

    static TreeNode *savedTree;
    static TreeNode *input = (TreeNode*) malloc(sizeof(TreeNode));

    extern int numerrors;
    extern int numwarnings;

    bool stat = false;

    char* lasttokenscanned;
    int globallineno;

    #define YYERROR_VERBOSE

    #ifndef  prepro
    #define  prepro

    void preProcess()
    {

        //input preprocess
        //static TreeNode *input = (TreeNode*) malloc(sizeof(TreeNode));
        //outputc->sibling=input;
        input->attr.name=(char*)"input";
        input->lineno=-1;
        input->nodekind=DeclK;
        input->kind.decl=funcK;
        input->expType=Int;
        input->isPre=true;
        input->pnum=0;


        //output preprocess
        static TreeNode *output = (TreeNode*) malloc(sizeof(TreeNode));
        input->sibling=output;
        output->attr.name=(char*)"output";
        output->lineno=-1;
        output->nodekind=DeclK;
        output->kind.decl=funcK;
        output->expType=Void;
        output->isPre=true;
        output->pnum=1;
        static TreeNode *outputN = (TreeNode*) malloc(sizeof(TreeNode));
        output->child[0] = outputN;
        outputN->lineno=-1;
        outputN->nodekind=DeclK;
        outputN->kind.decl=paramK;
        outputN->isPre=true;
        outputN->expType=Int;



        //inputb preprocess
        static TreeNode *inputb = (TreeNode*) malloc(sizeof(TreeNode));
        output->sibling=inputb;
        inputb->attr.name=(char*)"inputb";
        inputb->lineno=-1;
        inputb->nodekind=DeclK;
        inputb->kind.decl=funcK;
        inputb->expType=Bool;
        inputb->isPre=true;
        inputb->pnum=2;


        //outputb preprocess
        static TreeNode *outputb = (TreeNode*) malloc(sizeof(TreeNode));
        inputb->sibling=outputb;
        outputb->attr.name=(char*)"outputb";
        outputb->lineno=-1;
        outputb->nodekind=DeclK;
        outputb->kind.decl=funcK;
        outputb->expType=Void;
        outputb->isPre=true;
        outputb->pnum=3;
        static TreeNode *outputbN = (TreeNode*) malloc(sizeof(TreeNode));
        outputb->child[0] = outputbN;
        outputbN->lineno=-1;
        outputbN->nodekind=DeclK;
        outputbN->kind.decl=paramK;
        outputbN->isPre=true;
        outputbN->expType=Bool;


        //inputc preprocess
        static TreeNode *inputc = (TreeNode*) malloc(sizeof(TreeNode));
        outputb->sibling=inputc;
        inputc->attr.name=(char*)"inputc";
        inputc->lineno=-1;
        inputc->nodekind=DeclK;
        inputc->kind.decl=funcK;
        inputc->expType=Char;
        inputc->isPre=true;
        inputc->pnum=4;


        //outputc preprocess
        static TreeNode *outputc = (TreeNode*) malloc(sizeof(TreeNode));
        inputc->sibling=outputc;
        outputc->attr.name=(char*)"outputc";
        outputc->lineno=-1;
        outputc->nodekind=DeclK;
        outputc->kind.decl=funcK;
        outputc->expType=Void;
        outputc->isPre=true;
        outputc->pnum=5;
        static TreeNode *outputcN = (TreeNode*) malloc(sizeof(TreeNode));
        outputc->child[0] = outputcN;
        outputcN->lineno=-1;
        outputcN->nodekind=DeclK;
        outputcN->kind.decl=paramK;
        outputcN->isPre=true;
        outputcN->expType=Char;


        //outnl preprocess
        static TreeNode *outnl = (TreeNode*) malloc(sizeof(TreeNode));
        outputc->sibling=outnl;
        outnl->attr.name=(char*)"outnl";
        outnl->lineno=-1;
        outnl->nodekind=DeclK;
        outnl->kind.decl=funcK;
        outnl->expType=Void;
        outnl->isPre=true;
        outnl->pnum=6;
        outnl->sibling=savedTree;


    }
    #endif


    using namespace std;




/* Line 268 of yacc.c  */
#line 226 "parser.tab.c"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif


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

/* Line 293 of yacc.c  */
#line 157 "parser.y"

    ExpType type;
    TokenData *tokenData;
    TreeNode *tNode;



/* Line 293 of yacc.c  */
#line 317 "parser.tab.c"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


/* Copy the second part of user declarations.  */


/* Line 343 of yacc.c  */
#line 329 "parser.tab.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  14
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1715

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  48
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  46
/* YYNRULES -- Number of rules.  */
#define YYNRULES  164
/* YYNRULES -- Number of states.  */
#define YYNSTATES  310

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   302

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     5,     8,    10,    12,    14,    16,    20,
      24,    28,    32,    36,    38,    42,    44,    48,    52,    56,
      58,    63,    68,    72,    75,    77,    79,    81,    83,    90,
      96,   103,   108,   114,   118,   120,   121,   125,   127,   131,
     134,   137,   141,   143,   147,   151,   153,   157,   161,   165,
     167,   169,   172,   175,   177,   179,   181,   183,   188,   191,
     196,   199,   200,   203,   204,   207,   210,   212,   215,   223,
     229,   237,   239,   243,   249,   253,   257,   263,   271,   277,
     285,   293,   297,   301,   305,   309,   312,   316,   319,   322,
     326,   330,   334,   337,   340,   342,   346,   350,   354,   358,
     361,   365,   369,   372,   376,   380,   382,   386,   390,   394,
     396,   400,   404,   407,   409,   412,   416,   418,   422,   426,
     428,   430,   432,   434,   436,   438,   442,   444,   446,   448,
     452,   454,   458,   462,   464,   466,   468,   471,   473,   476,
     478,   480,   482,   484,   486,   491,   495,   498,   502,   504,
     506,   509,   512,   517,   522,   526,   528,   529,   533,   535,
     539,   541,   543,   545,   547
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      49,     0,    -1,    50,    -1,    50,    51,    -1,    51,    -1,
       1,    -1,    52,    -1,    59,    -1,    58,    54,    30,    -1,
      58,     1,    30,    -1,    57,    54,    30,    -1,    57,     1,
      30,    -1,    54,    23,    55,    -1,    55,    -1,     1,    23,
      55,    -1,    56,    -1,    56,    42,    76,    -1,     1,    42,
      76,    -1,    56,    42,     1,    -1,     3,    -1,     3,    24,
       4,    25,    -1,     1,    24,     4,    25,    -1,     3,    24,
       1,    -1,    21,    58,    -1,    58,    -1,    16,    -1,     9,
      -1,    10,    -1,    58,     3,    26,    60,    27,    65,    -1,
       3,    26,    60,    27,    65,    -1,    58,     1,    26,    60,
      27,    65,    -1,    58,     3,    26,     1,    -1,     3,    26,
       1,    27,    65,    -1,     1,    26,    65,    -1,    61,    -1,
      -1,    61,    30,    62,    -1,    62,    -1,     1,    30,    62,
      -1,    58,    63,    -1,    58,     1,    -1,    63,    23,    64,
      -1,    64,    -1,     1,    23,    64,    -1,    63,    23,     1,
      -1,     3,    -1,     3,    24,    25,    -1,     1,    24,    25,
      -1,     3,    24,     1,    -1,    71,    -1,    72,    -1,    71,
       1,    -1,    72,     1,    -1,    70,    -1,    67,    -1,    73,
      -1,    74,    -1,    28,    68,    69,    29,    -1,     1,    29,
      -1,    28,     1,    69,    29,    -1,    68,    53,    -1,    -1,
      69,    65,    -1,    -1,    69,     1,    -1,    75,    30,    -1,
      30,    -1,     1,    30,    -1,    14,    26,    76,    27,    71,
      11,    71,    -1,    22,    26,    76,    27,    71,    -1,    13,
      26,    88,    15,    76,    27,    71,    -1,    66,    -1,    14,
      26,     1,    -1,     1,    27,    71,    11,    71,    -1,    22,
      26,     1,    -1,    13,    26,     1,    -1,    14,    26,    76,
      27,    65,    -1,    14,    26,    76,    27,    71,    11,    72,
      -1,    22,    26,    76,    27,    72,    -1,    13,    26,    88,
      15,    76,    27,    72,    -1,    14,    26,    76,    27,     1,
      11,    72,    -1,    14,    26,     1,    -1,    22,    26,     1,
      -1,    13,    26,     1,    -1,     1,    27,    65,    -1,    19,
      30,    -1,    19,    75,    30,    -1,    19,     1,    -1,     8,
      30,    -1,    88,    37,    75,    -1,    88,    38,    75,    -1,
      88,    39,    75,    -1,    88,    41,    -1,    88,    40,    -1,
      76,    -1,     1,    37,    75,    -1,     1,    38,    75,    -1,
       1,    39,    75,    -1,    88,    37,     1,    -1,     1,    41,
      -1,    88,    38,     1,    -1,    88,    39,     1,    -1,     1,
      40,    -1,    88,     1,    75,    -1,    76,    17,    77,    -1,
      77,    -1,     1,    17,    77,    -1,    76,    17,     1,    -1,
      77,     7,    78,    -1,    78,    -1,     1,     7,    78,    -1,
      77,     7,     1,    -1,    18,    78,    -1,    79,    -1,    18,
       1,    -1,    81,    80,    81,    -1,    81,    -1,     1,    80,
      81,    -1,    81,    80,     1,    -1,    33,    -1,    34,    -1,
      36,    -1,    35,    -1,    31,    -1,    32,    -1,    81,    82,
      83,    -1,    83,    -1,    43,    -1,    44,    -1,    83,    84,
      85,    -1,    85,    -1,     1,    84,    85,    -1,    83,    84,
       1,    -1,    47,    -1,    45,    -1,    46,    -1,    86,    85,
      -1,    87,    -1,    86,     1,    -1,    44,    -1,    47,    -1,
      89,    -1,    88,    -1,     3,    -1,     3,    24,    75,    25,
      -1,     3,    24,     1,    -1,     1,    25,    -1,    26,    75,
      27,    -1,    90,    -1,    93,    -1,    26,     1,    -1,     1,
      27,    -1,     3,    26,    91,    27,    -1,     1,    26,    91,
      27,    -1,     3,    26,     1,    -1,    92,    -1,    -1,    92,
      23,    75,    -1,    75,    -1,     1,    23,    75,    -1,     4,
      -1,     5,    -1,     6,    -1,    20,    -1,    12,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   188,   188,   191,   203,   204,   207,   208,   214,   223,
     226,   240,   243,   255,   256,   259,   260,   261,   262,   265,
     266,   267,   268,   271,   272,   275,   276,   277,   282,   283,
     284,   285,   286,   287,   290,   291,   294,   306,   307,   310,
     318,   321,   333,   334,   335,   338,   339,   340,   341,   345,
     346,   347,   348,   351,   352,   353,   354,   357,   358,   359,
     362,   373,   376,   387,   388,   391,   392,   393,   396,   397,
     398,   399,   400,   401,   402,   403,   406,   407,   408,   409,
     410,   411,   412,   413,   414,   417,   418,   419,   422,   428,
     434,   440,   446,   447,   448,   449,   450,   451,   452,   453,
     454,   455,   456,   457,   460,   468,   469,   470,   473,   481,
     482,   483,   486,   487,   488,   491,   492,   493,   494,   497,
     498,   499,   500,   501,   502,   505,   506,   509,   510,   513,
     514,   515,   516,   519,   520,   521,   524,   525,   526,   529,
     530,   533,   534,   537,   538,   539,   540,   543,   544,   545,
     546,   547,   550,   551,   552,   555,   556,   559,   571,   572,
     575,   576,   577,   578,   579
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "ID", "NUMCONST", "CHARCONST",
  "STRINGCONST", "AND", "BREAK", "BOOL", "CHAR", "ELSE", "FALSE",
  "FOREACH", "IF", "IN", "INT", "OR", "NOT", "RETURN", "TRUE", "STATIC",
  "WHILE", "COMMA", "LBRACKET", "RBRACKET", "LPAREN", "RPAREN", "LBRACE",
  "RBRACE", "SEMI", "EQUIV", "NEQ", "LEQ", "LESSER", "GEQ", "GREATER",
  "ASSIGN", "PASSIGN", "MASSIGN", "DEC", "INC", "COLON", "PLUS", "MINUS",
  "DIVIDE", "MOD", "MULTI", "$accept", "program", "declarationlist",
  "declaration", "vardeclaration", "scopedvardeclaration", "vardecllist",
  "vardeclinitialize", "vardeclid", "scopedtypespecifier", "typespecifier",
  "fundeclaration", "params", "paramlist", "paramtypelist", "paramidlist",
  "paramid", "statement", "sstatement", "compoundstmt",
  "localdeclarations", "statementlist", "expressionstmt",
  "matchedselectionstmt", "unmatchedselectionstmt", "returnstmt",
  "breakstmt", "expression", "simpleexpression", "andexpression",
  "unaryrelexpression", "relexpression", "relop", "sumexpression", "sumop",
  "term", "mulop", "unaryexpression", "unaryop", "factor", "mutable",
  "immutable", "call", "args", "arglist", "constant", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    48,    49,    50,    50,    50,    51,    51,    52,    52,
      53,    53,    54,    54,    54,    55,    55,    55,    55,    56,
      56,    56,    56,    57,    57,    58,    58,    58,    59,    59,
      59,    59,    59,    59,    60,    60,    61,    61,    61,    62,
      62,    63,    63,    63,    63,    64,    64,    64,    64,    65,
      65,    65,    65,    66,    66,    66,    66,    67,    67,    67,
      68,    68,    69,    69,    69,    70,    70,    70,    71,    71,
      71,    71,    71,    71,    71,    71,    72,    72,    72,    72,
      72,    72,    72,    72,    72,    73,    73,    73,    74,    75,
      75,    75,    75,    75,    75,    75,    75,    75,    75,    75,
      75,    75,    75,    75,    76,    76,    76,    76,    77,    77,
      77,    77,    78,    78,    78,    79,    79,    79,    79,    80,
      80,    80,    80,    80,    80,    81,    81,    82,    82,    83,
      83,    83,    83,    84,    84,    84,    85,    85,    85,    86,
      86,    87,    87,    88,    88,    88,    88,    89,    89,    89,
      89,    89,    90,    90,    90,    91,    91,    92,    92,    92,
      93,    93,    93,    93,    93
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     1,     1,     3,     3,
       3,     3,     3,     1,     3,     1,     3,     3,     3,     1,
       4,     4,     3,     2,     1,     1,     1,     1,     6,     5,
       6,     4,     5,     3,     1,     0,     3,     1,     3,     2,
       2,     3,     1,     3,     3,     1,     3,     3,     3,     1,
       1,     2,     2,     1,     1,     1,     1,     4,     2,     4,
       2,     0,     2,     0,     2,     2,     1,     2,     7,     5,
       7,     1,     3,     5,     3,     3,     5,     7,     5,     7,
       7,     3,     3,     3,     3,     2,     3,     2,     2,     3,
       3,     3,     2,     2,     1,     3,     3,     3,     3,     2,
       3,     3,     2,     3,     3,     1,     3,     3,     3,     1,
       3,     3,     2,     1,     2,     3,     1,     3,     3,     1,
       1,     1,     1,     1,     1,     3,     1,     1,     1,     3,
       1,     3,     3,     1,     1,     1,     2,     1,     2,     1,
       1,     1,     1,     1,     4,     3,     2,     3,     1,     1,
       2,     2,     4,     4,     3,     1,     0,     3,     1,     3,
       1,     1,     1,     1,     1
};

/* YYDEFACT[STATE-NAME] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     5,     0,    26,    27,    25,     0,     0,     4,     6,
       0,     7,     0,     0,     1,     0,     3,     0,    19,     0,
      13,    15,     0,   143,   160,   161,   162,     0,   164,     0,
       0,     0,     0,   163,     0,     0,     0,    66,   139,   140,
      33,    71,    54,    53,     0,     0,    55,    56,     0,    94,
     105,   109,   113,   116,   126,   130,     0,   137,     0,   141,
     148,   149,     0,     0,     0,    34,    37,     0,     0,     0,
       9,     0,     0,     0,     0,     8,     0,     0,     0,   146,
       0,     0,    58,    67,   123,   124,   119,   120,   122,   121,
       0,     0,     0,   102,    99,   134,   135,   133,     0,     0,
       0,     0,    88,     0,     0,   114,   112,   142,    87,    85,
       0,     0,   150,     0,    63,    63,    51,    52,    65,     0,
       0,   127,   128,     0,     0,     0,   138,   136,     0,     0,
       0,     0,    93,    92,     0,     0,    40,    45,    39,    42,
       0,     0,     0,    19,    14,     0,     0,     0,     0,    17,
      22,     0,    31,     0,    12,    18,    16,     0,   110,     0,
     106,     0,   158,     0,   155,    84,     0,     0,    95,    96,
      97,     0,   117,     0,   131,   145,     0,   154,     0,    75,
     143,     0,    72,     0,   151,    86,    74,     0,   147,     0,
       0,    60,     0,    24,     0,   107,   104,   111,   108,   118,
     115,   125,   132,   129,   103,    98,    89,   100,    90,   101,
      91,    32,    38,     0,     0,     0,     0,    29,    36,    21,
       0,    20,     0,     0,   153,     0,     0,   144,   152,     0,
       0,     0,    64,    59,    62,    23,     0,     0,    57,     0,
      43,    47,    48,    46,    44,    41,    30,    28,   159,   157,
       0,     0,     0,     0,    73,     0,     0,    76,     0,    69,
      78,    11,    10,     0,     0,     0,     0,     0,     0,     0,
       0,    75,     0,    72,     0,    74,     0,    70,    79,     0,
       0,     0,     0,    80,    68,    77,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    83,     0,    81,     0,    82,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     6,     7,     8,     9,   191,    19,    20,    21,   192,
      63,    11,    64,    65,    66,   138,   139,   165,    41,    42,
     115,   189,    43,    44,    45,    46,    47,    48,    49,    50,
      51,    52,    98,    53,   124,    54,    99,    55,    56,    57,
      58,    59,    60,   163,   164,    61
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -203
static const yytype_int16 yypact[] =
{
     383,   -14,    29,  -203,  -203,  -203,    56,   340,  -203,  -203,
     107,  -203,   700,    12,  -203,   -14,  -203,   191,   164,    -7,
    -203,    22,  1508,   196,  -203,  -203,  -203,    67,  -203,   109,
     117,   858,   802,  -203,   122,   886,   590,  -203,  -203,  -203,
    -203,  -203,  -203,  -203,   406,   451,  -203,  -203,   131,   149,
     145,  -203,  -203,  1671,   160,  -203,   169,  -203,   616,  -203,
    -203,  -203,   130,   239,   151,   162,  -203,   251,   197,    82,
    -203,   914,   167,   135,   251,  -203,   942,   970,   998,  -203,
      32,   496,  -203,  -203,  -203,  -203,  -203,  -203,  -203,  -203,
    1026,  1026,  1026,  -203,  -203,  -203,  -203,  -203,  1388,  1398,
    1054,   830,  -203,   252,  1082,  1665,  -203,  -203,  1613,  -203,
     172,  1110,  1613,   182,  -203,   137,  -203,  -203,  -203,  1138,
    1166,  -203,  -203,  1424,  1388,  1450,   224,  -203,  1026,  1194,
    1222,  1250,  -203,  -203,   700,   170,     1,   199,   204,  -203,
     700,   170,    33,   207,  -203,   253,   202,   276,  1648,   149,
    -203,   269,   202,   277,  -203,  1648,   149,  1665,  -203,   212,
     145,  1578,  -203,   278,   275,  -203,   271,  1613,  -203,  -203,
    -203,   138,    41,   224,  -203,  1613,   281,  1578,   280,   283,
     286,   294,  1648,     0,  -203,  -203,  1648,     3,  -203,   112,
     170,  -203,   262,  -203,   663,   212,   145,  1665,  -203,   138,
      41,   160,   224,  -203,  -203,  1613,  -203,  1613,  -203,  1613,
    -203,  -203,  -203,   263,   287,     9,   266,  -203,  -203,  -203,
     700,  -203,   700,  1026,  -203,  1026,   737,  -203,  -203,   914,
     774,   700,  1508,  -203,  -203,  -203,   272,   146,  -203,   289,
    -203,  -203,  -203,  -203,   289,  -203,  -203,  -203,  -203,  -203,
    1543,   297,   305,   307,  -203,    43,  1473,  -203,   316,  -203,
    -203,  -203,  -203,   543,   267,  1278,  1306,   700,    18,   700,
     300,   283,   322,  1648,    60,  1648,    61,  -203,  -203,   312,
     321,   325,   326,  -203,  -203,  -203,   914,   737,   737,   700,
     285,  1334,  1362,    87,   337,   283,   338,  1648,    94,  1648,
     102,   737,   737,   914,   774,    18,   110,   361,    18,    18
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -203,  -203,  -203,   347,  -203,  -203,   163,    38,  -203,  -203,
       8,  -203,    13,  -203,    -2,  -203,   -16,   -12,  -203,  -203,
    -203,   242,  -203,   -76,  -202,  -203,  -203,   -29,   -62,   -74,
     -24,  -203,   306,   -80,  -203,   234,   -52,   -45,  -203,  -203,
     -30,  -203,  -203,   284,  -203,  -203
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -157
static const yytype_int16 yytable[] =
{
      40,   107,   125,   110,   160,   166,   113,   106,    10,   149,
     242,   127,    12,    62,   156,    10,    74,   119,   172,   279,
     119,     3,     4,    75,   213,   214,   107,   230,     5,   260,
     231,   280,   281,   161,   243,    23,    24,    25,    26,   -35,
     282,   107,   183,   200,    28,   196,   107,   107,   107,   187,
      31,   162,    33,   158,   174,    13,    14,    68,    35,  -156,
     119,   168,   169,   170,    76,   278,   283,   285,   107,   107,
     267,   176,   162,   181,   107,    71,    38,   119,   119,    39,
     203,   107,   147,   146,   121,   122,   153,   287,   288,   107,
     107,     3,     4,   107,   107,   107,   198,   102,     5,   204,
     206,   208,   210,   260,   119,   144,   278,   285,    17,   -35,
      18,   119,   154,   232,   301,    23,    24,    25,    26,   119,
      27,   304,   211,   193,    28,    29,    30,   119,   217,   305,
      31,    32,    33,   212,    34,   103,   152,   308,    35,   218,
      36,   233,    37,   104,     3,     4,     3,     4,   111,   125,
     254,     5,   120,     5,   258,   259,    38,   134,   190,    39,
     135,   118,   -35,    79,    80,   184,   119,   255,   150,    74,
     126,   151,    23,    24,    25,    26,   262,   234,   140,     3,
       4,    28,   234,    95,    96,    97,     5,   270,    72,    33,
      73,   277,   141,   284,   248,    35,   249,   240,   235,   107,
     245,   145,   185,   274,   276,    95,    96,    97,   246,   188,
     247,   294,   259,    38,    67,    68,    39,    69,   257,    77,
     100,    70,   101,   215,   293,   277,   284,   216,   307,   298,
     300,    72,   135,    71,   272,   107,   107,    79,    80,   184,
     136,   306,   137,    84,    85,    86,    87,    88,    89,    79,
      80,   184,   142,   179,   143,   180,   107,    95,    96,    97,
     296,   107,   107,   236,   239,   143,   137,   244,   271,   137,
     180,   -49,   116,   107,   -49,   -49,   -49,   -49,   219,   -49,
     -49,   -49,   226,   -49,   -49,   -49,   295,   -49,   180,   -49,
     -49,   -49,   257,   -49,   221,    67,    68,   -49,   225,   -49,
     -49,   -49,   261,   220,   222,   224,   227,   228,    79,   229,
     100,   226,   241,   214,    71,   -49,   -49,   116,   -49,   -49,
     -49,   -49,   -49,   264,   -49,   -49,   -49,   269,   -49,   -49,
     -49,   265,   -49,   266,   -49,   -49,   -49,   286,   -49,   289,
      -2,    15,   -49,     2,   -49,   -49,   -49,   290,   302,     3,
       4,   291,   292,   303,    16,   237,     5,   194,   201,   123,
     -49,   -49,   116,   -49,   -49,   -49,   -49,   -49,     0,   -49,
     -49,   -49,   309,   -49,   -49,   -49,     0,   -49,     0,   -49,
     -49,   -49,     0,   -49,     1,   178,     2,   -49,     0,   -49,
     -49,   -49,     3,     4,     0,     0,     0,     0,     0,     5,
       0,     0,     0,     0,     0,   -49,   -49,   116,   -49,   -49,
     -49,   -49,   -49,     0,   -49,   -49,   -49,     0,   -49,   -49,
     -49,     0,   -49,     0,   -49,   -49,   -49,     0,   -49,     0,
       0,     0,   -49,     0,   -49,   -49,   -49,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     -49,   -50,   117,   -49,   -50,   -50,   -50,   -50,     0,   -50,
     -50,   -50,     0,   -50,   -50,   -50,     0,   -50,     0,   -50,
     -50,   -50,     0,   -50,     0,     0,     0,   -50,     0,   -50,
     -50,   -50,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   -50,     0,    22,   -50,    23,
      24,    25,    26,  -151,    27,     0,     0,     0,    28,    29,
      30,     0,     0,  -151,    31,    32,    33,     0,    34,     0,
       0,     0,    35,     0,    36,     0,    37,  -151,  -151,  -151,
    -151,  -151,  -151,     0,     0,     0,     0,     0,     0,  -151,
      38,  -151,  -151,    39,   250,     0,    23,    24,    25,    26,
    -151,    27,     0,     0,     0,    28,   251,   252,     0,     0,
    -151,    31,    32,    33,     0,   253,     0,     0,     0,    35,
       0,    36,     0,    37,  -151,  -151,  -151,  -151,  -151,  -151,
       0,     0,     0,     0,     0,     0,  -151,    38,  -151,  -151,
      39,   114,     0,   -61,   -61,   -61,   -61,     0,   -61,   -61,
     -61,     0,   -61,   -61,   -61,     0,   -61,     0,   -61,   -61,
     -61,   -61,   -61,     0,     0,     0,   -61,   128,   -61,   -61,
     -61,     0,     0,  -142,     0,     0,     0,     0,     0,     0,
       0,     0,     0,  -142,   -61,     0,     0,   -61,     0,  -142,
       0,  -142,     0,  -142,     0,     0,  -142,  -142,  -142,  -142,
    -142,  -142,  -142,   129,   130,   131,   132,   133,     0,  -142,
    -142,  -142,  -142,  -142,   232,     0,    23,    24,    25,    26,
       0,    27,     0,     0,     0,    28,    29,    30,     0,     0,
       0,    31,    32,    33,     0,    34,     0,     0,     0,    35,
       0,    36,   238,    37,     0,     0,     0,     0,     0,     0,
       0,    22,     0,    23,    24,    25,    26,    38,    27,     0,
      39,     0,    28,    29,    30,     0,     0,     0,    31,    32,
      33,     0,    34,     0,     0,     0,    35,     0,    36,     0,
      37,     0,     0,     0,     0,     0,     0,     0,   250,     0,
      23,    24,    25,    26,    38,    27,     0,    39,     0,    28,
     251,   252,     0,     0,     0,    31,    32,    33,     0,   253,
       0,     0,     0,    35,     0,    36,     0,    37,     0,     0,
       0,     0,     0,     0,     0,   256,     0,    23,    24,    25,
      26,    38,    27,     0,    39,     0,    28,    29,    30,     0,
       0,     0,    31,    32,    33,     0,    34,     0,     0,     0,
      35,     0,    36,   108,    37,    23,    24,    25,    26,     0,
       0,     0,     0,     0,    28,     0,     0,     0,    38,     0,
      31,    39,    33,     0,     0,     0,     0,     0,    35,     0,
       0,   177,   109,    23,    24,    25,    26,     0,     0,     0,
       0,     0,    28,     0,     0,     0,    38,     0,    31,    39,
      33,     0,     0,     0,     0,     0,    35,  -156,     0,   105,
       0,    23,    24,    25,    26,     0,     0,     0,     0,     0,
      28,     0,     0,     0,    38,     0,    31,    39,    33,     0,
       0,     0,     0,     0,    35,     0,     0,   112,     0,    23,
      24,    25,    26,     0,     0,     0,     0,     0,    28,     0,
       0,     0,    38,     0,    31,    39,    33,     0,     0,     0,
       0,     0,    35,     0,     0,   148,     0,    23,    24,    25,
      26,     0,     0,     0,     0,     0,    28,     0,     0,     0,
      38,     0,    31,    39,    33,     0,     0,     0,     0,     0,
      35,     0,     0,   155,     0,    23,    24,    25,    26,     0,
       0,     0,     0,     0,    28,     0,     0,     0,    38,     0,
      31,    39,    33,     0,     0,     0,     0,     0,    35,     0,
       0,   157,     0,    23,    24,    25,    26,     0,     0,     0,
       0,     0,    28,     0,     0,     0,    38,     0,    31,    39,
      33,     0,     0,     0,     0,     0,    35,     0,     0,   159,
       0,    23,    24,    25,    26,     0,     0,     0,     0,     0,
      28,     0,     0,     0,    38,     0,    31,    39,    33,     0,
       0,     0,     0,     0,    35,     0,     0,   167,     0,    23,
      24,    25,    26,     0,     0,     0,     0,     0,    28,     0,
       0,     0,    38,     0,    31,    39,    33,     0,     0,     0,
       0,     0,    35,     0,     0,   175,     0,    23,    24,    25,
      26,     0,     0,     0,     0,     0,    28,     0,     0,     0,
      38,     0,    31,    39,    33,     0,     0,     0,     0,     0,
      35,     0,     0,   182,     0,    23,    24,    25,    26,     0,
       0,     0,     0,     0,    28,     0,     0,     0,    38,     0,
      31,    39,    33,     0,     0,     0,     0,     0,    35,     0,
       0,   186,     0,    23,    24,    25,    26,     0,     0,     0,
       0,     0,    28,     0,     0,     0,    38,     0,    31,    39,
      33,     0,     0,     0,     0,     0,    35,     0,     0,   195,
       0,    23,    24,    25,    26,     0,     0,     0,     0,     0,
      28,     0,     0,     0,    38,     0,    31,    39,    33,     0,
       0,     0,     0,     0,    35,     0,     0,   197,     0,    23,
      24,    25,    26,     0,     0,     0,     0,     0,    28,     0,
       0,     0,    38,     0,    31,    39,    33,     0,     0,     0,
       0,     0,    35,     0,     0,   205,     0,    23,    24,    25,
      26,     0,     0,     0,     0,     0,    28,     0,     0,     0,
      38,     0,    31,    39,    33,     0,     0,     0,     0,     0,
      35,     0,     0,   207,     0,    23,    24,    25,    26,     0,
       0,     0,     0,     0,    28,     0,     0,     0,    38,     0,
      31,    39,    33,     0,     0,     0,     0,     0,    35,     0,
       0,   209,     0,    23,    24,    25,    26,     0,     0,     0,
       0,     0,    28,     0,     0,     0,    38,     0,    31,    39,
      33,     0,     0,     0,     0,     0,    35,     0,     0,   273,
       0,    23,    24,    25,    26,     0,     0,     0,     0,     0,
      28,     0,     0,     0,    38,     0,    31,    39,    33,     0,
       0,     0,     0,     0,    35,     0,     0,   275,     0,    23,
      24,    25,    26,     0,     0,     0,     0,     0,    28,     0,
       0,     0,    38,     0,    31,    39,    33,     0,     0,     0,
       0,     0,    35,     0,     0,   297,     0,    23,    24,    25,
      26,     0,     0,     0,     0,     0,    28,     0,     0,     0,
      38,     0,    31,    39,    33,     0,     0,     0,     0,     0,
      35,     0,     0,   299,     0,    23,    24,    25,    26,     0,
       0,     0,     0,     0,    28,     0,     0,     0,    38,     0,
      31,    39,    33,     0,     0,     0,     0,     0,    35,   171,
       0,    23,    24,    25,    26,     0,     0,     0,     0,   173,
      28,    23,    24,    25,    26,     0,    38,     0,    33,    39,
      28,     0,     0,     0,    35,     0,     0,     0,    33,     0,
       0,     0,     0,     0,    35,   199,     0,    23,    24,    25,
      26,     0,    38,     0,     0,    39,    28,     0,     0,     0,
       0,     0,    38,     0,    33,    39,     0,     0,     0,     0,
      35,   202,     0,    23,    24,    25,    26,     0,     0,     0,
       0,     0,    28,     0,     0,     0,     0,     0,    38,     0,
      33,    39,     0,     0,     0,     0,    35,     0,     0,     0,
      77,     0,     0,     0,   268,     0,     0,     0,     0,     0,
      78,     0,     0,     0,    38,     0,     0,    39,    79,    80,
      81,     0,    82,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    77,     0,     0,    95,    96,
      97,     0,     0,     0,     0,    78,     0,     0,     0,     0,
       0,     0,     0,    79,    80,    81,     0,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      77,     0,     0,    95,    96,    97,     0,     0,     0,     0,
      78,     0,     0,     0,     0,     0,     0,     0,    79,    80,
     263,     0,    82,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    77,     0,     0,    95,    96,
      97,     0,     0,     0,     0,    78,     0,     0,     0,     0,
       0,   223,     0,    79,    80,   184,     0,     0,     0,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      77,     0,     0,    95,    96,    97,     0,     0,     0,     0,
      78,     0,     0,     0,     0,     0,     0,     0,    79,    80,
     184,     0,     0,     0,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    77,     0,     0,    95,    96,
      97,     0,     0,     0,     0,    78,     0,     0,     0,     0,
       0,     0,     0,    79,    80,   184,     0,     0,     0,    84,
      85,    86,    87,    88,    89,     0,     0,     0,     0,     0,
      79,    80,   184,    95,    96,    97,    84,    85,    86,    87,
      88,    89,    84,    85,    86,    87,    88,    89,     0,     0,
      95,    96,    97,     0,   121,   122
};

#define yypact_value_is_default(yystate) \
  ((yystate) == (-203))

#define yytable_value_is_error(yytable_value) \
  YYID (0)

static const yytype_int16 yycheck[] =
{
      12,    31,    54,    32,    78,    81,    35,    31,     0,    71,
       1,    56,    26,     1,    76,     7,    23,    17,    98,     1,
      17,     9,    10,    30,    23,    24,    56,    27,    16,   231,
      27,    13,    14,     1,    25,     3,     4,     5,     6,    27,
      22,    71,   104,   123,    12,   119,    76,    77,    78,   111,
      18,    80,    20,    77,    99,    26,     0,    24,    26,    27,
      17,    90,    91,    92,    42,   267,   268,   269,    98,    99,
      27,   100,   101,   103,   104,    42,    44,    17,    17,    47,
     125,   111,    69,     1,    43,    44,    73,    27,    27,   119,
     120,     9,    10,   123,   124,   125,   120,    30,    16,   128,
     129,   130,   131,   305,    17,    67,   308,   309,     1,    27,
       3,    17,    74,     1,    27,     3,     4,     5,     6,    17,
       8,    27,   134,   115,    12,    13,    14,    17,   140,    27,
      18,    19,    20,   135,    22,    26,     1,    27,    26,   141,
      28,    29,    30,    26,     9,    10,     9,    10,    26,   201,
     226,    16,     7,    16,   230,   231,    44,    27,    21,    47,
      30,    30,    27,    25,    26,    27,    17,   229,     1,    23,
       1,     4,     3,     4,     5,     6,    30,   189,    27,     9,
      10,    12,   194,    45,    46,    47,    16,   263,    24,    20,
      26,   267,    30,   269,   223,    26,   225,   213,   190,   229,
     216,     4,    30,   265,   266,    45,    46,    47,   220,    27,
     222,   287,   288,    44,    23,    24,    47,    26,   230,     7,
      24,    30,    26,    24,   286,   301,   302,    23,   304,   291,
     292,    24,    30,    42,   264,   265,   266,    25,    26,    27,
       1,   303,     3,    31,    32,    33,    34,    35,    36,    25,
      26,    27,     1,     1,     3,     3,   286,    45,    46,    47,
     290,   291,   292,     1,     1,     3,     3,     1,     1,     3,
       3,     0,     1,   303,     3,     4,     5,     6,    25,     8,
       9,    10,    11,    12,    13,    14,     1,    16,     3,    18,
      19,    20,   304,    22,    25,    23,    24,    26,    23,    28,
      29,    30,    30,    27,    27,    27,    25,    27,    25,    15,
      24,    11,    25,    24,    42,    44,     0,     1,    47,     3,
       4,     5,     6,    26,     8,     9,    10,    11,    12,    13,
      14,    26,    16,    26,    18,    19,    20,    15,    22,    27,
       0,     1,    26,     3,    28,    29,    30,    26,    11,     9,
      10,    26,    26,    15,     7,   192,    16,   115,   124,    53,
      44,     0,     1,    47,     3,     4,     5,     6,    -1,     8,
       9,    10,    11,    12,    13,    14,    -1,    16,    -1,    18,
      19,    20,    -1,    22,     1,   101,     3,    26,    -1,    28,
      29,    30,     9,    10,    -1,    -1,    -1,    -1,    -1,    16,
      -1,    -1,    -1,    -1,    -1,    44,     0,     1,    47,     3,
       4,     5,     6,    -1,     8,     9,    10,    -1,    12,    13,
      14,    -1,    16,    -1,    18,    19,    20,    -1,    22,    -1,
      -1,    -1,    26,    -1,    28,    29,    30,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      44,     0,     1,    47,     3,     4,     5,     6,    -1,     8,
       9,    10,    -1,    12,    13,    14,    -1,    16,    -1,    18,
      19,    20,    -1,    22,    -1,    -1,    -1,    26,    -1,    28,
      29,    30,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    44,    -1,     1,    47,     3,
       4,     5,     6,     7,     8,    -1,    -1,    -1,    12,    13,
      14,    -1,    -1,    17,    18,    19,    20,    -1,    22,    -1,
      -1,    -1,    26,    -1,    28,    -1,    30,    31,    32,    33,
      34,    35,    36,    -1,    -1,    -1,    -1,    -1,    -1,    43,
      44,    45,    46,    47,     1,    -1,     3,     4,     5,     6,
       7,     8,    -1,    -1,    -1,    12,    13,    14,    -1,    -1,
      17,    18,    19,    20,    -1,    22,    -1,    -1,    -1,    26,
      -1,    28,    -1,    30,    31,    32,    33,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    -1,    43,    44,    45,    46,
      47,     1,    -1,     3,     4,     5,     6,    -1,     8,     9,
      10,    -1,    12,    13,    14,    -1,    16,    -1,    18,    19,
      20,    21,    22,    -1,    -1,    -1,    26,     1,    28,    29,
      30,    -1,    -1,     7,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    17,    44,    -1,    -1,    47,    -1,    23,
      -1,    25,    -1,    27,    -1,    -1,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,    41,    -1,    43,
      44,    45,    46,    47,     1,    -1,     3,     4,     5,     6,
      -1,     8,    -1,    -1,    -1,    12,    13,    14,    -1,    -1,
      -1,    18,    19,    20,    -1,    22,    -1,    -1,    -1,    26,
      -1,    28,    29,    30,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     1,    -1,     3,     4,     5,     6,    44,     8,    -1,
      47,    -1,    12,    13,    14,    -1,    -1,    -1,    18,    19,
      20,    -1,    22,    -1,    -1,    -1,    26,    -1,    28,    -1,
      30,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,
       3,     4,     5,     6,    44,     8,    -1,    47,    -1,    12,
      13,    14,    -1,    -1,    -1,    18,    19,    20,    -1,    22,
      -1,    -1,    -1,    26,    -1,    28,    -1,    30,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     1,    -1,     3,     4,     5,
       6,    44,     8,    -1,    47,    -1,    12,    13,    14,    -1,
      -1,    -1,    18,    19,    20,    -1,    22,    -1,    -1,    -1,
      26,    -1,    28,     1,    30,     3,     4,     5,     6,    -1,
      -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,    44,    -1,
      18,    47,    20,    -1,    -1,    -1,    -1,    -1,    26,    -1,
      -1,     1,    30,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,    -1,    12,    -1,    -1,    -1,    44,    -1,    18,    47,
      20,    -1,    -1,    -1,    -1,    -1,    26,    27,    -1,     1,
      -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,    -1,
      12,    -1,    -1,    -1,    44,    -1,    18,    47,    20,    -1,
      -1,    -1,    -1,    -1,    26,    -1,    -1,     1,    -1,     3,
       4,     5,     6,    -1,    -1,    -1,    -1,    -1,    12,    -1,
      -1,    -1,    44,    -1,    18,    47,    20,    -1,    -1,    -1,
      -1,    -1,    26,    -1,    -1,     1,    -1,     3,     4,     5,
       6,    -1,    -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,
      44,    -1,    18,    47,    20,    -1,    -1,    -1,    -1,    -1,
      26,    -1,    -1,     1,    -1,     3,     4,     5,     6,    -1,
      -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,    44,    -1,
      18,    47,    20,    -1,    -1,    -1,    -1,    -1,    26,    -1,
      -1,     1,    -1,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,    -1,    12,    -1,    -1,    -1,    44,    -1,    18,    47,
      20,    -1,    -1,    -1,    -1,    -1,    26,    -1,    -1,     1,
      -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,    -1,
      12,    -1,    -1,    -1,    44,    -1,    18,    47,    20,    -1,
      -1,    -1,    -1,    -1,    26,    -1,    -1,     1,    -1,     3,
       4,     5,     6,    -1,    -1,    -1,    -1,    -1,    12,    -1,
      -1,    -1,    44,    -1,    18,    47,    20,    -1,    -1,    -1,
      -1,    -1,    26,    -1,    -1,     1,    -1,     3,     4,     5,
       6,    -1,    -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,
      44,    -1,    18,    47,    20,    -1,    -1,    -1,    -1,    -1,
      26,    -1,    -1,     1,    -1,     3,     4,     5,     6,    -1,
      -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,    44,    -1,
      18,    47,    20,    -1,    -1,    -1,    -1,    -1,    26,    -1,
      -1,     1,    -1,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,    -1,    12,    -1,    -1,    -1,    44,    -1,    18,    47,
      20,    -1,    -1,    -1,    -1,    -1,    26,    -1,    -1,     1,
      -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,    -1,
      12,    -1,    -1,    -1,    44,    -1,    18,    47,    20,    -1,
      -1,    -1,    -1,    -1,    26,    -1,    -1,     1,    -1,     3,
       4,     5,     6,    -1,    -1,    -1,    -1,    -1,    12,    -1,
      -1,    -1,    44,    -1,    18,    47,    20,    -1,    -1,    -1,
      -1,    -1,    26,    -1,    -1,     1,    -1,     3,     4,     5,
       6,    -1,    -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,
      44,    -1,    18,    47,    20,    -1,    -1,    -1,    -1,    -1,
      26,    -1,    -1,     1,    -1,     3,     4,     5,     6,    -1,
      -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,    44,    -1,
      18,    47,    20,    -1,    -1,    -1,    -1,    -1,    26,    -1,
      -1,     1,    -1,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,    -1,    12,    -1,    -1,    -1,    44,    -1,    18,    47,
      20,    -1,    -1,    -1,    -1,    -1,    26,    -1,    -1,     1,
      -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,    -1,
      12,    -1,    -1,    -1,    44,    -1,    18,    47,    20,    -1,
      -1,    -1,    -1,    -1,    26,    -1,    -1,     1,    -1,     3,
       4,     5,     6,    -1,    -1,    -1,    -1,    -1,    12,    -1,
      -1,    -1,    44,    -1,    18,    47,    20,    -1,    -1,    -1,
      -1,    -1,    26,    -1,    -1,     1,    -1,     3,     4,     5,
       6,    -1,    -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,
      44,    -1,    18,    47,    20,    -1,    -1,    -1,    -1,    -1,
      26,    -1,    -1,     1,    -1,     3,     4,     5,     6,    -1,
      -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,    44,    -1,
      18,    47,    20,    -1,    -1,    -1,    -1,    -1,    26,     1,
      -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,     1,
      12,     3,     4,     5,     6,    -1,    44,    -1,    20,    47,
      12,    -1,    -1,    -1,    26,    -1,    -1,    -1,    20,    -1,
      -1,    -1,    -1,    -1,    26,     1,    -1,     3,     4,     5,
       6,    -1,    44,    -1,    -1,    47,    12,    -1,    -1,    -1,
      -1,    -1,    44,    -1,    20,    47,    -1,    -1,    -1,    -1,
      26,     1,    -1,     3,     4,     5,     6,    -1,    -1,    -1,
      -1,    -1,    12,    -1,    -1,    -1,    -1,    -1,    44,    -1,
      20,    47,    -1,    -1,    -1,    -1,    26,    -1,    -1,    -1,
       7,    -1,    -1,    -1,    11,    -1,    -1,    -1,    -1,    -1,
      17,    -1,    -1,    -1,    44,    -1,    -1,    47,    25,    26,
      27,    -1,    29,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,     7,    -1,    -1,    45,    46,
      47,    -1,    -1,    -1,    -1,    17,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    25,    26,    27,    -1,    29,    30,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
       7,    -1,    -1,    45,    46,    47,    -1,    -1,    -1,    -1,
      17,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    25,    26,
      27,    -1,    29,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,     7,    -1,    -1,    45,    46,
      47,    -1,    -1,    -1,    -1,    17,    -1,    -1,    -1,    -1,
      -1,    23,    -1,    25,    26,    27,    -1,    -1,    -1,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
       7,    -1,    -1,    45,    46,    47,    -1,    -1,    -1,    -1,
      17,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    25,    26,
      27,    -1,    -1,    -1,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,     7,    -1,    -1,    45,    46,
      47,    -1,    -1,    -1,    -1,    17,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    25,    26,    27,    -1,    -1,    -1,    31,
      32,    33,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      25,    26,    27,    45,    46,    47,    31,    32,    33,    34,
      35,    36,    31,    32,    33,    34,    35,    36,    -1,    -1,
      45,    46,    47,    -1,    43,    44
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     1,     3,     9,    10,    16,    49,    50,    51,    52,
      58,    59,    26,    26,     0,     1,    51,     1,     3,    54,
      55,    56,     1,     3,     4,     5,     6,     8,    12,    13,
      14,    18,    19,    20,    22,    26,    28,    30,    44,    47,
      65,    66,    67,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    79,    81,    83,    85,    86,    87,    88,    89,
      90,    93,     1,    58,    60,    61,    62,    23,    24,    26,
      30,    42,    24,    26,    23,    30,    42,     7,    17,    25,
      26,    27,    29,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,    45,    46,    47,    80,    84,
      24,    26,    30,    26,    26,     1,    78,    88,     1,    30,
      75,    26,     1,    75,     1,    68,     1,     1,    30,    17,
       7,    43,    44,    80,    82,    84,     1,    85,     1,    37,
      38,    39,    40,    41,    27,    30,     1,     3,    63,    64,
      27,    30,     1,     3,    55,     4,     1,    60,     1,    76,
       1,     4,     1,    60,    55,     1,    76,     1,    78,     1,
      77,     1,    75,    91,    92,    65,    71,     1,    75,    75,
      75,     1,    81,     1,    85,     1,    75,     1,    91,     1,
       3,    88,     1,    76,    27,    30,     1,    76,    27,    69,
      21,    53,    57,    58,    69,     1,    77,     1,    78,     1,
      81,    83,     1,    85,    75,     1,    75,     1,    75,     1,
      75,    65,    62,    23,    24,    24,    23,    65,    62,    25,
      27,    25,    27,    23,    27,    23,    11,    25,    27,    15,
      27,    27,     1,    29,    65,    58,     1,    54,    29,     1,
      64,    25,     1,    25,     1,    64,    65,    65,    75,    75,
       1,    13,    14,    22,    71,    76,     1,    65,    71,    71,
      72,    30,    30,    27,    26,    26,    26,    27,    11,    11,
      71,     1,    88,     1,    76,     1,    76,    71,    72,     1,
      13,    14,    22,    72,    71,    72,    15,    27,    27,    27,
      26,    26,    26,    76,    71,     1,    88,     1,    76,     1,
      76,    27,    11,    15,    27,    27,    76,    71,    27,    11
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  However,
   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
   discussed.  */

#define YYFAIL		goto yyerrlab
#if defined YYFAIL
  /* This is here to suppress warnings from the GCC cpp's
     -Wunused-macros.  Normally we don't worry about that warning, but
     some users do, and we want to make it easy for users to remove
     YYFAIL uses, which will produce warnings from Bison 2.5.  */
#endif

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* This macro is provided for backward compatibility. */

#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (0, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  YYSIZE_T yysize1;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = 0;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - Assume YYFAIL is not used.  It's too flawed to consider.  See
       <http://lists.gnu.org/archive/html/bison-patches/2009-12/msg00024.html>
       for details.  YYERROR is fine as it does not invoke this
       function.
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                yysize1 = yysize + yytnamerr (0, yytname[yyx]);
                if (! (yysize <= yysize1
                       && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                  return 2;
                yysize = yysize1;
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  yysize1 = yysize + yystrlen (yyformat);
  if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
    return 2;
  yysize = yysize1;

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */


/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

       Refer to the stacks thru separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:

/* Line 1806 of yacc.c  */
#line 188 "parser.y"
    { savedTree = (yyvsp[(1) - (1)].tNode); }
    break;

  case 3:

/* Line 1806 of yacc.c  */
#line 191 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (2)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(2) - (2)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (2)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(2) - (2)].tNode);
                                                                                }
    break;

  case 4:

/* Line 1806 of yacc.c  */
#line 203 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 5:

/* Line 1806 of yacc.c  */
#line 204 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 6:

/* Line 1806 of yacc.c  */
#line 207 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 7:

/* Line 1806 of yacc.c  */
#line 208 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 8:

/* Line 1806 of yacc.c  */
#line 214 "parser.y"
    { TreeNode* t = (yyvsp[(2) - (3)].tNode);
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=(yyvsp[(1) - (3)].type);
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    (yyval.tNode) = (yyvsp[(2) - (3)].tNode);
                                                                                    yyerrok;
                                                                                }
    break;

  case 9:

/* Line 1806 of yacc.c  */
#line 223 "parser.y"
    { (yyval.tNode)=NULL; yyerrok; }
    break;

  case 10:

/* Line 1806 of yacc.c  */
#line 226 "parser.y"
    { TreeNode* t = (yyvsp[(2) - (3)].tNode);
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=(yyvsp[(1) - (3)].type);
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    (yyval.tNode) = (yyvsp[(2) - (3)].tNode);
                                                                                    if(stat)
                                                                                    {
                                                                                        (yyval.tNode)->isStatic=true; 
                                                                                        stat=false;
                                                                                    }
                                                                                    yyerrok;
                                                                                }
    break;

  case 11:

/* Line 1806 of yacc.c  */
#line 240 "parser.y"
    { (yyval.tNode)=NULL; yyerrok; }
    break;

  case 12:

/* Line 1806 of yacc.c  */
#line 243 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (3)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(3) - (3)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (3)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(3) - (3)].tNode);
                                                                                    yyerrok;
                                                                                }
    break;

  case 13:

/* Line 1806 of yacc.c  */
#line 255 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 14:

/* Line 1806 of yacc.c  */
#line 256 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 15:

/* Line 1806 of yacc.c  */
#line 259 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 16:

/* Line 1806 of yacc.c  */
#line 260 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[0] = (yyvsp[(3) - (3)].tNode); (yyval.tNode)->expType=(yyvsp[(3) - (3)].tNode)->expType; }
    break;

  case 17:

/* Line 1806 of yacc.c  */
#line 261 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 18:

/* Line 1806 of yacc.c  */
#line 262 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 19:

/* Line 1806 of yacc.c  */
#line 265 "parser.y"
    { (yyval.tNode) = newDeclNode(varK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (1)].tokenData)->idvalue; }
    break;

  case 20:

/* Line 1806 of yacc.c  */
#line 266 "parser.y"
    { (yyval.tNode) = newDeclNode(varK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (4)].tokenData)->idvalue; (yyval.tNode)->isArray=true; (yyval.tNode)->size=(yyvsp[(3) - (4)].tokenData)->numvalue; }
    break;

  case 21:

/* Line 1806 of yacc.c  */
#line 267 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 22:

/* Line 1806 of yacc.c  */
#line 268 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 23:

/* Line 1806 of yacc.c  */
#line 271 "parser.y"
    { (yyval.type) = (yyvsp[(2) - (2)].type); stat = true; }
    break;

  case 24:

/* Line 1806 of yacc.c  */
#line 272 "parser.y"
    { (yyval.type) = (yyvsp[(1) - (1)].type); }
    break;

  case 25:

/* Line 1806 of yacc.c  */
#line 275 "parser.y"
    { (yyval.type) = Int; }
    break;

  case 26:

/* Line 1806 of yacc.c  */
#line 276 "parser.y"
    { (yyval.type) = Bool; }
    break;

  case 27:

/* Line 1806 of yacc.c  */
#line 277 "parser.y"
    { (yyval.type) = Char; }
    break;

  case 28:

/* Line 1806 of yacc.c  */
#line 282 "parser.y"
    { int lineno = (yyvsp[(2) - (6)].tokenData)->lineno; (yyval.tNode) = newDeclNode(funcK,lineno); (yyval.tNode)->child[0]=(yyvsp[(4) - (6)].tNode); (yyval.tNode)->child[1]=(yyvsp[(6) - (6)].tNode); (yyval.tNode)->attr.name=(yyvsp[(2) - (6)].tokenData)->idvalue; (yyval.tNode)->expType=(yyvsp[(1) - (6)].type); }
    break;

  case 29:

/* Line 1806 of yacc.c  */
#line 283 "parser.y"
    { int lineno = (yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newDeclNode(funcK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); (yyval.tNode)->attr.name=(yyvsp[(1) - (5)].tokenData)->idvalue; (yyval.tNode)->expType=Void; }
    break;

  case 30:

/* Line 1806 of yacc.c  */
#line 284 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 31:

/* Line 1806 of yacc.c  */
#line 285 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 32:

/* Line 1806 of yacc.c  */
#line 286 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 33:

/* Line 1806 of yacc.c  */
#line 287 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 34:

/* Line 1806 of yacc.c  */
#line 290 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 35:

/* Line 1806 of yacc.c  */
#line 291 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 36:

/* Line 1806 of yacc.c  */
#line 294 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (3)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(3) - (3)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (3)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(3) - (3)].tNode);
                                                                                    //yyerrok;
                                                                                }
    break;

  case 37:

/* Line 1806 of yacc.c  */
#line 306 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 38:

/* Line 1806 of yacc.c  */
#line 307 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 39:

/* Line 1806 of yacc.c  */
#line 310 "parser.y"
    { TreeNode* t = (yyvsp[(2) - (2)].tNode);
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=(yyvsp[(1) - (2)].type);
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    (yyval.tNode) = (yyvsp[(2) - (2)].tNode);
                                                                                }
    break;

  case 40:

/* Line 1806 of yacc.c  */
#line 318 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 41:

/* Line 1806 of yacc.c  */
#line 321 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (3)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(3) - (3)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (3)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(3) - (3)].tNode);
                                                                                    yyerrok;
                                                                                }
    break;

  case 42:

/* Line 1806 of yacc.c  */
#line 333 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 43:

/* Line 1806 of yacc.c  */
#line 334 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 44:

/* Line 1806 of yacc.c  */
#line 335 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 45:

/* Line 1806 of yacc.c  */
#line 338 "parser.y"
    { (yyval.tNode) = newDeclNode(paramK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (1)].tokenData)->idvalue; }
    break;

  case 46:

/* Line 1806 of yacc.c  */
#line 339 "parser.y"
    { (yyval.tNode) = newDeclNode(paramK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (3)].tokenData)->idvalue; (yyval.tNode)->isArray=true; }
    break;

  case 47:

/* Line 1806 of yacc.c  */
#line 340 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 48:

/* Line 1806 of yacc.c  */
#line 341 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 49:

/* Line 1806 of yacc.c  */
#line 345 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 50:

/* Line 1806 of yacc.c  */
#line 346 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 51:

/* Line 1806 of yacc.c  */
#line 347 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (2)].tNode); }
    break;

  case 52:

/* Line 1806 of yacc.c  */
#line 348 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (2)].tNode); }
    break;

  case 53:

/* Line 1806 of yacc.c  */
#line 351 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 54:

/* Line 1806 of yacc.c  */
#line 352 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 55:

/* Line 1806 of yacc.c  */
#line 353 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 56:

/* Line 1806 of yacc.c  */
#line 354 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 57:

/* Line 1806 of yacc.c  */
#line 357 "parser.y"
    { yyerrok; int lineno=(yyvsp[(1) - (4)].tokenData)->lineno; (yyval.tNode) = newStmtNode(compoundK,lineno); (yyval.tNode)->child[0]=(yyvsp[(2) - (4)].tNode); (yyval.tNode)->child[1]=(yyvsp[(3) - (4)].tNode); }
    break;

  case 58:

/* Line 1806 of yacc.c  */
#line 358 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 59:

/* Line 1806 of yacc.c  */
#line 359 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 60:

/* Line 1806 of yacc.c  */
#line 362 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (2)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(2) - (2)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (2)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(2) - (2)].tNode);
                                                                                }
    break;

  case 61:

/* Line 1806 of yacc.c  */
#line 373 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 62:

/* Line 1806 of yacc.c  */
#line 376 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (2)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(2) - (2)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (2)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(2) - (2)].tNode);
                                                                                }
    break;

  case 63:

/* Line 1806 of yacc.c  */
#line 387 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 64:

/* Line 1806 of yacc.c  */
#line 388 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 65:

/* Line 1806 of yacc.c  */
#line 391 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (2)].tNode); yyerrok; }
    break;

  case 66:

/* Line 1806 of yacc.c  */
#line 392 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 67:

/* Line 1806 of yacc.c  */
#line 393 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 68:

/* Line 1806 of yacc.c  */
#line 396 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(ifK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 69:

/* Line 1806 of yacc.c  */
#line 397 "parser.y"
    { int lineno=(yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newStmtNode(whileK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); }
    break;

  case 70:

/* Line 1806 of yacc.c  */
#line 398 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(foreachK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 71:

/* Line 1806 of yacc.c  */
#line 399 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 72:

/* Line 1806 of yacc.c  */
#line 400 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 73:

/* Line 1806 of yacc.c  */
#line 401 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 74:

/* Line 1806 of yacc.c  */
#line 402 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 75:

/* Line 1806 of yacc.c  */
#line 403 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 76:

/* Line 1806 of yacc.c  */
#line 406 "parser.y"
    { int lineno=(yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newStmtNode(ifK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); }
    break;

  case 77:

/* Line 1806 of yacc.c  */
#line 407 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(ifK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 78:

/* Line 1806 of yacc.c  */
#line 408 "parser.y"
    { int lineno=(yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newStmtNode(whileK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); }
    break;

  case 79:

/* Line 1806 of yacc.c  */
#line 409 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(foreachK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 80:

/* Line 1806 of yacc.c  */
#line 410 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 81:

/* Line 1806 of yacc.c  */
#line 411 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 82:

/* Line 1806 of yacc.c  */
#line 412 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 83:

/* Line 1806 of yacc.c  */
#line 413 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 84:

/* Line 1806 of yacc.c  */
#line 414 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 85:

/* Line 1806 of yacc.c  */
#line 417 "parser.y"
    { (yyval.tNode) = newStmtNode(returnK,yylval.tokenData->lineno); yyerrok; }
    break;

  case 86:

/* Line 1806 of yacc.c  */
#line 418 "parser.y"
    { (yyval.tNode) = newStmtNode(returnK,yylval.tokenData->lineno); (yyval.tNode)->child[0] = (yyvsp[(2) - (3)].tNode); yyerrok; }
    break;

  case 87:

/* Line 1806 of yacc.c  */
#line 419 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 88:

/* Line 1806 of yacc.c  */
#line 422 "parser.y"
    { (yyval.tNode) = newStmtNode(breakK,yylval.tokenData->lineno); }
    break;

  case 89:

/* Line 1806 of yacc.c  */
#line 428 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = eqK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                }
    break;

  case 90:

/* Line 1806 of yacc.c  */
#line 434 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = peqK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                }
    break;

  case 91:

/* Line 1806 of yacc.c  */
#line 440 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = meqK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                }
    break;

  case 92:

/* Line 1806 of yacc.c  */
#line 446 "parser.y"
    { (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = ppK; (yyval.tNode)->child[0] = (yyvsp[(1) - (2)].tNode); }
    break;

  case 93:

/* Line 1806 of yacc.c  */
#line 447 "parser.y"
    { (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = mmK; (yyval.tNode)->child[0] = (yyvsp[(1) - (2)].tNode); }
    break;

  case 94:

/* Line 1806 of yacc.c  */
#line 448 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 95:

/* Line 1806 of yacc.c  */
#line 449 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 96:

/* Line 1806 of yacc.c  */
#line 450 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 97:

/* Line 1806 of yacc.c  */
#line 451 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 98:

/* Line 1806 of yacc.c  */
#line 452 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 99:

/* Line 1806 of yacc.c  */
#line 453 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 100:

/* Line 1806 of yacc.c  */
#line 454 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 101:

/* Line 1806 of yacc.c  */
#line 455 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 102:

/* Line 1806 of yacc.c  */
#line 456 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 103:

/* Line 1806 of yacc.c  */
#line 457 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 104:

/* Line 1806 of yacc.c  */
#line 460 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = orK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                    if((yyvsp[(1) - (3)].tNode) != NULL && (yyvsp[(3) - (3)].tNode) != NULL)
                                                                                        (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant;
                                                                                }
    break;

  case 105:

/* Line 1806 of yacc.c  */
#line 468 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); if((yyvsp[(1) - (1)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 106:

/* Line 1806 of yacc.c  */
#line 469 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 107:

/* Line 1806 of yacc.c  */
#line 470 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 108:

/* Line 1806 of yacc.c  */
#line 473 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = andK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                    if((yyvsp[(1) - (3)].tNode) != NULL && (yyvsp[(3) - (3)].tNode) != NULL)
                                                                                        (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant;
                                                                                }
    break;

  case 109:

/* Line 1806 of yacc.c  */
#line 481 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); if((yyvsp[(1) - (1)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 110:

/* Line 1806 of yacc.c  */
#line 482 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 111:

/* Line 1806 of yacc.c  */
#line 483 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 112:

/* Line 1806 of yacc.c  */
#line 486 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = notK; (yyval.tNode)->child[0]=(yyvsp[(2) - (2)].tNode); if((yyvsp[(2) - (2)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(2) - (2)].tNode)->isConstant; }
    break;

  case 113:

/* Line 1806 of yacc.c  */
#line 487 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); if((yyvsp[(1) - (1)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 114:

/* Line 1806 of yacc.c  */
#line 488 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 115:

/* Line 1806 of yacc.c  */
#line 491 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode); if((yyvsp[(1) - (3)].tNode) != NULL && (yyvsp[(3) - (3)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant; }
    break;

  case 116:

/* Line 1806 of yacc.c  */
#line 492 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); if((yyvsp[(1) - (1)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 117:

/* Line 1806 of yacc.c  */
#line 493 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 118:

/* Line 1806 of yacc.c  */
#line 494 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 119:

/* Line 1806 of yacc.c  */
#line 497 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = lteqK; }
    break;

  case 120:

/* Line 1806 of yacc.c  */
#line 498 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = ltK; }
    break;

  case 121:

/* Line 1806 of yacc.c  */
#line 499 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = gtK; }
    break;

  case 122:

/* Line 1806 of yacc.c  */
#line 500 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = gteqK; }
    break;

  case 123:

/* Line 1806 of yacc.c  */
#line 501 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = equivK; }
    break;

  case 124:

/* Line 1806 of yacc.c  */
#line 502 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = neqK; }
    break;

  case 125:

/* Line 1806 of yacc.c  */
#line 505 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); (yyval.tNode)->child[0]=(yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[1]=(yyvsp[(3) - (3)].tNode); if((yyvsp[(1) - (3)].tNode) != NULL && (yyvsp[(3) - (3)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant; }
    break;

  case 126:

/* Line 1806 of yacc.c  */
#line 506 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); if((yyvsp[(1) - (1)].tNode) != NULL) (yyval.tNode)->isConstant=(yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 127:

/* Line 1806 of yacc.c  */
#line 509 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = plusK; }
    break;

  case 128:

/* Line 1806 of yacc.c  */
#line 510 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = minusK; }
    break;

  case 129:

/* Line 1806 of yacc.c  */
#line 513 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[1]=(yyvsp[(3) - (3)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant; }
    break;

  case 130:

/* Line 1806 of yacc.c  */
#line 514 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); if((yyvsp[(1) - (1)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 131:

/* Line 1806 of yacc.c  */
#line 515 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 132:

/* Line 1806 of yacc.c  */
#line 516 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 133:

/* Line 1806 of yacc.c  */
#line 519 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = multiK; }
    break;

  case 134:

/* Line 1806 of yacc.c  */
#line 520 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = divideK; }
    break;

  case 135:

/* Line 1806 of yacc.c  */
#line 521 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = modK; }
    break;

  case 136:

/* Line 1806 of yacc.c  */
#line 524 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (2)].tNode); (yyval.tNode)->child[0]=(yyvsp[(2) - (2)].tNode); if((yyvsp[(2) - (2)].tNode) != NULL) (yyval.tNode)->isConstant = (yyvsp[(2) - (2)].tNode)->isConstant; }
    break;

  case 137:

/* Line 1806 of yacc.c  */
#line 525 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 138:

/* Line 1806 of yacc.c  */
#line 526 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 139:

/* Line 1806 of yacc.c  */
#line 529 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = UminusK; }
    break;

  case 140:

/* Line 1806 of yacc.c  */
#line 530 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = UmultiK; }
    break;

  case 141:

/* Line 1806 of yacc.c  */
#line 533 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 142:

/* Line 1806 of yacc.c  */
#line 534 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 143:

/* Line 1806 of yacc.c  */
#line 537 "parser.y"
    { (yyval.tNode) = newExpNode(idK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (1)].tokenData)->idvalue; }
    break;

  case 144:

/* Line 1806 of yacc.c  */
#line 538 "parser.y"
    { (yyval.tNode) = newExpNode(idK,(yyvsp[(1) - (4)].tokenData)->lineno); (yyval.tNode)->child[0] = (yyvsp[(3) - (4)].tNode); (yyval.tNode)->attr.name=(yyvsp[(1) - (4)].tokenData)->idvalue; (yyval.tNode)->isArray=true; }
    break;

  case 145:

/* Line 1806 of yacc.c  */
#line 539 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 146:

/* Line 1806 of yacc.c  */
#line 540 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 147:

/* Line 1806 of yacc.c  */
#line 543 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); yyerrok; }
    break;

  case 148:

/* Line 1806 of yacc.c  */
#line 544 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 149:

/* Line 1806 of yacc.c  */
#line 545 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = true; }
    break;

  case 150:

/* Line 1806 of yacc.c  */
#line 546 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 151:

/* Line 1806 of yacc.c  */
#line 547 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 152:

/* Line 1806 of yacc.c  */
#line 550 "parser.y"
    { (yyval.tNode) = newExpNode(callK, yylval.tokenData->lineno); (yyval.tNode)->child[0] = (yyvsp[(3) - (4)].tNode); (yyval.tNode)->attr.name=(yyvsp[(1) - (4)].tokenData)->idvalue; yyerrok; }
    break;

  case 153:

/* Line 1806 of yacc.c  */
#line 551 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 154:

/* Line 1806 of yacc.c  */
#line 552 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 155:

/* Line 1806 of yacc.c  */
#line 555 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 156:

/* Line 1806 of yacc.c  */
#line 556 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 157:

/* Line 1806 of yacc.c  */
#line 559 "parser.y"
    { TreeNode* t = (yyvsp[(1) - (3)].tNode);
                                                                                    if(t!=NULL)
                                                                                    {
                                                                                        while(t->sibling != NULL)
                                                                                            t = t->sibling;
                                                                                        t->sibling = (yyvsp[(3) - (3)].tNode);
                                                                                        (yyval.tNode) = (yyvsp[(1) - (3)].tNode);
                                                                                    }
                                                                                    else
                                                                                        (yyval.tNode) = (yyvsp[(3) - (3)].tNode);
                                                                                    yyerrok;
                                                                                }
    break;

  case 158:

/* Line 1806 of yacc.c  */
#line 571 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 159:

/* Line 1806 of yacc.c  */
#line 572 "parser.y"
    { (yyval.tNode) = NULL; yyerrok; }
    break;

  case 160:

/* Line 1806 of yacc.c  */
#line 575 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->attr.val = (yyvsp[(1) - (1)].tokenData)->numvalue; (yyval.tNode)->expType=Int; (yyval.tNode)->isConstant=true; }
    break;

  case 161:

/* Line 1806 of yacc.c  */
#line 576 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->attr.string = (yyvsp[(1) - (1)].tokenData)->tokenstr; (yyval.tNode)->expType=Char; (yyval.tNode)->isConstant=true; }
    break;

  case 162:

/* Line 1806 of yacc.c  */
#line 577 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->attr.string = (yyvsp[(1) - (1)].tokenData)->tokenstr; (yyval.tNode)->expType=Char; (yyval.tNode)->isConstant=true; }
    break;

  case 163:

/* Line 1806 of yacc.c  */
#line 578 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->expType=Bool; (yyval.tNode)->attr.bval=true; (yyval.tNode)->isConstant=true; }
    break;

  case 164:

/* Line 1806 of yacc.c  */
#line 579 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->expType=Bool; (yyval.tNode)->attr.bval=false; (yyval.tNode)->isConstant=true; }
    break;



/* Line 1806 of yacc.c  */
#line 3392 "parser.tab.c"
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined(yyoverflow) || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}



/* Line 2067 of yacc.c  */
#line 583 "parser.y"


main(int argc, char* argv[])
{
    int c;
    extern char* optarg;
    extern int optind;
    char **inputfile;
    int length = 0;
    yydebug=0;

    int printTreeFlag = 0;
    int symbolTracing = 0;

    

    //yyin = fopen(argv[1], "r");
    //code = fopen("code.tm", "w");

    while((c = getopt(argc, argv, "dps")) != EOF)
    {
        switch(c)
        {
            case 'd':
                yydebug=1;
                printf("YYDEBUG==%d",yydebug);
                break;
            case 'p':
                printTreeFlag = 1;
                break;
            case 's':
                symbolTracing = 1;
                break;
            default:
                printf("Unknown option(s)\n");
                break;
        }
        c = getopt(argc, argv, "d:p:s");
    }
    inputfile = argv + optind;
    
    yyin = fopen((inputfile[0]), "r");
    length = strlen(inputfile[0]);
    //printf("String length %d\n", length);
    out = inputfile[0];
    out[length-2] = 't';
    out[length-1] = 'm';
    //printf("Outstring %s\n", out);
    
    initYyerror(); 
    yyparse();
    
    if(numerrors == 0)
    {
        if(printTreeFlag)
            printTree(savedTree);

        //set the preprocess to savedTree
        preProcess();
        savedTree = input;

        checkNode(savedTree);

        if(symbolTracing)
            tab->print();

        TreeNode *temp = (TreeNode*)tab->lookup((char*)"main");
        if(temp == NULL)
        {
            printf("ERROR(LINKER): Procedure main is not defined.\n");
            numerrors++;
        }
    }


    printf("Number of warnings: %d\n", numwarnings);
    printf("Number of errors: %d\n", numerrors);

    //printf("Codegen started \n");
    if(numerrors == 0)
    {
        code = fopen(out, "w");
        emitHeader();
        codeGen(savedTree);
        emitEnd();
    }

    return 0;

}


