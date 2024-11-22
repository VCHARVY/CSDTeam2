
section .text
global switch_context

switch_context:
    push ebp
    mov ebp, esp
    ; Get new context from parameter
    mov eax, [ebp+8]
    
    ; Jump to new process
    jmp eax