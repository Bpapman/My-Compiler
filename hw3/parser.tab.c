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

    extern int yylex();
    extern int yydebug;
    extern FILE* yyin;

    extern SymTab* tab;

    static TreeNode *savedTree;
    static TreeNode *output = (TreeNode*) malloc(sizeof(TreeNode));

    extern int numerrors;
    extern int numwarnings;

    bool stat = false;

    #ifndef  prepro
    #define  prepro

    void preProcess()
    {
        //output preprocess
        //static TreeNode *output = (TreeNode*) malloc(sizeof(TreeNode));
        output->attr.name=(char*)"output";
        output->lineno=-1;
        output->nodekind=DeclK;
        output->kind.decl=funcK;
        output->expType=Void;
        output->isPre=true;
        static TreeNode *outputN = (TreeNode*) malloc(sizeof(TreeNode));
        output->child[0] = outputN;
        outputN->lineno=-1;
        outputN->nodekind=DeclK;
        outputN->kind.decl=paramK;
        outputN->isPre=true;
        outputN->expType=Int;


        //outputb preprocess
        static TreeNode *outputb = (TreeNode*) malloc(sizeof(TreeNode));
        output->sibling=outputb;
        outputb->attr.name=(char*)"outputb";
        outputb->lineno=-1;
        outputb->nodekind=DeclK;
        outputb->kind.decl=funcK;
        outputb->expType=Void;
        outputb->isPre=true;
        static TreeNode *outputbN = (TreeNode*) malloc(sizeof(TreeNode));
        outputb->child[0] = outputbN;
        outputbN->lineno=-1;
        outputbN->nodekind=DeclK;
        outputbN->kind.decl=paramK;
        outputbN->isPre=true;
        outputbN->expType=Bool;


        //outputc preprocess
        static TreeNode *outputc = (TreeNode*) malloc(sizeof(TreeNode));
        outputb->sibling=outputc;
        outputc->attr.name=(char*)"outputc";
        outputc->lineno=-1;
        outputc->nodekind=DeclK;
        outputc->kind.decl=funcK;
        outputc->expType=Void;
        outputc->isPre=true;
        static TreeNode *outputcN = (TreeNode*) malloc(sizeof(TreeNode));
        outputc->child[0] = outputcN;
        outputcN->lineno=-1;
        outputcN->nodekind=DeclK;
        outputcN->kind.decl=paramK;
        outputcN->isPre=true;
        outputcN->expType=Char;


        //input preprocess
        static TreeNode *input = (TreeNode*) malloc(sizeof(TreeNode));
        outputc->sibling=input;
        input->attr.name=(char*)"input";
        input->lineno=-1;
        input->nodekind=DeclK;
        input->kind.decl=funcK;
        input->expType=Int;
        input->isPre=true;


        //inputb preprocess
        static TreeNode *inputb = (TreeNode*) malloc(sizeof(TreeNode));
        input->sibling=inputb;
        inputb->attr.name=(char*)"inputb";
        inputb->lineno=-1;
        inputb->nodekind=DeclK;
        inputb->kind.decl=funcK;
        inputb->expType=Bool;
        inputb->isPre=true;


        //input preprocess
        static TreeNode *inputc = (TreeNode*) malloc(sizeof(TreeNode));
        inputb->sibling=inputc;
        inputc->attr.name=(char*)"inputc";
        inputc->lineno=-1;
        inputc->nodekind=DeclK;
        inputc->kind.decl=funcK;
        inputc->expType=Char;
        inputc->isPre=true;


        //outnl preprocess
        static TreeNode *outnl = (TreeNode*) malloc(sizeof(TreeNode));
        inputc->sibling=outnl;
        outnl->attr.name=(char*)"outnl";
        outnl->lineno=-1;
        outnl->nodekind=DeclK;
        outnl->kind.decl=funcK;
        outnl->expType=Void;
        outnl->isPre=true;
        outnl->sibling=savedTree;

    }
    #endif

#ifndef yyerr
#define yyerr
void yyerror(const char* err)
{
      printf("yyerror: %s\n", err);
}
#endif
    using namespace std;




/* Line 268 of yacc.c  */
#line 211 "parser.tab.c"

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
#line 142 "parser.y"

    ExpType type;
    TokenData *tokenData;
    TreeNode *tNode;



/* Line 293 of yacc.c  */
#line 302 "parser.tab.c"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


/* Copy the second part of user declarations.  */


