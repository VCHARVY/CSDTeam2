.data
ram: .space 8000
.text
.global _start
_start:
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

