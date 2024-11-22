@Finding the Maximum of Three Numbers
    mov r0, #42         @ Load the first number (42) into r0
    mov r1, #17         @ Load the second number (17) into r1
    mov r2, #89         @ Load the third number (89) into r2

    @ Compare r0 and r1
    cmp r0, r1          @ Compare r0 with r1
    bge check_r2        @ If r0 >= r1, move to check r2
    mov r3, r1          @ Else, r1 is larger so far
    b check_r2          @ Skip to r2 comparison

check_r2:
    cmp r3, r2          @ Compare the larger of r0/r1 with r2
    bge done            @ If r3 >= r2, r3 is the maximum
    mov r3, r2          @ Else, r2 is the maximum

done:
    @ r3 now holds the maximum value
    mov r7, #1          @ Exit code for success
    bx done               @ Return from program
