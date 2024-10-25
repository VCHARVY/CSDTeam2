	.section .text
	.globl _start

_start:
MOV r1, #5
STR r1, [SP, #0]
ADD SP, SP, #8

MOV r1, #7
STR r1, [SP, #0]
ADD SP, SP, #8

MOV r1, #8224
STR r1, [SP, #0]
ADD SP, SP, #8
MOV r1, #8736
STR r1, [SP, #0]
ADD SP, SP, #8
MOV r1, #0
STR r1, [SP, #0]
ADD SP, SP, #8
MOV r1, #0
STR r1, [SP, #0]
ADD SP, SP, #8
MOV r1, SP
SUB r1, r1, #2
SUB r1, r1, #40
MOV ARG, r1
MOV LCL, SP
BL add

MOV r1, #8224
SUB SP, SP, #8
LDR r2, [SP, #0]
STR r2, [r1, 0]


add:
MOV r1, #0

MOV r1, #8736
LDR r2, [r1, 0]
STR r2, [SP, #0]
ADD SP, SP, #8

MOV r1, #8736
LDR r2, [r1, 1]
STR r2, [SP, #0]
ADD SP, SP, #8

SUB SP, SP, #8
LDR r1, [SP, #0]
SUB SP, SP, #8
LDR r2, [SP, #0]
ADD r3, r1, r2
STR r3, [SP, #0]
ADD SP, SP, #8

MOV r1, LCL
MOV r2, r1
SUB SP, SP, #8
LDR w4, [SP, #0]
STR w4, [ARG, #0]
MOV SP, ARG
ADD SP, SP, #8
SUB r2, r2, #8
LDR w4, [r2, #0]
MOV THAT, w4
SUB r2, r2, #8
LDR w4, [r2, #0]
MOV THIS, w4
SUB r2, r2, #8
LDR w4, [r2, #0]
MOV ARG, w4
SUB r2, r2, #8
LDR w4, [r2, #0]
MOV LCL, w4
BR LR

MOV r1, #0x18
MOV r2, #0
SVC 0
	.section .data
	.section .bss
