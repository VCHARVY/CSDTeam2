compile: parser tac_to_vm vm
	./parser < OS1.jc > OS.txt
	./tac_to_vm OS.txt > OS.vm
	./vm OS.vm OS.asm
parser: y.tab.c lex.yy.c y.tab.h
	g++ -w y.tab.c lex.yy.c -ll -ly -o parser
lex.yy.c: lexer.l
	lex lexer.l
y.tab.c: parser.y
	yacc -v -d -t parser.y
tac_to_vm: tac_to_vm.cpp
	g++ -o tac_to_vm tac_to_vm.cpp
vm: vm.cpp
	g++ -o vm vm.cpp
clean:
	rm -f parser y.tab.c lex.yy.c y.tab.h y.output tac_to_vm $(input).txt $(input).vm $(input).asm vm $(input).o