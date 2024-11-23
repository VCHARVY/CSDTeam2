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
#define EQ 285
#define NE 286
#define LT 287
#define GT 288
#define LE 289
#define GE 290
#define AND 291
#define OR 292
#define SCOL 293
#define COMMA 294
#define LP 295
#define RP 296
#define LF 297
#define RF 298
#define LB 299
#define RB 300
#define STR 301
#define CHARACTER 302
#define BITAND 303
#define BITOR 304
#define NEG 305
#define DQ 306
#define SQ 307
#define NULLP 308
#define YYERRCODE 256
typedef int YYINT;
static const YYINT yylhs[] = {                           -1,
    0,    0,   35,   34,    1,    1,    1,    1,    1,   36,
    2,   37,    3,   29,   29,   29,   29,   29,   29,   29,
   29,   29,    4,    4,    4,    4,    4,    4,    4,    4,
   38,    5,    5,    5,    6,    7,    7,   39,    8,    9,
    9,   10,   10,   11,   11,   11,   32,   33,   33,   33,
   12,   12,   12,   12,   12,   12,   12,   12,   12,   12,
   12,   12,   12,   12,   13,   13,   13,   13,   40,   13,
   13,   13,   41,   31,   31,   16,   16,   15,   15,   15,
   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
   15,   15,   15,   15,   30,   30,   17,   18,   18,   18,
   18,   19,   19,   19,   20,   20,   20,   14,   14,   42,
   43,   44,   45,   21,   46,   47,   48,   49,   22,   22,
   50,   23,   23,   51,   52,   53,   24,   54,   55,   56,
   57,   25,   58,   26,   27,   27,   27,   28,
};
static const YYINT yylen[] = {                            2,
    1,    2,    0,    3,    2,    2,    2,    2,    0,    0,
    5,    0,    6,    1,    1,    1,    1,    1,    2,    2,
    2,    2,    1,    1,    1,    1,    2,    2,    2,    2,
    0,    4,    1,    0,    2,    2,    0,    0,    6,    2,
    0,    3,    2,    1,    1,    1,    6,    3,    5,    0,
    2,    2,    2,    2,    1,    1,    1,    2,    2,    5,
    8,    5,    7,    7,    2,    4,    4,    5,    0,   10,
    7,    2,    0,    4,    1,    2,    1,    3,    3,    3,
    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
    3,    1,    1,    1,    1,    4,    2,    1,    1,    3,
    1,    1,    1,    1,    1,    1,    1,    3,    6,    0,
    0,    0,    0,   13,    0,    0,    0,    0,   13,    0,
    0,    5,    0,    0,    0,    0,   10,    0,    0,    0,
    0,   15,    0,    5,    3,    1,    0,    1,
};
static const YYINT yydefred[] = {                         0,
    0,    0,    9,    0,    0,    0,   17,   18,    0,    0,
    0,    0,    5,    0,    6,    0,    7,    0,    0,    0,
   25,    0,    0,    0,    0,    0,   19,   20,   22,    0,
    0,   21,   10,   12,   27,   28,    0,   30,    0,   29,
    0,    4,   38,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,  110,  124,    0,
    0,    0,  105,  106,    0,  102,  103,    0,  107,  104,
  101,    0,    0,    0,    0,    0,    0,   92,   93,    0,
   99,   55,   56,   57,   95,   94,    0,   67,    0,    0,
    0,    0,   44,   45,   46,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,   58,   59,    0,
    0,    0,    0,   11,   36,   51,   52,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,   53,
    0,    0,   54,   98,   97,   26,    0,    0,    0,    0,
    0,    0,    0,   39,   40,    0,    0,   17,    0,    0,
    0,   43,    0,    0,   48,   47,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,  100,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,   35,   13,    0,    0,    0,   69,   19,   20,
   22,   21,   42,    0,    0,    0,    0,    0,    0,    0,
    0,    0,  128,    0,    0,    0,    0,    0,   71,   96,
    0,   49,   60,    0,    0,    0,   62,  111,  125,    0,
    0,    0,  134,    0,   32,    0,    0,    0,    0,    0,
    0,    0,    0,    0,  135,    0,    0,    0,   63,   64,
  112,  126,  129,    0,   70,   61,    0,    0,    0,    0,
    0,    0,    0,   74,  113,  127,  130,    0,    0,    0,
    0,  131,  115,    0,  114,    0,    0,  121,    0,    0,
    0,  132,    0,    0,  116,  122,    0,  117,    0,    0,
  118,    0,  119,
};
#if defined(YYDESTRUCT_CALL) || defined(YYSTYPE_TOSTRING)
static const YYINT yystos[] = {                           0,
  310,  311,  344,  345,  257,  258,  259,  260,  261,  263,
  268,  279,  312,  313,  318,  339,  342,  311,  257,  258,
  259,  260,  261,  279,  314,  323,  282,  282,  282,  279,
  279,  282,  297,  279,  282,  282,  279,  282,  279,  282,
  279,  293,  297,  297,  346,  347,  284,  284,  284,  299,
  349,  268,  323,  343,  262,  269,  270,  271,  273,  274,
  275,  276,  277,  278,  279,  280,  281,  295,  302,  305,
  308,  317,  322,  323,  324,  325,  326,  327,  328,  329,
  330,  331,  334,  335,  336,  340,  295,  301,  267,  279,
  325,  277,  264,  265,  266,  319,  320,  321,  279,  293,
  298,  325,  295,  295,  352,  361,  295,  293,  293,  284,
  299,  368,  325,  298,  317,  293,  293,  280,  281,  282,
  283,  285,  286,  287,  288,  289,  290,  291,  292,  293,
  303,  304,  293,  279,  328,  260,  279,  314,  315,  316,
  279,  299,  300,  298,  319,  257,  258,  259,  260,  261,
  279,  312,  323,  279,  343,  293,  279,  306,  307,  325,
  295,  295,  279,  324,  325,  325,  295,  296,  325,  325,
  325,  325,  325,  325,  325,  325,  325,  325,  325,  325,
  325,  325,  279,  296,  348,  295,  325,  284,  282,  282,
  282,  282,  293,  293,  296,  299,  301,  302,  296,  325,
  325,  299,  293,  300,  325,  337,  338,  294,  296,  300,
  350,  343,  293,  325,  306,  307,  293,  296,  296,  325,
  364,  284,  296,  294,  315,  297,  300,  296,  296,  353,
  362,  300,  325,  325,  337,  330,  341,  296,  293,  293,
  297,  297,  293,  351,  298,  293,  354,  363,  365,  294,
  317,  317,  324,  341,  298,  298,  296,  355,  366,  272,
  332,  297,  271,  272,  333,  367,  356,  297,  317,  295,
  360,  298,  325,  317,  296,  298,  357,  297,  358,  317,
  298,  359,  332,
};
#endif /* YYDESTRUCT_CALL || YYSTYPE_TOSTRING */
static const YYINT yydgoto[] = {                          1,
    2,   13,   14,   25,  139,  140,   72,   15,   96,   97,
   98,   73,   74,   75,   76,   77,   78,   79,   80,   81,
   82,  261,  265,   83,   84,   85,  206,  207,   16,   86,
  237,   17,   54,    3,    4,   45,   46,  185,   51,  211,
  244,  105,  230,  247,  258,  267,  277,  279,  282,  271,
  106,  231,  248,  221,  249,  259,  266,  112,
};
static const YYINT yysindex[] = {                         0,
    0,  -74,    0, -194, -259, -242,    0,    0, -238, -244,
 -229, -228,    0, -195,    0, -211,    0,  -74, -173, -172,
    0, -154, -148, -234, -135, -144,    0,    0,    0, -131,
 -129,    0,    0,    0,    0,    0, -122,    0, -115,    0,
 -248,    0,    0,   68,  -32, -140, -130,  -79,  -99,  -87,
  -67, -105, -102, -106,  -99,  -91,  -88,    0,    0,  -64,
  -69,  -61,    0,    0, -134,    0,    0,  -99,    0,    0,
    0,  -84,  -32,  -58,  -57,   27,  -53,    0,    0, -261,
    0,    0,    0,    0,    0,    0,   -7,    0,  -24,  -43,
  352,  -35,    0,    0,    0,  -41,  -67,   92,  -13,   68,
  -26,  352,  -11, -191,  -21,  -20,   -8,    0,    0,  -99,
  -99,  -18,   52,    0,    0,    0,    0,  -99,  -99,  -99,
  -99,  -99,  -99,  -99,  -99,  -99,  -99,  -99,  -99,    0,
  -99,  -99,    0,    0,    0,    0,   -4,    7,  -17,    0,
  -14,  -99,   15,    0,    0,   18,   19,    0, -154,   21,
 -198,    0,   11,   28,    0,    0, -196,   10,   20,   77,
  -99,  -99, -247,   30,  352,  102,  -99,    0,  -81,  -81,
 -208, -208,  370,  370, -175, -175, -175, -175,  -70,  -70,
  352,  352,    0,    0,   51,   50,  127,    0,    0,    0,
    0,    0,    0,   68,   31,  -99,   48,   54,   79,  152,
  177,  -99,    0,   86,  352,   78,   81,   -7,    0,    0,
   80,    0,    0,  202,   82,   83,    0,    0,    0,  227,
  -99,  -99,    0,  -99,    0, -263,   90,  106,  108,  114,
  131,   86,  252,  352,    0,    0,  105,  133,    0,    0,
    0,    0,    0,  130,    0,    0,  -32,  -32,   -8, -263,
  138,  147,  150,    0,    0,    0,    0,  175,  153,  178,
  179,    0,    0,  155,    0,  -32,  158,    0,  156,  -99,
  -32,    0,  277,  163,    0,    0,  173,    0,  -32,  174,
    0,  175,    0,
};
static const YYINT yyrindex[] = {                         1,
    0,  376,    0,    0,  192,  195,    0,    0,  196,    0,
    0,    0,    0,    0,    0,    0,    0,  476,  198,  199,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,  186,    0,
  193,    0,    0,  197,  200,    0,    0,    0,    0,    0,
  201,    0,    0,    0,  203,    0,    0,    0,    0,    0,
    0,    0,    0,    0,  302,    0,    0,    0,    0,    0,
    0,    0,  200,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,  204,    0,    0,    2,
  208,    0,    0,    0,    0,    0,  201,    0,    0,  197,
    0,  210,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0, -236,
    0,    0,  211,    0,    0,  192,  195,    0,    0,  196,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0, -166,    0,  215,    0,  433,  450,
  395,  416,  526,  538,  466,  482,  498,  514,  104,  129,
 -202, -142,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  197,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  327, -133,    0,  224,  204,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  215,    0,    0,    0,    0,    0,    0,
    0,    0,    0, -137,    0, -256,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,  200,  200,    0,    0,
    0,    0,    0,    0,    0,    0,    0, -249,    0,    0,
 -138,    0,    0,    0,    0,  200,    0,    0,    0,    0,
  200,    0,    0,    0,    0,    0,    0,    0,  200,    0,
    0, -249,    0,
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
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,
};
#endif
static const YYINT yygindex[] = {                         0,
  494,  423,    0,  -82,  314,    0,  -71,    0,  426,    0,
    0,    0,   -1, -103,  -49,    0,    0,  444,    0, -193,
    0,  243,    0,    0,    0,    0,  304,    0,    0,    0,
  276,    0,  -93,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,
};
#define YYTABLESIZE 838
static const YYINT yytable[] = {                         91,
    9,  115,   26,  164,  138,  102,  155,  120,  120,  120,
  120,  120,  120,   63,   64,   63,   64,  134,  113,  120,
  120,  120,   27,  120,  120,  120,  120,  120,  120,  120,
  120,  120,  236,   68,   30,   49,  110,   73,   69,   28,
   69,   75,   53,   29,   39,  120,   71,   40,  120,   31,
   50,  202,  120,   32,  160,  120,  236,   31,  120,   33,
  165,  166,   19,   20,   21,   22,   23,   34,  169,  170,
  171,  172,  173,  174,  175,  176,  177,  178,  179,  180,
   39,  181,  182,  192,   24,   63,   64,   90,   66,   67,
   90,   90,  187,   90,  131,  132,  153,   90,   53,  195,
  212,   33,  196,   68,  118,  119,  120,  121,   35,   36,
   69,  200,  201,   70,  158,  159,   71,  205,  123,  123,
  123,  123,  123,  123,   37,  138,  108,  131,  132,  108,
  123,  123,  123,   38,  123,  123,  123,  123,  123,  123,
  123,  123,  123,   41,   39,  253,  214,   40,   42,  110,
   91,   91,  220,   91,   87,  109,  123,   91,  109,  123,
  138,   47,  138,  123,  111,   43,  123,   44,   48,  123,
   88,  233,  234,   99,  205,  251,  252,   63,   64,   90,
   66,   67,    5,    6,    7,    8,    9,   89,   10,   92,
  100,  101,   53,   11,  269,   68,   93,   94,   95,  274,
  120,  121,   69,  103,   12,   70,  104,  280,   71,  118,
  119,  120,  121,  114,  122,  123,  124,  125,  126,  127,
  273,  131,  132,  108,   19,   20,   21,   22,   23,   55,
  107,  109,  131,  132,  116,  117,   56,   57,   58,  133,
   59,   60,   61,   62,   63,   64,   65,   66,   67,   19,
   20,   21,  136,   23,  141,  142,  144,    3,    3,    3,
    3,    3,   68,    9,  143,  154,  156,  157,    9,   69,
  163,  137,   70,  161,  162,   71,  167,   40,  184,    3,
  186,   98,   98,   98,   98,  183,   98,   98,   98,   98,
   98,   98,   98,   98,   98,   98,  133,   98,  188,  189,
  190,   98,  191,  193,   98,   98,  118,  119,  120,  121,
  197,  122,  123,  124,  125,  126,  127,  128,  129,  130,
  194,  198,  203,  213,   19,   20,   21,   22,   23,  131,
  132,  118,  119,  120,  121,   52,  122,  123,  124,  125,
  126,  127,  128,  129,  208,  209,   24,  168,  146,  147,
  148,  149,  150,  215,  131,  132,  118,  119,  120,  121,
  216,  122,  123,  124,  125,  126,  127,  128,  129,  222,
  151,  217,  199,  223,  224,    1,  226,  228,  229,  131,
  132,  118,  119,  120,  121,  238,  122,  123,  124,  125,
  126,  127,  128,  129,   88,   88,   88,   88,  239,   88,
  240,  204,  245,   88,  131,  132,  118,  119,  120,  121,
  241,  122,  123,  124,  125,  126,  127,  128,  129,   89,
   89,   89,   89,  250,   89,  246,  210,  242,   89,  131,
  132,  118,  119,  120,  121,  255,  122,  123,  124,  125,
  126,  127,  128,  129,  256,  257,  260,  218,  263,  262,
  264,  268,  270,  272,  131,  132,  118,  119,  120,  121,
  276,  122,  123,  124,  125,  126,  127,  128,  129,  278,
   15,  281,  219,   16,   14,    2,   23,   24,   72,  131,
  132,  118,  119,  120,  121,   65,  122,  123,  124,  125,
  126,  127,  128,  129,   50,   77,   18,   37,   41,   34,
   66,  227,   76,   68,  131,  132,  118,  119,  120,  121,
  137,  122,  123,  124,  125,  126,  127,  128,  129,  136,
  152,  225,  145,  135,  283,  254,  232,  235,    0,  131,
  132,  118,  119,  120,  121,    0,  122,  123,  124,  125,
  126,  127,  128,  129,  243,    0,    0,    0,    0,    0,
    0,    0,    0,    0,  131,  132,  118,  119,  120,  121,
    0,  122,  123,  124,  125,  126,  127,  128,  129,    0,
    0,    0,  275,    0,    0,    0,    0,    0,    0,  131,
  132,   98,   98,    0,   98,    0,   98,   98,   98,   98,
   98,   98,   98,   98,   98,    0,  133,    0,    0,    0,
    0,    0,    0,    0,   98,   98,   96,   96,   96,   96,
    0,   96,   96,   96,   96,   96,   96,   96,   96,   96,
    0,    0,    0,    0,    0,    0,    0,    0,    0,   96,
   96,  118,  119,  120,  121,    0,  122,  123,  124,  125,
  126,  127,  128,  129,    0,    0,    0,    0,    0,  118,
  119,  120,  121,    0,  131,  132,  124,  125,  126,  127,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,  131,  132,   80,   80,   80,   80,    0,   80,
   80,   80,   80,   80,   80,   80,   80,   80,   80,    0,
   80,    0,    0,    0,   80,   81,   81,   81,   81,    0,
   81,   81,   81,   81,   81,   81,   81,   81,   81,   81,
    0,   81,   78,   78,    0,   81,    0,   78,   78,   78,
   78,   78,   78,   78,   78,   78,   78,    0,   78,   79,
   79,    0,   78,    0,   79,   79,   79,   79,   79,   79,
   79,   79,   79,   79,    0,   79,    0,    0,    0,   79,
   84,   84,   84,   84,   84,   84,   84,   84,   84,   84,
    0,   84,    0,    0,    0,   84,   85,   85,   85,   85,
   85,   85,   85,   85,   85,   85,    0,   85,    0,    0,
    0,   85,   86,   86,   86,   86,   86,   86,   86,   86,
   86,   86,    0,   86,    0,    0,    0,   86,   87,   87,
   87,   87,   87,   87,   87,   87,   87,   87,    0,   87,
   82,   82,    0,   87,    0,    0,   82,   82,   82,   82,
    0,   82,   83,   83,    0,   82,    0,    0,   83,   83,
   83,   83,    0,   83,    0,    0,    0,   83,
};
static const YYINT yycheck[] = {                         49,
    0,   73,    4,  107,   87,   55,  100,  257,  258,  259,
  260,  261,  262,  277,  278,  277,  278,  279,   68,  269,
  270,  271,  282,  273,  274,  275,  276,  277,  278,  279,
  280,  281,  226,  295,  279,  284,  284,  294,  302,  282,
  302,  298,   44,  282,  279,  295,  308,  282,  298,  279,
  299,  299,  302,  282,  104,  305,  250,  294,  308,  296,
  110,  111,  257,  258,  259,  260,  261,  279,  118,  119,
  120,  121,  122,  123,  124,  125,  126,  127,  128,  129,
  279,  131,  132,  282,  279,  277,  278,  279,  280,  281,
  293,  294,  142,  296,  303,  304,   98,  300,  100,  296,
  194,  297,  299,  295,  280,  281,  282,  283,  282,  282,
  302,  161,  162,  305,  306,  307,  308,  167,  257,  258,
  259,  260,  261,  262,  279,  208,  293,  303,  304,  296,
  269,  270,  271,  282,  273,  274,  275,  276,  277,  278,
  279,  280,  281,  279,  279,  249,  196,  282,  293,  284,
  293,  294,  202,  296,  295,  293,  295,  300,  296,  298,
  294,  284,  296,  302,  299,  297,  305,  297,  284,  308,
  301,  221,  222,  279,  224,  247,  248,  277,  278,  279,
  280,  281,  257,  258,  259,  260,  261,  267,  263,  277,
  293,  298,  194,  268,  266,  295,  264,  265,  266,  271,
  282,  283,  302,  295,  279,  305,  295,  279,  308,  280,
  281,  282,  283,  298,  285,  286,  287,  288,  289,  290,
  270,  303,  304,  293,  257,  258,  259,  260,  261,  262,
  295,  293,  303,  304,  293,  293,  269,  270,  271,  293,
  273,  274,  275,  276,  277,  278,  279,  280,  281,  257,
  258,  259,  260,  261,  279,  299,  298,  257,  258,  259,
  260,  261,  295,  263,  300,  279,  293,  279,  268,  302,
  279,  279,  305,  295,  295,  308,  295,  282,  296,  279,
  295,  280,  281,  282,  283,  279,  285,  286,  287,  288,
  289,  290,  291,  292,  293,  294,  295,  296,  284,  282,
  282,  300,  282,  293,  303,  304,  280,  281,  282,  283,
  301,  285,  286,  287,  288,  289,  290,  291,  292,  293,
  293,  302,  293,  293,  257,  258,  259,  260,  261,  303,
  304,  280,  281,  282,  283,  268,  285,  286,  287,  288,
  289,  290,  291,  292,  294,  296,  279,  296,  257,  258,
  259,  260,  261,  306,  303,  304,  280,  281,  282,  283,
  307,  285,  286,  287,  288,  289,  290,  291,  292,  284,
  279,  293,  296,  296,  294,    0,  297,  296,  296,  303,
  304,  280,  281,  282,  283,  296,  285,  286,  287,  288,
  289,  290,  291,  292,  291,  292,  293,  294,  293,  296,
  293,  300,  298,  300,  303,  304,  280,  281,  282,  283,
  297,  285,  286,  287,  288,  289,  290,  291,  292,  291,
  292,  293,  294,  294,  296,  293,  300,  297,  300,  303,
  304,  280,  281,  282,  283,  298,  285,  286,  287,  288,
  289,  290,  291,  292,  298,  296,  272,  296,  271,  297,
  272,  297,  295,  298,  303,  304,  280,  281,  282,  283,
  298,  285,  286,  287,  288,  289,  290,  291,  292,  297,
  279,  298,  296,  279,  279,    0,  279,  279,  293,  303,
  304,  280,  281,  282,  283,  293,  285,  286,  287,  288,
  289,  290,  291,  292,  298,  293,    3,  298,  298,  296,
  293,  300,  293,  293,  303,  304,  280,  281,  282,  283,
  296,  285,  286,  287,  288,  289,  290,  291,  292,  296,
   98,  208,   97,   80,  282,  250,  300,  224,   -1,  303,
  304,  280,  281,  282,  283,   -1,  285,  286,  287,  288,
  289,  290,  291,  292,  293,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,  303,  304,  280,  281,  282,  283,
   -1,  285,  286,  287,  288,  289,  290,  291,  292,   -1,
   -1,   -1,  296,   -1,   -1,   -1,   -1,   -1,   -1,  303,
  304,  280,  281,   -1,  283,   -1,  285,  286,  287,  288,
  289,  290,  291,  292,  293,   -1,  295,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,  303,  304,  280,  281,  282,  283,
   -1,  285,  286,  287,  288,  289,  290,  291,  292,  293,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  303,
  304,  280,  281,  282,  283,   -1,  285,  286,  287,  288,
  289,  290,  291,  292,   -1,   -1,   -1,   -1,   -1,  280,
  281,  282,  283,   -1,  303,  304,  287,  288,  289,  290,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,  303,  304,  280,  281,  282,  283,   -1,  285,
  286,  287,  288,  289,  290,  291,  292,  293,  294,   -1,
  296,   -1,   -1,   -1,  300,  280,  281,  282,  283,   -1,
  285,  286,  287,  288,  289,  290,  291,  292,  293,  294,
   -1,  296,  280,  281,   -1,  300,   -1,  285,  286,  287,
  288,  289,  290,  291,  292,  293,  294,   -1,  296,  280,
  281,   -1,  300,   -1,  285,  286,  287,  288,  289,  290,
  291,  292,  293,  294,   -1,  296,   -1,   -1,   -1,  300,
  285,  286,  287,  288,  289,  290,  291,  292,  293,  294,
   -1,  296,   -1,   -1,   -1,  300,  285,  286,  287,  288,
  289,  290,  291,  292,  293,  294,   -1,  296,   -1,   -1,
   -1,  300,  285,  286,  287,  288,  289,  290,  291,  292,
  293,  294,   -1,  296,   -1,   -1,   -1,  300,  285,  286,
  287,  288,  289,  290,  291,  292,  293,  294,   -1,  296,
  285,  286,   -1,  300,   -1,   -1,  291,  292,  293,  294,
   -1,  296,  285,  286,   -1,  300,   -1,   -1,  291,  292,
  293,  294,   -1,  296,   -1,   -1,   -1,  300,
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
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,
};
#endif
#define YYFINAL 1
#ifndef YYDEBUG
#define YYDEBUG 1
#endif
#define YYMAXTOKEN 308
#define YYUNDFTOKEN 369
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
"ID","ADD","SUB","MUL","DIV","ASSIGN","EQ","NE","LT","GT","LE","GE","AND","OR",
"SCOL","COMMA","LP","RP","LF","RF","LB","RB","STR","CHARACTER","BITAND","BITOR",
"NEG","DQ","SQ","NULLP","$accept","PROGRAM","LIST","FUNCTION","FUNCTION_PREFIX",
"DATA_TYPE","PARAMLIST","PARAM","STMTLIST","CLASSDEF","CLASSBODY","CLASSMEMBER",
"ACCESS_MODIFIER","STMT","DECLARATION","ASSIGNMENT","EXPR","RETURN_STMT",
"UNARY_EXPR","PRIMARY_EXPR","UNARY_OP","CONST","IF_STMT","ELIF_STMT",
"ELSE_STMT","WHILE_STMT","FOR_STMT","FUNCTION_CALL","ARGUMENTLIST","ARG",
"FUNCTION_TYPE","POSTFIX_EXPR","ARR_VALUES","STRUCTDEF","STRUCTVAR",
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
"DECLARATION : ID ID",
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
"IF_STMT : IF $$8 LP EXPR RP $$9 LF $$10 STMTLIST RF $$11 ELIF_STMT ELSE_STMT",
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
#line 803 "parser.y"

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
#line 1144 "y.tab.c"

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
#line 1819 "y.tab.c"
break;
case 4:
#line 161 "parser.y"
	{
                        global_table[string(yystack.l_mark[-1].node.lexeme)] = {string(yystack.l_mark[-2].node.type), string(yystack.l_mark[-2].node.lexeme)};
                        scope_counter--;
                    }
