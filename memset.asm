[bits 64]

section .text
    global memset:function

memset:
    mov rax, rsi
    mov rcx, rdx
    mov rdi, rdi
    rep stosb
    ret
