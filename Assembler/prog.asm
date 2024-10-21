    mov r0, #5
    add r1, r2, r3
    bne label1
label1: ldr r4, [r5]
    cmp r0, #10
        beq exit
    str r1, [sp, #-4]!
exit:
    bx lr