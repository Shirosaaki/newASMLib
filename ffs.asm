;;
;; EPITECH PROJECT, 2025
;; ffs
;; File description:
;; ffs
;;
[bits 64]

section .text
    global ffs

ffs:
    mov rax, 1
    mov rcx, 0

.loop:
    test rdi, 1
    jnz .found
    shr rdi, 1
    inc rax
    test rdi, rdi
    jnz .loop

    xor rax, rax
    ret

.found:
    mov rax, rax
    ret