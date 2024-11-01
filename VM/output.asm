	.section .text
	.globl _start

_start:
MOV w1, #10
STR w1, [SP, #0]
ADD SP, SP, #8

MOV w1, #0x18
MOV w2, #0
SVC 0
	.section .data
	.section .bss
