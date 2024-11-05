	.section .text
	.globl _start

_start:

MOV r1, #8224
LDR r2, [r1, 0]
STR r2, [r6, #0]
ADD r6, r6, #8

MOV r1, #3
STR r1, [r6, #0]
ADD r6, r6, #8

SUB r6, r6, #8
LDR r1, [r6, #0]
SUB r6, r6, #8
LDR r2, [r6, #0]
ADD r3, r1, r2
STR r3, [r6, #0]
ADD r6, r6, #8

MOV r1, #8224
SUB r6, r6, #8
LDR r2, [r6, #0]
STR r2, [r1, 1]

MOV r1, #0x18
MOV r2, #0
SVC 0
	.section .data
	.section .bss
