[bits 64]

section .text
    global memcpy:function

memcpy:
    mov rax, rsi
    mov rcx, rdx
    mov rdi, rdi
    rep movsb
    ret
