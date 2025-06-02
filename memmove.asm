;;
;; EPITECH PROJECT, 2025
;; memmove
;; File description:
;; memmove
;;
[bits 64]

section .text
    global memmove

memmove:
    mov rax, rdi
    test rdx, rdx
    jz .done

    cmp rdi, rsi
    jb .forward_loop
    je .done

    mov rcx, rsi
    add rcx, rdx
    cmp rdi, rcx
    jae .forward_loop

.copy_backward:
    lea rsi, [rsi + rdx - 1]
    lea rdi, [rdi + rdx - 1]

.backward_loop:
    mov cl, byte [rsi]
    mov byte [rdi], cl
    dec rsi
    dec rdi
    dec rdx
    jnz .backward_loop
    jmp .done

.forward_loop:
    mov cl, byte [rsi]
    mov byte [rdi], cl
    inc rsi
    inc rdi
    dec rdx
    jnz .forward_loop

.done:
    ret
