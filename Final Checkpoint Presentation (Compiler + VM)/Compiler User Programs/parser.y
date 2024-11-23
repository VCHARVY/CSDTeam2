%{
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

// for array declaration with initialization
string curr_array;
int arr_index=0;

//temp variables free
queue<string> free_temp;
set<string> const_temps;

//functions
bool check_type(string l, string r);
bool check_declaration(string variable);
bool check_scope(string variable);
bool check_multiple_declaration(string variable);
string get_temp();

struct var_info {
    string data_type;
    int scope;
    int size;   // for arrays
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


%}

%union {
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
}


%token <node> INT CHAR FLOAT STRING VOID RETURN
%token <node> CLASS PUBLIC PRIVATE PROTECTED NEW STRUCT
%token <node> INPUT OUTPUT
%token <node> IF ELSE WHILE FOR BREAK CONTINUE
%token <node> INT_NUM FLOAT_NUM ID
%token <node> ADD SUB MUL DIV ASSIGN MOD
%token <node> EQ NE LT GT LE GE
%token <node> AND OR
%token <node> SCOL COMMA LP RP LF RF LB RB
%token <node> STR CHARACTER
%token <node> BITAND BITOR NEG
%token <node> DQ SQ NULLP

%left AND OR
%left EQ NE
%left LT GT LE GE
%left ADD SUB
%left MUL DIV
%right NEG


%type <node> LIST FUNCTION FUNCTION_PREFIX DATA_TYPE PARAMLIST PARAM STMTLIST CLASSDEF CLASSBODY CLASSMEMBER ACCESS_MODIFIER STMT DECLARATION ASSIGNMENT EXPR RETURN_STMT UNARY_EXPR PRIMARY_EXPR UNARY_OP CONST IF_STMT ELIF_STMT ELSE_STMT WHILE_STMT FOR_STMT FUNCTION_CALL ARGUMENTLIST ARG FUNCTION_TYPE POSTFIX_EXPR ARR_VALUES STRUCTDEF STRUCTVAR GLOBAL_DEC

%%

PROGRAM         :   LIST 
                |   GLOBAL_DEC LIST;
GLOBAL_DEC      :   {
                        current_function= "global"; scope_counter++;
                    } 
                    DECLARATION SCOL {
                        global_table[string($2.lexeme)] = {string($1.type), string($1.lexeme)};
                        scope_counter--;
                    };
LIST            :   LIST FUNCTION
                |   LIST CLASSDEF
                |   LIST STRUCTDEF
                |   LIST FUNCTION
                | ;

FUNCTION        :   FUNCTION_PREFIX LF 
                    {
                        hasReturnStmt = 0;
                        scope_history.push(++scope_counter);
                        strcpy($$.lexeme, $1.lexeme);
                    } STMTLIST RF 
                    {
                        if(function_table[string($1.lexeme)].return_type != "VOID" && hasReturnStmt == 0){
                            sem_errors.push_back("Function type " + function_table[string($1.lexeme)].return_type + "\n");
                            sem_errors.push_back("Function " + string($1.lexeme) + " does not have a return statement in line " + to_string(countLine + 1));
                        }
                        if(function_table[string($1.lexeme)].return_type == "VOID" && hasReturnStmt == 1){
                            sem_errors.push_back("Function type " + function_table[string($1.lexeme)].return_type + "\n");
                            sem_errors.push_back("Function " + string($1.lexeme) + " has a return statement in line " + to_string(countLine + 1));
                        }
                        scope_history.pop();
                        scope_counter--;
                        tac.push_back("end:\n");
                        hasReturnStmt = 0;
                    } ;
FUNCTION_PREFIX :   FUNCTION_TYPE ID {
                        if(current_class != ""){
                            tac.push_back(current_class + "." + string($2.lexeme) + ":" + " " + string($1.type));
                            current_function = current_class + "." + string($2.lexeme);
                        }
                        else {
                            if(function_table.find(string($2.lexeme)) != function_table.end()){
                                sem_errors.push_back("Function " + string($2.lexeme) + " already declared in line " + to_string(countLine + 1));
                            }
                            tac.push_back(string($2.lexeme) + ":" + " " + string($1.type));
                            current_function = string($2.lexeme);
                        }

                    } LP PARAMLIST RP{
                        function_table[current_function].return_type = string($1.type);
                        function_table[current_function].num_params = $5.nParams;
                        strcpy($$.lexeme, (current_class == "" ? string($2.lexeme) : current_class + "." + string($2.lexeme)).c_str());
                    } ;

FUNCTION_TYPE   :   VOID {
                    sprintf($$.type, "VOID");
                    strcpy($$.type, "VOID");
                }
                | INT {
                    strcpy($$.type, "INT");
                }
                |   CHAR {
                    strcpy($$.type, "CHAR");
                }
                |   FLOAT {
                    strcpy($$.type, "FLOAT");
                }
                |   STRING {
                    strcpy($$.type, "STRING");
                }
                |   INT MUL {
                    strcpy($$.type, "INT*");
                }
                |   CHAR MUL {
                    strcpy($$.type, "CHAR*");
                }
                |   ID MUL {
                    strcpy($$.type, "STRUCT*");
                }
                |   VOID MUL {
                    strcpy($$.type, "VOID*");
                }
DATA_TYPE       :   INT {
                    strcpy($$.type, "INT");
                }
                |   CHAR {
                    strcpy($$.type, "CHAR");
                }
                |   FLOAT {
                    strcpy($$.type, "FLOAT");
                }
                |   STRING {
                    strcpy($$.type, "STRING");
                }
                |   INT MUL {
                    strcpy($$.type, "INT*");
                }
                |   CHAR MUL {
                    strcpy($$.type, "CHAR*");
                } 
                |   ID MUL {
                    strcpy($$.type, "STRUCT*");
                }
                |   VOID MUL {
                    strcpy($$.type, "VOID*");
                }
                |   INT LB RB {
                    strcpy($$.type, "INT");
                }
                |   CHAR LB RB {
                    strcpy($$.type, "CHAR");
                }
                |   FLOAT LB RB {
                    strcpy($$.type, "FLOAT");
                }
PARAMLIST       :   PARAM {
                    function_table[current_function].param_types.push_back(string($1.type));
                    function_table[current_function].symbol_table[string($1.lexeme)] = {string($1.type), scope_counter +1, 0, 0, countLine + 1};
                    tac.push_back("- arg " + string($1.type) + " " + string($1.lexeme));
                } COMMA PARAMLIST {
                    $$.nParams = $4.nParams + 1;
                }
                |   PARAM {
                    function_table[current_function].param_types.push_back(string($1.type));
                    function_table[current_function].symbol_table[string($1.lexeme)] = {string($1.type), scope_counter +1, 0, 0, countLine + 1};
                    tac.push_back("- arg " + string($1.type) + " " + string($1.lexeme));
                    $$.nParams = 1;
                }
                | ;
PARAM           :   DATA_TYPE ID {
                    $$.nParams = 1;
                    strcpy($$.type, $1.type);
                    strcpy($$.lexeme, $2.lexeme);
                };
STMTLIST        :   STMT STMTLIST
                | ;
CLASSDEF        :   CLASS ID LF {
                    current_class = string($2.lexeme);
                    if(class_table.find(current_class) != class_table.end()){
                        sem_errors.push_back("Class " + current_class + " already declared in line " + to_string(countLine + 1));
                    }
                } CLASSBODY RF {
                    current_class = "";
                        
                };
CLASSBODY       :   CLASSMEMBER CLASSBODY
                | ;
CLASSMEMBER     :   ACCESS_MODIFIER DECLARATION SCOL {
                    if(class_table[current_class].field_table.find(string($2.lexeme)) != class_table[current_class].field_table.end()){
                        sem_errors.push_back("Field " + string($2.lexeme) + " already declared in class " + current_class + " in line " + to_string(countLine + 1));
                    }
                    class_table[current_class].field_table[string($2.lexeme)] = {string($1.lexeme), string($1.type), countLine + 1};
                }
                |   ACCESS_MODIFIER FUNCTION {
                    if(class_table[current_class].method_table.find(string($2.lexeme)) != class_table[current_class].method_table.end()){
                        sem_errors.push_back("Method " + string($2.lexeme) + " already declared in class " + current_class + " in line " + to_string(countLine + 1));
                    }
                    class_table[current_class].method_table[string($2.lexeme)] = {string($2.type), $2.nParams, current_func_param_types, string($1.lexeme)};
                };
ACCESS_MODIFIER :   PUBLIC
                |   PRIVATE
                |   PROTECTED ;
STRUCTDEF       :   STRUCT ID LF STRUCTVAR RF SCOL;
STRUCTVAR       :   DECLARATION SCOL STRUCTVAR
                |   STRUCT ID ID SCOL STRUCTVAR
                | ;
STMT            :   DECLARATION SCOL
                |   ASSIGNMENT SCOL
                |   EXPR SCOL 
                |   RETURN_STMT SCOL
                |   IF_STMT
                |   WHILE_STMT
                |   FOR_STMT
                |   BREAK SCOL {
                    if(loop_break.empty()){
                        sem_errors.push_back("Break statement outside loop in line " + to_string(countLine + 1));
                    }
                    else{
                        tac.push_back("GOTO #L" + to_string(loop_break.top()));
                    }
                }
                |   CONTINUE SCOL {
                    if(loop_continue.empty()){
                        sem_errors.push_back("Continue statement outside loop in line " + to_string(countLine + 1));
                    }
                    else{
                        tac.push_back("GOTO #L" + to_string(loop_continue.top()));
                    }
                }
                |   INPUT LP ID RP SCOL {
                    check_declaration(string($3.lexeme));
                    tac.push_back("input " + string($3.lexeme) + " " + function_table[current_function].symbol_table[string($3.lexeme)].data_type);
                }
                |   INPUT LP ID LB EXPR RB RP SCOL {
                    check_declaration(string($3.lexeme));
                    string temp = get_temp();
                    tac.push_back("input " + temp + " " + function_table[current_function].symbol_table[string($3.lexeme)].data_type);
                    tac.push_back(string($3.lexeme) + "[" + string($5.lexeme) + "] = " + temp + " " + function_table[current_function].symbol_table[string($3.lexeme)].data_type);
                    free_temp.push(temp);
                }
                |   OUTPUT LP EXPR RP SCOL {
                    tac.push_back("output " + string($3.lexeme) + " " + string($3.type));
                }
                |   OUTPUT LP DQ STR DQ RP SCOL {
                    tac.push_back("output " + string($4.lexeme) + " STR");
                }
                |   OUTPUT LP SQ CHARACTER SQ RP SCOL {
                    tac.push_back("output " + string($4.lexeme) + " CHAR");
                }
                ;
DECLARATION     :   DATA_TYPE ID {
                    strcpy($$.lexeme, $2.lexeme);
                    tac.push_back("- " + string($1.type) + " " + string($2.lexeme));
                    function_table[current_function].symbol_table[string($2.lexeme)] = {string($1.type), scope_counter, 0, 0, countLine + 1};
                }
                |   DATA_TYPE ID ASSIGN EXPR {
                    if(string($4.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    strcpy($$.lexeme, $2.lexeme);
                    check_type(string($1.type), string($4.type));
                    tac.push_back("- " + string($1.type) + " " + string($2.lexeme));
                    tac.push_back(string($2.lexeme) + " = " + string($4.lexeme) + " " + string($1.type));
                    function_table[current_function].symbol_table[string($2.lexeme)] = {string($1.type), scope_counter, 0, 0, countLine + 1};

                    if(const_temps.find(string($4.lexeme)) == const_temps.end() && $4.lexeme[0] == '@') free_temp.push(string($4.lexeme));
                }
                |   STRING ID ASSIGN STR {
                    strcpy($$.lexeme, $2.lexeme);
                    check_multiple_declaration(string($2.lexeme));
                    tac.push_back("- STR " + string($2.lexeme));
                    tac.push_back(string($2.lexeme) + " = " + string($4.lexeme) + " STR");
                    function_table[current_function].symbol_table[string($2.lexeme)] = {"STR", scope_counter, 0, 0, countLine + 1};
                }
                |   DATA_TYPE ID LB INT_NUM RB {
                    strcpy($$.lexeme, $2.lexeme);
                    check_multiple_declaration(string($2.lexeme));
                    tac.push_back("- " + string($1.type) + " " + string($2.lexeme) + "[" + string($4.lexeme) + "]");
                    function_table[current_function].symbol_table[string($2.lexeme)] = {string($1.type), scope_counter, stoi(string($4.lexeme)), 1, countLine + 1};
                }
                |   DATA_TYPE ID LB INT_NUM RB ASSIGN {
                    strcpy($$.lexeme, $2.lexeme);
                    check_multiple_declaration(string($2.lexeme));
                    tac.push_back("- " + string($1.type) + " " + string($2.lexeme) + "[" + string($4.lexeme) + "]");
                    function_table[current_function].symbol_table[string($2.lexeme)] = {string($1.type), scope_counter, stoi(string($4.lexeme)), 1, countLine + 1};
                    curr_array = string($2.lexeme);
                } LF ARR_VALUES RF 
                |   ID ID ASSIGN NEW ID LP RP {
                    if(strcmp($1.lexeme, $5.lexeme) != 0){
                        sem_errors.push_back("Cannot assign " + string($5.lexeme) + " to " + string($1.lexeme) + " in line " + to_string(countLine + 1));
                    }
                    tac.push_back("= " + string($1.lexeme) + " object " + string($2.lexeme));
                }
ARR_VALUES      :   CONST {
                    check_type(function_table[current_function].symbol_table[curr_array].data_type, string($1.type));
                    tac.push_back(curr_array + "[" + to_string(arr_index++) + "] = " + string($1.lexeme) + " " + function_table[current_function].symbol_table[curr_array].data_type);
                    if(arr_index > function_table[current_function].symbol_table[curr_array].size){
                        sem_errors.push_back("Array " + curr_array + " out of bounds in line " + to_string(countLine + 1));
                    }
                } COMMA ARR_VALUES
                |   CONST {
                    check_type(function_table[current_function].symbol_table[curr_array].data_type, string($1.type));
                    tac.push_back(curr_array + "[" + to_string(arr_index++) + "] = " + string($1.lexeme) + " " + function_table[current_function].symbol_table[curr_array].data_type);
                    if(arr_index > function_table[current_function].symbol_table[curr_array].size){
                        sem_errors.push_back("Array " + curr_array + " out of bounds in line " + to_string(countLine + 1));
                    }
                };
RETURN_STMT     :   RETURN EXPR {
                    check_type(function_table[current_function].return_type, string($2.type));
                    tac.push_back("return " + string($2.lexeme) + " " + function_table[current_function].return_type);
                    hasReturnStmt = 1;
                }
                |   RETURN {
                    if(function_table[current_function].return_type != "VOID"){
                        sem_errors.push_back("Function " + current_function + " expects a return statement in line " + to_string(countLine + 1));
                    }
                    tac.push_back("return " + function_table[current_function].return_type);
                    hasReturnStmt = 0;
                };
EXPR            :   EXPR ADD EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR SUB EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR MUL EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR DIV EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR EQ EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR NE EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR LT EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR GT EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR LE EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR GE EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR MOD EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR AND EXPR {
                    add_tac($$, $1, $2, $3);
                    string l0 = "#L" + to_string(++label_counter);
                    string l1 = "#L" + to_string(++label_counter);
                    string l2 = "#L" + to_string(++label_counter);
                    string l3 = "#L" + to_string(++label_counter);
                    string dtype = string($$.type);

                    tac.push_back("if " + string($1.lexeme) + " GOTO " + l3 + " else GOTO " + l1);
                    tac.push_back(l3 + ":");
                    tac.push_back("if " + string($3.lexeme) + " GOTO " + l0 + " else GOTO " + l1);
                    tac.push_back(l0 + ":");
                    tac.push_back(string($$.lexeme) + " = 1 " + dtype);
                    tac.push_back("GOTO " + l2);
                    tac.push_back(l1 + ":");
                    tac.push_back(string($$.lexeme) + " = 0 " + dtype);
                    tac.push_back(l2 + ":");

                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));

                    label_counter++;
                }
                |   EXPR OR EXPR {
                    add_tac($$, $1, $2, $3)
                    string l0 = "#L" + to_string(++label_counter);
                    string l1 = "#L" + to_string(++label_counter);
                    string l2 = "#L" + to_string(++label_counter);
                    string l3 = "#L" + to_string(++label_counter);
                    string dtype = string($$.type);

                    tac.push_back("if " + string($1.lexeme) + " GOTO " + l0 + " else GOTO " + l3);
                    tac.push_back(l3 + ":");
                    tac.push_back("if " + string($3.lexeme) + " GOTO " + l0 + " else GOTO " + l1);
                    tac.push_back(l0 + ":");
                    tac.push_back(string($$.lexeme) + " = 1 " + dtype);
                    tac.push_back("GOTO " + l2);
                    tac.push_back(l1 + ":");
                    tac.push_back(string($$.lexeme) + " = 0 " + dtype);
                    tac.push_back(l2 + ":");

                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));

                    label_counter++;
                }
                |   EXPR BITAND EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   EXPR BITOR EXPR {
                    add_tac($$, $1, $2, $3);
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($3.lexeme) + " " + string($$.type));
                    
                    if(const_temps.find(string($1.lexeme)) == const_temps.end() && $1.lexeme[0] == '@') free_temp.push(string($1.lexeme));
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                }
                |   UNARY_EXPR {
                    strcpy($$.lexeme, $1.lexeme);
                    strcpy($$.type, $1.type);
                    sprintf($$.lexeme, "%s", $1.lexeme);
                }
                |   PRIMARY_EXPR {
                    strcpy($$.lexeme, $1.lexeme);
                    strcpy($$.type, $1.type);
                    sprintf($$.lexeme, "%s", $1.lexeme);
                }
                |   POSTFIX_EXPR {
                    strcpy($$.lexeme, $1.lexeme);
                    strcpy($$.type, $1.type);
                    sprintf($$.lexeme, "%s", $1.lexeme);
                };