#line 1827 "y.tab.c"
break;
case 10:
#line 172 "parser.y"
	{
                        hasReturnStmt = 0;
                        scope_history.push(++scope_counter);
                        strcpy(yyval.node.lexeme, yystack.l_mark[-1].node.lexeme);
                    }
#line 1836 "y.tab.c"
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
#line 1854 "y.tab.c"
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
#line 1872 "y.tab.c"
break;
case 13:
#line 204 "parser.y"
	{
                        function_table[current_function].return_type = string(yystack.l_mark[-5].node.type);
                        function_table[current_function].num_params = yystack.l_mark[-1].node.nParams;
                        strcpy(yyval.node.lexeme, (current_class == "" ? string(yystack.l_mark[-4].node.lexeme) : current_class + "." + string(yystack.l_mark[-4].node.lexeme)).c_str());
                    }
#line 1881 "y.tab.c"
break;
case 14:
#line 210 "parser.y"
	{
                    sprintf(yyval.node.type, "VOID");
                    strcpy(yyval.node.type, "VOID");
                }
#line 1889 "y.tab.c"
break;
case 15:
#line 214 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                }
#line 1896 "y.tab.c"
break;
case 16:
#line 217 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                }
#line 1903 "y.tab.c"
break;
case 17:
#line 220 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                }
#line 1910 "y.tab.c"
break;
case 18:
#line 223 "parser.y"
	{
                    strcpy(yyval.node.type, "STRING");
                }
