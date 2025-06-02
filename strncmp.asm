;;
;; EPITECH PROJECT, 2025
;; strncmp
;; File description:
;; strncmp
;;
[bits 64]

section .text
    global strncmp

strncmp:
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
    cmp rcx, rdx
    jl .compare_loop
    jmp .end
.greater:
    mov rax, 1
    ret
.less:
    mov rax, -1
    ret
.end:
    xor rax, rax
    ret
