;;
;; EPITECH PROJECT, 2025
;; memfrob
;; File description:
;; memfrob
;;
[bits 64]

section .text
    global memfrob

memfrob:
    mov rdx, rdi
    mov rcx, rsi

.loop:
    test rcx, rcx
    jz .end
    xor byte [rdx], 42
    inc rdx
    dec rcx
    jmp .loop

.end:
    mov rax, rdi
    ret