@Fibonacci first 10 numbers
    mov r0, #0          @ Initialize r0 (first Fibonacci number)
    mov r1, #1          @ Initialize r1 (second Fibonacci number)
    mov r2, #10         @ Set limit to 10 iterations
    mov r3, #2          @ Start counter at 2 (already have 2 Fibonacci numbers)

fibonacci_loop:
    add r4, r0, r1      @ r4 = r0 + r1 (next Fibonacci number)
    mov r0, r1          @ Shift: r0 = r1
    mov r1, r4          @ Shift: r1 = r4
    add r3, r3, #1      @ Increment counter
    cmp r3, r2          @ Compare counter with limit
    blt fibonacci_loop  @ If counter < limit, continue looping
    b done              @ Otherwise, exit

done:
    mov r7, #0          @ Halt the program
