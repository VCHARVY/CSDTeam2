/* original parser id follows */
/* yysccsid[] = "@(#)yaccpar	1.9 (Berkeley) 02/21/93" */
/* (use YYMAJOR/YYMINOR for ifdefs dependent on parser version) */

#define YYBYACC 1
#define YYMAJOR 2
#define YYMINOR 0
#define YYPATCH 20230521

#define YYEMPTY        (-1)
#define yyclearin      (yychar = YYEMPTY)
#define yyerrok        (yyerrflag = 0)
#define YYRECOVERING() (yyerrflag != 0)
#define YYENOMEM       (-2)
#define YYEOF          0
#undef YYBTYACC
#define YYBTYACC 0
#define YYDEBUGSTR YYPREFIX "debug"
#define YYPREFIX "yy"

#define YYPURE 0

#line 2 "parser.y"
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <vector>
#include <string.h>
#include <queue>
#include <set>
#include <iostream>
#include <string>
#include <unordered_map>
#include <map>
#include <stack>
#include <algorithm>
#include <fstream>

#define add_tac($$, $1, $2, $3) {strcpy($$.type, $1.type);\
    sprintf($$.lexeme, get_temp().c_str());\
    string lt=string($1.type);\
    string rt=string($3.type);\
    if((lt == "CHAR" && rt == "INT") || (rt == "CHAR" && lt == "INT")){\
        strcpy($$.type, "INT");\
    }\
    else if((lt == "FLOAT" && rt == "INT") || (rt == "FLOAT" && lt == "INT")){\
        strcpy($$.type, "FLOAT");\
    }\
    else if((lt == "FLOAT" && rt == "FLOAT") || (lt == "INT" && rt == "INT") || (lt == "CHAR" && rt == "CHAR")){\
        strcpy($$.type, $1.type);\
    }\
    else{\
        sem_errors.push_back("Cannot convert between CHAR and FLOAT in line : " + to_string(countLine+1));\
        sem_errors.push_back(lt + " and " + rt);\
    }}

using namespace std;

void yyerror(const char *s);
int yylex();
int yywrap();
int yytext();
vector<string> sem_errors;
extern int yylex();
extern int yyparse();
extern int countLine;
void yyerror(const char *s);

stack<int> scope_history;
vector<string> tac;

int scope_counter = 0;
int label_counter = 0;
int hasReturnStmt = 0;
int variable_count = 0;

stack<int> loop_break, loop_continue;
stack<pair<string, vector<string>>> function_call;

/* for array declaration with initialization*/
string curr_array;
int arr_index=0;

/*temp variables free*/
queue<string> free_temp;
set<string> const_temps;

/*functions*/
bool check_type(string l, string r);
bool check_declaration(string variable);
bool check_scope(string variable);
bool check_multiple_declaration(string variable);
string get_temp();

struct var_info {
    string data_type;
    int scope;
    int size;   /* for arrays*/
    int isArray;
    int line_number; 
};
struct func_info{
    string return_type;
    int num_params;
    vector<string> param_types;
    unordered_map<string, struct var_info> symbol_table;
};
struct field_info{
    string data_type;
    string access_modifier;
    int line_number;
};
struct method_info{
    string return_type;
    int num_params;
    vector<string> param_types;
    string access_modifier;
};
struct class_info{
    map<string, struct field_info> field_table;
    map<string, struct method_info> method_table;
};

map<string, struct func_info> function_table;
map<string, struct class_info> class_table;
string current_function;
string current_class;
vector<string> current_func_param_types;

map<string, pair<string, string>> global_table;


#ifdef YYSTYPE
#undef  YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
#endif
#ifndef YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
#line 113 "parser.y"
typedef union YYSTYPE {
    struct node { 
        char lexeme[100];
        int line_number;
        char type[100];
        char if_body[5];
        char elif_body[5];
		char else_body[5];
        char loop_body[5];
        char parentNext[5];
        char case_body[5];
        char id[5];
        char temp[5];
        int nParams;
    } node; 
} YYSTYPE;
#endif /* !YYSTYPE_IS_DECLARED */
#line 158 "y.tab.c"

/* compatibility with bison */
#ifdef YYPARSE_PARAM
/* compatibility with FreeBSD */
# ifdef YYPARSE_PARAM_TYPE
#  define YYPARSE_DECL() yyparse(YYPARSE_PARAM_TYPE YYPARSE_PARAM)
# else
#  define YYPARSE_DECL() yyparse(void *YYPARSE_PARAM)
# endif
#else
# define YYPARSE_DECL() yyparse(void)
#endif

/* Parameters sent to lex. */
#ifdef YYLEX_PARAM
# define YYLEX_DECL() yylex(void *YYLEX_PARAM)
# define YYLEX yylex(YYLEX_PARAM)
#else
# define YYLEX_DECL() yylex(void)
# define YYLEX yylex()
#endif

#if !(defined(yylex) || defined(YYSTATE))
int YYLEX_DECL();
#endif

/* Parameters sent to yyerror. */
#ifndef YYERROR_DECL
#define YYERROR_DECL() yyerror(const char *s)
#endif
#ifndef YYERROR_CALL
#define YYERROR_CALL(msg) yyerror(msg)
#endif

extern int YYPARSE_DECL();

