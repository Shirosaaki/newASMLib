[bits 64]

section .text
    global strchr:function

strchr:
    xor rax, rax
    push rdi

.loop:
    movzx rdx, byte [rdi]
    cmp rdx, 0
    je .not
    cmp rdx, rsi
    je .end
    inc rdi
    jmp .loop

.not:
    mov rax, 0
    pop rdi
    ret

.end:
    mov rax, rdi
    pop rdi
    ret
