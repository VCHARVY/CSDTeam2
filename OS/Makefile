run: OS.iso
	qemu-system-i386 -cdrom OS.iso
debug: OS.iso
	qemu-system-i386 -s -S -cdrom OS.iso &
	gdb OS/boot/kernel -ex "target remote localhost:1234"
all: kernel.bin OS.iso

kernel.o: kernel.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c kernel.c -o kernel.o

vga.o: drivers/vga.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c drivers/vga.c -o vga.o

keyboard.o : drivers/keyboard.c
	gcc -m32 -g -fno-stack-protector -fno-builtin -c drivers/keyboard.c -o keyboard.o

boot.o: boot.s
	nasm -f elf32 boot.s -o boot.o

kernel.bin: kernel.o vga.o boot.o keyboard.o linker.ld
	ld -m elf_i386 -T linker.ld -o kernel vga.o kernel.o boot.o keyboard.o
	cp kernel OS/boot

OS.iso: kernel.bin
	grub2-mkrescue -o OS.iso OS/

clean:
	rm -f *.o
	rm -f OS/boot/kernel
	rm -f OS.iso
	rm -f kernel