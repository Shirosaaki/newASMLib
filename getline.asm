;;
;; EPITECH PROJECT, 2025
;; getline
;; File description:
;; getline
;;
[bits 64]

section .text
    global getline

getline:
    xor rax, rax
    mov r8, rdi
    mov rsi, r8
    mov rdx, 1

.rm:
    cmp byte [rsi], 0
    je .tmp
    mov byte [rsi], 0
    inc rsi
    jmp .rm

.tmp:
    mov rsi, r8

.loop:
    mov rax, 0
    mov rdi, 0
    syscall
    cmp byte [rsi], 10
    je .done
    inc rsi
    jmp .loop

.done:
    mov rdi, r8
    ret