#define INT 257
#define CHAR 258
#define FLOAT 259
#define STRING 260
#define VOID 261
#define RETURN 262
#define CLASS 263
#define PUBLIC 264
#define PRIVATE 265
#define PROTECTED 266
#define NEW 267
#define STRUCT 268
#define INPUT 269
#define OUTPUT 270
#define IF 271
#define ELSE 272
#define WHILE 273
#define FOR 274
#define BREAK 275
#define CONTINUE 276
#define INT_NUM 277
#define FLOAT_NUM 278
#define ID 279
#define ADD 280
#define SUB 281
#define MUL 282
#define DIV 283
#define ASSIGN 284
#define MOD 285
#define EQ 286
#define NE 287
#define LT 288
#define GT 289
#define LE 290
#define GE 291
#define AND 292
#define OR 293
#define SCOL 294
#define COMMA 295
#define LP 296
#define RP 297
#define LF 298
#define RF 299
#define LB 300
#define RB 301
#define STR 302
#define CHARACTER 303
#define BITAND 304
#define BITOR 305
#define NEG 306
#define DQ 307
#define SQ 308
#define NULLP 309
#define YYERRCODE 256
typedef int YYINT;
static const YYINT yylhs[] = {                           -1,
    0,    0,   35,   34,    1,    1,    1,    1,    1,   36,
    2,   37,    3,   29,   29,   29,   29,   29,   29,   29,
   29,   29,    4,    4,    4,    4,    4,    4,    4,    4,
    4,    4,    4,   38,    5,    5,    5,    6,    7,    7,
   39,    8,    9,    9,   10,   10,   11,   11,   11,   32,
   33,   33,   33,   12,   12,   12,   12,   12,   12,   12,
   12,   12,   12,   12,   12,   12,   12,   13,   13,   13,
   13,   40,   13,   13,   41,   31,   31,   16,   16,   15,
   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
   15,   15,   15,   15,   15,   15,   15,   30,   30,   17,
   18,   18,   18,   18,   19,   19,   19,   20,   20,   20,
   14,   14,   42,   43,   44,   45,   21,   46,   47,   48,
   49,   22,   22,   50,   23,   23,   51,   52,   53,   24,
   54,   55,   56,   57,   25,   58,   26,   27,   27,   27,
   28,
};
static const YYINT yylen[] = {                            2,
    1,    2,    0,    3,    2,    2,    2,    2,    0,    0,
    5,    0,    6,    1,    1,    1,    1,    1,    2,    2,
    2,    2,    1,    1,    1,    1,    2,    2,    2,    2,
    3,    3,    3,    0,    4,    1,    0,    2,    2,    0,
    0,    6,    2,    0,    3,    2,    1,    1,    1,    6,
    3,    5,    0,    2,    2,    2,    2,    1,    1,    1,
    2,    2,    5,    8,    5,    7,    7,    2,    4,    4,
    5,    0,   10,    7,    0,    4,    1,    2,    1,    3,
    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
    3,    3,    3,    3,    1,    1,    1,    1,    4,    2,
    1,    1,    3,    1,    1,    1,    1,    1,    1,    1,
    3,    6,    0,    0,    0,    0,   12,    0,    0,    0,
    0,   13,    0,    0,    5,    0,    0,    0,    0,   10,
    0,    0,    0,    0,   15,    0,    5,    3,    1,    0,
    1,
};
static const YYINT yydefred[] = {                         0,
    0,    0,    9,    0,    0,    0,   17,   18,    0,    0,
    0,    0,    5,    0,    6,    0,    7,    0,    0,    0,
    0,    0,    0,    0,    0,    0,   19,   20,   22,    0,
    0,   21,   10,   12,   27,    0,   28,    0,    0,    0,
   30,    0,   29,    0,    4,   41,    0,    0,    0,   31,
   32,   33,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  113,  127,    0,    0,    0,  108,  109,
    0,  105,  106,    0,  110,  107,  104,    0,    0,    0,
    0,    0,    0,   95,   96,    0,  102,   58,   59,   60,
   98,   97,    0,   70,    0,    0,    0,    0,   47,   48,
   49,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,   61,   62,    0,    0,    0,    0,   11,
   39,   54,   55,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,   56,    0,    0,   57,
  101,  100,   26,    0,    0,    0,    0,    0,    0,    0,
   42,   43,    0,    0,    0,    0,    0,    0,   46,    0,
    0,   51,   50,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,  103,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
   38,   13,    0,    0,    0,   72,   19,   20,   22,   21,
   45,    0,    0,    0,    0,    0,    0,    0,    0,    0,
  131,    0,    0,    0,    0,    0,   74,   99,    0,   52,
   63,    0,    0,    0,   65,  114,  128,    0,    0,    0,
  137,    0,   35,    0,    0,    0,    0,    0,    0,    0,
    0,    0,  138,    0,    0,    0,   66,   67,  115,  129,
  132,    0,   73,   64,    0,    0,    0,    0,    0,    0,
    0,   76,  116,  130,  133,    0,    0,    0,  117,  134,
  124,    0,    0,    0,    0,  135,  125,
};
#if defined(YYDESTRUCT_CALL) || defined(YYSTYPE_TOSTRING)
static const YYINT yystos[] = {                           0,
  311,  312,  345,  346,  257,  258,  259,  260,  261,  263,
  268,  279,  313,  314,  319,  340,  343,  312,  257,  258,
  259,  260,  261,  279,  315,  324,  282,  282,  282,  279,
  279,  282,  298,  279,  282,  300,  282,  300,  300,  279,
  282,  279,  282,  279,  294,  298,  298,  347,  348,  301,
  301,  301,  284,  284,  284,  300,  350,  268,  324,  344,
  262,  269,  270,  271,  273,  274,  275,  276,  277,  278,
  279,  280,  281,  296,  303,  306,  309,  318,  323,  324,
  325,  326,  327,  328,  329,  330,  331,  332,  335,  336,
  337,  341,  296,  302,  267,  279,  326,  277,  264,  265,
  266,  320,  321,  322,  279,  294,  299,  326,  296,  296,
  353,  362,  296,  294,  294,  284,  300,  369,  326,  299,
  318,  294,  294,  280,  281,  282,  283,  285,  286,  287,
  288,  289,  290,  291,  292,  293,  294,  304,  305,  294,
  279,  329,  260,  279,  315,  316,  317,  279,  300,  301,
  299,  320,  257,  258,  259,  260,  261,  279,  313,  324,
  279,  344,  294,  279,  307,  308,  326,  296,  296,  279,
  325,  326,  326,  296,  297,  326,  326,  326,  326,  326,
  326,  326,  326,  326,  326,  326,  326,  326,  326,  326,
  279,  297,  349,  296,  326,  284,  282,  282,  282,  282,
  294,  294,  297,  300,  302,  303,  297,  326,  326,  300,
  294,  301,  326,  338,  339,  295,  297,  301,  351,  344,
  294,  326,  307,  308,  294,  297,  297,  326,  365,  284,
  297,  295,  316,  298,  301,  297,  297,  354,  363,  301,
  326,  326,  338,  331,  342,  297,  294,  294,  298,  298,
  294,  352,  299,  294,  355,  364,  366,  295,  318,  318,
  325,  342,  299,  299,  297,  356,  367,  272,  334,  298,
  298,  368,  361,  318,  318,  299,  299,
};
#endif /* YYDESTRUCT_CALL || YYSTYPE_TOSTRING */
static const YYINT yydgoto[] = {                          1,
    2,   13,   14,   25,  146,  147,   78,   15,  102,  103,
  104,   79,   80,   81,   82,   83,   84,   85,   86,   87,
   88,    0,  269,   89,   90,   91,  214,  215,   16,   92,
  245,   17,   60,    3,    4,   48,   49,  193,   57,  219,
  252,  111,  238,  255,  266,    0,    0,    0,    0,  273,
  112,  239,  256,  229,  257,  267,  272,  118,
};
static const YYINT yysindex[] = {                         0,
    0,  -16,    0,   52, -234, -224,    0,    0, -219, -230,
 -208, -193,    0, -199,    0, -161,    0,  -16, -241, -240,
 -175, -139, -138, -268, -130, -118,    0,    0,    0, -134,
 -115,    0,    0,    0,    0, -121,    0, -112, -108,  -87,
    0,  -63,    0, -192,    0,    0,   27, -164,  -93,    0,
    0,    0,  -80,  -38, -143,  -37,  -47,  -33,  -46,  -45,
 -143,  -43,  -41,    0,    0,  -40,  -13,  -11,    0,    0,
 -127,    0,    0, -143,    0,    0,    0,  -42, -164,   13,
   20,  -55,   40,    0,    0, -155,    0,    0,    0,    0,
    0,    0,  130,    0,  -28,  -21,  271,    4,    0,    0,
    0,   22,  -47,  156,   57,   27,   43,  271,   61, -256,
   51,   67,   82,    0,    0, -143, -143,   69,  -15,    0,
    0,    0,    0, -143, -143, -143, -143, -143, -143, -143,
 -143, -143, -143, -143, -143, -143,    0, -143, -143,    0,
    0,    0,    0,   91,  104,   87,    0,   96, -143,  101,
    0,    0, -227, -226, -175, -139,  117, -207,    0,  116,
  124,    0,    0, -167,  109,  122,   11, -143, -143, -181,
  144,  271,   37, -143,    0, -154, -154, -239, -239,  271,
  309,  309, -113, -113, -113, -113,  297,  297,  271,  271,
    0,    0,  145,  147,   63,    0,    0,    0,    0,    0,
    0,   27,  157, -143,  134,  153,  168,   89,  115, -143,
    0,  179,  271,  169,  170,  130,    0,    0,  166,    0,
    0,  141,  172,  173,    0,    0,    0,  167, -143, -143,
    0, -143,    0, -233,  180,  194,  195,  192,  196,  179,
  193,  271,    0,    0,  197,  198,    0,    0,    0,    0,
    0,  200,    0,    0, -164, -164,   82, -233,  202,  204,
  217,    0,    0,    0,    0,  221,  218,  220,    0,    0,
    0, -164, -164,  222,  223,    0,    0,
};
static const YYINT yyrindex[] = {                         1,
    0,  467,    0,    0,  212,  238,    0,    0,  240,    0,
    0,    0,    0,    0,    0,    0,    0,  520,  250,  261,
  262,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  248,    0,    0,  244,  246,    0,    0,
    0,    0,    0,    0,    0,    0,  247,    0,    0,    0,
  253,    0,    0,    0,    0,    0,    0,    0,    0,    0,
  219,    0,    0,    0,    0,    0,    0,    0,  246,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,  251,    0,    0,  -81,  272,    0,    0,    0,
    0,    0,  247,    0,    0,  244,    0,  273,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0, -285,    0,    0,  274,
    0,    0,  212,  238,  265,    0,  240,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0, -151,    0,  258,    0,  369,  387,  329,  351, -136,
  463,  475,  403,  419,  435,  451, -107,   65,   38,  142,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,  244,    0,    0,    0,    0,    0,    0,    0,    0,
    0,  245, -120,    0,  268,  251,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,  258,    0,    0,    0,    0,    0,    0,    0,    0,
    0, -123,    0, -290,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,  246,  246,    0,    0,    0,    0,
    0,    0,    0,    0,    0, -242,    0,    0,    0,    0,
    0,  246,  246,    0,    0,    0,    0,
};
#if YYBTYACC
static const YYINT yycindex[] = {                         0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,
};
#endif
static const YYINT yygindex[] = {                         0,
  566,  466,    0,  -89,  355,    0,  -77,    0,  469,    0,
    0,    0,   -4, -110,  -48,    0,    0,  487,    0, -228,
    0,    0,    0,    0,    0,    0,  342,    0,    0,    0,
  323,    0,  -98,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,
};
#define YYTABLESIZE 776
static const YYINT yytable[] = {                         26,
    9,  121,  171,  145,   75,  244,   97,  162,   77,   34,
   42,   36,  108,   43,  126,  126,  126,  126,  126,  126,
   69,   70,   96,   72,   73,  119,  126,  126,  126,  244,
  126,  126,  126,  126,  126,  126,  126,  126,  126,   74,
   35,   37,   59,   69,   70,  128,   75,   27,   30,   76,
  165,  166,   77,  126,  197,  198,  126,   28,   36,   38,
  126,  167,   29,  126,  138,  139,  126,  172,  173,   75,
   31,   42,   36,   38,  200,  176,  177,  178,  179,  180,
  181,  182,  183,  184,  185,  186,  187,  188,   32,  189,
  190,   55,   19,   20,   21,   22,   23,   61,   33,  160,
  195,   59,  116,  220,   62,   63,   64,   56,   65,   66,
   67,   68,   69,   70,   71,   72,   73,   34,  210,  208,
  209,   69,   70,  141,   39,  213,  145,  126,  127,  203,
  128,   74,  204,   69,   70,   96,   72,   73,   75,   40,
   74,   76,  111,   41,   77,  111,  261,   75,   44,  138,
  139,   42,   74,   77,   43,  222,  116,   90,   90,   75,
   90,  228,   76,   46,   90,   77,  124,  125,  126,  127,
  112,  128,  117,  112,  141,   45,  141,  259,  260,   50,
  241,  242,   47,  213,   91,   91,   91,   91,   51,   91,
  138,  139,   52,   91,  274,  275,   53,   59,  101,  101,
  101,  101,   93,  101,  101,  101,  101,  101,  101,  101,
  101,  101,  101,  101,  136,  101,   99,  100,  101,  101,
   54,   94,  101,  101,  124,  125,  126,  127,   95,  128,
  129,  130,  131,  132,  133,  134,  135,  136,  137,   98,
    5,    6,    7,    8,    9,  105,   10,  106,  138,  139,
  148,   11,  109,  107,  110,  113,  120,    3,    3,    3,
    3,    3,   12,    9,  124,  125,  126,  127,    9,  128,
  129,  130,  131,  132,  133,  134,  135,  136,  149,    3,
  114,  175,  115,   19,   20,   21,   22,   23,  138,  139,
  124,  125,  126,  127,   58,  128,  129,  130,  131,  132,
  133,  134,  135,  136,  150,   24,  122,  207,   19,   20,
   21,   22,   23,  123,  138,  139,  124,  125,  126,  127,
  151,  128,  129,  130,  131,  132,  133,  134,  135,  136,
   24,   93,   93,  140,   93,  161,  163,  212,   93,  164,
  138,  139,  124,  125,  126,  127,  168,  128,  129,  130,
  131,  132,  133,  134,  135,  136,   92,   92,   92,   92,
  170,   92,  169,  218,  174,   92,  138,  139,  124,  125,
  126,  127,   43,  128,  129,  130,  131,  132,  133,  134,
  135,  136,  191,  192,  196,  226,   19,   20,   21,  143,
   23,  194,  138,  139,  124,  125,  126,  127,  199,  128,
  129,  130,  131,  132,  133,  134,  135,  136,  144,  201,
  205,  227,  153,  154,  155,  156,  157,  202,  138,  139,
  124,  125,  126,  127,  206,  128,  129,  130,  131,  132,
  133,  134,  135,  136,  158,   94,   94,  211,   94,  216,
  223,  235,   94,  217,  138,  139,  124,  125,  126,  127,
  221,  128,  129,  130,  131,  132,  133,  134,  135,  136,
  224,  225,  230,  234,  232,  231,    1,  240,  236,  237,
  138,  139,  124,  125,  126,  127,  246,  128,  129,  130,
  131,  132,  133,  134,  135,  136,  251,  247,  248,  249,
   15,  254,  268,  250,  258,  253,  138,  139,  101,  101,
  263,  101,  264,  101,  101,  101,  101,  101,  101,  101,
  101,  101,  101,  265,  136,  270,   16,  271,   14,    2,
  276,  277,  101,  101,   99,   99,   99,   99,   23,   99,
   99,   99,   99,   99,   99,   99,   99,   99,   99,   24,
   25,   68,   53,   17,   40,   44,   79,   37,   99,   99,
  124,  125,  126,  127,  140,  128,  129,  130,  131,  132,
  133,  134,  135,  136,  139,   69,   78,   71,   18,  159,
  233,  152,  142,  243,  138,  139,  124,  125,  126,  127,
  262,  128,  129,  130,  131,  132,  133,  134,  124,  125,
  126,  127,    0,  128,    0,    0,  131,  132,  133,  134,
  138,  139,    0,    0,    0,    0,    0,    0,   82,   82,
   82,   82,  138,  139,   82,   82,   82,   82,   82,   82,
   82,   82,   82,   82,    0,   82,    0,    0,    0,   82,
   83,   83,   83,   83,    0,    0,   83,   83,   83,   83,
   83,   83,   83,   83,   83,   83,    0,   83,   80,   80,
    0,   83,    0,    0,   80,   80,   80,   80,   80,   80,
   80,   80,   80,   80,    0,   80,   81,   81,    0,   80,
    0,    0,   81,   81,   81,   81,   81,   81,   81,   81,
   81,   81,    0,   81,    0,    0,    0,   81,   86,   86,
   86,   86,   86,   86,   86,   86,   86,   86,    0,   86,
    0,    0,    0,   86,   87,   87,   87,   87,   87,   87,
   87,   87,   87,   87,    0,   87,    0,    0,    0,   87,
   88,   88,   88,   88,   88,   88,   88,   88,   88,   88,
    0,   88,    0,    0,    0,   88,   89,   89,   89,   89,
   89,   89,   89,   89,   89,   89,    0,   89,   84,   84,
    0,   89,    0,    0,   84,   84,   84,   84,    0,   84,
   85,   85,    0,   84,    0,    0,   85,   85,   85,   85,
    0,   85,    0,    0,    0,   85,
};
static const YYINT yycheck[] = {                          4,
    0,   79,  113,   93,  295,  234,   55,  106,  299,  295,
  279,  297,   61,  282,  257,  258,  259,  260,  261,  262,
  277,  278,  279,  280,  281,   74,  269,  270,  271,  258,
  273,  274,  275,  276,  277,  278,  279,  280,  281,  296,
  282,  282,   47,  277,  278,  285,  303,  282,  279,  306,
  307,  308,  309,  296,  282,  282,  299,  282,  300,  300,
  303,  110,  282,  306,  304,  305,  309,  116,  117,  303,
  279,  279,  300,  300,  282,  124,  125,  126,  127,  128,
  129,  130,  131,  132,  133,  134,  135,  136,  282,  138,
  139,  284,  257,  258,  259,  260,  261,  262,  298,  104,
  149,  106,  284,  202,  269,  270,  271,  300,  273,  274,
  275,  276,  277,  278,  279,  280,  281,  279,  300,  168,
  169,  277,  278,  279,  300,  174,  216,  282,  283,  297,
  285,  296,  300,  277,  278,  279,  280,  281,  303,  279,
  296,  306,  294,  282,  309,  297,  257,  303,  279,  304,
  305,  279,  296,  309,  282,  204,  284,  294,  295,  303,
  297,  210,  306,  298,  301,  309,  280,  281,  282,  283,
  294,  285,  300,  297,  295,  294,  297,  255,  256,  301,
  229,  230,  298,  232,  292,  293,  294,  295,  301,  297,
  304,  305,  301,  301,  272,  273,  284,  202,  280,  281,
  282,  283,  296,  285,  286,  287,  288,  289,  290,  291,
  292,  293,  294,  295,  296,  297,  264,  265,  266,  301,
  284,  302,  304,  305,  280,  281,  282,  283,  267,  285,
  286,  287,  288,  289,  290,  291,  292,  293,  294,  277,
  257,  258,  259,  260,  261,  279,  263,  294,  304,  305,
  279,  268,  296,  299,  296,  296,  299,  257,  258,  259,
  260,  261,  279,  263,  280,  281,  282,  283,  268,  285,
  286,  287,  288,  289,  290,  291,  292,  293,  300,  279,
  294,  297,  294,  257,  258,  259,  260,  261,  304,  305,
  280,  281,  282,  283,  268,  285,  286,  287,  288,  289,
  290,  291,  292,  293,  301,  279,  294,  297,  257,  258,
  259,  260,  261,  294,  304,  305,  280,  281,  282,  283,
  299,  285,  286,  287,  288,  289,  290,  291,  292,  293,
  279,  294,  295,  294,  297,  279,  294,  301,  301,  279,
  304,  305,  280,  281,  282,  283,  296,  285,  286,  287,
  288,  289,  290,  291,  292,  293,  292,  293,  294,  295,
  279,  297,  296,  301,  296,  301,  304,  305,  280,  281,
  282,  283,  282,  285,  286,  287,  288,  289,  290,  291,
  292,  293,  279,  297,  284,  297,  257,  258,  259,  260,
  261,  296,  304,  305,  280,  281,  282,  283,  282,  285,
  286,  287,  288,  289,  290,  291,  292,  293,  279,  294,
  302,  297,  257,  258,  259,  260,  261,  294,  304,  305,
  280,  281,  282,  283,  303,  285,  286,  287,  288,  289,
  290,  291,  292,  293,  279,  294,  295,  294,  297,  295,
  307,  301,  301,  297,  304,  305,  280,  281,  282,  283,
  294,  285,  286,  287,  288,  289,  290,  291,  292,  293,
  308,  294,  284,  298,  295,  297,    0,  301,  297,  297,
  304,  305,  280,  281,  282,  283,  297,  285,  286,  287,
  288,  289,  290,  291,  292,  293,  294,  294,  294,  298,
  279,  294,  272,  298,  295,  299,  304,  305,  280,  281,
  299,  283,  299,  285,  286,  287,  288,  289,  290,  291,
  292,  293,  294,  297,  296,  298,  279,  298,  279,    0,
  299,  299,  304,  305,  280,  281,  282,  283,  279,  285,
  286,  287,  288,  289,  290,  291,  292,  293,  294,  279,
  279,  294,  299,  279,  299,  299,  294,  297,  304,  305,
  280,  281,  282,  283,  297,  285,  286,  287,  288,  289,
  290,  291,  292,  293,  297,  294,  294,  294,    3,  104,
  216,  103,   86,  232,  304,  305,  280,  281,  282,  283,
  258,  285,  286,  287,  288,  289,  290,  291,  280,  281,
  282,  283,   -1,  285,   -1,   -1,  288,  289,  290,  291,
  304,  305,   -1,   -1,   -1,   -1,   -1,   -1,  280,  281,
  282,  283,  304,  305,  286,  287,  288,  289,  290,  291,
  292,  293,  294,  295,   -1,  297,   -1,   -1,   -1,  301,
  280,  281,  282,  283,   -1,   -1,  286,  287,  288,  289,
  290,  291,  292,  293,  294,  295,   -1,  297,  280,  281,
   -1,  301,   -1,   -1,  286,  287,  288,  289,  290,  291,
  292,  293,  294,  295,   -1,  297,  280,  281,   -1,  301,
   -1,   -1,  286,  287,  288,  289,  290,  291,  292,  293,
  294,  295,   -1,  297,   -1,   -1,   -1,  301,  286,  287,
  288,  289,  290,  291,  292,  293,  294,  295,   -1,  297,
   -1,   -1,   -1,  301,  286,  287,  288,  289,  290,  291,
  292,  293,  294,  295,   -1,  297,   -1,   -1,   -1,  301,
  286,  287,  288,  289,  290,  291,  292,  293,  294,  295,
   -1,  297,   -1,   -1,   -1,  301,  286,  287,  288,  289,
  290,  291,  292,  293,  294,  295,   -1,  297,  286,  287,
   -1,  301,   -1,   -1,  292,  293,  294,  295,   -1,  297,
  286,  287,   -1,  301,   -1,   -1,  292,  293,  294,  295,
   -1,  297,   -1,   -1,   -1,  301,
};
#if YYBTYACC
static const YYINT yyctable[] = {                        -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,
};
#endif
#define YYFINAL 1
#ifndef YYDEBUG
#define YYDEBUG 1
#endif
#define YYMAXTOKEN 309
#define YYUNDFTOKEN 370
#define YYTRANSLATE(a) ((a) > YYMAXTOKEN ? YYUNDFTOKEN : (a))
#if YYDEBUG
static const char *const yyname[] = {

"$end",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"error","INT","CHAR","FLOAT","STRING",
"VOID","RETURN","CLASS","PUBLIC","PRIVATE","PROTECTED","NEW","STRUCT","INPUT",
"OUTPUT","IF","ELSE","WHILE","FOR","BREAK","CONTINUE","INT_NUM","FLOAT_NUM",
"ID","ADD","SUB","MUL","DIV","ASSIGN","MOD","EQ","NE","LT","GT","LE","GE","AND",
"OR","SCOL","COMMA","LP","RP","LF","RF","LB","RB","STR","CHARACTER","BITAND",
"BITOR","NEG","DQ","SQ","NULLP","$accept","PROGRAM","LIST","FUNCTION",
"FUNCTION_PREFIX","DATA_TYPE","PARAMLIST","PARAM","STMTLIST","CLASSDEF",
"CLASSBODY","CLASSMEMBER","ACCESS_MODIFIER","STMT","DECLARATION","ASSIGNMENT",
"EXPR","RETURN_STMT","UNARY_EXPR","PRIMARY_EXPR","UNARY_OP","CONST","IF_STMT",
"ELIF_STMT","ELSE_STMT","WHILE_STMT","FOR_STMT","FUNCTION_CALL","ARGUMENTLIST",
"ARG","FUNCTION_TYPE","POSTFIX_EXPR","ARR_VALUES","STRUCTDEF","STRUCTVAR",
"GLOBAL_DEC","$$1","$$2","$$3","$$4","$$5","$$6","$$7","$$8","$$9","$$10",
"$$11","$$12","$$13","$$14","$$15","$$16","$$17","$$18","$$19","$$20","$$21",
"$$22","$$23","$$24","illegal-symbol",
};
static const char *const yyrule[] = {
"$accept : PROGRAM",
"PROGRAM : LIST",
"PROGRAM : GLOBAL_DEC LIST",
"$$1 :",
"GLOBAL_DEC : $$1 DECLARATION SCOL",
"LIST : LIST FUNCTION",
"LIST : LIST CLASSDEF",
"LIST : LIST STRUCTDEF",
"LIST : LIST FUNCTION",
"LIST :",
"$$2 :",
"FUNCTION : FUNCTION_PREFIX LF $$2 STMTLIST RF",
"$$3 :",
"FUNCTION_PREFIX : FUNCTION_TYPE ID $$3 LP PARAMLIST RP",
"FUNCTION_TYPE : VOID",
"FUNCTION_TYPE : INT",
"FUNCTION_TYPE : CHAR",
"FUNCTION_TYPE : FLOAT",
"FUNCTION_TYPE : STRING",
"FUNCTION_TYPE : INT MUL",
"FUNCTION_TYPE : CHAR MUL",
"FUNCTION_TYPE : ID MUL",
"FUNCTION_TYPE : VOID MUL",
"DATA_TYPE : INT",
"DATA_TYPE : CHAR",
"DATA_TYPE : FLOAT",
"DATA_TYPE : STRING",
"DATA_TYPE : INT MUL",
"DATA_TYPE : CHAR MUL",
"DATA_TYPE : ID MUL",
"DATA_TYPE : VOID MUL",
"DATA_TYPE : INT LB RB",
"DATA_TYPE : CHAR LB RB",
"DATA_TYPE : FLOAT LB RB",
"$$4 :",
"PARAMLIST : PARAM $$4 COMMA PARAMLIST",
"PARAMLIST : PARAM",
"PARAMLIST :",
"PARAM : DATA_TYPE ID",
"STMTLIST : STMT STMTLIST",
"STMTLIST :",
"$$5 :",
"CLASSDEF : CLASS ID LF $$5 CLASSBODY RF",
"CLASSBODY : CLASSMEMBER CLASSBODY",
"CLASSBODY :",
"CLASSMEMBER : ACCESS_MODIFIER DECLARATION SCOL",
"CLASSMEMBER : ACCESS_MODIFIER FUNCTION",
"ACCESS_MODIFIER : PUBLIC",
"ACCESS_MODIFIER : PRIVATE",
"ACCESS_MODIFIER : PROTECTED",
"STRUCTDEF : STRUCT ID LF STRUCTVAR RF SCOL",
"STRUCTVAR : DECLARATION SCOL STRUCTVAR",
"STRUCTVAR : STRUCT ID ID SCOL STRUCTVAR",
"STRUCTVAR :",
"STMT : DECLARATION SCOL",
"STMT : ASSIGNMENT SCOL",
"STMT : EXPR SCOL",
"STMT : RETURN_STMT SCOL",
"STMT : IF_STMT",
"STMT : WHILE_STMT",
"STMT : FOR_STMT",
"STMT : BREAK SCOL",
"STMT : CONTINUE SCOL",
"STMT : INPUT LP ID RP SCOL",
"STMT : INPUT LP ID LB EXPR RB RP SCOL",
"STMT : OUTPUT LP EXPR RP SCOL",
"STMT : OUTPUT LP DQ STR DQ RP SCOL",
"STMT : OUTPUT LP SQ CHARACTER SQ RP SCOL",
"DECLARATION : DATA_TYPE ID",
"DECLARATION : DATA_TYPE ID ASSIGN EXPR",
"DECLARATION : STRING ID ASSIGN STR",
"DECLARATION : DATA_TYPE ID LB INT_NUM RB",
"$$6 :",
"DECLARATION : DATA_TYPE ID LB INT_NUM RB ASSIGN $$6 LF ARR_VALUES RF",
"DECLARATION : ID ID ASSIGN NEW ID LP RP",
"$$7 :",
"ARR_VALUES : CONST $$7 COMMA ARR_VALUES",
"ARR_VALUES : CONST",
"RETURN_STMT : RETURN EXPR",
"RETURN_STMT : RETURN",
"EXPR : EXPR ADD EXPR",
"EXPR : EXPR SUB EXPR",
"EXPR : EXPR MUL EXPR",
"EXPR : EXPR DIV EXPR",
"EXPR : EXPR EQ EXPR",
"EXPR : EXPR NE EXPR",
"EXPR : EXPR LT EXPR",
"EXPR : EXPR GT EXPR",
"EXPR : EXPR LE EXPR",
"EXPR : EXPR GE EXPR",
"EXPR : EXPR MOD EXPR",
"EXPR : EXPR AND EXPR",
"EXPR : EXPR OR EXPR",
"EXPR : EXPR BITAND EXPR",
"EXPR : EXPR BITOR EXPR",
"EXPR : UNARY_EXPR",
"EXPR : PRIMARY_EXPR",
"EXPR : POSTFIX_EXPR",
"POSTFIX_EXPR : FUNCTION_CALL",
"POSTFIX_EXPR : ID LB EXPR RB",
"UNARY_EXPR : UNARY_OP PRIMARY_EXPR",
"PRIMARY_EXPR : ID",
"PRIMARY_EXPR : CONST",
"PRIMARY_EXPR : LP EXPR RP",
"PRIMARY_EXPR : NULLP",
"UNARY_OP : ADD",
"UNARY_OP : SUB",
"UNARY_OP : NEG",
"CONST : INT_NUM",
"CONST : FLOAT_NUM",
"CONST : CHARACTER",
"ASSIGNMENT : ID ASSIGN EXPR",
"ASSIGNMENT : ID LB EXPR RB ASSIGN EXPR",
"$$8 :",
"$$9 :",
"$$10 :",
"$$11 :",
"IF_STMT : IF $$8 LP EXPR RP $$9 LF $$10 STMTLIST RF $$11 ELSE_STMT",
"$$12 :",
"$$13 :",
"$$14 :",
"$$15 :",
"ELIF_STMT : ELSE IF $$12 LP EXPR RP $$13 LF $$14 STMTLIST RF $$15 ELIF_STMT",
"ELIF_STMT :",
"$$16 :",
"ELSE_STMT : ELSE LF $$16 STMTLIST RF",
"ELSE_STMT :",
"$$17 :",
"$$18 :",
"$$19 :",
"WHILE_STMT : WHILE $$17 LP EXPR RP $$18 LF $$19 STMTLIST RF",
"$$20 :",
"$$21 :",
"$$22 :",
"$$23 :",
"FOR_STMT : FOR LP ASSIGNMENT SCOL $$20 EXPR SCOL $$21 ASSIGNMENT RP $$22 LF $$23 STMTLIST RF",
"$$24 :",
"FUNCTION_CALL : ID $$24 LP ARGUMENTLIST RP",
"ARGUMENTLIST : ARG COMMA ARGUMENTLIST",
"ARGUMENTLIST : ARG",
"ARGUMENTLIST :",
"ARG : EXPR",

};
#endif

