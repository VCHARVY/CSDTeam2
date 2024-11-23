	.section .text
	.globl _start

_start:
mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #0]

mov r1, r7
ldr r2, [r1, #0]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #4]

countVowels:
mov r1, #0
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #8]

mov r1, r7
ldr r2, [r1, #8]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #12]

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #16]

mov r1, r7
ldr r2, [r1, #16]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #20]

#L0:

mov r1, r7
ldr r2, [r1, #28]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #24]

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #32]

mov r1, r7
ldr r2, [r1, #24]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #32]
str r2, [r6, #0]
add r6, r6, #4


mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #36]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L1

b #L2

#L1:

mov r1, r7
ldr r2, [r1, #28]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #24]

mov r1, r7
ldr r2, [r1, #24]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #44]

mov r1, r7
ldr r2, [r1, #48]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #36]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #36]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label0
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label1
label0:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label1:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #24]

mov r1, r7
ldr r2, [r1, #56]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #52]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #52]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label2
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label3
label2:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label3:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L5

b #L8

#L8:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L5

b #L6

#L5:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #64]

b #L7

#L6:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #64]

#L7:

mov r1, r7
ldr r2, [r1, #68]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #24]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #24]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label4
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label5
label4:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label5:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L10

b #L13

#L13:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L10

b #L11

#L10:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #72]

b #L12

#L11:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #72]

#L12:

mov r1, r7
ldr r2, [r1, #76]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #64]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #64]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label6
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label7
label6:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label7:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L15

b #L18

#L18:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L15

b #L16

#L15:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #80]

b #L17

#L16:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #80]

#L17:

mov r1, r7
ldr r2, [r1, #84]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #72]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #72]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label8
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label9
label8:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label9:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L20

b #L23

#L23:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L20

b #L21

#L20:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #88]

b #L22

#L21:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #88]

#L22:

mov r1, r7
ldr r2, [r1, #92]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #80]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #80]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label10
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label11
label10:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label11:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L25

b #L28

#L28:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L25

b #L26

#L25:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #96]

b #L27

#L26:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #96]

#L27:

mov r1, r7
ldr r2, [r1, #100]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #88]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #88]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label12
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label13
label12:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label13:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L30

b #L33

#L33:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L30

b #L31

#L30:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #104]

b #L32

#L31:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #104]

#L32:

mov r1, r7
ldr r2, [r1, #108]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #96]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #96]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label14
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label15
label14:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label15:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L35

b #L38

#L38:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L35

b #L36

#L35:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #112]

b #L37

#L36:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #112]

#L37:

mov r1, r7
ldr r2, [r1, #116]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #104]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #104]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label16
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label17
label16:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label17:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L40

b #L43

#L43:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L40

b #L41

#L40:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #120]

b #L42

#L41:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #120]

#L42:

mov r1, r7
ldr r2, [r1, #124]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #112]

mov r1, r7
ldr r2, [r1, #44]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #112]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
cmp r1, r2
beq label18
mov r3, #0
str r3, [r6, #0]
add r6, r6, #4
b label19
label18:
mov r3, #1
str r3, [r6, #0]
add r6, r6, #4
label19:

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L45

b #L48

#L48:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L45

b #L46

#L45:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #128]

b #L47

#L46:

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #128]

#L47:

mov r1, r7
ldr r2, [r1, #40]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
cmp r1, #1
beq #L49

b #L50

#L49:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #120]

mov r1, r7
ldr r2, [r1, #12]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #120]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
add r3, r1, r2
str r3, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #60]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #12]

b #L3

#L50:

#L3:

mov r1, #1
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #60]

mov r1, r7
ldr r2, [r1, #20]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
ldr r2, [r1, #60]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
add r3, r1, r2
str r3, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #132]

mov r1, r7
ldr r2, [r1, #132]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #20]

b #L0

#L2:

mov r1, r7
ldr r2, [r1, #12]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
mov r2, r1
sub r6, r6, #4
ldr r4, [r6, #0]
str r4, [r8, #0]
mov r6, r8
add r6, r6, #4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r11, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r10, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r9, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r8, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r7, r4
bx lr

main:
mov r1, #0
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4


mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #4]

mov r1, r7
ldr r2, [r1, #4]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
str r1, [r6, #0]
add r6, r6, #4
mov r1, r8
str r1, [r6, #0]
add r6, r6, #4
mov r1, r9
str r1, [r6, #0]
add r6, r6, #4
mov r1, r10
str r1, [r6, #0]
add r6, r6, #4
mov r1, r11
str r1, [r6, #0]
add r6, r6, #4
mov r1, r6
sub r1, r1, #1
sub r1, r1, #20
mov r8, r1
mov r7, r6
bl countVowels

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #8]

mov r1, r7
ldr r2, [r1, #8]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #12]

mov r1, r7
ldr r2, [r1, #12]
str r2, [r6, #0]
add r6, r6, #4


mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #8]

mov r1, r7
ldr r2, [r1, #8]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
mov r2, r1
sub r6, r6, #4
ldr r4, [r6, #0]
str r4, [r8, #0]
mov r6, r8
add r6, r6, #4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r11, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r10, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r9, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r8, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r7, r4
bx lr

mov r1, #0x18
mov r2, #0
svc 0
	.section .data
	.section .bss
