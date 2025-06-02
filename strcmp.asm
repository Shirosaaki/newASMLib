;;
;; EPITECH PROJECT, 2025
;; strcmp
;; File description:
;; strcmp
;;
[bits 64]

section .text
    global strcmp

strcmp:
    xor rax, rax
    xor rcx, rcx

.compare_loop:
    mov al, [rdi + rcx]
    cmp al, [rsi + rcx]
    jg .greater
    jl .less
    cmp al, 0
    je .end
    inc rcx
    jmp .compare_loop

.greater:
    mov rax, 1
    ret

.less:
    mov rax, -1
    ret

.end:
    ret