#if YYDEBUG
int      yydebug;
#endif

int      yyerrflag;
int      yychar;
YYSTYPE  yyval;
YYSTYPE  yylval;
int      yynerrs;

#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
YYLTYPE  yyloc; /* position returned by actions */
YYLTYPE  yylloc; /* position from the lexer */
#endif

#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
#ifndef YYLLOC_DEFAULT
#define YYLLOC_DEFAULT(loc, rhs, n) \
do \
{ \
    if (n == 0) \
    { \
        (loc).first_line   = YYRHSLOC(rhs, 0).last_line; \
        (loc).first_column = YYRHSLOC(rhs, 0).last_column; \
        (loc).last_line    = YYRHSLOC(rhs, 0).last_line; \
        (loc).last_column  = YYRHSLOC(rhs, 0).last_column; \
    } \
    else \
    { \
        (loc).first_line   = YYRHSLOC(rhs, 1).first_line; \
        (loc).first_column = YYRHSLOC(rhs, 1).first_column; \
        (loc).last_line    = YYRHSLOC(rhs, n).last_line; \
        (loc).last_column  = YYRHSLOC(rhs, n).last_column; \
    } \
} while (0)
#endif /* YYLLOC_DEFAULT */
#endif /* defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED) */
#if YYBTYACC

#ifndef YYLVQUEUEGROWTH
#define YYLVQUEUEGROWTH 32
#endif
#endif /* YYBTYACC */

/* define the initial stack-sizes */
#ifdef YYSTACKSIZE
#undef YYMAXDEPTH
#define YYMAXDEPTH  YYSTACKSIZE
#else
#ifdef YYMAXDEPTH
#define YYSTACKSIZE YYMAXDEPTH
#else
#define YYSTACKSIZE 10000
#define YYMAXDEPTH  10000
#endif
#endif

#ifndef YYINITSTACKSIZE
#define YYINITSTACKSIZE 200
#endif

