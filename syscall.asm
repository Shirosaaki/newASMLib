;;
;; EPITECH PROJECT, 2025
;; syscall
;; File description:
;; syscall
;;
[bits 64]

section .text
    global syscall

syscall:
    push rbp
    mov rbp, rsp

    mov rax, rdi
    mov rdi, rsi
    mov rsi, rdx
    mov rdx, rcx
    mov r10, r8
    mov r8, r9
    mov r9, [rbp + 16]
    syscall

    mov rsp, rbp
    pop rbp
    ret
