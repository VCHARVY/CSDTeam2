@Simple Counter with Conditional Branches
    mov r0, #0          @ Initialize counter r0 to 0
    mov r1, #10         @ Set r1 to 10 (loop limit)

counter_loop:
    add r0, r0, #1      @ Increment counter
    cmp r0, r1          @ Compare counter with limit
    blt counter_loop    @ If counter < limit, continue looping
    b finish            @ Otherwise, branch to finish

finish:
    mov r2, #1          @ Indicate success in r2
    b done              @ Exit

done:
    mov r7, #0          @ Halt the program