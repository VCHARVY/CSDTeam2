	.section .text
	.globl _start

_start:
MOV r1, #10
STR r1, [SP, #0]
ADD SP, SP, #8

MOV r1, #20
STR r1, [SP, #0]
ADD SP, SP, #8

SUB SP, SP, #8
LDR r1, [SP, #0]
SUB SP, SP, #8
LDR r2, [SP, #0]
CMP r1, r2
BLT label0
MOV r3, #0
STR r3, [SP, #0]
ADD SP, SP, #8
B label1
label0:
MOV r3, #1
STR r3, [SP, #0]
ADD SP, SP, #8
label1:

SUB SP, SP, #8
LDR r1, [SP, #0]
CMP r1, #0
BEQ NOT_EQUAL

MOV r1, #1
STR r1, [SP, #0]
ADD SP, SP, #8

B END

NOT_EQUAL:

MOV r1, #0
STR r1, [SP, #0]
ADD SP, SP, #8

END:

MOV r1, #0x18
MOV r2, #0
SVC 0
	.section .data
	.section .bss
