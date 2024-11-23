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