typedef struct {
    unsigned stacksize;
    YYINT    *s_base;
    YYINT    *s_mark;
    YYINT    *s_last;
    YYSTYPE  *l_base;
    YYSTYPE  *l_mark;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    YYLTYPE  *p_base;
    YYLTYPE  *p_mark;
#endif
} YYSTACKDATA;
#if YYBTYACC

struct YYParseState_s
{
    struct YYParseState_s *save;    /* Previously saved parser state */
    YYSTACKDATA            yystack; /* saved parser stack */
    int                    state;   /* saved parser state */
    int                    errflag; /* saved error recovery status */
    int                    lexeme;  /* saved index of the conflict lexeme in the lexical queue */
    YYINT                  ctry;    /* saved index in yyctable[] for this conflict */
};
typedef struct YYParseState_s YYParseState;
#endif /* YYBTYACC */
/* variables for the parser stack */
static YYSTACKDATA yystack;
#if YYBTYACC

/* Current parser state */
static YYParseState *yyps = 0;

/* yypath != NULL: do the full parse, starting at *yypath parser state. */
static YYParseState *yypath = 0;

/* Base of the lexical value queue */
static YYSTYPE *yylvals = 0;

/* Current position at lexical value queue */
static YYSTYPE *yylvp = 0;

/* End position of lexical value queue */
static YYSTYPE *yylve = 0;

/* The last allocated position at the lexical value queue */
static YYSTYPE *yylvlim = 0;

#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
/* Base of the lexical position queue */
static YYLTYPE *yylpsns = 0;

/* Current position at lexical position queue */
static YYLTYPE *yylpp = 0;

/* End position of lexical position queue */
static YYLTYPE *yylpe = 0;

/* The last allocated position at the lexical position queue */
static YYLTYPE *yylplim = 0;
#endif

/* Current position at lexical token queue */
static YYINT  *yylexp = 0;

static YYINT  *yylexemes = 0;
#endif /* YYBTYACC */
#line 812 "parser.y"

void yyerror(const char* msg) {
    sem_errors.push_back("syntax error in line " + to_string(countLine+1));
    for(auto item: sem_errors)
        cout << item << endl;
    fprintf(stderr, "%s\n", msg);
    exit(1);
}

bool check_type(string l, string r){
    if(r == "FLOAT" && l == "CHAR"){
        sem_errors.push_back("Cannot convert type FLOAT to CHAR in line " + to_string(countLine+1));
        return false;
    }
    if(l == "FLOAT" && r == "CHAR"){
        sem_errors.push_back("Cannot convert typr CHAR to FLOAT in line " + to_string(countLine+1));
        return false;
    }
    return true;
}

bool check_declaration(string variable){
    if(function_table[current_function].symbol_table.find(variable) == function_table[current_function].symbol_table.end()){
        sem_errors.push_back("Variable " + variable + " already declared in line " + to_string(countLine + 1));
        sem_errors.push_back("Current Function " + current_function);
        return false;
    }
    return true;
}

bool check_scope(string variable){
    int scope = function_table[current_function].symbol_table[variable].scope;
    stack<int> temp = scope_history;
    while(!temp.empty()){
        if(temp.top() == scope)
            return true;
        temp.pop();
    }
    scope = function_table["global"].symbol_table[variable].scope;
    stack<int> temp1 = scope_history;
    while(!temp1.empty()){
        if(temp1.top() == scope)
            return true;
        temp1.pop();
    }
    sem_errors.push_back("Variable " + variable + " not declared in line " + to_string(countLine + 1));
    return false;
}

bool check_multiple_declaration(string variable){
    if(function_table[current_function].symbol_table.find(variable) != function_table[current_function].symbol_table.end()){
        sem_errors.push_back("Variable " + variable + " already declared in line " + to_string(countLine + 1));
        return true;
    }
    return false;
}

string get_temp(){
    if(free_temp.empty()){
        return "@t" + to_string(variable_count++);
    }
    string t=free_temp.front();
    free_temp.pop(); 
    return t; 
}

int main(int argc, char* argv[]) {
    yyparse();
    for(auto item: sem_errors){
        cout << item << endl;
    }
    if(sem_errors.size() > 0)
        exit(0);
    for(auto x: tac)
        cout << x << endl;

    std::ofstream outfile("symbol_table.txt");
    
    // Check if file opened successfully
    if (!outfile.is_open()) {
        std::cerr << "Error: Unable to open symbol_table.txt" << std::endl;
        return 0;
    }

    // Write header
    outfile << "SYMBOL TABLE\n";
    outfile << "==========================\n\n";

    // Iterate through function_table
    for (const auto& func : function_table) {
        // Function name
        outfile << "Function Name: " << func.first << "\n";
        
        // Function details
        outfile << "  Return Type: " << func.second.return_type << "\n";
        outfile << "  Number of Parameters: " << func.second.num_params << "\n";
        
        // Parameter types
        outfile << "  Parameter Types: ";
        for (const auto& param : func.second.param_types) {
            outfile << param << " ";
        }
        outfile << "\n\n";

        // Local Symbol Table
        outfile << "  Local Symbol Table:\n";
        outfile << "  -------------------\n";
        
        for (const auto& var : func.second.symbol_table) {
            outfile << "    Variable Name: " << var.first << "\n";
            outfile << "      Data Type: " << var.second.data_type << "\n";
            outfile << "      Scope: " << var.second.scope << "\n";
            outfile << "      Size: " << var.second.size << "\n";
            outfile << "      Is Array: " << (var.second.isArray ? "Yes" : "No") << "\n";
            outfile << "      Line Number: " << var.second.line_number << "\n\n";
        }
        
        outfile << "-----------------------------------\n\n";
    }

    // Close the file
    outfile.close();

}
#line 1127 "y.tab.c"

/* For use in generated program */
#define yydepth (int)(yystack.s_mark - yystack.s_base)
#if YYBTYACC
#define yytrial (yyps->save)
#endif /* YYBTYACC */

#if YYDEBUG
#include <stdio.h>	/* needed for printf */
#endif

#include <stdlib.h>	/* needed for malloc, etc */
#include <string.h>	/* needed for memset */

/* allocate initial stack or double stack size, up to YYMAXDEPTH */
static int yygrowstack(YYSTACKDATA *data)
{
    int i;
    unsigned newsize;
    YYINT *newss;
    YYSTYPE *newvs;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    YYLTYPE *newps;
#endif

    if ((newsize = data->stacksize) == 0)
        newsize = YYINITSTACKSIZE;
    else if (newsize >= YYMAXDEPTH)
        return YYENOMEM;
    else if ((newsize *= 2) > YYMAXDEPTH)
        newsize = YYMAXDEPTH;

    i = (int) (data->s_mark - data->s_base);
    newss = (YYINT *)realloc(data->s_base, newsize * sizeof(*newss));
    if (newss == 0)
        return YYENOMEM;

    data->s_base = newss;
    data->s_mark = newss + i;

    newvs = (YYSTYPE *)realloc(data->l_base, newsize * sizeof(*newvs));
    if (newvs == 0)
        return YYENOMEM;

    data->l_base = newvs;
    data->l_mark = newvs + i;

#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    newps = (YYLTYPE *)realloc(data->p_base, newsize * sizeof(*newps));
    if (newps == 0)
        return YYENOMEM;

    data->p_base = newps;
    data->p_mark = newps + i;
#endif

    data->stacksize = newsize;
    data->s_last = data->s_base + newsize - 1;

#if YYDEBUG
    if (yydebug)
        fprintf(stderr, "%sdebug: stack size increased to %d\n", YYPREFIX, newsize);
#endif
    return 0;
}

#if YYPURE || defined(YY_NO_LEAKS)
static void yyfreestack(YYSTACKDATA *data)
{
    free(data->s_base);
    free(data->l_base);
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    free(data->p_base);
#endif
    memset(data, 0, sizeof(*data));
}
#else
#define yyfreestack(data) /* nothing */
#endif /* YYPURE || defined(YY_NO_LEAKS) */
#if YYBTYACC

static YYParseState *
yyNewState(unsigned size)
{
    YYParseState *p = (YYParseState *) malloc(sizeof(YYParseState));
    if (p == NULL) return NULL;

    p->yystack.stacksize = size;
    if (size == 0)
    {
        p->yystack.s_base = NULL;
        p->yystack.l_base = NULL;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        p->yystack.p_base = NULL;
#endif
        return p;
    }
    p->yystack.s_base    = (YYINT *) malloc(size * sizeof(YYINT));
    if (p->yystack.s_base == NULL) return NULL;
    p->yystack.l_base    = (YYSTYPE *) malloc(size * sizeof(YYSTYPE));
    if (p->yystack.l_base == NULL) return NULL;
    memset(p->yystack.l_base, 0, size * sizeof(YYSTYPE));
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    p->yystack.p_base    = (YYLTYPE *) malloc(size * sizeof(YYLTYPE));
    if (p->yystack.p_base == NULL) return NULL;
    memset(p->yystack.p_base, 0, size * sizeof(YYLTYPE));
#endif

    return p;
}

static void
yyFreeState(YYParseState *p)
{
    yyfreestack(&p->yystack);
    free(p);
}
#endif /* YYBTYACC */

#define YYABORT  goto yyabort
#define YYREJECT goto yyabort
#define YYACCEPT goto yyaccept
#define YYERROR  goto yyerrlab
#if YYBTYACC
#define YYVALID        do { if (yyps->save)            goto yyvalid; } while(0)
#define YYVALID_NESTED do { if (yyps->save && \
                                yyps->save->save == 0) goto yyvalid; } while(0)
#endif /* YYBTYACC */

