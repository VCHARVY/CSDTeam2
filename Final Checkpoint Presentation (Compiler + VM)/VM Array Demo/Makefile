run: vm
	./vm $(input).vm $(input).asm
#	python3 Code_generator.py $(input).asm > $(input).o
vm: vm.cpp
	g++ -o vm vm.cpp
clean:
	rm -f $(input).vm $(input).asm vm $(input).o