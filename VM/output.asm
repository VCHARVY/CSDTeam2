.data
ram: .space 8000
.text
.global _start
_start:
l1:

mov x0, #29
mov x1, #10
str x1, [x0]
add sp, sp, #1

mov x0, #30
mov x1, #20
str x1, [x0]
add sp, sp, #1

mov x0, #1
sub sp, sp, x0
ldr x1, [sp]
sub sp, sp, x0
ldr x2, [sp]
add x3, x1, x2
str x3, [sp]
add sp, sp, x0

mov x0, #0
mov x1, #1
sub sp, sp, x1
ldr x1, [sp]
str x1, [x0, a]

mov x0, #0
ldr x1, [x0, a]
mov x2, sp
str x1, [x2]
add sp, sp, #1

mov x0, #31
mov x1, #30
str x1, [x0]
add sp, sp, #1

mov x0, #1
sub sp, sp, x0
ldr x1, [sp]
sub sp, sp, x0
ldr x2, [sp]
cmp x1, x2
b.eq input_label0
mov x3, #0
str x3, [sp]
add sp, sp, x0
b input_label1
input_label0:
mov x3, #1
str x3, [sp]
add sp, sp, x0
input_label1:

mov x0, #1
sub sp, sp, x0
ldr x1, [sp, #0]
mov x2, #1
cmp x1, x2
b.eq end


end:

mov x1, #1
sub sp, sp, x1
ldr x1, [sp]
str x1, [x0, a]

