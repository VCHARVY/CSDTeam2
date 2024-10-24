	.section .text
	.globl _start

_start:
MOV w1, #10
STR w1, [SP, #0]
ADD SP, SP, #8

MOV w1, #20
STR w1, [SP, #0]
ADD SP, SP, #8

SUB SP, SP, #8
LDR w1, [SP, #0]
SUB SP, SP, #8
LDR w2, [SP, #0]
SUB w3, w1, w2
STR w3, [SP, #0]
ADD SP, SP, #8

SUB SP, SP, #8
LDR w1, [SP, #0]
CMP w1, #0
BEQ NOT_EQUAL

MOV w1, #1
STR w1, [SP, #0]
ADD SP, SP, #8

B END

labelNOT_EQUAL:

MOV w1, #0
STR w1, [SP, #0]
ADD SP, SP, #8

labelEND:

MOV w1, #0x18
MOV w2, #0
SVC 0
	.section .data
	.section .bss
