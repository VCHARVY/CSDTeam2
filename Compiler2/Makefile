parser: y.tab.c lex.yy.c y.tab.h
	g++ -w y.tab.c lex.yy.c  -ll -ly  -o parser
lex.yy.c: lexer.l
	lex lexer.l
y.tab.c: parser.y
	yacc -v -d -t parser.y 
clean:
	rm -f parser y.tab.c lex.yy.c y.tab.h y.output