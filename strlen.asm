;;
;; EPITECH PROJECT, 2025
;; strlen
;; File description:
;; strlen
;;
[bits 64]

section .text
    global strlen

strlen:
    xor rax, rax
    xor rcx, rcx

.loop:
    cmp byte [rdi + rcx], 0
    je .end
    inc rcx
    jmp .loop

.end:
    mov rax, rcx
    ret
