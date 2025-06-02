;;
;; EPITECH PROJECT, 2025
;; strcspn
;; File description:
;; strcspn
;;
[bits 64]

section .text
    global strcspn

strcspn:
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
    mov rax, rcx
    ret
.end:
    mov rax, rcx
    ret