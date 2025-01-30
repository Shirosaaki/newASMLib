[bits 64]

section .text
    global strcmp:function

section .text
    global strcmp

strcmp:
    xor rax, rax

.compare_loop:
    mov al, byte [rdi + rax]
    mov bl, byte [rsi + rax]
    cmp al, bl
    jne .done
    test al, al
    jz .done
    inc rax
    jmp .compare_loop

.done:
    sub al, bl
    movsx rax, al
    ret
