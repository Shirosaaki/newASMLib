;;
;; EPITECH PROJECT, 2025
;; strrchr
;; File description:
;; strrchr
;;
[bits 64]

section .text
    global strrchr
    global rindex

rindex:
strrchr:
    xor rax, rax
    movzx ecx, sil

.loop:
    mov dl, byte [rdi]
    cmp dl, cl
    jne .next
    mov rax, rdi

.next:
    test dl, dl
    jz .done
    inc rdi
    jmp .loop

.done:
    test cl, cl
    jz .not_found
    ret

.not_found:
    mov rax, rdi
    ret
