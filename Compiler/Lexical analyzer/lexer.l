%{
        #include<iostream>
        #include<cstring>
        #include<utility>
        #include <fstream>
        #include <vector>
        #include <algorithm>
        #include <unordered_map>
        using namespace std;
        #include "ast.h"
        #include "parser.hpp"
        void count(void);
        int line = 1;
        extern string funcName;
        void yyerror(char const*);        

        unordered_map<string,yytokentype>m(
                {
                        {"continue",CONTINUE},
                        {"for",FOR},
                        {"new",NEW},
                        {"if",IF},
                        {"package",PACKAGE},
                        {"boolean",BOOLEAN},
                        {"private",PRIVATE},
                        {"this",THIS},
                        {"break",BREAK},
                        {"double",DOUBLE},
                        {"throw",THROW},
                        {"byte",BYTE},
                        {"else",ELSE},
                        {"public",PUBLIC},
                        {"return",RETURN},
                        {"int",INT},
                        {"short",SHORT},
                        {"char",CHAR},
                        {"final",FINAL},
                        {"static",STATIC},
                        {"void",VOID},
                        {"class",CLASS},
                        {"long",LONG},
                        {"float",FLOAT},
                        {"while",WHILE},
                        {"yield",YIELD}
                }
        )
        ;
%}