int
YYPARSE_DECL()
{
    int yym, yyn, yystate, yyresult;
#if YYBTYACC
    int yynewerrflag;
    YYParseState *yyerrctx = NULL;
#endif /* YYBTYACC */
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    YYLTYPE  yyerror_loc_range[3]; /* position of error start/end (0 unused) */
#endif
#if YYDEBUG
    const char *yys;

    if ((yys = getenv("YYDEBUG")) != 0)
    {
        yyn = *yys;
        if (yyn >= '0' && yyn <= '9')
            yydebug = yyn - '0';
    }
    if (yydebug)
        fprintf(stderr, "%sdebug[<# of symbols on state stack>]\n", YYPREFIX);
#endif
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    memset(yyerror_loc_range, 0, sizeof(yyerror_loc_range));
#endif

#if YYBTYACC
    yyps = yyNewState(0); if (yyps == 0) goto yyenomem;
    yyps->save = 0;
#endif /* YYBTYACC */
    yym = 0;
    /* yyn is set below */
    yynerrs = 0;
    yyerrflag = 0;
    yychar = YYEMPTY;
    yystate = 0;

#if YYPURE
    memset(&yystack, 0, sizeof(yystack));
#endif

    if (yystack.s_base == NULL && yygrowstack(&yystack) == YYENOMEM) goto yyoverflow;
    yystack.s_mark = yystack.s_base;
    yystack.l_mark = yystack.l_base;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    yystack.p_mark = yystack.p_base;
#endif
    yystate = 0;
    *yystack.s_mark = 0;

yyloop:
    if ((yyn = yydefred[yystate]) != 0) goto yyreduce;
    if (yychar < 0)
    {
#if YYBTYACC
        do {
        if (yylvp < yylve)
        {
            /* we're currently re-reading tokens */
            yylval = *yylvp++;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            yylloc = *yylpp++;
#endif
            yychar = *yylexp++;
            break;
        }
        if (yyps->save)
        {
            /* in trial mode; save scanner results for future parse attempts */
            if (yylvp == yylvlim)
            {   /* Enlarge lexical value queue */
                size_t p = (size_t) (yylvp - yylvals);
                size_t s = (size_t) (yylvlim - yylvals);

                s += YYLVQUEUEGROWTH;
                if ((yylexemes = (YYINT *)realloc(yylexemes, s * sizeof(YYINT))) == NULL) goto yyenomem;
                if ((yylvals   = (YYSTYPE *)realloc(yylvals, s * sizeof(YYSTYPE))) == NULL) goto yyenomem;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                if ((yylpsns   = (YYLTYPE *)realloc(yylpsns, s * sizeof(YYLTYPE))) == NULL) goto yyenomem;
#endif
                yylvp   = yylve = yylvals + p;
                yylvlim = yylvals + s;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                yylpp   = yylpe = yylpsns + p;
                yylplim = yylpsns + s;
#endif
                yylexp  = yylexemes + p;
            }
            *yylexp = (YYINT) YYLEX;
            *yylvp++ = yylval;
            yylve++;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            *yylpp++ = yylloc;
            yylpe++;
#endif
            yychar = *yylexp++;
            break;
        }
        /* normal operation, no conflict encountered */
#endif /* YYBTYACC */
        yychar = YYLEX;
#if YYBTYACC
        } while (0);
#endif /* YYBTYACC */
        if (yychar < 0) yychar = YYEOF;
#if YYDEBUG
        if (yydebug)
        {
            if ((yys = yyname[YYTRANSLATE(yychar)]) == NULL) yys = yyname[YYUNDFTOKEN];
            fprintf(stderr, "%s[%d]: state %d, reading token %d (%s)",
                            YYDEBUGSTR, yydepth, yystate, yychar, yys);
#ifdef YYSTYPE_TOSTRING
#if YYBTYACC
            if (!yytrial)
#endif /* YYBTYACC */
                fprintf(stderr, " <%s>", YYSTYPE_TOSTRING(yychar, yylval));
#endif
            fputc('\n', stderr);
        }
#endif
    }
#if YYBTYACC

    /* Do we have a conflict? */
    if (((yyn = yycindex[yystate]) != 0) && (yyn += yychar) >= 0 &&
        yyn <= YYTABLESIZE && yycheck[yyn] == (YYINT) yychar)
    {
        YYINT ctry;

        if (yypath)
        {
            YYParseState *save;
#if YYDEBUG
            if (yydebug)
                fprintf(stderr, "%s[%d]: CONFLICT in state %d: following successful trial parse\n",
                                YYDEBUGSTR, yydepth, yystate);
#endif
            /* Switch to the next conflict context */
            save = yypath;
            yypath = save->save;
            save->save = NULL;
            ctry = save->ctry;
            if (save->state != yystate) YYABORT;
            yyFreeState(save);

        }
        else
        {

            /* Unresolved conflict - start/continue trial parse */
            YYParseState *save;
#if YYDEBUG
            if (yydebug)
            {
                fprintf(stderr, "%s[%d]: CONFLICT in state %d. ", YYDEBUGSTR, yydepth, yystate);
                if (yyps->save)
                    fputs("ALREADY in conflict, continuing trial parse.\n", stderr);
                else
                    fputs("Starting trial parse.\n", stderr);
            }
#endif
            save                  = yyNewState((unsigned)(yystack.s_mark - yystack.s_base + 1));
            if (save == NULL) goto yyenomem;
            save->save            = yyps->save;
            save->state           = yystate;
            save->errflag         = yyerrflag;
            save->yystack.s_mark  = save->yystack.s_base + (yystack.s_mark - yystack.s_base);
            memcpy (save->yystack.s_base, yystack.s_base, (size_t) (yystack.s_mark - yystack.s_base + 1) * sizeof(YYINT));
            save->yystack.l_mark  = save->yystack.l_base + (yystack.l_mark - yystack.l_base);
            memcpy (save->yystack.l_base, yystack.l_base, (size_t) (yystack.l_mark - yystack.l_base + 1) * sizeof(YYSTYPE));
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            save->yystack.p_mark  = save->yystack.p_base + (yystack.p_mark - yystack.p_base);
            memcpy (save->yystack.p_base, yystack.p_base, (size_t) (yystack.p_mark - yystack.p_base + 1) * sizeof(YYLTYPE));
#endif
            ctry                  = yytable[yyn];
            if (yyctable[ctry] == -1)
            {
#if YYDEBUG
                if (yydebug && yychar >= YYEOF)
                    fprintf(stderr, "%s[%d]: backtracking 1 token\n", YYDEBUGSTR, yydepth);
#endif
                ctry++;
            }
            save->ctry = ctry;
            if (yyps->save == NULL)
            {
                /* If this is a first conflict in the stack, start saving lexemes */
                if (!yylexemes)
                {
                    yylexemes = (YYINT *) malloc((YYLVQUEUEGROWTH) * sizeof(YYINT));
                    if (yylexemes == NULL) goto yyenomem;
                    yylvals   = (YYSTYPE *) malloc((YYLVQUEUEGROWTH) * sizeof(YYSTYPE));
                    if (yylvals == NULL) goto yyenomem;
                    yylvlim   = yylvals + YYLVQUEUEGROWTH;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                    yylpsns   = (YYLTYPE *) malloc((YYLVQUEUEGROWTH) * sizeof(YYLTYPE));
                    if (yylpsns == NULL) goto yyenomem;
                    yylplim   = yylpsns + YYLVQUEUEGROWTH;
#endif
                }
                if (yylvp == yylve)
                {
                    yylvp  = yylve = yylvals;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                    yylpp  = yylpe = yylpsns;
#endif
                    yylexp = yylexemes;
                    if (yychar >= YYEOF)
                    {
                        *yylve++ = yylval;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                        *yylpe++ = yylloc;
#endif
                        *yylexp  = (YYINT) yychar;
                        yychar   = YYEMPTY;
                    }
                }
            }
            if (yychar >= YYEOF)
            {
                yylvp--;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                yylpp--;
#endif
                yylexp--;
                yychar = YYEMPTY;
            }
            save->lexeme = (int) (yylvp - yylvals);
            yyps->save   = save;
        }
        if (yytable[yyn] == ctry)
        {
#if YYDEBUG
            if (yydebug)
                fprintf(stderr, "%s[%d]: state %d, shifting to state %d\n",
                                YYDEBUGSTR, yydepth, yystate, yyctable[ctry]);
#endif
            if (yychar < 0)
            {
                yylvp++;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                yylpp++;
#endif
                yylexp++;
            }
            if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack) == YYENOMEM)
                goto yyoverflow;
            yystate = yyctable[ctry];
            *++yystack.s_mark = (YYINT) yystate;
            *++yystack.l_mark = yylval;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            *++yystack.p_mark = yylloc;
#endif
            yychar  = YYEMPTY;
            if (yyerrflag > 0) --yyerrflag;
            goto yyloop;
        }
        else
        {
            yyn = yyctable[ctry];
            goto yyreduce;
        }
    } /* End of code dealing with conflicts */
#endif /* YYBTYACC */
    if (((yyn = yysindex[yystate]) != 0) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == (YYINT) yychar)
    {
#if YYDEBUG
        if (yydebug)
            fprintf(stderr, "%s[%d]: state %d, shifting to state %d\n",
                            YYDEBUGSTR, yydepth, yystate, yytable[yyn]);
#endif
        if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack) == YYENOMEM) goto yyoverflow;
        yystate = yytable[yyn];
        *++yystack.s_mark = yytable[yyn];
        *++yystack.l_mark = yylval;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        *++yystack.p_mark = yylloc;
#endif
        yychar = YYEMPTY;
        if (yyerrflag > 0)  --yyerrflag;
        goto yyloop;
    }
    if (((yyn = yyrindex[yystate]) != 0) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == (YYINT) yychar)
    {
        yyn = yytable[yyn];
        goto yyreduce;
    }
    if (yyerrflag != 0) goto yyinrecovery;
#if YYBTYACC

    yynewerrflag = 1;
    goto yyerrhandler;
    goto yyerrlab; /* redundant goto avoids 'unused label' warning */

yyerrlab:
    /* explicit YYERROR from an action -- pop the rhs of the rule reduced
     * before looking for error recovery */
    yystack.s_mark -= yym;
    yystate = *yystack.s_mark;
    yystack.l_mark -= yym;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    yystack.p_mark -= yym;
#endif

    yynewerrflag = 0;
yyerrhandler:
    while (yyps->save)
    {
        int ctry;
        YYParseState *save = yyps->save;
#if YYDEBUG
        if (yydebug)
            fprintf(stderr, "%s[%d]: ERROR in state %d, CONFLICT BACKTRACKING to state %d, %d tokens\n",
                            YYDEBUGSTR, yydepth, yystate, yyps->save->state,
                    (int)(yylvp - yylvals - yyps->save->lexeme));
#endif
        /* Memorize most forward-looking error state in case it's really an error. */
        if (yyerrctx == NULL || yyerrctx->lexeme < yylvp - yylvals)
        {
            /* Free old saved error context state */
            if (yyerrctx) yyFreeState(yyerrctx);
            /* Create and fill out new saved error context state */
            yyerrctx                 = yyNewState((unsigned)(yystack.s_mark - yystack.s_base + 1));
            if (yyerrctx == NULL) goto yyenomem;
            yyerrctx->save           = yyps->save;
            yyerrctx->state          = yystate;
            yyerrctx->errflag        = yyerrflag;
            yyerrctx->yystack.s_mark = yyerrctx->yystack.s_base + (yystack.s_mark - yystack.s_base);
            memcpy (yyerrctx->yystack.s_base, yystack.s_base, (size_t) (yystack.s_mark - yystack.s_base + 1) * sizeof(YYINT));
            yyerrctx->yystack.l_mark = yyerrctx->yystack.l_base + (yystack.l_mark - yystack.l_base);
            memcpy (yyerrctx->yystack.l_base, yystack.l_base, (size_t) (yystack.l_mark - yystack.l_base + 1) * sizeof(YYSTYPE));
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            yyerrctx->yystack.p_mark = yyerrctx->yystack.p_base + (yystack.p_mark - yystack.p_base);
            memcpy (yyerrctx->yystack.p_base, yystack.p_base, (size_t) (yystack.p_mark - yystack.p_base + 1) * sizeof(YYLTYPE));
#endif
            yyerrctx->lexeme         = (int) (yylvp - yylvals);
        }
        yylvp          = yylvals   + save->lexeme;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        yylpp          = yylpsns   + save->lexeme;
#endif
        yylexp         = yylexemes + save->lexeme;
        yychar         = YYEMPTY;
        yystack.s_mark = yystack.s_base + (save->yystack.s_mark - save->yystack.s_base);
        memcpy (yystack.s_base, save->yystack.s_base, (size_t) (yystack.s_mark - yystack.s_base + 1) * sizeof(YYINT));
        yystack.l_mark = yystack.l_base + (save->yystack.l_mark - save->yystack.l_base);
        memcpy (yystack.l_base, save->yystack.l_base, (size_t) (yystack.l_mark - yystack.l_base + 1) * sizeof(YYSTYPE));
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        yystack.p_mark = yystack.p_base + (save->yystack.p_mark - save->yystack.p_base);
        memcpy (yystack.p_base, save->yystack.p_base, (size_t) (yystack.p_mark - yystack.p_base + 1) * sizeof(YYLTYPE));
#endif
        ctry           = ++save->ctry;
        yystate        = save->state;
        /* We tried shift, try reduce now */
        if ((yyn = yyctable[ctry]) >= 0) goto yyreduce;
        yyps->save     = save->save;
        save->save     = NULL;
        yyFreeState(save);

        /* Nothing left on the stack -- error */
        if (!yyps->save)
        {
#if YYDEBUG
            if (yydebug)
                fprintf(stderr, "%sdebug[%d,trial]: trial parse FAILED, entering ERROR mode\n",
                                YYPREFIX, yydepth);
#endif
            /* Restore state as it was in the most forward-advanced error */
            yylvp          = yylvals   + yyerrctx->lexeme;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            yylpp          = yylpsns   + yyerrctx->lexeme;
#endif
            yylexp         = yylexemes + yyerrctx->lexeme;
            yychar         = yylexp[-1];
            yylval         = yylvp[-1];
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            yylloc         = yylpp[-1];
#endif
            yystack.s_mark = yystack.s_base + (yyerrctx->yystack.s_mark - yyerrctx->yystack.s_base);
            memcpy (yystack.s_base, yyerrctx->yystack.s_base, (size_t) (yystack.s_mark - yystack.s_base + 1) * sizeof(YYINT));
            yystack.l_mark = yystack.l_base + (yyerrctx->yystack.l_mark - yyerrctx->yystack.l_base);
            memcpy (yystack.l_base, yyerrctx->yystack.l_base, (size_t) (yystack.l_mark - yystack.l_base + 1) * sizeof(YYSTYPE));
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            yystack.p_mark = yystack.p_base + (yyerrctx->yystack.p_mark - yyerrctx->yystack.p_base);
            memcpy (yystack.p_base, yyerrctx->yystack.p_base, (size_t) (yystack.p_mark - yystack.p_base + 1) * sizeof(YYLTYPE));
#endif
            yystate        = yyerrctx->state;
            yyFreeState(yyerrctx);
            yyerrctx       = NULL;
        }
        yynewerrflag = 1;
    }
    if (yynewerrflag == 0) goto yyinrecovery;
#endif /* YYBTYACC */

    YYERROR_CALL("syntax error");
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    yyerror_loc_range[1] = yylloc; /* lookahead position is error start position */
#endif

#if !YYBTYACC
    goto yyerrlab; /* redundant goto avoids 'unused label' warning */
yyerrlab:
#endif
    ++yynerrs;

yyinrecovery:
    if (yyerrflag < 3)
    {
        yyerrflag = 3;
        for (;;)
        {
            if (((yyn = yysindex[*yystack.s_mark]) != 0) && (yyn += YYERRCODE) >= 0 &&
                    yyn <= YYTABLESIZE && yycheck[yyn] == (YYINT) YYERRCODE)
            {
#if YYDEBUG
                if (yydebug)
                    fprintf(stderr, "%s[%d]: state %d, error recovery shifting to state %d\n",
                                    YYDEBUGSTR, yydepth, *yystack.s_mark, yytable[yyn]);
#endif
                if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack) == YYENOMEM) goto yyoverflow;
                yystate = yytable[yyn];
                *++yystack.s_mark = yytable[yyn];
                *++yystack.l_mark = yylval;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                /* lookahead position is error end position */
                yyerror_loc_range[2] = yylloc;
                YYLLOC_DEFAULT(yyloc, yyerror_loc_range, 2); /* position of error span */
                *++yystack.p_mark = yyloc;
#endif
                goto yyloop;
            }
            else
            {
#if YYDEBUG
                if (yydebug)
                    fprintf(stderr, "%s[%d]: error recovery discarding state %d\n",
                                    YYDEBUGSTR, yydepth, *yystack.s_mark);
#endif
                if (yystack.s_mark <= yystack.s_base) goto yyabort;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                /* the current TOS position is the error start position */
                yyerror_loc_range[1] = *yystack.p_mark;
#endif
#if defined(YYDESTRUCT_CALL)
#if YYBTYACC
                if (!yytrial)
#endif /* YYBTYACC */
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                    YYDESTRUCT_CALL("error: discarding state",
                                    yystos[*yystack.s_mark], yystack.l_mark, yystack.p_mark);
#else
                    YYDESTRUCT_CALL("error: discarding state",
                                    yystos[*yystack.s_mark], yystack.l_mark);
#endif /* defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED) */
#endif /* defined(YYDESTRUCT_CALL) */
                --yystack.s_mark;
                --yystack.l_mark;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                --yystack.p_mark;
#endif
            }
        }
    }
    else
    {
        if (yychar == YYEOF) goto yyabort;
#if YYDEBUG
        if (yydebug)
        {
            if ((yys = yyname[YYTRANSLATE(yychar)]) == NULL) yys = yyname[YYUNDFTOKEN];
            fprintf(stderr, "%s[%d]: state %d, error recovery discarding token %d (%s)\n",
                            YYDEBUGSTR, yydepth, yystate, yychar, yys);
        }
#endif
#if defined(YYDESTRUCT_CALL)
#if YYBTYACC
        if (!yytrial)
#endif /* YYBTYACC */
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
            YYDESTRUCT_CALL("error: discarding token", yychar, &yylval, &yylloc);
#else
            YYDESTRUCT_CALL("error: discarding token", yychar, &yylval);
#endif /* defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED) */
#endif /* defined(YYDESTRUCT_CALL) */
        yychar = YYEMPTY;
        goto yyloop;
    }

