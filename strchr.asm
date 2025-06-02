;;
;; EPITECH PROJECT, 2025
;; strchr
;; File description:
;; strchr
;;
[bits 64]

section .text
    global strchr
    global index

index:
strchr:
    mov rdx, rdi

.loop:
    cmp byte [rdx], sil
    je .end
    cmp byte [rdx], 0
    je .not_found
    inc rdx
    jmp .loop

.not_found:
    xor rax, rax
    ret

.end:
    mov rax, rdx
    ret
