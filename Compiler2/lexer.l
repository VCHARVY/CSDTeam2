%{
    #include "y.tab.h"
    int countLine = 0;    
%}

%option yylineno

alpha [a-zA-Z_]
digit [0-9]

%%

"int"                       {strcpy(yylval.node.lexeme, yytext); return INT;}
"char"                      {strcpy(yylval.node.lexeme, yytext); return CHAR;}
"float"                     {strcpy(yylval.node.lexeme, yytext); return FLOAT;}
"string"                    {strcpy(yylval.node.lexeme, yytext); return STRING;}
"void"                      {strcpy(yylval.node.lexeme, yytext); return VOID;}
"return"                    {strcpy(yylval.node.lexeme, yytext); return RETURN;}

"class"                     {strcpy(yylval.node.lexeme, yytext); return CLASS;}
"public"                    {strcpy(yylval.node.lexeme, yytext); return PUBLIC;}
"private"                   {strcpy(yylval.node.lexeme, yytext); return PRIVATE;}
"protected"                 {strcpy(yylval.node.lexeme, yytext); return PROTECTED;}
"static"                    {strcpy(yylval.node.lexeme, yytext); return STATIC;}

"sysin"                     {strcpy(yylval.node.lexeme, yytext); return INPUT;}
"syswrite"                  {strcpy(yylval.node.lexeme, yytext); return OUTPUT;}

"if"                        {strcpy(yylval.node.lexeme, yytext); return IF;}
"else"                      {strcpy(yylval.node.lexeme, yytext); return ELSE;}
"while"                     {strcpy(yylval.node.lexeme, yytext); return WHILE;}
"for"                       {strcpy(yylval.node.lexeme, yytext); return FOR;}
"break"                     {strcpy(yylval.node.lexeme, yytext); return BREAK;}
"continue"                  {strcpy(yylval.node.lexeme, yytext); return CONTINUE;}

{digit}+                    {strcpy(yylval.node.lexeme, yytext); return INT_NUM;}
{digit}*\.{digit}+          {strcpy(yylval.node.lexeme, yytext); return FLOAT_NUM;}
{alpha}({alpha}|{digit})*   {strcpy(yylval.node.lexeme, yytext); return ID;}

"+"                         {strcpy(yylval.node.lexeme, yytext); return ADD;}
"-"                         {strcpy(yylval.node.lexeme, yytext); return SUB;}
"*"                         {strcpy(yylval.node.lexeme, yytext); return MUL;}
"/"                         {strcpy(yylval.node.lexeme, yytext); return DIV;}
"%"                         {strcpy(yylval.node.lexeme, yytext); return MOD;}
"="                         {strcpy(yylval.node.lexeme, yytext); return ASSIGN;}

"=="                        {strcpy(yylval.node.lexeme, yytext); return EQ;}
"!="                        {strcpy(yylval.node.lexeme, yytext); return NE;}
"<"                         {strcpy(yylval.node.lexeme, yytext); return LT;}
">"                         {strcpy(yylval.node.lexeme, yytext); return GT;}
"<="                        {strcpy(yylval.node.lexeme, yytext); return LE;}
">="                        {strcpy(yylval.node.lexeme, yytext); return GE;}

"&&"                        {strcpy(yylval.node.lexeme, yytext); return AND;}
"||"                        {strcpy(yylval.node.lexeme, yytext); return OR;}

"&"                         {strcpy(yylval.node.lexeme, yytext); return BITAND;}
"|"                         {strcpy(yylval.node.lexeme, yytext); return BITOR;}
"~"                         {strcpy(yylval.node.lexeme, yytext); return NEG;}

";"                         {strcpy(yylval.node.lexeme, yytext); return SCOL;}
","                         {strcpy(yylval.node.lexeme, yytext); return COMMA;}
"("                         {strcpy(yylval.node.lexeme, yytext); return LP;}
")"                         {strcpy(yylval.node.lexeme, yytext); return RP;}
"{"                         {strcpy(yylval.node.lexeme, yytext); return LF;}
"}"                         {strcpy(yylval.node.lexeme, yytext); return RF;}
"["                         {strcpy(yylval.node.lexeme, yytext); return LB;}
"]"                         {strcpy(yylval.node.lexeme, yytext); return RB;}

[\n]                        {countLine++;}
\/\/.*                      {;}
\/\*(.*\n)*.*\*\/           {;} 
[ \t]*                      {;}
["].*["]                    { strcpy(yylval.node.lexeme, yytext); return STR; }
['].[']                     { strcpy(yylval.node.lexeme, yytext); return CHARACTER; }
.                           { ; }

%%

int yywrap() {
    return 1;
}