@Sorting Three Numbers in Ascending Order

    mov r0, #15         @ Load the first number (15) into r0
    mov r1, #8          @ Load the second number (8) into r1
    mov r2, #20         @ Load the third number (20) into r2

    @ Compare r0 and r1, swap if needed
    cmp r0, r1          @ Compare r0 with r1
    blt skip_swap1      @ If r0 <= r1, no swap needed
    mov r3, r0          @ Temporary storage for r0
    mov r0, r1          @ Swap r0 and r1
    mov r1, r3          @ Complete the swap
skip_swap1:

    @ Compare r1 and r2, swap if needed
    cmp r1, r2          @ Compare r1 with r2
    blt skip_swap2      @ If r1 <= r2, no swap needed
    mov r3, r1          @ Temporary storage for r1
    mov r1, r2          @ Swap r1 and r2
    mov r2, r3          @ Complete the swap
skip_swap2:

    @ Compare r0 and r1 again, swap if needed
    cmp r0, r1          @ Compare r0 with r1
    blt end             @ If r0 <= r1, sorting is complete
    mov r3, r0          @ Temporary storage for r0
    mov r0, r1          @ Swap r0 and r1
    mov r1, r3          @ Complete the swap
end:

    b done              @ Branch to end

done:
    mov r7, #0          @ Halt the program