#line 1917 "y.tab.c"
break;
case 19:
#line 226 "parser.y"
	{
                    strcpy(yyval.node.type, "INT*");
                }
#line 1924 "y.tab.c"
break;
case 20:
#line 229 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR*");
                }
#line 1931 "y.tab.c"
break;
case 21:
#line 232 "parser.y"
	{
                    strcpy(yyval.node.type, "STRUCT*");
                }
#line 1938 "y.tab.c"
break;
case 22:
#line 235 "parser.y"
	{
                    strcpy(yyval.node.type, "VOID*");
                }
#line 1945 "y.tab.c"
break;
case 23:
#line 238 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                }
#line 1952 "y.tab.c"
break;
case 24:
#line 241 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                }
#line 1959 "y.tab.c"
break;
case 25:
#line 244 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                }
#line 1966 "y.tab.c"
break;
case 26:
#line 247 "parser.y"
	{
                    strcpy(yyval.node.type, "STRING");
                }
#line 1973 "y.tab.c"
break;
case 27:
#line 250 "parser.y"
	{
                    strcpy(yyval.node.type, "INT*");
                }
#line 1980 "y.tab.c"
break;
case 28:
#line 253 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR*");
                }
#line 1987 "y.tab.c"
break;
case 29:
#line 256 "parser.y"
	{
                    strcpy(yyval.node.type, "STRUCT*");
                }
