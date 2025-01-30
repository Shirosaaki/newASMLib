[bits 64]

section .text
    global strncmp:function

strncmp:
    xor rax, rax

.loop:
    mov al, byte [rdi + rax]
    mov bl, byte [rsi + rax]
    cmp al, bl
    jne .end
    test al, al
    jz .end
    test bl, bl
    jz .end
    inc rax
    cmp rax, rdx
    je .end
    jmp .loop

.end:
    sub al, bl
    movsx rax, al
    ret
