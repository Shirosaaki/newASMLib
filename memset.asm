;;
;; EPITECH PROJECT, 2025
;; memset
;; File description:
;; memset
;;
[bits 64]

section .text
    global memset

memset:
    mov rax, rdi
    test rdx, rdx
    jz .done
    movzx ecx, sil

.fill_loop:
    mov byte [rdi], cl
    inc rdi
    dec rdx
    jnz .fill_loop

.done:
    ret