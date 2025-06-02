;;
;; EPITECH PROJECT, 2025
;; minishell
;; File description:
;; minishell
;;
[bits 64]

section .text
    global minishell
    extern getline
    extern putchar
    extern init

minishell:
    mov r8, rdi
    call init
    mov rdi, '>'
    call putchar
    mov rdi, ' '
    call putchar
    mov rdi, r8
    call getline
    ret