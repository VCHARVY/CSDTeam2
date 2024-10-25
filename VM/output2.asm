	.section .text
	.globl _start

_start:

MOV r1, #8224
LDR r2, [r1, 0]
STR r2, [SP, #0]
ADD SP, SP, #8

MOV r1, #3
STR r1, [SP, #0]
ADD SP, SP, #8

SUB SP, SP, #8
LDR r1, [SP, #0]
SUB SP, SP, #8
LDR r2, [SP, #0]
ADD r3, r1, r2
STR r3, [SP, #0]
ADD SP, SP, #8

MOV r1, #8224
SUB SP, SP, #8
LDR r2, [SP, #0]
STR r2, [r1, 1]

MOV r1, #0x18
MOV r2, #0
SVC 0
	.section .data
	.section .bss
