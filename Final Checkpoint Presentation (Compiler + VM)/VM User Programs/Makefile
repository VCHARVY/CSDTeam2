run: vm
	./vm $(input).vm $(input).asm
vm: vm.cpp
	g++ -o vm vm.cpp
clean:
	rm -f $(input).vm $(input).asm vm $(input).o