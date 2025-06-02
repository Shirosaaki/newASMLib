;;
;; EPITECH PROJECT, 2025
;; strcasecmp
;; File description:
;; strcasecmp
;;
[bits 64]

section .text
    global strcasecmp

strcasecmp:
    push rbp
    mov rbp, rsp

.loop:
    movzx r8, byte [rdi]
    movzx r9, byte [rsi]
    cmp r8b, 'A'
    jb .not_upper
    cmp r8b, 'Z'
    ja .not_upper
    add r8b, 32

.not_upper:
    cmp r9b, 'A'
    jb .not_upper2
    cmp r9b, 'Z'
    ja .not_upper2
    add r9b, 32

.not_upper2:
    cmp r8b, r9b
    jne .diff
    test r8b, r8b
    jz .equal
    inc rdi
    inc rsi
    jmp .loop

.diff:
    sub r8d, r9d
    mov rax, r8
    jmp .end

.equal:
    xor rax, rax

.end:
    mov rsp, rbp
    pop rbp
    ret