POSTFIX_EXPR    :   FUNCTION_CALL {
                    strcpy($$.type, $1.type);
                    sprintf($$.lexeme, "%s", $1.lexeme);
                }
                |   ID LB EXPR RB {
                    // if(check_declaration(string($1.lexeme)) && function_table[current_function].symbol_table[string($1.lexeme)].isArray == 0){
                    //     sem_errors.push_back("Variable " + string($1.lexeme) + " is not an array in line " + to_string(countLine + 1));
                    // }
                    check_scope(string($1.lexeme));
                    strcpy($$.type, function_table[current_function].symbol_table[string($1.lexeme)].data_type.c_str());
                    sprintf($$.lexeme, get_temp().c_str());
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + "[" + string($3.lexeme) + "] " + $$.type);

                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@') free_temp.push(string($3.lexeme));
                };
UNARY_EXPR      :   UNARY_OP PRIMARY_EXPR {
                    strcpy($$.type, $2.type);
                    sprintf($$.lexeme, get_temp().c_str());
                    if(string($1.lexeme) == "~" || string($1.lexeme) == "-"){
                        tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($2.lexeme) + " " + string($$.type));
                    }
                    else if(string($1.lexeme) == "+"){
                        tac.push_back(string($$.lexeme) + " = " + string($2.lexeme) + " " + string($$.type));
                    }
                    else{
                        tac.push_back(string($$.lexeme) + " = ~ " + string($2.lexeme) + " " + string($$.type));
                    }

                    if(const_temps.find(string($2.lexeme)) == const_temps.end() && $2.lexeme[0] == '@') free_temp.push(string($2.lexeme));
                };
