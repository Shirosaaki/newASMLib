;;
;; EPITECH PROJECT, 2025
;; putchar
;; File description:
;; putchar
;;
[bits 64]

section .text
    global putchar

putchar:
    push rax
    push rdi
    push rsi
    push rdx

    mov rax, 1
    mov rsi, rsp
    mov byte [rsi], dil
    mov rdi, 1
    mov rdx, 1
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax
    ret