/* Line 343 of yacc.c  */
#line 314 "parser.tab.c"

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
#define YYFINAL  12
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   230

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  48
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  46
/* YYNRULES -- Number of rules.  */
#define YYNRULES  104
/* YYNRULES -- Number of states.  */
#define YYNSTATES  165

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
       0,     0,     3,     5,     8,    10,    12,    14,    18,    22,
      26,    28,    30,    34,    36,    41,    44,    46,    48,    50,
      52,    59,    65,    67,    68,    72,    74,    77,    81,    83,
      85,    89,    91,    93,    95,    97,    99,   101,   106,   109,
     110,   113,   114,   117,   119,   127,   133,   141,   143,   149,
     157,   163,   171,   174,   178,   181,   185,   189,   193,   196,
     199,   201,   205,   207,   211,   213,   216,   218,   222,   224,
     226,   228,   230,   232,   234,   236,   240,   242,   244,   246,
     250,   252,   254,   256,   258,   261,   263,   265,   267,   269,
     271,   273,   278,   282,   284,   286,   291,   293,   294,   298,
     300,   302,   304,   306,   308
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      49,     0,    -1,    50,    -1,    50,    51,    -1,    51,    -1,
      52,    -1,    59,    -1,    58,    54,    30,    -1,    57,    54,
      30,    -1,    54,    23,    55,    -1,    55,    -1,    56,    -1,
      56,    42,    76,    -1,     3,    -1,     3,    24,     4,    25,
      -1,    21,    58,    -1,    58,    -1,    16,    -1,     9,    -1,
      10,    -1,    58,     3,    26,    60,    27,    65,    -1,     3,
      26,    60,    27,    65,    -1,    61,    -1,    -1,    61,    30,
      62,    -1,    62,    -1,    58,    63,    -1,    63,    23,    64,
      -1,    64,    -1,     3,    -1,     3,    24,    25,    -1,    71,
      -1,    72,    -1,    70,    -1,    67,    -1,    73,    -1,    74,
      -1,    28,    68,    69,    29,    -1,    68,    53,    -1,    -1,
      69,    65,    -1,    -1,    75,    30,    -1,    30,    -1,    14,
      26,    76,    27,    71,    11,    71,    -1,    22,    26,    76,
      27,    71,    -1,    13,    26,    88,    15,    76,    27,    71,
      -1,    66,    -1,    14,    26,    76,    27,    65,    -1,    14,
      26,    76,    27,    71,    11,    72,    -1,    22,    26,    76,
      27,    72,    -1,    13,    26,    88,    15,    76,    27,    72,
      -1,    19,    30,    -1,    19,    75,    30,    -1,     8,    30,
      -1,    88,    37,    75,    -1,    88,    38,    75,    -1,    88,
      39,    75,    -1,    88,    41,    -1,    88,    40,    -1,    76,
      -1,    76,    17,    77,    -1,    77,    -1,    77,     7,    78,
      -1,    78,    -1,    18,    78,    -1,    79,    -1,    81,    80,
      81,    -1,    81,    -1,    33,    -1,    34,    -1,    36,    -1,
      35,    -1,    31,    -1,    32,    -1,    81,    82,    83,    -1,
      83,    -1,    43,    -1,    44,    -1,    83,    84,    85,    -1,
      85,    -1,    47,    -1,    45,    -1,    46,    -1,    86,    85,
      -1,    87,    -1,    44,    -1,    47,    -1,    89,    -1,    88,
      -1,     3,    -1,     3,    24,    75,    25,    -1,    26,    75,
      27,    -1,    90,    -1,    93,    -1,     3,    26,    91,    27,
      -1,    92,    -1,    -1,    92,    23,    75,    -1,    75,    -1,
       4,    -1,     5,    -1,     6,    -1,    20,    -1,    12,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   173,   173,   176,   188,   191,   192,   198,   208,   223,
     234,   237,   238,   241,   242,   245,   246,   249,   250,   251,
     256,   257,   260,   261,   264,   275,   278,   288,   299,   302,
     303,   307,   308,   311,   312,   313,   314,   317,   320,   331,
     334,   345,   348,   349,   352,   353,   354,   355,   358,   359,
     360,   361,   364,   365,   368,   374,   380,   386,   392,   393,
     394,   397,   404,   407,   414,   417,   418,   421,   422,   425,
     426,   427,   428,   429,   430,   433,   434,   437,   438,   441,
     442,   445,   446,   447,   450,   451,   454,   455,   458,   459,
     462,   463,   466,   467,   468,   471,   474,   475,   478,   489,
     492,   493,   494,   495,   496
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
       0,    48,    49,    50,    50,    51,    51,    52,    53,    54,
      54,    55,    55,    56,    56,    57,    57,    58,    58,    58,
      59,    59,    60,    60,    61,    61,    62,    63,    63,    64,
      64,    65,    65,    66,    66,    66,    66,    67,    68,    68,
      69,    69,    70,    70,    71,    71,    71,    71,    72,    72,
      72,    72,    73,    73,    74,    75,    75,    75,    75,    75,
      75,    76,    76,    77,    77,    78,    78,    79,    79,    80,
      80,    80,    80,    80,    80,    81,    81,    82,    82,    83,
      83,    84,    84,    84,    85,    85,    86,    86,    87,    87,
      88,    88,    89,    89,    89,    90,    91,    91,    92,    92,
      93,    93,    93,    93,    93
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     1,     3,     3,     3,
       1,     1,     3,     1,     4,     2,     1,     1,     1,     1,
       6,     5,     1,     0,     3,     1,     2,     3,     1,     1,
       3,     1,     1,     1,     1,     1,     1,     4,     2,     0,
       2,     0,     2,     1,     7,     5,     7,     1,     5,     7,
       5,     7,     2,     3,     2,     3,     3,     3,     2,     2,
       1,     3,     1,     3,     1,     2,     1,     3,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     1,     1,     3,
       1,     1,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     4,     3,     1,     1,     4,     1,     0,     3,     1,
       1,     1,     1,     1,     1
};