PRIMARY_EXPR    :   ID {
                    //check_declaration(string($1.lexeme));
                    strcpy($$.type, function_table[current_function].symbol_table[string($1.lexeme)].data_type.c_str());
                    strcpy($$.lexeme, $1.lexeme);
                }
                |   CONST {
                    strcpy($$.type, $1.type);
                    
                    string t = get_temp();
                    sprintf($$.lexeme, t.c_str());
                    tac.push_back(string($$.lexeme) + " = " + string($1.lexeme) + " " + string($1.type));
                    const_temps.insert(t);
                }
                |   LP EXPR RP {
                    strcpy($$.type, $2.type);
                    strcpy($$.lexeme, $2.lexeme);
                }
                |   NULLP {
                    strcpy($$.type, "NULL");
                    strcpy($$.lexeme, "NULL");
                };
UNARY_OP        :   ADD
                |   SUB
                |   NEG ;
CONST           :   INT_NUM {
                    strcpy($$.type, "INT");
                    strcpy($$.lexeme, $1.lexeme);
                }
                |   FLOAT_NUM {
                    strcpy($$.type, "FLOAT");
                    strcpy($$.lexeme, $1.lexeme);
                }
                |   CHARACTER {
                    strcpy($$.type, "CHAR");
                    strcpy($$.lexeme, $1.lexeme);
                };
