[bits 64]

section .text
    global memove:function

memove:
    mov rax, rsi
    mov rcx, rdx
    mov rdi, rdi
    cmp rdi, rax
    jae .forward
    lea rsi, [rsi + rcx - 1]
    lea rdi, [rdi + rcx - 1]
    neg rcx
    rep movsb
    ret

.forward:
    rep movsb
    ret
