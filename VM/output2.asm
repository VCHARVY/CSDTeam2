	.section .text
	.globl _start

_start:
MyFunction:
MOV w1, #0
STR w1, [SP, #0]
ADD SP, SP, #8
STR w1, [SP, #0]
ADD SP, SP, #8

MOV w1, #5
STR w1, [SP, #0]
ADD SP, SP, #8

MOV w1, #0
STR w1, [SP, #0]
ADD SP, SP, #8
MOV w1, #0
STR w1, [SP, #0]
ADD SP, SP, #8
MOV w1, #0
STR w1, [SP, #0]
ADD SP, SP, #8
MOV w1, #0
STR w1, [SP, #0]
ADD SP, SP, #8
MOV w1, #return0
STR w1, [SP, #0]
ADD SP, SP, #8
MOV w1, SP
SUB w1, w1, #1
SUB w1, w1, #5
MOV ARG, w1
MOV LCL, SP
B MyOtherFunction
return0:

SUB SP, SP, #8
LDR w2, [SP, #0]
STR w2, [w1, 0]

MOV w1, LCL
MOV w2, w1
SUB w1, w1, #40
LDR w3, [w1, #0]
SUB SP, SP, #8
LDR w4, [SP, #0]
STR w4, [ARG, #0]
MOV SP, ARG
ADD SP, SP, #8
SUB w2, w2, #8
LDR w4, [w2, #0]
MOV THAT, w4
SUB w2, w2, #8
LDR w4, [w2, #0]
MOV THIS, w4
SUB w2, w2, #8
LDR w4, [w2, #0]
MOV ARG, w4
SUB w2, w2, #8
LDR w4, [w2, #0]
MOV LCL, w4
BR w3

MOV w1, #0x18
MOV w2, #0
SVC 0
	.section .data
