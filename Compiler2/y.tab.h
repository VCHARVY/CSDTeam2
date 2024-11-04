#ifndef _yy_defines_h_
#define _yy_defines_h_

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
#define INPUT 267
#define OUTPUT 268
#define IF 269
#define ELSE 270
#define WHILE 271
#define FOR 272
#define BREAK 273
#define CONTINUE 274
#define INT_NUM 275
#define FLOAT_NUM 276
#define ID 277
#define ADD 278
#define SUB 279
#define MUL 280
#define DIV 281
#define ASSIGN 282
#define EQ 283
#define NE 284
#define LT 285
#define GT 286
#define LE 287
#define GE 288
#define AND 289
#define OR 290
#define SCOL 291
#define COMMA 292
#define LP 293
#define RP 294
#define LF 295
#define RF 296
#define LB 297
#define RB 298
#define STR 299
#define CHARACTER 300
#define BITAND 301
#define BITOR 302
#define NEG 303
#ifdef YYSTYPE
#undef  YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
#endif
#ifndef YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
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
extern YYSTYPE yylval;

#endif /* _yy_defines_h_ */
