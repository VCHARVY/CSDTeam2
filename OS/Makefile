run: OS.iso
	qemu-system-i386  -cdrom OS.iso
debug: OS.iso
	qemu-system-i386 -s -S -cdrom OS.iso &
	gdb OS/boot/kernel -tui -ex "target remote 127.0.0.1:1234"
all: kernel.bin OS.iso

kernel.o: kernel.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c kernel.c -o kernel.o

vga.o: drivers/vga.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c drivers/vga.c -o vga.o

keyboard.o : drivers/keyboard.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c drivers/keyboard.c -o keyboard.o

boot.o: boot.s
	nasm -f elf32 boot.s -o boot.o

process.o: process/process.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c ./process/process.c -o process.o

context_switch.o: process/context_switch.s
	nasm -f elf32 process/context_switch.s -o context_switch.o

PCB.o: process/PCB.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c ./process/PCB.c -o PCB.o
file_system.o: file_system/init.c 
	gcc -m32 -g -fno-stack-protector -fno-builtin -c ./file_system/init.c -o file_system.o
string.o:file_system/string.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c ./file_system/string.c -o string.o
kernel.bin: kernel.o vga.o boot.o file_system.o keyboard.o process.o context_switch.o PCB.o string.o linker.ld
	ld -m elf_i386 -T linker.ld -o kernel vga.o kernel.o boot.o keyboard.o process.o context_switch.o PCB.o file_system.o string.o
	cp kernel OS/boot

OS.iso: kernel.bin
	grub2-mkrescue -o OS.iso OS/

clean:
	rm -f *.o
	rm -f OS/boot/kernel
	rm -f OS.iso
	rm -f kernel