
    mov r0, #0          @ Initialize r0 to 0
    mov r1, #5          @ Initialize r1 to 5
    mov r2, #10         @ Initialize r2 to 10
    add r0, r1, #3      @ r0 = r1 + 3
    b label1            @ Unconditional branch to label1

label1:
    cmp r1, r2          @ Compare r1 and r2
    mov r3, #0          @ Initialize r3 to 0
    b lab2              @ Branch to lab2

lab2:
    add r3, r3, #1      @ Increment r3
    cmp r3, #20         @ Compare r3 with 20
    b lab3              @ Branch to lab3

lab3:
    mov r4, #0          @ Initialize r4 to 0
    b loop_start        @ Branch to loop_start

loop_start:
    add r4, r4, #2      @ Increment r4 by 2
    cmp r4, #10         @ Compare r4 with 10
    b loop_start        @ Loop back

loop_end:
    add r5, r1, r4      @ r5 = r1 + r4
    b nested_start      @ Branch to nested_start

nested_start:
    cmp r5, #15         @ Compare r5 with 15
    blt less_label      @ Branch if r5 < 15

greater_label:
    mov r6, #25         @ r6 = 25
    b exit              @ Exit

less_label:
    mov r6, #10         @ r6 = 10

exit:
    mov r7, #0          @ Initialize r7 to 0
    b exit_loop         @ Branch to exit_loop

exit_loop:
    cmp r7, #5          @ Compare r7 with 5
    add r7, r7, #1      @ Increment r7
    b exit_loop         @ Loop back

end:
    mov r0, #0          @ Finalize r0
    b finalize          @ Branch to finalize

finalize:
    mov r8, #100        @ Final instruction