yyreduce:
    yym = yylen[yyn];
#if YYDEBUG
    if (yydebug)
    {
        fprintf(stderr, "%s[%d]: state %d, reducing by rule %d (%s)",
                        YYDEBUGSTR, yydepth, yystate, yyn, yyrule[yyn]);
#ifdef YYSTYPE_TOSTRING
#if YYBTYACC
        if (!yytrial)
#endif /* YYBTYACC */
            if (yym > 0)
            {
                int i;
                fputc('<', stderr);
                for (i = yym; i > 0; i--)
                {
                    if (i != yym) fputs(", ", stderr);
                    fputs(YYSTYPE_TOSTRING(yystos[yystack.s_mark[1-i]],
                                           yystack.l_mark[1-i]), stderr);
                }
                fputc('>', stderr);
            }
#endif
        fputc('\n', stderr);
    }
#endif
    if (yym > 0)
        yyval = yystack.l_mark[1-yym];
    else
        memset(&yyval, 0, sizeof yyval);
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)

    /* Perform position reduction */
    memset(&yyloc, 0, sizeof(yyloc));
#if YYBTYACC
    if (!yytrial)
#endif /* YYBTYACC */
    {
        YYLLOC_DEFAULT(yyloc, &yystack.p_mark[-yym], yym);
        /* just in case YYERROR is invoked within the action, save
           the start of the rhs as the error start position */
        yyerror_loc_range[1] = yystack.p_mark[1-yym];
    }
#endif

    switch (yyn)
    {
case 3:
#line 158 "parser.y"
	{
                        current_function= "global"; scope_counter++;
                    }
#line 1802 "y.tab.c"
break;
case 4:
#line 161 "parser.y"
	{
                        global_table[string(yystack.l_mark[-1].node.lexeme)] = {string(yystack.l_mark[-2].node.type), string(yystack.l_mark[-2].node.lexeme)};
                        scope_counter--;
                    }
#line 1810 "y.tab.c"
break;
case 10:
#line 172 "parser.y"
	{
                        hasReturnStmt = 0;
                        scope_history.push(++scope_counter);
                        strcpy(yyval.node.lexeme, yystack.l_mark[-1].node.lexeme);
                    }
#line 1819 "y.tab.c"
break;
case 11:
#line 177 "parser.y"
	{
                        if(function_table[string(yystack.l_mark[-4].node.lexeme)].return_type != "VOID" && hasReturnStmt == 0){
                            sem_errors.push_back("Function type " + function_table[string(yystack.l_mark[-4].node.lexeme)].return_type + "\n");
                            sem_errors.push_back("Function " + string(yystack.l_mark[-4].node.lexeme) + " does not have a return statement in line " + to_string(countLine + 1));
                        }
                        if(function_table[string(yystack.l_mark[-4].node.lexeme)].return_type == "VOID" && hasReturnStmt == 1){
                            sem_errors.push_back("Function type " + function_table[string(yystack.l_mark[-4].node.lexeme)].return_type + "\n");
                            sem_errors.push_back("Function " + string(yystack.l_mark[-4].node.lexeme) + " has a return statement in line " + to_string(countLine + 1));
                        }
                        scope_history.pop();
                        scope_counter--;
                        tac.push_back("end:\n");
                        hasReturnStmt = 0;
                    }
#line 1837 "y.tab.c"
break;
case 12:
#line 191 "parser.y"
	{
                        if(current_class != ""){
                            tac.push_back(current_class + "." + string(yystack.l_mark[0].node.lexeme) + ":" + " " + string(yystack.l_mark[-1].node.type));
                            current_function = current_class + "." + string(yystack.l_mark[0].node.lexeme);
                        }
                        else {
                            if(function_table.find(string(yystack.l_mark[0].node.lexeme)) != function_table.end()){
                                sem_errors.push_back("Function " + string(yystack.l_mark[0].node.lexeme) + " already declared in line " + to_string(countLine + 1));
                            }
                            tac.push_back(string(yystack.l_mark[0].node.lexeme) + ":" + " " + string(yystack.l_mark[-1].node.type));
                            current_function = string(yystack.l_mark[0].node.lexeme);
                        }

                    }
#line 1855 "y.tab.c"
break;
case 13:
#line 204 "parser.y"
	{
                        function_table[current_function].return_type = string(yystack.l_mark[-5].node.type);
                        function_table[current_function].num_params = yystack.l_mark[-1].node.nParams;
                        strcpy(yyval.node.lexeme, (current_class == "" ? string(yystack.l_mark[-4].node.lexeme) : current_class + "." + string(yystack.l_mark[-4].node.lexeme)).c_str());
                    }
#line 1864 "y.tab.c"
break;
case 14:
#line 210 "parser.y"
	{
                    sprintf(yyval.node.type, "VOID");
                    strcpy(yyval.node.type, "VOID");
                }
#line 1872 "y.tab.c"
break;
case 15:
#line 214 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                }
#line 1879 "y.tab.c"
break;
case 16:
#line 217 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                }
#line 1886 "y.tab.c"
break;
case 17:
#line 220 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                }
#line 1893 "y.tab.c"
break;
case 18:
#line 223 "parser.y"
	{
                    strcpy(yyval.node.type, "STRING");
                }
#line 1900 "y.tab.c"
break;
case 19:
#line 226 "parser.y"
	{
                    strcpy(yyval.node.type, "INT*");
                }
#line 1907 "y.tab.c"
break;
case 20:
#line 229 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR*");
                }
#line 1914 "y.tab.c"
break;
case 21:
#line 232 "parser.y"
	{
                    strcpy(yyval.node.type, "STRUCT*");
                }
#line 1921 "y.tab.c"
break;
case 22:
#line 235 "parser.y"
	{
                    strcpy(yyval.node.type, "VOID*");
                }
#line 1928 "y.tab.c"
break;
case 23:
#line 238 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                }
#line 1935 "y.tab.c"
break;
case 24:
#line 241 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                }
#line 1942 "y.tab.c"
break;
case 25:
#line 244 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                }
#line 1949 "y.tab.c"
break;
case 26:
#line 247 "parser.y"
	{
                    strcpy(yyval.node.type, "STRING");
                }
#line 1956 "y.tab.c"
break;
case 27:
#line 250 "parser.y"
	{
                    strcpy(yyval.node.type, "INT*");
                }
#line 1963 "y.tab.c"
break;
case 28:
#line 253 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR*");
                }
#line 1970 "y.tab.c"
break;
case 29:
#line 256 "parser.y"
	{
                    strcpy(yyval.node.type, "STRUCT*");
                }
#line 1977 "y.tab.c"
break;
case 30:
#line 259 "parser.y"
	{
                    strcpy(yyval.node.type, "VOID*");
                }
#line 1984 "y.tab.c"
break;
case 31:
#line 262 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                }
#line 1991 "y.tab.c"
break;
case 32:
#line 265 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                }
#line 1998 "y.tab.c"
break;
case 33:
#line 268 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                }
#line 2005 "y.tab.c"
break;
case 34:
#line 271 "parser.y"
	{
                    function_table[current_function].param_types.push_back(string(yystack.l_mark[0].node.type));
                    function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[0].node.type), scope_counter +1, 0, 0, countLine + 1};
                    tac.push_back("- arg " + string(yystack.l_mark[0].node.type) + " " + string(yystack.l_mark[0].node.lexeme));
                }
#line 2014 "y.tab.c"
break;
case 35:
#line 275 "parser.y"
	{
                    yyval.node.nParams = yystack.l_mark[0].node.nParams + 1;
                }
#line 2021 "y.tab.c"
break;
case 36:
#line 278 "parser.y"
	{
                    function_table[current_function].param_types.push_back(string(yystack.l_mark[0].node.type));
                    function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[0].node.type), scope_counter +1, 0, 0, countLine + 1};
                    tac.push_back("- arg " + string(yystack.l_mark[0].node.type) + " " + string(yystack.l_mark[0].node.lexeme));
                    yyval.node.nParams = 1;
                }
#line 2031 "y.tab.c"
break;
case 38:
#line 285 "parser.y"
	{
                    yyval.node.nParams = 1;
                    strcpy(yyval.node.type, yystack.l_mark[-1].node.type);
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2040 "y.tab.c"
break;
case 41:
#line 292 "parser.y"
	{
                    current_class = string(yystack.l_mark[-1].node.lexeme);
                    if(class_table.find(current_class) != class_table.end()){
                        sem_errors.push_back("Class " + current_class + " already declared in line " + to_string(countLine + 1));
                    }
                }
#line 2050 "y.tab.c"
break;
case 42:
#line 297 "parser.y"
	{
                    current_class = "";
                        
                }
#line 2058 "y.tab.c"
break;
case 45:
#line 303 "parser.y"
	{
                    if(class_table[current_class].field_table.find(string(yystack.l_mark[-1].node.lexeme)) != class_table[current_class].field_table.end()){
                        sem_errors.push_back("Field " + string(yystack.l_mark[-1].node.lexeme) + " already declared in class " + current_class + " in line " + to_string(countLine + 1));
                    }
                    class_table[current_class].field_table[string(yystack.l_mark[-1].node.lexeme)] = {string(yystack.l_mark[-2].node.lexeme), string(yystack.l_mark[-2].node.type), countLine + 1};
                }
#line 2068 "y.tab.c"
break;
case 46:
#line 309 "parser.y"
	{
                    if(class_table[current_class].method_table.find(string(yystack.l_mark[0].node.lexeme)) != class_table[current_class].method_table.end()){
                        sem_errors.push_back("Method " + string(yystack.l_mark[0].node.lexeme) + " already declared in class " + current_class + " in line " + to_string(countLine + 1));
                    }
                    class_table[current_class].method_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[0].node.type), yystack.l_mark[0].node.nParams, current_func_param_types, string(yystack.l_mark[-1].node.lexeme)};
                }
#line 2078 "y.tab.c"
break;
case 61:
#line 329 "parser.y"
	{
                    if(loop_break.empty()){
                        sem_errors.push_back("Break statement outside loop in line " + to_string(countLine + 1));
                    }
                    else{
                        tac.push_back("GOTO #L" + to_string(loop_break.top()));
                    }
                }
#line 2090 "y.tab.c"
break;
case 62:
#line 337 "parser.y"
	{
                    if(loop_continue.empty()){
                        sem_errors.push_back("Continue statement outside loop in line " + to_string(countLine + 1));
                    }
                    else{
                        tac.push_back("GOTO #L" + to_string(loop_continue.top()));
                    }
                }
#line 2102 "y.tab.c"
break;
case 63:
#line 345 "parser.y"
	{
                    check_declaration(string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back("input " + string(yystack.l_mark[-2].node.lexeme) + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)].data_type);
                }
#line 2110 "y.tab.c"
break;
case 64:
#line 349 "parser.y"
	{
                    check_declaration(string(yystack.l_mark[-5].node.lexeme));
                    string temp = get_temp();
                    tac.push_back("input " + temp + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type);
                    tac.push_back(string(yystack.l_mark[-5].node.lexeme) + "[" + string(yystack.l_mark[-3].node.lexeme) + "] = " + temp + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type);
                    free_temp.push(temp);
                }
#line 2121 "y.tab.c"
break;
case 65:
#line 356 "parser.y"
	{
                    tac.push_back("output " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-2].node.type));
                }
#line 2128 "y.tab.c"
break;
case 66:
#line 359 "parser.y"
	{
                    tac.push_back("output " + string(yystack.l_mark[-3].node.lexeme) + " STR");
                }
#line 2135 "y.tab.c"
break;
case 67:
#line 362 "parser.y"
	{
                    tac.push_back("output " + string(yystack.l_mark[-3].node.lexeme) + " CHAR");
                }
#line 2142 "y.tab.c"
break;
case 68:
#line 366 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    tac.push_back("- " + string(yystack.l_mark[-1].node.type) + " " + string(yystack.l_mark[0].node.lexeme));
                    function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[-1].node.type), scope_counter, 0, 0, countLine + 1};
                }
