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
