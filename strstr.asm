;;
;; EPITECH PROJECT, 2025
;; strstr
;; File description:
;; strstr
;;
[bits 64]

section .text
    global strstr

strstr:
    push rbp
    mov rbp, rsp
    push rbx

.loop:
    mov al, byte [rsi]
    test al, al
    jz .end_of_string

    mov al, byte [rdi]
    test al, al
    jz .not_found

    mov rbx, rdi
    mov rcx, rsi

.loop2:
    mov al, byte [rcx]
    test al, al
    jz .found

    mov dl, byte [rbx]
    test dl, dl
    jz .not_found

    cmp al, dl
    jne .next_pos

    inc rbx
    inc rcx
    jmp .loop2

.next_pos:
    inc rdi
    jmp .loop

.found:
    mov rax, rdi
    jmp .end

.end_of_string:
    mov rax, rdi
    jmp .end

.not_found:
    xor rax, rax

.end:
    pop rbx
    mov rsp, rbp
    pop rbp
    ret