#line 2151 "y.tab.c"
break;
case 69:
#line 371 "parser.y"
	{
                    if(string(yystack.l_mark[0].node.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    strcpy(yyval.node.lexeme, yystack.l_mark[-2].node.lexeme);
                    check_type(string(yystack.l_mark[-3].node.type), string(yystack.l_mark[0].node.type));
                    tac.push_back("- " + string(yystack.l_mark[-3].node.type) + " " + string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back(string(yystack.l_mark[-2].node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " " + string(yystack.l_mark[-3].node.type));
                    function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)] = {string(yystack.l_mark[-3].node.type), scope_counter, 0, 0, countLine + 1};

                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2167 "y.tab.c"
break;
case 70:
#line 383 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[-2].node.lexeme);
                    check_multiple_declaration(string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back("- STR " + string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back(string(yystack.l_mark[-2].node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " STR");
                    function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)] = {"STR", scope_counter, 0, 0, countLine + 1};
                }
#line 2178 "y.tab.c"
break;
case 71:
#line 390 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[-3].node.lexeme);
                    check_multiple_declaration(string(yystack.l_mark[-3].node.lexeme));
                    tac.push_back("- " + string(yystack.l_mark[-4].node.type) + " " + string(yystack.l_mark[-3].node.lexeme) + "[" + string(yystack.l_mark[-1].node.lexeme) + "]");
                    function_table[current_function].symbol_table[string(yystack.l_mark[-3].node.lexeme)] = {string(yystack.l_mark[-4].node.type), scope_counter, stoi(string(yystack.l_mark[-1].node.lexeme)), 1, countLine + 1};
                }
#line 2188 "y.tab.c"
break;
case 72:
#line 396 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[-4].node.lexeme);
                    check_multiple_declaration(string(yystack.l_mark[-4].node.lexeme));
                    tac.push_back("- " + string(yystack.l_mark[-5].node.type) + " " + string(yystack.l_mark[-4].node.lexeme) + "[" + string(yystack.l_mark[-2].node.lexeme) + "]");
                    function_table[current_function].symbol_table[string(yystack.l_mark[-4].node.lexeme)] = {string(yystack.l_mark[-5].node.type), scope_counter, stoi(string(yystack.l_mark[-2].node.lexeme)), 1, countLine + 1};
                    curr_array = string(yystack.l_mark[-4].node.lexeme);
                }
#line 2199 "y.tab.c"
break;
case 74:
#line 403 "parser.y"
	{
                    if(strcmp(yystack.l_mark[-6].node.lexeme, yystack.l_mark[-2].node.lexeme) != 0){
                        sem_errors.push_back("Cannot assign " + string(yystack.l_mark[-2].node.lexeme) + " to " + string(yystack.l_mark[-6].node.lexeme) + " in line " + to_string(countLine + 1));
                    }
                    tac.push_back("= " + string(yystack.l_mark[-6].node.lexeme) + " object " + string(yystack.l_mark[-5].node.lexeme));
                }
#line 2209 "y.tab.c"
break;
case 75:
#line 409 "parser.y"
	{
                    check_type(function_table[current_function].symbol_table[curr_array].data_type, string(yystack.l_mark[0].node.type));
                    tac.push_back(curr_array + "[" + to_string(arr_index++) + "] = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[curr_array].data_type);
                    if(arr_index > function_table[current_function].symbol_table[curr_array].size){
                        sem_errors.push_back("Array " + curr_array + " out of bounds in line " + to_string(countLine + 1));
                    }
                }
#line 2220 "y.tab.c"
break;
case 77:
#line 416 "parser.y"
	{
                    check_type(function_table[current_function].symbol_table[curr_array].data_type, string(yystack.l_mark[0].node.type));
                    tac.push_back(curr_array + "[" + to_string(arr_index++) + "] = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[curr_array].data_type);
                    if(arr_index > function_table[current_function].symbol_table[curr_array].size){
                        sem_errors.push_back("Array " + curr_array + " out of bounds in line " + to_string(countLine + 1));
                    }
                }
#line 2231 "y.tab.c"
break;
case 78:
#line 423 "parser.y"
	{
                    check_type(function_table[current_function].return_type, string(yystack.l_mark[0].node.type));
                    tac.push_back("return " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].return_type);
                    hasReturnStmt = 1;
                }
#line 2240 "y.tab.c"
break;
case 79:
#line 428 "parser.y"
	{
                    if(function_table[current_function].return_type != "VOID"){
                        sem_errors.push_back("Function " + current_function + " expects a return statement in line " + to_string(countLine + 1));
                    }
                    tac.push_back("return " + function_table[current_function].return_type);
                    hasReturnStmt = 0;
                }
#line 2251 "y.tab.c"
break;
case 80:
#line 435 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2262 "y.tab.c"
break;
case 81:
#line 442 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2273 "y.tab.c"
break;
case 82:
#line 449 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2284 "y.tab.c"
break;
case 83:
#line 456 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2295 "y.tab.c"
break;
case 84:
#line 463 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2306 "y.tab.c"
break;
case 85:
#line 470 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2317 "y.tab.c"
break;
case 86:
#line 477 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2328 "y.tab.c"
break;
case 87:
#line 484 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2339 "y.tab.c"
break;
case 88:
#line 491 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2350 "y.tab.c"
break;
case 89:
#line 498 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2361 "y.tab.c"
break;
case 90:
#line 505 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2372 "y.tab.c"
break;
case 91:
#line 512 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    string l0 = "#L" + to_string(++label_counter);
                    string l1 = "#L" + to_string(++label_counter);
                    string l2 = "#L" + to_string(++label_counter);
                    string l3 = "#L" + to_string(++label_counter);
                    string dtype = string(yyval.node.type);

                    tac.push_back("if " + string(yystack.l_mark[-2].node.lexeme) + " GOTO " + l3 + " else GOTO " + l1);
                    tac.push_back(l3 + ":");
                    tac.push_back("if " + string(yystack.l_mark[0].node.lexeme) + " GOTO " + l0 + " else GOTO " + l1);
                    tac.push_back(l0 + ":");
                    tac.push_back(string(yyval.node.lexeme) + " = 1 " + dtype);
                    tac.push_back("GOTO " + l2);
                    tac.push_back(l1 + ":");
                    tac.push_back(string(yyval.node.lexeme) + " = 0 " + dtype);
                    tac.push_back(l2 + ":");

                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));

                    label_counter++;
                }
#line 2399 "y.tab.c"
break;
case 92:
#line 535 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node)
                    string l0 = "#L" + to_string(++label_counter);
                    string l1 = "#L" + to_string(++label_counter);
                    string l2 = "#L" + to_string(++label_counter);
                    string l3 = "#L" + to_string(++label_counter);
                    string dtype = string(yyval.node.type);

                    tac.push_back("if " + string(yystack.l_mark[-2].node.lexeme) + " GOTO " + l0 + " else GOTO " + l3);
                    tac.push_back(l3 + ":");
                    tac.push_back("if " + string(yystack.l_mark[0].node.lexeme) + " GOTO " + l0 + " else GOTO " + l1);
                    tac.push_back(l0 + ":");
                    tac.push_back(string(yyval.node.lexeme) + " = 1 " + dtype);
                    tac.push_back("GOTO " + l2);
                    tac.push_back(l1 + ":");
                    tac.push_back(string(yyval.node.lexeme) + " = 0 " + dtype);
                    tac.push_back(l2 + ":");

                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));

                    label_counter++;
                }
#line 2426 "y.tab.c"
break;
case 93:
#line 558 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2437 "y.tab.c"
break;
case 94:
#line 565 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2448 "y.tab.c"
break;
case 95:
#line 572 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2457 "y.tab.c"
break;
case 96:
#line 577 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2466 "y.tab.c"
break;
case 97:
#line 582 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2475 "y.tab.c"
break;
case 98:
#line 587 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2483 "y.tab.c"
break;
case 99:
#line 591 "parser.y"
	{
                    /* if(check_declaration(string($1.lexeme)) && function_table[current_function].symbol_table[string($1.lexeme)].isArray == 0){*/
                    /*     sem_errors.push_back("Variable " + string($1.lexeme) + " is not an array in line " + to_string(countLine + 1));*/
                    /* }*/
                    check_scope(string(yystack.l_mark[-3].node.lexeme));
                    strcpy(yyval.node.type, function_table[current_function].symbol_table[string(yystack.l_mark[-3].node.lexeme)].data_type.c_str());
                    sprintf(yyval.node.lexeme, get_temp().c_str());
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-3].node.lexeme) + "[" + string(yystack.l_mark[-1].node.lexeme) + "] " + yyval.node.type);

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2498 "y.tab.c"
break;
case 100:
#line 602 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, get_temp().c_str());
                    if(string(yystack.l_mark[-1].node.lexeme) == "~" || string(yystack.l_mark[-1].node.lexeme) == "-"){
                        tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    }
                    else if(string(yystack.l_mark[-1].node.lexeme) == "+"){
                        tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    }
                    else{
                        tac.push_back(string(yyval.node.lexeme) + " = ~ " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    }

                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2517 "y.tab.c"
break;
case 101:
#line 617 "parser.y"
	{
                    /*check_declaration(string($1.lexeme));*/
                    strcpy(yyval.node.type, function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)].data_type.c_str());
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2526 "y.tab.c"
break;
case 102:
#line 622 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    
                    string t = get_temp();
                    sprintf(yyval.node.lexeme, t.c_str());
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " " + string(yystack.l_mark[0].node.type));
                    const_temps.insert(t);
                }
#line 2538 "y.tab.c"
break;
case 103:
#line 630 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[-1].node.type);
                    strcpy(yyval.node.lexeme, yystack.l_mark[-1].node.lexeme);
                }
#line 2546 "y.tab.c"
break;
case 104:
#line 634 "parser.y"
	{
                    strcpy(yyval.node.type, "NULL");
                    strcpy(yyval.node.lexeme, "NULL");
                }
#line 2554 "y.tab.c"
break;
case 108:
#line 641 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2562 "y.tab.c"
break;
case 109:
#line 645 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2570 "y.tab.c"
break;
case 110:
#line 649 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2578 "y.tab.c"
break;
case 111:
#line 653 "parser.y"
	{
                    if(string(yystack.l_mark[0].node.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    check_type(function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)].data_type, string(yystack.l_mark[0].node.type));
                    check_scope(string(yystack.l_mark[-2].node.lexeme));
                    check_declaration(string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back(string(yystack.l_mark[-2].node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)].data_type);

                    /*checking if we can free any temp variables*/
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@')
                        free_temp.push(string(yystack.l_mark[0].node.lexeme));

                }
#line 2596 "y.tab.c"
break;
case 112:
#line 667 "parser.y"
	{
                    if(string(yystack.l_mark[0].node.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    check_type(function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type, string(yystack.l_mark[0].node.type));
                    /* if(check_declaration(string($1.lexeme)) && function_table[current_function].symbol_table[string($1.lexeme)].isArray == 0){*/
                    /*     sem_errors.push_back("Variable " + string($1.lexeme) + " is not an array in line " + to_string(countLine + 1));*/
                    /* }*/
                    check_scope(string(yystack.l_mark[-5].node.lexeme));
                    tac.push_back(string(yystack.l_mark[-5].node.lexeme) + "[" + string(yystack.l_mark[-3].node.lexeme) + "] = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type);
                        
                }
#line 2612 "y.tab.c"
break;
case 113:
#line 679 "parser.y"
	{
                    sprintf(yystack.l_mark[0].node.parentNext, "#L%d", label_counter++);
                }
#line 2619 "y.tab.c"
break;
case 114:
#line 682 "parser.y"
	{
                    tac.push_back("if " + string(yystack.l_mark[-1].node.lexeme) + " GOTO #L" + to_string(label_counter) + " else GOTO #L" + to_string(label_counter+1));
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++); 
                    tac.push_back(string(yystack.l_mark[-1].node.if_body) + ":");
                }
#line 2629 "y.tab.c"
break;
case 115:
#line 688 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2636 "y.tab.c"
break;
case 116:
#line 691 "parser.y"
	{
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.parentNext));
                    tac.push_back(string(yystack.l_mark[-6].node.else_body) + ":");
                    scope_history.pop(); 
                    scope_counter--;
                }
#line 2646 "y.tab.c"
break;
case 117:
#line 697 "parser.y"
	{
                    tac.push_back(string(yystack.l_mark[-11].node.parentNext) + ":");
                }
#line 2653 "y.tab.c"
break;
case 118:
#line 701 "parser.y"
	{
                    string str = tac[tac.size()-2].substr(5);
                    char* hold = const_cast<char*>(str.c_str());
                    sprintf(yystack.l_mark[0].node.parentNext, "#L%d", label_counter++);
                }
#line 2662 "y.tab.c"
break;
case 119:
#line 705 "parser.y"
	{
                    tac.push_back("if " + string(yystack.l_mark[-1].node.lexeme) + " GOTO #L" + to_string(label_counter) + " else GOTO #L" + to_string(label_counter+1));
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++);
                    tac.push_back(string(yystack.l_mark[-1].node.if_body) + ":");

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2674 "y.tab.c"
break;
case 120:
#line 712 "parser.y"
	{
                    scope_history.push(++scope_counter);
                
                }