#line 1994 "y.tab.c"
break;
case 30:
#line 259 "parser.y"
	{
                    strcpy(yyval.node.type, "VOID*");
                }
#line 2001 "y.tab.c"
break;
case 31:
#line 262 "parser.y"
	{
                    function_table[current_function].param_types.push_back(string(yystack.l_mark[0].node.type));
                    function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[0].node.type), scope_counter +1, 0, 0, countLine + 1};
                    tac.push_back("- arg " + string(yystack.l_mark[0].node.type) + " " + string(yystack.l_mark[0].node.lexeme));
                }
#line 2010 "y.tab.c"
break;
case 32:
#line 266 "parser.y"
	{
                    yyval.node.nParams = yystack.l_mark[0].node.nParams + 1;
                }
#line 2017 "y.tab.c"
break;
case 33:
#line 269 "parser.y"
	{
                    function_table[current_function].param_types.push_back(string(yystack.l_mark[0].node.type));
                    function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[0].node.type), scope_counter +1, 0, 0, countLine + 1};
                    tac.push_back("- arg " + string(yystack.l_mark[0].node.type) + " " + string(yystack.l_mark[0].node.lexeme));
                    yyval.node.nParams = 1;
                }
#line 2027 "y.tab.c"
break;
case 35:
#line 276 "parser.y"
	{
                    yyval.node.nParams = 1;
                    strcpy(yyval.node.type, yystack.l_mark[-1].node.type);
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2036 "y.tab.c"
break;
case 38:
#line 283 "parser.y"
	{
                    current_class = string(yystack.l_mark[-1].node.lexeme);
                    if(class_table.find(current_class) != class_table.end()){
                        sem_errors.push_back("Class " + current_class + " already declared in line " + to_string(countLine + 1));
                    }
                }
#line 2046 "y.tab.c"
break;
case 39:
#line 288 "parser.y"
	{
                    current_class = "";
                        
                }
#line 2054 "y.tab.c"
break;
case 42:
#line 294 "parser.y"
	{
                    if(class_table[current_class].field_table.find(string(yystack.l_mark[-1].node.lexeme)) != class_table[current_class].field_table.end()){
                        sem_errors.push_back("Field " + string(yystack.l_mark[-1].node.lexeme) + " already declared in class " + current_class + " in line " + to_string(countLine + 1));
                    }
                    class_table[current_class].field_table[string(yystack.l_mark[-1].node.lexeme)] = {string(yystack.l_mark[-2].node.lexeme), string(yystack.l_mark[-2].node.type), countLine + 1};
                }
#line 2064 "y.tab.c"
break;
case 43:
#line 300 "parser.y"
	{
                    if(class_table[current_class].method_table.find(string(yystack.l_mark[0].node.lexeme)) != class_table[current_class].method_table.end()){
                        sem_errors.push_back("Method " + string(yystack.l_mark[0].node.lexeme) + " already declared in class " + current_class + " in line " + to_string(countLine + 1));
                    }
                    class_table[current_class].method_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[0].node.type), yystack.l_mark[0].node.nParams, current_func_param_types, string(yystack.l_mark[-1].node.lexeme)};
                }