ASSIGNMENT      :   ID ASSIGN EXPR {
                    if(string($3.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    check_type(function_table[current_function].symbol_table[string($1.lexeme)].data_type, string($3.type));
                    check_scope(string($1.lexeme));
                    check_declaration(string($1.lexeme));
                    tac.push_back(string($1.lexeme) + " = " + string($3.lexeme) + " " + function_table[current_function].symbol_table[string($1.lexeme)].data_type);

                    //checking if we can free any temp variables
                    if(const_temps.find(string($3.lexeme)) == const_temps.end() && $3.lexeme[0] == '@')
                        free_temp.push(string($3.lexeme));

                }
                |   ID LB EXPR RB ASSIGN EXPR {
                    if(string($6.type) == "VOID"){
                        sem_errors.push_back("Cannot assign void to variable in line " + to_string(countLine + 1));
                    }
                    check_type(function_table[current_function].symbol_table[string($1.lexeme)].data_type, string($6.type));
                    // if(check_declaration(string($1.lexeme)) && function_table[current_function].symbol_table[string($1.lexeme)].isArray == 0){
                    //     sem_errors.push_back("Variable " + string($1.lexeme) + " is not an array in line " + to_string(countLine + 1));
                    // }
                    check_scope(string($1.lexeme));
                    tac.push_back(string($1.lexeme) + "[" + string($3.lexeme) + "] = " + string($6.lexeme) + " " + function_table[current_function].symbol_table[string($1.lexeme)].data_type);
                        
                } ;
IF_STMT         :   IF {
                    sprintf($1.parentNext, "#L%d", label_counter++);
                }
                LP EXPR RP {
                    tac.push_back("if " + string($4.lexeme) + " GOTO #L" + to_string(label_counter) + " else GOTO #L" + to_string(label_counter+1));
                    sprintf($4.if_body, "#L%d", label_counter++);
                    sprintf($4.else_body, "#L%d", label_counter++); 
                    tac.push_back(string($4.if_body) + ":");
                }
                LF {
                    scope_history.push(++scope_counter);
                }
                STMTLIST RF {
                    tac.push_back("GOTO " + string($1.parentNext));
                    tac.push_back(string($4.else_body) + ":");
                    scope_history.pop(); 
                    scope_counter--;
                }
                ELSE_STMT {
                    tac.push_back(string($1.parentNext) + ":");
                };

ELIF_STMT       :   ELSE IF {
                    string str = tac[tac.size()-2].substr(5);
                    char* hold = const_cast<char*>(str.c_str());
                    sprintf($2.parentNext, "#L%d", label_counter++);
                } LP EXPR RP {
                    tac.push_back("if " + string($5.lexeme) + " GOTO #L" + to_string(label_counter) + " else GOTO #L" + to_string(label_counter+1));
                    sprintf($5.if_body, "#L%d", label_counter++);
                    sprintf($5.else_body, "#L%d", label_counter++);
                    tac.push_back(string($5.if_body) + ":");

                    if(const_temps.find(string($5.lexeme)) == const_temps.end() && $5.lexeme[0] == '@') free_temp.push(string($5.lexeme));
                } LF {
                    scope_history.push(++scope_counter);
                
                } STMTLIST RF {
                    tac.push_back("GOTO " + string($2.parentNext));
                    tac.push_back(string($5.else_body) + ":");
                    scope_history.pop();
                    scope_counter--;
                } ELIF_STMT
                | ;
ELSE_STMT       :   ELSE LF {
                    scope_history.push(++scope_counter);
                }
                STMTLIST RF {
                    scope_history.pop(); 
                    scope_counter--;
                }
                | ;
WHILE_STMT      :   WHILE {
                    sprintf($1.loop_body, "#L%d", label_counter);
                    loop_continue.push(label_counter++);
                    tac.push_back("\n" + string($1.loop_body) + ":");
                } LP EXPR RP {
                    sprintf($4.if_body, "#L%d", label_counter++);
                    loop_break.push(label_counter);
                    sprintf($4.else_body, "#L%d", label_counter++);

                    tac.push_back("\nif " + string($4.lexeme) + " GOTO " + string($4.if_body) + " else GOTO " + string($4.else_body));
                    tac.push_back("\n" + string($4.if_body) + ":");

                    if(const_temps.find(string($4.lexeme)) == const_temps.end() && $4.lexeme[0] == '@') free_temp.push(string($4.lexeme));
                } LF {
                    scope_history.push(++scope_counter);
                } STMTLIST RF {
                    scope_history.pop();
                    scope_counter--;
                    tac.push_back("GOTO " + string($1.loop_body));
                    tac.push_back(string($4.else_body) + ":");
                    loop_break.pop();
                    loop_continue.pop();
                };
FOR_STMT        :   FOR LP ASSIGNMENT SCOL {
                    sprintf($1.loop_body, "#L%d", label_counter++);
                    tac.push_back("\n" + string($1.loop_body) + ":");
                } EXPR SCOL {
                    sprintf($6.if_body, "#L%d", label_counter++);
                    loop_break.push(label_counter);
                    sprintf($6.else_body, "#L%d", label_counter++);
                    tac.push_back("\nif " + string($6.lexeme) + " GOTO " + string($6.if_body) + " else GOTO " + string($6.else_body));
                    
                    sprintf($6.loop_body, "#L%d", label_counter);
                    loop_continue.push(label_counter++);
                    tac.push_back("\n" + string($6.if_body) + ":");

                    if(const_temps.find(string($6.lexeme)) == const_temps.end() && $6.lexeme[0] == '@') free_temp.push(string($6.lexeme));
                } ASSIGNMENT RP {
                    tac.push_back("GOTO " + string($1.loop_body));
                    tac.push_back("\n" + string($6.if_body) + ":");
                } LF {
                    scope_history.push(++scope_counter);
                } STMTLIST RF {
                    scope_history.pop();
                    scope_counter--;
                    tac.push_back("GOTO " + string($6.loop_body));
                    tac.push_back(string($6.else_body) + ":");
                    loop_break.pop();
                    loop_continue.pop();
                };
FUNCTION_CALL   :   ID {
                    function_call.push({string($1.lexeme), function_table[string($1.lexeme)].param_types});
                } LP ARGUMENTLIST RP {
                    strcpy($$.type, function_table[string($1.lexeme)].return_type.c_str());
                    function_call.pop();
                    sprintf($$.lexeme, "%s", get_temp().c_str());
                    tac.push_back(string($$.lexeme) + " = @call " + string($1.lexeme) + " " + function_table[string($1.lexeme)].return_type + " " + to_string(function_table[string($1.lexeme)].num_params));
                };
ARGUMENTLIST    :   ARG COMMA ARGUMENTLIST {
                    int size = function_call.top().second.size();
                    string type = function_call.top().second[size - 1];
                    function_call.top().second.pop_back();
                    if(!check_type(type, string($1.type))){
                        sem_errors.push_back("Function " + function_call.top().first + " expects type " + type + " in line " + to_string(countLine + 1));
                    }
                }
                |   ARG {
                    int size = function_call.top().second.size();
                    string type = function_call.top().second[size - 1];
                    function_call.top().second.pop_back();
                    if(!check_type(type, string($1.type))){
                        sem_errors.push_back("Function " + function_call.top().first + " expects type " + type + " in line " + to_string(countLine + 1));
                    }
                }
                | ;
ARG             :   EXPR {
                    tac.push_back("param " + string($1.lexeme) + " " + string($1.type));
                };



%%

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