#line 2682 "y.tab.c"
break;
case 121:
#line 715 "parser.y"
	{
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.parentNext));
                    tac.push_back(string(yystack.l_mark[-6].node.else_body) + ":");
                    scope_history.pop();
                    scope_counter--;
                }
#line 2692 "y.tab.c"
break;
case 124:
#line 722 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2699 "y.tab.c"
break;
case 125:
#line 725 "parser.y"
	{
                    scope_history.pop(); 
                    scope_counter--;
                }
#line 2707 "y.tab.c"
break;
case 127:
#line 730 "parser.y"
	{
                    sprintf(yystack.l_mark[0].node.loop_body, "#L%d", label_counter);
                    loop_continue.push(label_counter++);
                    tac.push_back("\n" + string(yystack.l_mark[0].node.loop_body) + ":");
                }
#line 2716 "y.tab.c"
break;
case 128:
#line 734 "parser.y"
	{
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    loop_break.push(label_counter);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++);

                    tac.push_back("\nif " + string(yystack.l_mark[-1].node.lexeme) + " GOTO " + string(yystack.l_mark[-1].node.if_body) + " else GOTO " + string(yystack.l_mark[-1].node.else_body));
                    tac.push_back("\n" + string(yystack.l_mark[-1].node.if_body) + ":");

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2730 "y.tab.c"
break;
case 129:
#line 743 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2737 "y.tab.c"
break;
case 130:
#line 745 "parser.y"
	{
                    scope_history.pop();
                    scope_counter--;
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.loop_body));
                    tac.push_back(string(yystack.l_mark[-6].node.else_body) + ":");
                    loop_break.pop();
                    loop_continue.pop();
                }
#line 2749 "y.tab.c"
break;
case 131:
#line 753 "parser.y"
	{
                    sprintf(yystack.l_mark[-3].node.loop_body, "#L%d", label_counter++);
                    tac.push_back("\n" + string(yystack.l_mark[-3].node.loop_body) + ":");
                }
#line 2757 "y.tab.c"
break;
case 132:
#line 756 "parser.y"
	{
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    loop_break.push(label_counter);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++);
                    tac.push_back("\nif " + string(yystack.l_mark[-1].node.lexeme) + " GOTO " + string(yystack.l_mark[-1].node.if_body) + " else GOTO " + string(yystack.l_mark[-1].node.else_body));
                    
                    sprintf(yystack.l_mark[-1].node.loop_body, "#L%d", label_counter);
                    loop_continue.push(label_counter++);
                    tac.push_back("\n" + string(yystack.l_mark[-1].node.if_body) + ":");

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2773 "y.tab.c"
break;
case 133:
#line 767 "parser.y"
	{
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.loop_body));
                    tac.push_back("\n" + string(yystack.l_mark[-4].node.if_body) + ":");
                }
#line 2781 "y.tab.c"
break;
case 134:
#line 770 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2788 "y.tab.c"
break;
case 135:
#line 772 "parser.y"
	{
                    scope_history.pop();
                    scope_counter--;
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.loop_body));
                    tac.push_back(string(yystack.l_mark[-9].node.else_body) + ":");
                    loop_break.pop();
                    loop_continue.pop();
                }
#line 2800 "y.tab.c"
break;
case 136:
#line 780 "parser.y"
	{
                    function_call.push({string(yystack.l_mark[0].node.lexeme), function_table[string(yystack.l_mark[0].node.lexeme)].param_types});
                }
#line 2807 "y.tab.c"
break;
case 137:
#line 782 "parser.y"
	{
                    strcpy(yyval.node.type, function_table[string(yystack.l_mark[-4].node.lexeme)].return_type.c_str());
                    function_call.pop();
                    sprintf(yyval.node.lexeme, "%s", get_temp().c_str());
                    tac.push_back(string(yyval.node.lexeme) + " = @call " + string(yystack.l_mark[-4].node.lexeme) + " " + function_table[string(yystack.l_mark[-4].node.lexeme)].return_type + " " + to_string(function_table[string(yystack.l_mark[-4].node.lexeme)].num_params));
                }
#line 2817 "y.tab.c"
break;
case 138:
#line 788 "parser.y"
	{
                    int size = function_call.top().second.size();
                    string type = function_call.top().second[size - 1];
                    function_call.top().second.pop_back();
                    if(!check_type(type, string(yystack.l_mark[-2].node.type))){
                        sem_errors.push_back("Function " + function_call.top().first + " expects type " + type + " in line " + to_string(countLine + 1));
                    }
                }
#line 2829 "y.tab.c"
break;
case 139:
#line 796 "parser.y"
	{
                    int size = function_call.top().second.size();
                    string type = function_call.top().second[size - 1];
                    function_call.top().second.pop_back();
                    if(!check_type(type, string(yystack.l_mark[0].node.type))){
                        sem_errors.push_back("Function " + function_call.top().first + " expects type " + type + " in line " + to_string(countLine + 1));
                    }
                }
#line 2841 "y.tab.c"
break;
case 141:
#line 805 "parser.y"
	{
                    tac.push_back("param " + string(yystack.l_mark[0].node.lexeme) + " " + string(yystack.l_mark[0].node.type));
                }
#line 2848 "y.tab.c"
break;
#line 2850 "y.tab.c"
    default:
        break;
    }
    yystack.s_mark -= yym;
    yystate = *yystack.s_mark;
    yystack.l_mark -= yym;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    yystack.p_mark -= yym;
#endif
    yym = yylhs[yyn];
    if (yystate == 0 && yym == 0)
    {
#if YYDEBUG
        if (yydebug)
        {
            fprintf(stderr, "%s[%d]: after reduction, ", YYDEBUGSTR, yydepth);
#ifdef YYSTYPE_TOSTRING
#if YYBTYACC
            if (!yytrial)
#endif /* YYBTYACC */
                fprintf(stderr, "result is <%s>, ", YYSTYPE_TOSTRING(yystos[YYFINAL], yyval));
#endif
            fprintf(stderr, "shifting from state 0 to final state %d\n", YYFINAL);
        }
#endif
        yystate = YYFINAL;
        *++yystack.s_mark = YYFINAL;
        *++yystack.l_mark = yyval;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        *++yystack.p_mark = yyloc;
#endif
        if (yychar < 0)
        {
#if YYBTYACC
            do {
            if (yylvp < yylve)
            {
                /* we're currently re-reading tokens */
                yylval = *yylvp++;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                yylloc = *yylpp++;
#endif
                yychar = *yylexp++;
                break;
            }
            if (yyps->save)
            {
                /* in trial mode; save scanner results for future parse attempts */
                if (yylvp == yylvlim)
                {   /* Enlarge lexical value queue */
                    size_t p = (size_t) (yylvp - yylvals);
                    size_t s = (size_t) (yylvlim - yylvals);

                    s += YYLVQUEUEGROWTH;
                    if ((yylexemes = (YYINT *)realloc(yylexemes, s * sizeof(YYINT))) == NULL)
                        goto yyenomem;
                    if ((yylvals   = (YYSTYPE *)realloc(yylvals, s * sizeof(YYSTYPE))) == NULL)
                        goto yyenomem;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                    if ((yylpsns   = (YYLTYPE *)realloc(yylpsns, s * sizeof(YYLTYPE))) == NULL)
                        goto yyenomem;
#endif
                    yylvp   = yylve = yylvals + p;
                    yylvlim = yylvals + s;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                    yylpp   = yylpe = yylpsns + p;
                    yylplim = yylpsns + s;
#endif
                    yylexp  = yylexemes + p;
                }
                *yylexp = (YYINT) YYLEX;
                *yylvp++ = yylval;
                yylve++;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
                *yylpp++ = yylloc;
                yylpe++;
#endif
                yychar = *yylexp++;
                break;
            }
            /* normal operation, no conflict encountered */
#endif /* YYBTYACC */
            yychar = YYLEX;
#if YYBTYACC
            } while (0);
#endif /* YYBTYACC */
            if (yychar < 0) yychar = YYEOF;
#if YYDEBUG
            if (yydebug)
            {
                if ((yys = yyname[YYTRANSLATE(yychar)]) == NULL) yys = yyname[YYUNDFTOKEN];
                fprintf(stderr, "%s[%d]: state %d, reading token %d (%s)\n",
                                YYDEBUGSTR, yydepth, YYFINAL, yychar, yys);
            }
#endif
        }
        if (yychar == YYEOF) goto yyaccept;
        goto yyloop;
    }
    if (((yyn = yygindex[yym]) != 0) && (yyn += yystate) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == (YYINT) yystate)
        yystate = yytable[yyn];
    else
        yystate = yydgoto[yym];
#if YYDEBUG
    if (yydebug)
    {
        fprintf(stderr, "%s[%d]: after reduction, ", YYDEBUGSTR, yydepth);
#ifdef YYSTYPE_TOSTRING
#if YYBTYACC
        if (!yytrial)
#endif /* YYBTYACC */
            fprintf(stderr, "result is <%s>, ", YYSTYPE_TOSTRING(yystos[yystate], yyval));
#endif
        fprintf(stderr, "shifting from state %d to state %d\n", *yystack.s_mark, yystate);
    }
#endif
    if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack) == YYENOMEM) goto yyoverflow;
    *++yystack.s_mark = (YYINT) yystate;
    *++yystack.l_mark = yyval;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    *++yystack.p_mark = yyloc;
#endif
    goto yyloop;
#if YYBTYACC

    /* Reduction declares that this path is valid. Set yypath and do a full parse */
yyvalid:
    if (yypath) YYABORT;
    while (yyps->save)
    {
        YYParseState *save = yyps->save;
        yyps->save = save->save;
        save->save = yypath;
        yypath = save;
    }
#if YYDEBUG
    if (yydebug)
        fprintf(stderr, "%s[%d]: state %d, CONFLICT trial successful, backtracking to state %d, %d tokens\n",
                        YYDEBUGSTR, yydepth, yystate, yypath->state, (int)(yylvp - yylvals - yypath->lexeme));
#endif
    if (yyerrctx)
    {
        yyFreeState(yyerrctx);
        yyerrctx = NULL;
    }
    yylvp          = yylvals + yypath->lexeme;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    yylpp          = yylpsns + yypath->lexeme;
#endif
    yylexp         = yylexemes + yypath->lexeme;
    yychar         = YYEMPTY;
    yystack.s_mark = yystack.s_base + (yypath->yystack.s_mark - yypath->yystack.s_base);
    memcpy (yystack.s_base, yypath->yystack.s_base, (size_t) (yystack.s_mark - yystack.s_base + 1) * sizeof(YYINT));
    yystack.l_mark = yystack.l_base + (yypath->yystack.l_mark - yypath->yystack.l_base);
    memcpy (yystack.l_base, yypath->yystack.l_base, (size_t) (yystack.l_mark - yystack.l_base + 1) * sizeof(YYSTYPE));
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
    yystack.p_mark = yystack.p_base + (yypath->yystack.p_mark - yypath->yystack.p_base);
    memcpy (yystack.p_base, yypath->yystack.p_base, (size_t) (yystack.p_mark - yystack.p_base + 1) * sizeof(YYLTYPE));
#endif
    yystate        = yypath->state;
    goto yyloop;
#endif /* YYBTYACC */

yyoverflow:
    YYERROR_CALL("yacc stack overflow");
#if YYBTYACC
    goto yyabort_nomem;
yyenomem:
    YYERROR_CALL("memory exhausted");
yyabort_nomem:
#endif /* YYBTYACC */
    yyresult = 2;
    goto yyreturn;

yyabort:
    yyresult = 1;
    goto yyreturn;

yyaccept:
#if YYBTYACC
    if (yyps->save) goto yyvalid;
#endif /* YYBTYACC */
    yyresult = 0;

yyreturn:
#if defined(YYDESTRUCT_CALL)
    if (yychar != YYEOF && yychar != YYEMPTY)
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        YYDESTRUCT_CALL("cleanup: discarding token", yychar, &yylval, &yylloc);
#else
        YYDESTRUCT_CALL("cleanup: discarding token", yychar, &yylval);
#endif /* defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED) */

    {
        YYSTYPE *pv;
#if defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED)
        YYLTYPE *pp;

        for (pv = yystack.l_base, pp = yystack.p_base; pv <= yystack.l_mark; ++pv, ++pp)
             YYDESTRUCT_CALL("cleanup: discarding state",
                             yystos[*(yystack.s_base + (pv - yystack.l_base))], pv, pp);
#else
        for (pv = yystack.l_base; pv <= yystack.l_mark; ++pv)
             YYDESTRUCT_CALL("cleanup: discarding state",
                             yystos[*(yystack.s_base + (pv - yystack.l_base))], pv);
#endif /* defined(YYLTYPE) || defined(YYLTYPE_IS_DECLARED) */
    }
#endif /* defined(YYDESTRUCT_CALL) */

#if YYBTYACC
    if (yyerrctx)
    {
        yyFreeState(yyerrctx);
        yyerrctx = NULL;
    }
    while (yyps)
    {
        YYParseState *save = yyps;
        yyps = save->save;
        save->save = NULL;
        yyFreeState(save);
    }
    while (yypath)
    {
        YYParseState *save = yypath;
        yypath = save->save;
        save->save = NULL;
        yyFreeState(save);
    }
#endif /* YYBTYACC */
    yyfreestack(&yystack);
    return (yyresult);
}