#line 2074 "y.tab.c"
break;
case 58:
#line 320 "parser.y"
	{
                    if(loop_break.empty()){
                        sem_errors.push_back("Break statement outside loop in line " + to_string(countLine + 1));
                    }
                    else{
                        tac.push_back("GOTO #L" + to_string(loop_break.top()));
                    }
                }
#line 2086 "y.tab.c"
break;
case 59:
#line 328 "parser.y"
	{
                    if(loop_continue.empty()){
                        sem_errors.push_back("Continue statement outside loop in line " + to_string(countLine + 1));
                    }
                    else{
                        tac.push_back("GOTO #L" + to_string(loop_continue.top()));
                    }
                }
#line 2098 "y.tab.c"
break;
case 60:
#line 336 "parser.y"
	{
                    check_declaration(string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back("input " + string(yystack.l_mark[-2].node.lexeme) + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)].data_type);
                }
#line 2106 "y.tab.c"
break;
case 61:
#line 340 "parser.y"
	{
                    check_declaration(string(yystack.l_mark[-5].node.lexeme));
                    string temp = get_temp();
                    tac.push_back("input " + temp + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type);
                    tac.push_back(string(yystack.l_mark[-5].node.lexeme) + "[" + string(yystack.l_mark[-3].node.lexeme) + "] = " + temp + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type);
                    free_temp.push(temp);
                }
