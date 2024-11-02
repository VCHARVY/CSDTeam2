%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int yylex();
extern int yyparse();
extern int countLine;
void yyerror(const char *s);

typedef struct Node {
    char lexeme[100];
} Node;

#define YYSTYPE Node
%}

%token INT CHAR FLOAT STRING VOID RETURN
%token CLASS PUBLIC PRIVATE PROTECTED
%token INPUT OUTPUT
%token IF ELSE WHILE FOR BREAK CONTINUE
%token INT_NUM FLOAT_NUM ID
%token ADD SUB MUL DIV MOD ASSIGN
%token EQ NE LT GT LE GE
%token AND OR
%token SCOL COMMA LP RP LF RF LB RB
%token STR CHARACTER
%token BITAND BITOR NEG

%%

PROGRAM         :   LIST ;
LIST            :   LIST FUNCTION
                |   LIST CLASSDEF
                | ;
FUNCTION        :   FUNCTION_PREFIX LF STMTLIST RF ;
FUNCTION_PREFIX :   FUNCTION_TYPE ID LP PARAMLIST RP ;
FUNCTION_TYPE   :   VOID
                |   DATA_TYPE ;
DATA_TYPE       :   INT
                |   CHAR
                |   FLOAT
                |   STRING ;
PARAMLIST       :   PARAM COMMA PARAMLIST
                |   PARAM 
                | ;
PARAM           :   DATA_TYPE ID ;
STMTLIST        :   STMT STMTLIST
                | ;
CLASSDEF        :   CLASS ID LF CLASSBODY RF ;
CLASSBODY       :   CLASSBODY CLASSMEMBER
                | ;
CLASSMEMBER     :   ACCESS_MODIFIER DATA_TYPE ID SCOL
                |   ACCESS_MODIFIER FUNCTION
                | ;
ACCESS_MODIFIER :   PUBLIC
                |   PRIVATE
                |   PROTECTED ;
STMT            :   DECLARATION SCOL
                |   ASSIGNMENT SCOL
                |   EXPR SCOL 
                |   RETURN_STMT SCOL
                |   IF_STMT
                |   WHILE_STMT
                |   FOR_STMT
                |   BREAK SCOL
                |   CONTINUE SCOL
                |   INPUT LP ID RP SCOL
                |   OUTPUT LP EXPR RP SCOL ;
DECLARATION     :   DATA_TYPE ID
                |   DATA_TYPE ID ASSIGN EXPR 
                |   STRING ID ASSIGN STR 
                |   DATA_TYPE ID LP INT_NUM RP
                |   DATA_TYPE ID LP INT_NUM RP ASSIGN LF ARR_VALUES RF ;
ARR_VALUES      :   CONST COMMA ARR_VALUES
                |   CONST ;
RETURN_STMT     :   RETURN EXPR ;
EXPR            :   EXPR ADD EXPR
                |   EXPR SUB EXPR
                |   EXPR MUL EXPR
                |   EXPR DIV EXPR
                |   EXPR MOD EXPR
                |   EXPR EQ EXPR
                |   EXPR NE EXPR
                |   EXPR LT EXPR
                |   EXPR GT EXPR
                |   EXPR LE EXPR
                |   EXPR GE EXPR
                |   EXPR AND EXPR
                |   EXPR OR EXPR
                |   EXPR BITAND EXPR
                |   EXPR BITOR EXPR
                |   UNARY_EXPR
                |   PRIMARY_EXPR
                |   POSTFIX_EXPR ;
POSTFIX_EXPR    :   FUNCTION_CALL
                |   ID LB EXPR RB ;
UNARY_EXPR      :   UNARY_OP PRIMARY_EXPR ;
PRIMARY_EXPR    :   ID
                |   CONST
                |   LP EXPR RP ;
UNARY_OP        :   ADD
                |   SUB
                |   NEG ;
CONST           :   INT_NUM
                |   FLOAT_NUM
                |   CHARACTER ;
ASSIGNMENT      :   ID ASSIGN EXPR 
                |   ID LB EXPR RB ASSIGN EXPR ;
IF_STMT         :   IF LP EXPR RP LF STMTLIST RF ELIF_STMT ELSE_STMT ;
ELIF_STMT       :   ELSE IF LP EXPR RP LF STMTLIST RF ELIF_STMT
                | ;
ELSE_STMT       :   ELSE LF STMTLIST RF ;
WHILE_STMT      :   WHILE LP EXPR RP LF STMTLIST RF ;
FOR_STMT        :   FOR LP ASSIGNMENT SCOL EXPR SCOL ASSIGNMENT RP LF STMTLIST RF ;
FUNCTION_CALL   :   ID LP ARGUMENTLIST RP ;
ARGUMENTLIST    :   ARG COMMA ARGUMENTLIST
                |   ARG
                | ;
ARG             :   EXPR ;



%%

void yyerror(const char *s) {
    fprintf(stderr, "Error at line %d: %s\n", countLine, s);
}

int main() {
    yyparse();
    return 0;
}