hex [0-9a-fA-F]
LineTerminators [\n\r]|[\r][\n]
whitespace  [ \t\f]|{LineTerminators}
oneLineComment  [/]{2}[^\r\n]+
multiLineComment    "/*"([^*]|\*+[^*/])*\*+"/"
comments    {oneLineComment}|{multiLineComment}
keyword abstract|continue|for|new|switch|assert|default|if|package|boolean|do|goto|private|this|break|double|implements|protected|throw|byte|else|import|public|throws|case|enum|instanceof|return|transient|catch|extends|int|short|try|char|final|interface|static|void|class|finally|long|strictfp|volatile|const|float|native|while|_|exports|opens|requires|uses|module|permits|sealed|var|non-sealed|provides|to|with|open|record|transitive|yield
Identifier       [a-zA-Z$_][a-zA-Z0-9$_]*|System.out.println
hexAndUnderscore    [0-9a-fA-F_]+
hexDigits   {hex}|{hex}{hexAndUnderscore}?{hex}
hexNumeral  0[xX]{hexDigits}
decimal [0-9]|[1-9][0-9_]*[0-9][lL]?
octal   0[0-7_]*[0-7][lL]?
binary  0[bB][01][01_]*[01]|0[bB][01][lL]?
digits  [0-9]|[0-9][0-9_]*[0-9]
Integer   [+-]?{digits}
exponent    [eE]{Integer}
decimalFloat    {digits}[.]{digits}?{exponent}?[fFdD]?|[.]{digits}{exponent}?[fFdD]?|{digits}{exponent}[fFdD]?|{digits}{exponent}?[fFdD]
hexsignificand  {hexNumeral}[.]?|0[xX]{hexDigits}?[.]{hexDigits}
binaryExponent  [Pp]{Integer}
hexadecimalFloat  {hexsignificand}{binaryExponent}[fFdD]?
float   {decimalFloat}|{hexadecimalFloat}
boolean true|false
octalEscape [\][0-3]?[0-7]{1,2}
integerLiteral  {decimal}|{hexNumeral}[lL]?|{octal}|{binary}
escapeSequence  [\\][btrnf\"\'\\]|{octalEscape}
singleCharacter [^\n\r\'\\]
characterLiteral    [\']{singleCharacter}[\']|[\']{escapeSequence}[\']
stringCharacter [^\n\r\"\\]|{escapeSequence}
stringLiteral   [\"]{stringCharacter}*[\"]
nullLiteral null
end [^\\][\"]{3}
textBlockCharacter  [^\\]|{escapeSequence}
textBlock   [\"]{3}[ \t\f]*{textBlockCharacter}*{end}
%%

{LineTerminators}       {count();}
{whitespace}            {}
{comments}              {count();}
{keyword}               {yylval.str = strdup(yytext); count(); if(string(yytext) == "while" || string(yytext) == "for" || string(yytext) == "if") funcName = string(yytext) ;return m[string(yytext)];}
{integerLiteral}        {yylval.str = strdup(yytext); count(); return integerLiteral;}
{stringLiteral}         {yylval.str = strdup(yytext); count(); return stringLiteral;}
{boolean}               {yylval.str = strdup(yytext); count(); return booleanLiteral;}
{float}                 {yylval.str = strdup(yytext); count(); return FloatingPointLiteral;}
{nullLiteral}           {yylval.str = strdup(yytext); count(); return nullLiteral;}
{characterLiteral}      {yylval.str = strdup(yytext); count(); return characterLiteral;}
{textBlock}             {yylval.str = strdup(yytext); count(); return textBlock;}
{Identifier}            {yylval.str = strdup(yytext); count(); return Identifier;}
">>>"                   {yylval.str = strdup(yytext); count(); return(UNSIGNED_RIGHT); }
">>>="                  {yylval.str = strdup(yytext); count(); return(UNSIGNED_RIGHT_ASSIGN); }
">>="			{yylval.str = strdup(yytext); count(); return(RIGHT_ASSIGN); }
"<<="			{yylval.str = strdup(yytext); count(); return(LEFT_ASSIGN); }
"+="			{yylval.str = strdup(yytext); count(); return(ADD_ASSIGN); }
"-="			{yylval.str = strdup(yytext); count(); return(SUB_ASSIGN); }
"*="			{yylval.str = strdup(yytext); count(); return(MUL_ASSIGN); }
"/="			{yylval.str = strdup(yytext); count(); return(DIV_ASSIGN); }
"%="			{yylval.str = strdup(yytext); count(); return(MOD_ASSIGN); }
"&="			{yylval.str = strdup(yytext); count(); return(AND_ASSIGN); }
"^="			{yylval.str = strdup(yytext); count(); return(XOR_ASSIGN); }
"|="			{yylval.str = strdup(yytext); count(); return(OR_ASSIGN); }
">>"			{yylval.str = strdup(yytext); count(); return(RIGHT_OP); }
"<<"			{yylval.str = strdup(yytext); count(); return(LEFT_OP); }
"++"			{yylval.str = strdup(yytext); count(); return(INC_OP); }
"--"			{yylval.str = strdup(yytext); count(); return(DEC_OP); }
"&&"			{yylval.str = strdup(yytext); count(); return(AND_OP); }
"||"			{yylval.str = strdup(yytext); count(); return(OR_OP); }
"<="			{yylval.str = strdup(yytext); count(); return(LE_OP); }
">="			{yylval.str = strdup(yytext); count(); return(GE_OP); }
"=="			{yylval.str = strdup(yytext); count(); return(EQ_OP); }
"!="			{yylval.str = strdup(yytext); count(); return(NE_OP); }
";"			{yylval.str = strdup(yytext); count(); return(';'); }
"@"                     {yylval.str = strdup(yytext); count(); return('@'); }
"{"		        {yylval.str = strdup(yytext); count(); return('{'); }
"}"		        {yylval.str = strdup(yytext); count(); return('}'); }
","			{yylval.str = strdup(yytext); count(); return(','); }
":"			{yylval.str = strdup(yytext); count(); return(':'); }
"="			{yylval.str = strdup(yytext); count(); return('='); }
"("			{yylval.str = strdup(yytext); count(); return('('); }
")"			{yylval.str = strdup(yytext); count(); return(')'); }
"["	        	{yylval.str = strdup(yytext); count(); return('['); }
"]"     		{yylval.str = strdup(yytext); count(); return(']'); }
"."			{yylval.str = strdup(yytext); count(); return('.'); }
"&"			{yylval.str = strdup(yytext); count(); return('&'); }
"!"			{yylval.str = strdup(yytext); count(); return('!'); }
"~"			{yylval.str = strdup(yytext); count(); return('~'); }
"-"			{yylval.str = strdup(yytext); count(); return('-'); }
"+"			{yylval.str = strdup(yytext); count(); return('+'); }
"*"			{yylval.str = strdup(yytext); count(); return('*'); }
"/"			{yylval.str = strdup(yytext); count(); return('/'); }
"%"			{yylval.str = strdup(yytext); count(); return('%'); }
"<"			{yylval.str = strdup(yytext); count(); return('<'); }
">"			{yylval.str = strdup(yytext); count(); return('>'); }
"^"			{yylval.str = strdup(yytext); count(); return('^'); }
"|"			{yylval.str = strdup(yytext); count(); return('|'); }
"?"			{yylval.str = strdup(yytext); count(); return('?'); }
.       {
        cout<<"illegal character on line "<<line<<" :"<<yytext<<endl;
        return -1;
}

%%

int yywrap()
{
      return(1);
}



void count(void)
{
      for (int i = 0; yytext[i] != '\0'; i++) 
        if (yytext[i] == '\n') line ++;
      return;  
}