#line 2117 "y.tab.c"
break;
case 62:
#line 347 "parser.y"
	{
                    tac.push_back("output " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-2].node.type));
                }
#line 2124 "y.tab.c"
break;
case 63:
#line 350 "parser.y"
	{
                    tac.push_back("output " + string(yystack.l_mark[-3].node.lexeme) + " STR");
                }
#line 2131 "y.tab.c"
break;
case 64:
#line 353 "parser.y"
	{
                    tac.push_back("output " + string(yystack.l_mark[-3].node.lexeme) + " CHAR");
                }
#line 2138 "y.tab.c"
break;
case 65:
#line 357 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    tac.push_back("- " + string(yystack.l_mark[-1].node.type) + " " + string(yystack.l_mark[0].node.lexeme));
                    function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)] = {string(yystack.l_mark[-1].node.type), scope_counter, 0, 0, countLine + 1};
                }
#line 2147 "y.tab.c"
break;
case 66:
#line 362 "parser.y"
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
#line 2163 "y.tab.c"
break;
case 67:
#line 374 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[-2].node.lexeme);
                    check_multiple_declaration(string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back("- STR " + string(yystack.l_mark[-2].node.lexeme));
                    tac.push_back(string(yystack.l_mark[-2].node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " STR");
                    function_table[current_function].symbol_table[string(yystack.l_mark[-2].node.lexeme)] = {"STR", scope_counter, 0, 0, countLine + 1};
                }
#line 2174 "y.tab.c"
break;
case 68:
#line 381 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[-3].node.lexeme);
                    check_multiple_declaration(string(yystack.l_mark[-3].node.lexeme));
                    tac.push_back("- " + string(yystack.l_mark[-4].node.type) + " " + string(yystack.l_mark[-3].node.lexeme) + "[" + string(yystack.l_mark[-1].node.lexeme) + "]");
                    function_table[current_function].symbol_table[string(yystack.l_mark[-3].node.lexeme)] = {string(yystack.l_mark[-4].node.type), scope_counter, stoi(string(yystack.l_mark[-1].node.lexeme)), 1, countLine + 1};
                }
#line 2184 "y.tab.c"
break;
case 69:
#line 387 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[-4].node.lexeme);
                    check_multiple_declaration(string(yystack.l_mark[-4].node.lexeme));
                    tac.push_back("- " + string(yystack.l_mark[-5].node.type) + " " + string(yystack.l_mark[-4].node.lexeme) + "[" + string(yystack.l_mark[-2].node.lexeme) + "]");
                    function_table[current_function].symbol_table[string(yystack.l_mark[-4].node.lexeme)] = {string(yystack.l_mark[-5].node.type), scope_counter, stoi(string(yystack.l_mark[-2].node.lexeme)), 1, countLine + 1};
                    curr_array = string(yystack.l_mark[-4].node.lexeme);
                }
#line 2195 "y.tab.c"
break;
case 71:
#line 394 "parser.y"
	{
                    if(strcmp(yystack.l_mark[-6].node.lexeme, yystack.l_mark[-2].node.lexeme) != 0){
                        sem_errors.push_back("Cannot assign " + string(yystack.l_mark[-2].node.lexeme) + " to " + string(yystack.l_mark[-6].node.lexeme) + " in line " + to_string(countLine + 1));
                    }
                    tac.push_back("= " + string(yystack.l_mark[-6].node.lexeme) + " object " + string(yystack.l_mark[-5].node.lexeme));
                }
#line 2205 "y.tab.c"
break;
case 72:
#line 400 "parser.y"
	{
                    /*struct*/
                    if(class_table.find(string(yystack.l_mark[-1].node.lexeme)) == class_table.end()){
                        sem_errors.push_back("Struct " + string(yystack.l_mark[-1].node.lexeme) + " not declared in line " + to_string(countLine + 1));
                    }
                    
                }
