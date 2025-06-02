;;
;; EPITECH PROJECT, 2025
;; strpbrk
;; File description:
;; strpbrk
;;
[bits 64]

section .text
    global strpbrk

strpbrk:
    mov rax, rdi
    xor rcx, rcx
.next_char:
    mov rbx, rsi
    mov dl, [rdi + rcx]
    test dl, dl
    jz .end

.check_reject:
    mov al, [rbx]
    test al, al
    jz .next
    cmp dl, al
    je .found
    inc rbx
    jmp .check_reject

.next:
    inc rcx
    jmp .next_char

.found:
    lea rax, [rdi + rcx]
    ret

.end:
    xor rax, rax
    ret