	.section .text
	.globl _start

_start:

MOV w1, #8224
LDR w2, [w1, 0]
STR w2, [SP, #0]
ADD SP, SP, #8

MOV w1, #3
STR w1, [SP, #0]
ADD SP, SP, #8

SUB SP, SP, #8
LDR w1, [SP, #0]
SUB SP, SP, #8
LDR w2, [SP, #0]
ADD w3, w1, w2
STR w3, [SP, #0]
ADD SP, SP, #8

MOV w1, #8224
SUB SP, SP, #8
LDR w2, [SP, #0]
STR w2, [w1, 1]

MOV w1, #0x18
MOV w2, #0
SVC 0
	.section .data