#line 2216 "y.tab.c"
break;
case 73:
#line 407 "parser.y"
	{
                    check_type(function_table[current_function].symbol_table[curr_array].data_type, string(yystack.l_mark[0].node.type));
                    tac.push_back(curr_array + "[" + to_string(arr_index++) + "] = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[curr_array].data_type);
                    if(arr_index > function_table[current_function].symbol_table[curr_array].size){
                        sem_errors.push_back("Array " + curr_array + " out of bounds in line " + to_string(countLine + 1));
                    }
                }
#line 2227 "y.tab.c"
break;
case 75:
#line 414 "parser.y"
	{
                    check_type(function_table[current_function].symbol_table[curr_array].data_type, string(yystack.l_mark[0].node.type));
                    tac.push_back(curr_array + "[" + to_string(arr_index++) + "] = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[curr_array].data_type);
                    if(arr_index > function_table[current_function].symbol_table[curr_array].size){
                        sem_errors.push_back("Array " + curr_array + " out of bounds in line " + to_string(countLine + 1));
                    }
                }
#line 2238 "y.tab.c"
break;
case 76:
#line 421 "parser.y"
	{
                    check_type(function_table[current_function].return_type, string(yystack.l_mark[0].node.type));
                    tac.push_back("return " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].return_type);
                    hasReturnStmt = 1;
                }
#line 2247 "y.tab.c"
break;
case 77:
#line 426 "parser.y"
	{
                    if(function_table[current_function].return_type != "VOID"){
                        sem_errors.push_back("Function " + current_function + " expects a return statement in line " + to_string(countLine + 1));
                    }
                    tac.push_back("return " + function_table[current_function].return_type);
                    hasReturnStmt = 0;
                }
#line 2258 "y.tab.c"
break;
case 78:
#line 433 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2269 "y.tab.c"
break;
case 79:
#line 440 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2280 "y.tab.c"
break;
case 80:
#line 447 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2291 "y.tab.c"
break;
case 81:
#line 454 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2302 "y.tab.c"
break;
case 82:
#line 461 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2313 "y.tab.c"
break;
case 83:
#line 468 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2324 "y.tab.c"
break;
case 84:
#line 475 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2335 "y.tab.c"
break;
case 85:
#line 482 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2346 "y.tab.c"
break;
case 86:
#line 489 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2357 "y.tab.c"
break;
case 87:
#line 496 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2368 "y.tab.c"
break;
case 88:
#line 503 "parser.y"
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
#line 2395 "y.tab.c"
break;
case 89:
#line 526 "parser.y"
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
#line 2422 "y.tab.c"
break;
case 90:
#line 549 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2433 "y.tab.c"
break;
case 91:
#line 556 "parser.y"
	{
                    add_tac(yyval.node, yystack.l_mark[-2].node, yystack.l_mark[-1].node, yystack.l_mark[0].node);
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-2].node.lexeme) + " " + string(yystack.l_mark[-1].node.lexeme) + " " + string(yystack.l_mark[0].node.lexeme) + " " + string(yyval.node.type));
                    
                    if(const_temps.find(string(yystack.l_mark[-2].node.lexeme)) == const_temps.end() && yystack.l_mark[-2].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-2].node.lexeme));
                    if(const_temps.find(string(yystack.l_mark[0].node.lexeme)) == const_temps.end() && yystack.l_mark[0].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[0].node.lexeme));
                }
#line 2444 "y.tab.c"
break;
case 92:
#line 563 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2453 "y.tab.c"
break;
case 93:
#line 568 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2462 "y.tab.c"
break;
case 94:
#line 573 "parser.y"
	{
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2471 "y.tab.c"
break;
case 95:
#line 578 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    sprintf(yyval.node.lexeme, "%s", yystack.l_mark[0].node.lexeme);
                }
#line 2479 "y.tab.c"
break;
case 96:
#line 582 "parser.y"
	{
                    if(check_declaration(string(yystack.l_mark[-3].node.lexeme)) && function_table[current_function].symbol_table[string(yystack.l_mark[-3].node.lexeme)].isArray == 0){
                        sem_errors.push_back("Variable " + string(yystack.l_mark[-3].node.lexeme) + " is not an array in line " + to_string(countLine + 1));
                    }
                    check_scope(string(yystack.l_mark[-3].node.lexeme));
                    strcpy(yyval.node.type, function_table[current_function].symbol_table[string(yystack.l_mark[-3].node.lexeme)].data_type.c_str());
                    sprintf(yyval.node.lexeme, get_temp().c_str());
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[-3].node.lexeme) + "[" + string(yystack.l_mark[-1].node.lexeme) + "] " + yyval.node.type);

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2494 "y.tab.c"
break;
case 97:
#line 593 "parser.y"
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
#line 2513 "y.tab.c"
break;
case 98:
#line 608 "parser.y"
	{
                    /*check_declaration(string($1.lexeme));*/
                    strcpy(yyval.node.type, function_table[current_function].symbol_table[string(yystack.l_mark[0].node.lexeme)].data_type.c_str());
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2522 "y.tab.c"
break;
case 99:
#line 613 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[0].node.type);
                    
                    string t = get_temp();
                    sprintf(yyval.node.lexeme, t.c_str());
                    tac.push_back(string(yyval.node.lexeme) + " = " + string(yystack.l_mark[0].node.lexeme) + " " + string(yystack.l_mark[0].node.type));
                    const_temps.insert(t);
                }
#line 2534 "y.tab.c"
break;
case 100:
#line 621 "parser.y"
	{
                    strcpy(yyval.node.type, yystack.l_mark[-1].node.type);
                    strcpy(yyval.node.lexeme, yystack.l_mark[-1].node.lexeme);
                }
#line 2542 "y.tab.c"
break;
case 101:
#line 625 "parser.y"
	{
                    strcpy(yyval.node.type, "NULL");
                    strcpy(yyval.node.lexeme, "NULL");
                }
#line 2550 "y.tab.c"
break;
case 105:
#line 632 "parser.y"
	{
                    strcpy(yyval.node.type, "INT");
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2558 "y.tab.c"
break;
case 106:
#line 636 "parser.y"
	{
                    strcpy(yyval.node.type, "FLOAT");
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2566 "y.tab.c"
break;
case 107:
#line 640 "parser.y"
	{
                    strcpy(yyval.node.type, "CHAR");
                    strcpy(yyval.node.lexeme, yystack.l_mark[0].node.lexeme);
                }
#line 2574 "y.tab.c"
break;
case 108:
#line 644 "parser.y"
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
#line 2592 "y.tab.c"
break;
case 109:
#line 658 "parser.y"
	{
                    if(string(yystack.l_mark[0].node.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    check_type(function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type, string(yystack.l_mark[0].node.type));
                    if(check_declaration(string(yystack.l_mark[-5].node.lexeme)) && function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].isArray == 0){
                        sem_errors.push_back("Variable " + string(yystack.l_mark[-5].node.lexeme) + " is not an array in line " + to_string(countLine + 1));
                    }
                    check_scope(string(yystack.l_mark[-5].node.lexeme));
                    tac.push_back(string(yystack.l_mark[-5].node.lexeme) + "[" + string(yystack.l_mark[-3].node.lexeme) + "] = " + string(yystack.l_mark[0].node.lexeme) + " " + function_table[current_function].symbol_table[string(yystack.l_mark[-5].node.lexeme)].data_type);
                        
                }
#line 2608 "y.tab.c"
break;
case 110:
#line 670 "parser.y"
	{
                    sprintf(yystack.l_mark[0].node.parentNext, "#L%d", label_counter++);
                }
#line 2615 "y.tab.c"
break;
case 111:
#line 673 "parser.y"
	{
                    tac.push_back("if " + string(yystack.l_mark[-1].node.lexeme) + " GOTO #L" + to_string(label_counter) + " else GOTO #L" + to_string(label_counter+1));
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++); 
                    tac.push_back(string(yystack.l_mark[-1].node.if_body) + ":");
                }
#line 2625 "y.tab.c"
break;
case 112:
#line 679 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2632 "y.tab.c"
break;
case 113:
#line 682 "parser.y"
	{
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.parentNext));
                    tac.push_back(string(yystack.l_mark[-6].node.else_body) + ":");
                    scope_history.pop(); 
                    scope_counter--;
                }
