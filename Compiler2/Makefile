run: parser tac_to_vm
	./parser < input.jc > output.txt
	./tac_to_vm > vm.vm
parser: y.tab.c lex.yy.c y.tab.h
	g++ -w y.tab.c lex.yy.c  -ll -ly  -o parser
lex.yy.c: lexer.l
	lex lexer.l
y.tab.c: parser.y
	yacc -v -d -t parser.y
tac_to_vm: tac_to_vm.cpp
	g++ -o tac_to_vm tac_to_vm.cpp
clean:
	rm -f parser y.tab.c lex.yy.c y.tab.h y.output output.txt vm.vm tac_to_vm