/* YYDEFACT[STATE-NAME] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,    18,    19,    17,     0,     2,     4,     5,     0,
       6,    23,     1,     3,    13,     0,    10,    11,     0,     0,
      22,    25,     0,    23,     0,     7,     0,    29,    26,    28,
       0,     0,     0,     0,    13,     9,    90,   100,   101,   102,
     104,     0,   103,     0,    86,    87,    12,    62,    64,    66,
      68,    76,    80,     0,    85,    89,    88,    93,    94,     0,
       0,     0,     0,     0,     0,     0,    39,    43,    21,    47,
      34,    33,    31,    32,    35,    36,     0,    60,    89,    24,
      14,     0,     0,    97,    65,     0,     0,     0,    73,    74,
      69,    70,    72,    71,    77,    78,     0,     0,    82,    83,
      81,     0,    84,    30,    27,    54,     0,     0,    52,     0,
       0,    41,    42,     0,     0,     0,    59,    58,    20,     0,
      99,     0,    96,    92,    61,    63,    67,    75,    79,    90,
       0,     0,    53,     0,     0,    38,     0,    16,     0,    55,
      56,    57,    91,    95,     0,     0,     0,     0,    15,     0,
      37,    40,    98,     0,    48,    31,    45,    50,     8,     0,
       0,    46,    51,    44,    49
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     5,     6,     7,     8,   135,    15,    16,    17,   136,
      18,    10,    19,    20,    21,    28,    29,    68,    69,    70,
     111,   138,    71,    72,    73,    74,    75,    76,    77,    47,
      48,    49,    96,    50,    97,    51,   101,    52,    53,    54,
      78,    56,    57,   121,   122,    58
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -140
static const yytype_int16 yypact[] =
{
      37,    -9,  -140,  -140,  -140,    54,    37,  -140,  -140,    52,
    -140,    40,  -140,  -140,   -15,    34,  -140,    17,    57,    36,
      48,  -140,    63,    40,    67,  -140,   158,    55,    61,  -140,
     125,    40,    62,    53,    64,  -140,    42,  -140,  -140,  -140,
    -140,   158,  -140,   158,  -140,  -140,    72,    83,  -140,  -140,
       1,   -32,  -140,   183,  -140,  -140,  -140,  -140,  -140,    70,
      57,    68,    71,    73,   153,    77,  -140,  -140,  -140,  -140,
    -140,  -140,  -140,  -140,  -140,  -140,    75,    72,    85,  -140,
    -140,   125,   158,   158,  -140,    82,   158,   158,  -140,  -140,
    -140,  -140,  -140,  -140,  -140,  -140,   183,   183,  -140,  -140,
    -140,   183,  -140,  -140,  -140,  -140,   109,   158,  -140,    89,
     158,     9,  -140,   158,   158,   158,  -140,  -140,  -140,    90,
    -140,    86,   104,  -140,    83,  -140,   -17,   -32,  -140,   112,
     126,    12,  -140,    14,    40,  -140,    67,  -140,    88,  -140,
    -140,  -140,  -140,  -140,   158,   158,   125,   125,  -140,    35,
    -140,  -140,  -140,    21,  -140,   129,  -140,  -140,  -140,   125,
     125,  -140,  -140,  -140,  -140
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -140,  -140,  -140,   136,  -140,  -140,    10,   124,  -140,  -140,
       0,  -140,   127,  -140,   118,  -140,    92,   -69,  -140,  -140,
    -140,  -140,  -140,  -139,  -137,  -140,  -140,   -40,   -24,    74,
     -36,  -140,  -140,    58,  -140,    69,  -140,   -49,  -140,  -140,
     -25,  -140,  -140,  -140,  -140,  -140
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -1
static const yytype_uint8 yytable[] =
{
       9,    55,    46,    85,   102,    84,     9,   155,   156,    22,
     157,    23,   118,    98,    99,   100,    55,    11,     2,     3,
     161,   163,   162,   164,   109,     4,    94,    95,    55,    86,
     134,    86,    88,    89,    90,    91,    92,    93,    86,   146,
       1,   147,   119,   120,    94,    95,     2,     3,   159,     2,
       3,   125,   128,     4,    12,    14,     4,    24,    24,    26,
      27,    55,    55,    30,    25,   158,    82,    32,    83,   151,
      34,    55,    55,   139,   140,   141,    55,   154,    31,    59,
      81,   130,    55,   131,    60,    55,   133,    80,    22,    86,
      87,    36,    37,    38,    39,   103,    61,   106,   105,   107,
      40,    62,    63,   110,   152,   112,    41,    64,    42,   123,
      65,   137,   129,   143,    43,   142,    66,   150,    67,   132,
      55,   153,   113,   114,   115,   116,   117,   144,    36,    37,
      38,    39,    44,    61,   148,    45,    82,    40,    62,    63,
     160,   145,    13,    41,    64,    42,   149,    65,    35,    79,
      33,    43,   104,    66,   126,    67,    36,    37,    38,    39,
     124,    36,    37,    38,    39,    40,   127,     0,     0,    44,
      40,    41,    45,    42,     0,     0,    41,     0,    42,    43,
       0,     0,     0,   108,    43,     0,    36,    37,    38,    39,
       0,     0,     0,     0,     0,    40,     0,    44,     0,     0,
      45,     0,    44,    42,     0,    45,     0,     0,     0,    43,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    44,     0,     0,
      45
};

#define yypact_value_is_default(yystate) \
  ((yystate) == (-140))

#define yytable_value_is_error(yytable_value) \
  YYID (0)

static const yytype_int16 yycheck[] =
{
       0,    26,    26,    43,    53,    41,     6,   146,   147,    24,
     147,    26,    81,    45,    46,    47,    41,    26,     9,    10,
     159,   160,   159,   160,    64,    16,    43,    44,    53,    17,
      21,    17,    31,    32,    33,    34,    35,    36,    17,    27,
       3,    27,    82,    83,    43,    44,     9,    10,    27,     9,
      10,    87,   101,    16,     0,     3,    16,    23,    23,    42,
       3,    86,    87,    27,    30,    30,    24,     4,    26,   138,
       3,    96,    97,   113,   114,   115,   101,   146,    30,    24,
      27,   106,   107,   107,    23,   110,   110,    25,    24,    17,
       7,     3,     4,     5,     6,    25,     8,    26,    30,    26,
      12,    13,    14,    26,   144,    30,    18,    19,    20,    27,
      22,   111,     3,    27,    26,    25,    28,    29,    30,    30,
     145,   145,    37,    38,    39,    40,    41,    23,     3,     4,
       5,     6,    44,     8,   134,    47,    24,    12,    13,    14,
      11,    15,     6,    18,    19,    20,   136,    22,    24,    31,
      23,    26,    60,    28,    96,    30,     3,     4,     5,     6,
      86,     3,     4,     5,     6,    12,    97,    -1,    -1,    44,
      12,    18,    47,    20,    -1,    -1,    18,    -1,    20,    26,
      -1,    -1,    -1,    30,    26,    -1,     3,     4,     5,     6,
      -1,    -1,    -1,    -1,    -1,    12,    -1,    44,    -1,    -1,
      47,    -1,    44,    20,    -1,    47,    -1,    -1,    -1,    26,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    44,    -1,    -1,
      47
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     9,    10,    16,    49,    50,    51,    52,    58,
      59,    26,     0,    51,     3,    54,    55,    56,    58,    60,
      61,    62,    24,    26,    23,    30,    42,     3,    63,    64,
      27,    30,     4,    60,     3,    55,     3,     4,     5,     6,
      12,    18,    20,    26,    44,    47,    76,    77,    78,    79,
      81,    83,    85,    86,    87,    88,    89,    90,    93,    24,
      23,     8,    13,    14,    19,    22,    28,    30,    65,    66,
      67,    70,    71,    72,    73,    74,    75,    76,    88,    62,
      25,    27,    24,    26,    78,    75,    17,     7,    31,    32,
      33,    34,    35,    36,    43,    44,    80,    82,    45,    46,
      47,    84,    85,    25,    64,    30,    26,    26,    30,    75,
      26,    68,    30,    37,    38,    39,    40,    41,    65,    75,
      75,    91,    92,    27,    77,    78,    81,    83,    85,     3,
      88,    76,    30,    76,    21,    53,    57,    58,    69,    75,
      75,    75,    25,    27,    23,    15,    27,    27,    58,    54,
      29,    65,    75,    76,    65,    71,    71,    72,    30,    27,
      11,    71,    72,    71,    72
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
#line 173 "parser.y"
    { savedTree = (yyvsp[(1) - (1)].tNode); }
    break;

  case 3:

/* Line 1806 of yacc.c  */
#line 176 "parser.y"
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
#line 188 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 5:

/* Line 1806 of yacc.c  */
#line 191 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 6:

/* Line 1806 of yacc.c  */
#line 192 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 7:

/* Line 1806 of yacc.c  */
#line 198 "parser.y"
    { TreeNode* t = (yyvsp[(2) - (3)].tNode);
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=(yyvsp[(1) - (3)].type);
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    (yyval.tNode) = (yyvsp[(2) - (3)].tNode);
                                                                                }
    break;

  case 8:

/* Line 1806 of yacc.c  */
#line 208 "parser.y"
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
                                                                                }
    break;

  case 9:

/* Line 1806 of yacc.c  */
#line 223 "parser.y"
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
                                                                                }
    break;

  case 10:

/* Line 1806 of yacc.c  */
#line 234 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 11:

/* Line 1806 of yacc.c  */
#line 237 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 12:

/* Line 1806 of yacc.c  */
#line 238 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[0] = (yyvsp[(3) - (3)].tNode); (yyval.tNode)->expType=(yyvsp[(3) - (3)].tNode)->expType; }
    break;

  case 13:

/* Line 1806 of yacc.c  */
#line 241 "parser.y"
    { (yyval.tNode) = newDeclNode(varK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (1)].tokenData)->idvalue; }
    break;

  case 14:

/* Line 1806 of yacc.c  */
#line 242 "parser.y"
    { (yyval.tNode) = newDeclNode(varK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (4)].tokenData)->idvalue; (yyval.tNode)->isArray=true; }
    break;

  case 15:

/* Line 1806 of yacc.c  */
#line 245 "parser.y"
    { (yyval.type) = (yyvsp[(2) - (2)].type); stat = true; }
    break;

  case 16:

/* Line 1806 of yacc.c  */
#line 246 "parser.y"
    { (yyval.type) = (yyvsp[(1) - (1)].type); }
    break;

  case 17:

/* Line 1806 of yacc.c  */
#line 249 "parser.y"
    { (yyval.type) = Int; }
    break;

  case 18:

/* Line 1806 of yacc.c  */
#line 250 "parser.y"
    { (yyval.type) = Bool; }
    break;

  case 19:

/* Line 1806 of yacc.c  */
#line 251 "parser.y"
    { (yyval.type) = Char; }
    break;

  case 20:

/* Line 1806 of yacc.c  */
#line 256 "parser.y"
    { int lineno = (yyvsp[(2) - (6)].tokenData)->lineno; (yyval.tNode) = newDeclNode(funcK,lineno); (yyval.tNode)->child[0]=(yyvsp[(4) - (6)].tNode); (yyval.tNode)->child[1]=(yyvsp[(6) - (6)].tNode); (yyval.tNode)->attr.name=(yyvsp[(2) - (6)].tokenData)->idvalue; (yyval.tNode)->expType=(yyvsp[(1) - (6)].type); }
    break;

  case 21:

/* Line 1806 of yacc.c  */
#line 257 "parser.y"
    { int lineno = (yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newDeclNode(funcK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); (yyval.tNode)->attr.name=(yyvsp[(1) - (5)].tokenData)->idvalue; (yyval.tNode)->expType=Void; }
    break;

  case 22:

/* Line 1806 of yacc.c  */
#line 260 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 23:

/* Line 1806 of yacc.c  */
#line 261 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 24:

/* Line 1806 of yacc.c  */
#line 264 "parser.y"
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
                                                                                }
    break;

  case 25:

/* Line 1806 of yacc.c  */
#line 275 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 26:

/* Line 1806 of yacc.c  */
#line 278 "parser.y"
    { TreeNode* t = (yyvsp[(2) - (2)].tNode);
                                                                                    while(t!=NULL)
                                                                                    {
                                                                                        t->expType=(yyvsp[(1) - (2)].type);
                                                                                        t = t->sibling;
                                                                                    }
                                                                                    (yyval.tNode) = (yyvsp[(2) - (2)].tNode);
                                                                                }
    break;

  case 27:

/* Line 1806 of yacc.c  */
#line 288 "parser.y"
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
                                                                                }
    break;

  case 28:

/* Line 1806 of yacc.c  */
#line 299 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 29:

/* Line 1806 of yacc.c  */
#line 302 "parser.y"
    { (yyval.tNode) = newDeclNode(paramK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (1)].tokenData)->idvalue; }
    break;

  case 30:

/* Line 1806 of yacc.c  */
#line 303 "parser.y"
    { (yyval.tNode) = newDeclNode(paramK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (3)].tokenData)->idvalue; (yyval.tNode)->isArray=true; }
    break;

  case 31:

/* Line 1806 of yacc.c  */
#line 307 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 32:

/* Line 1806 of yacc.c  */
#line 308 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 33:

/* Line 1806 of yacc.c  */
#line 311 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 34:

/* Line 1806 of yacc.c  */
#line 312 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 35:

/* Line 1806 of yacc.c  */
#line 313 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 36:

/* Line 1806 of yacc.c  */
#line 314 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 37:

/* Line 1806 of yacc.c  */
#line 317 "parser.y"
    { int lineno=(yyvsp[(1) - (4)].tokenData)->lineno; (yyval.tNode) = newStmtNode(compoundK,lineno); (yyval.tNode)->child[0]=(yyvsp[(2) - (4)].tNode); (yyval.tNode)->child[1]=(yyvsp[(3) - (4)].tNode); }
    break;

  case 38:

/* Line 1806 of yacc.c  */
#line 320 "parser.y"
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

  case 39:

/* Line 1806 of yacc.c  */
#line 331 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 40:

/* Line 1806 of yacc.c  */
#line 334 "parser.y"
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

  case 41:

/* Line 1806 of yacc.c  */
#line 345 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 42:

/* Line 1806 of yacc.c  */
#line 348 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (2)].tNode); }
    break;

  case 43:

/* Line 1806 of yacc.c  */
#line 349 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 44:

/* Line 1806 of yacc.c  */
#line 352 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(ifK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 45:

/* Line 1806 of yacc.c  */
#line 353 "parser.y"
    { int lineno=(yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newStmtNode(whileK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); }
    break;

  case 46:

/* Line 1806 of yacc.c  */
#line 354 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(foreachK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 47:

/* Line 1806 of yacc.c  */
#line 355 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 48:

/* Line 1806 of yacc.c  */
#line 358 "parser.y"
    { int lineno=(yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newStmtNode(ifK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); }
    break;

  case 49:

/* Line 1806 of yacc.c  */
#line 359 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(ifK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 50:

/* Line 1806 of yacc.c  */
#line 360 "parser.y"
    { int lineno=(yyvsp[(1) - (5)].tokenData)->lineno; (yyval.tNode) = newStmtNode(whileK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (5)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (5)].tNode); }
    break;

  case 51:

/* Line 1806 of yacc.c  */
#line 361 "parser.y"
    { int lineno=(yyvsp[(1) - (7)].tokenData)->lineno; (yyval.tNode) = newStmtNode(foreachK,lineno); (yyval.tNode)->child[0]=(yyvsp[(3) - (7)].tNode); (yyval.tNode)->child[1]=(yyvsp[(5) - (7)].tNode); (yyval.tNode)->child[2]=(yyvsp[(7) - (7)].tNode); }
    break;

  case 52:

/* Line 1806 of yacc.c  */
#line 364 "parser.y"
    { (yyval.tNode) = newStmtNode(returnK,yylval.tokenData->lineno); }
    break;

  case 53:

/* Line 1806 of yacc.c  */
#line 365 "parser.y"
    { (yyval.tNode) = newStmtNode(returnK,yylval.tokenData->lineno); (yyval.tNode)->child[0] = (yyvsp[(2) - (3)].tNode); }
    break;

  case 54:

/* Line 1806 of yacc.c  */
#line 368 "parser.y"
    { (yyval.tNode) = newStmtNode(breakK,yylval.tokenData->lineno); }
    break;

  case 55:

/* Line 1806 of yacc.c  */
#line 374 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = eqK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                }
    break;

  case 56:

/* Line 1806 of yacc.c  */
#line 380 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = peqK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                }
    break;

  case 57:

/* Line 1806 of yacc.c  */
#line 386 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = meqK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                }
    break;

  case 58:

/* Line 1806 of yacc.c  */
#line 392 "parser.y"
    { (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = ppK; (yyval.tNode)->child[0] = (yyvsp[(1) - (2)].tNode); }
    break;

  case 59:

/* Line 1806 of yacc.c  */
#line 393 "parser.y"
    { (yyval.tNode) = newExpNode(assignK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = mmK; (yyval.tNode)->child[0] = (yyvsp[(1) - (2)].tNode); }
    break;

  case 60:

/* Line 1806 of yacc.c  */
#line 394 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 61:

/* Line 1806 of yacc.c  */
#line 397 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = orK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                    (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant;
                                                                                }
    break;

  case 62:

/* Line 1806 of yacc.c  */
#line 404 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 63:

/* Line 1806 of yacc.c  */
#line 407 "parser.y"
    {
                                                                                    (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno);
                                                                                    (yyval.tNode)->attr.op = andK;
                                                                                    (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode);
                                                                                    (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode);
                                                                                    (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant;
                                                                                }
    break;

  case 64:

/* Line 1806 of yacc.c  */
#line 414 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 65:

/* Line 1806 of yacc.c  */
#line 417 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = notK; (yyval.tNode)->child[0]=(yyvsp[(2) - (2)].tNode); (yyval.tNode)->isConstant = (yyvsp[(2) - (2)].tNode)->isConstant; }
    break;

  case 66:

/* Line 1806 of yacc.c  */
#line 418 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 67:

/* Line 1806 of yacc.c  */
#line 421 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[1] = (yyvsp[(3) - (3)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant; }
    break;

  case 68:

/* Line 1806 of yacc.c  */
#line 422 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 69:

/* Line 1806 of yacc.c  */
#line 425 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = lteqK; }
    break;

  case 70:

/* Line 1806 of yacc.c  */
#line 426 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = ltK; }
    break;

  case 71:

/* Line 1806 of yacc.c  */
#line 427 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = gtK; }
    break;

  case 72:

/* Line 1806 of yacc.c  */
#line 428 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = gteqK; }
    break;

  case 73:

/* Line 1806 of yacc.c  */
#line 429 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = equivK; }
    break;

  case 74:

/* Line 1806 of yacc.c  */
#line 430 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = neqK; }
    break;

  case 75:

/* Line 1806 of yacc.c  */
#line 433 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); (yyval.tNode)->child[0]=(yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[1]=(yyvsp[(3) - (3)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant; }
    break;

  case 76:

/* Line 1806 of yacc.c  */
#line 434 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant=(yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 77:

/* Line 1806 of yacc.c  */
#line 437 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = plusK; }
    break;

  case 78:

/* Line 1806 of yacc.c  */
#line 438 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = minusK; }
    break;

  case 79:

/* Line 1806 of yacc.c  */
#line 441 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); (yyval.tNode)->child[0] = (yyvsp[(1) - (3)].tNode); (yyval.tNode)->child[1]=(yyvsp[(3) - (3)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (3)].tNode)->isConstant & (yyvsp[(3) - (3)].tNode)->isConstant; }
    break;

  case 80:

/* Line 1806 of yacc.c  */
#line 442 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = (yyvsp[(1) - (1)].tNode)->isConstant; }
    break;

  case 81:

/* Line 1806 of yacc.c  */
#line 445 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = multiK; }
    break;

  case 82:

/* Line 1806 of yacc.c  */
#line 446 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = divideK; }
    break;

  case 83:

/* Line 1806 of yacc.c  */
#line 447 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = modK; }
    break;

  case 84:

/* Line 1806 of yacc.c  */
#line 450 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (2)].tNode); (yyval.tNode)->child[0]=(yyvsp[(2) - (2)].tNode); (yyval.tNode)->isConstant = (yyvsp[(2) - (2)].tNode)->isConstant; }
    break;

  case 85:

/* Line 1806 of yacc.c  */
#line 451 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 86:

/* Line 1806 of yacc.c  */
#line 454 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = UminusK; }
    break;

  case 87:

/* Line 1806 of yacc.c  */
#line 455 "parser.y"
    { (yyval.tNode) = newExpNode(opK,yylval.tokenData->lineno); (yyval.tNode)->attr.op = UmultiK; }
    break;

  case 88:

/* Line 1806 of yacc.c  */
#line 458 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 89:

/* Line 1806 of yacc.c  */
#line 459 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 90:

/* Line 1806 of yacc.c  */
#line 462 "parser.y"
    { (yyval.tNode) = newExpNode(idK,yylval.tokenData->lineno); (yyval.tNode)->attr.name=(yyvsp[(1) - (1)].tokenData)->idvalue; }
    break;

  case 91:

/* Line 1806 of yacc.c  */
#line 463 "parser.y"
    { (yyval.tNode) = newExpNode(idK,(yyvsp[(1) - (4)].tokenData)->lineno); (yyval.tNode)->child[0] = (yyvsp[(3) - (4)].tNode); (yyval.tNode)->attr.name=(yyvsp[(1) - (4)].tokenData)->idvalue; (yyval.tNode)->isArray=true; }
    break;

  case 92:

/* Line 1806 of yacc.c  */
#line 466 "parser.y"
    { (yyval.tNode) = (yyvsp[(2) - (3)].tNode); }
    break;

  case 93:

/* Line 1806 of yacc.c  */
#line 467 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 94:

/* Line 1806 of yacc.c  */
#line 468 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); (yyval.tNode)->isConstant = true; }
    break;

  case 95:

/* Line 1806 of yacc.c  */
#line 471 "parser.y"
    { (yyval.tNode) = newExpNode(callK, yylval.tokenData->lineno); (yyval.tNode)->child[0] = (yyvsp[(3) - (4)].tNode); (yyval.tNode)->attr.name=(yyvsp[(1) - (4)].tokenData)->idvalue;  }
    break;

  case 96:

/* Line 1806 of yacc.c  */
#line 474 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 97:

/* Line 1806 of yacc.c  */
#line 475 "parser.y"
    { (yyval.tNode) = NULL; }
    break;

  case 98:

/* Line 1806 of yacc.c  */
#line 478 "parser.y"
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
                                                                                }
    break;

  case 99:

/* Line 1806 of yacc.c  */
#line 489 "parser.y"
    { (yyval.tNode) = (yyvsp[(1) - (1)].tNode); }
    break;

  case 100:

/* Line 1806 of yacc.c  */
#line 492 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->attr.val = (yyvsp[(1) - (1)].tokenData)->numvalue; (yyval.tNode)->expType=Int; (yyval.tNode)->isConstant=true; }
    break;

  case 101:

/* Line 1806 of yacc.c  */
#line 493 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->attr.string = (yyvsp[(1) - (1)].tokenData)->tokenstr; (yyval.tNode)->expType=Char; (yyval.tNode)->isConstant=true; }
    break;

  case 102:

/* Line 1806 of yacc.c  */
#line 494 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->attr.string = (yyvsp[(1) - (1)].tokenData)->tokenstr; (yyval.tNode)->expType=Char; (yyval.tNode)->isConstant=true; }
    break;

  case 103:

/* Line 1806 of yacc.c  */
#line 495 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->expType=Bool; (yyval.tNode)->attr.bval=true; (yyval.tNode)->isConstant=true; }
    break;

  case 104:

/* Line 1806 of yacc.c  */
#line 496 "parser.y"
    { (yyval.tNode) = newExpNode(constK,yylval.tokenData->lineno); (yyval.tNode)->expType=Bool; (yyval.tNode)->attr.bval=false; (yyval.tNode)->isConstant=true; }
    break;



/* Line 1806 of yacc.c  */
#line 2563 "parser.tab.c"
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
#line 500 "parser.y"


main(int argc, char* argv[])
{
    int c;
    extern char* optarg;
    extern int optind;
    char **inputfile;
    yydebug=0;

    int printTreeFlag = 0;
    int symbolTracing = 0;

    //yyin = fopen(argv[1], "r");
    //outputfile = fopen("output.txt", "w");

    while((c = getopt(argc, argv, "dps:")) != EOF)
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


    yyparse();
    
    if(printTreeFlag)
        printTree(savedTree);

    //set the preprocess to savedTree
    preProcess();
    savedTree = output;

    checkNode(savedTree);

    if(symbolTracing)
        tab->print();

    printf("Number of Warnings: %d\n", numwarnings);
    printf("Number of Errors: %d\n", numerrors);
  

    //derpNode(savedTree);

    //checkNode(savedTree);

    //printf("Number of Errors: %d\n", numerrors);
    //printf("Number of Warnings: %d\n", numwarnings);

    return 0;

}