#line 2642 "y.tab.c"
break;
case 114:
#line 688 "parser.y"
	{
                    tac.push_back(string(yystack.l_mark[-12].node.parentNext) + ":");
                }
#line 2649 "y.tab.c"
break;
case 115:
#line 692 "parser.y"
	{
                    string str = tac[tac.size()-2].substr(5);
                    char* hold = const_cast<char*>(str.c_str());
                    sprintf(yystack.l_mark[0].node.parentNext, "#L%d", label_counter++);
                }
#line 2658 "y.tab.c"
break;
case 116:
#line 696 "parser.y"
	{
                    tac.push_back("if " + string(yystack.l_mark[-1].node.lexeme) + " GOTO #L" + to_string(label_counter) + " else GOTO #L" + to_string(label_counter+1));
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++);
                    tac.push_back(string(yystack.l_mark[-1].node.if_body) + ":");

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2670 "y.tab.c"
break;
case 117:
#line 703 "parser.y"
	{
                    scope_history.push(++scope_counter);
                
                }
#line 2678 "y.tab.c"
break;
case 118:
#line 706 "parser.y"
	{
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.parentNext));
                    tac.push_back(string(yystack.l_mark[-6].node.else_body) + ":");
                    scope_history.pop();
                    scope_counter--;
                }
#line 2688 "y.tab.c"
break;
case 121:
#line 713 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2695 "y.tab.c"
break;
case 122:
#line 716 "parser.y"
	{
                    scope_history.pop(); 
                    scope_counter--;
                }
#line 2703 "y.tab.c"
break;
case 124:
#line 721 "parser.y"
	{
                    sprintf(yystack.l_mark[0].node.loop_body, "#L%d", label_counter);
                    loop_continue.push(label_counter++);
                    tac.push_back("\n" + string(yystack.l_mark[0].node.loop_body) + ":");
                }
#line 2712 "y.tab.c"
break;
case 125:
#line 725 "parser.y"
	{
                    sprintf(yystack.l_mark[-1].node.if_body, "#L%d", label_counter++);
                    loop_break.push(label_counter);
                    sprintf(yystack.l_mark[-1].node.else_body, "#L%d", label_counter++);

                    tac.push_back("\nif " + string(yystack.l_mark[-1].node.lexeme) + " GOTO " + string(yystack.l_mark[-1].node.if_body) + " else GOTO " + string(yystack.l_mark[-1].node.else_body));
                    tac.push_back("\n" + string(yystack.l_mark[-1].node.if_body) + ":");

                    if(const_temps.find(string(yystack.l_mark[-1].node.lexeme)) == const_temps.end() && yystack.l_mark[-1].node.lexeme[0] == '@') free_temp.push(string(yystack.l_mark[-1].node.lexeme));
                }
#line 2726 "y.tab.c"
break;
case 126:
#line 734 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2733 "y.tab.c"
break;
case 127:
#line 736 "parser.y"
	{
                    scope_history.pop();
                    scope_counter--;
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.loop_body));
                    tac.push_back(string(yystack.l_mark[-6].node.else_body) + ":");
                    loop_break.pop();
                    loop_continue.pop();
                }
#line 2745 "y.tab.c"
break;
case 128:
#line 744 "parser.y"
	{
                    sprintf(yystack.l_mark[-3].node.loop_body, "#L%d", label_counter++);
                    tac.push_back("\n" + string(yystack.l_mark[-3].node.loop_body) + ":");
                }
#line 2753 "y.tab.c"
break;
case 129:
#line 747 "parser.y"
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
#line 2769 "y.tab.c"
break;
case 130:
#line 758 "parser.y"
	{
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.loop_body));
                    tac.push_back("\n" + string(yystack.l_mark[-4].node.if_body) + ":");
                }
#line 2777 "y.tab.c"
break;
case 131:
#line 761 "parser.y"
	{
                    scope_history.push(++scope_counter);
                }
#line 2784 "y.tab.c"
break;
case 132:
#line 763 "parser.y"
	{
                    scope_history.pop();
                    scope_counter--;
                    tac.push_back("GOTO " + string(yystack.l_mark[-9].node.loop_body));
                    tac.push_back(string(yystack.l_mark[-9].node.else_body) + ":");
                    loop_break.pop();
                    loop_continue.pop();
                }
#line 2796 "y.tab.c"
break;
case 133:
#line 771 "parser.y"
	{
                    function_call.push({string(yystack.l_mark[0].node.lexeme), function_table[string(yystack.l_mark[0].node.lexeme)].param_types});
                }
#line 2803 "y.tab.c"
break;
case 134:
#line 773 "parser.y"
	{
                    strcpy(yyval.node.type, function_table[string(yystack.l_mark[-4].node.lexeme)].return_type.c_str());
                    function_call.pop();
                    sprintf(yyval.node.lexeme, "%s", get_temp().c_str());
                    tac.push_back(string(yyval.node.lexeme) + " = @call " + string(yystack.l_mark[-4].node.lexeme) + " " + function_table[string(yystack.l_mark[-4].node.lexeme)].return_type + " " + to_string(function_table[string(yystack.l_mark[-4].node.lexeme)].num_params));
                }
#line 2813 "y.tab.c"
break;
case 135:
#line 779 "parser.y"
	{
                    int size = function_call.top().second.size();
                    string type = function_call.top().second[size - 1];
                    function_call.top().second.pop_back();
                    if(!check_type(type, string(yystack.l_mark[-2].node.type))){
                        sem_errors.push_back("Function " + function_call.top().first + " expects type " + type + " in line " + to_string(countLine + 1));
                    }
                }
#line 2825 "y.tab.c"
break;
case 136:
#line 787 "parser.y"
	{
                    int size = function_call.top().second.size();
                    string type = function_call.top().second[size - 1];
                    function_call.top().second.pop_back();
                    if(!check_type(type, string(yystack.l_mark[0].node.type))){
                        sem_errors.push_back("Function " + function_call.top().first + " expects type " + type + " in line " + to_string(countLine + 1));
                    }
                }
#line 2837 "y.tab.c"
break;
case 138:
#line 796 "parser.y"
	{
                    tac.push_back("param " + string(yystack.l_mark[0].node.lexeme) + " " + string(yystack.l_mark[0].node.type));
                }
#line 2844 "y.tab.c"
break;
#line 2846 "y.tab.c"
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
