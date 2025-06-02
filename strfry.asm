;;
;; EPITECH PROJECT, 2025
;; strfry
;; File description:
;; strfry
;;
[bits 64]

section .text
    global strfry

strfry:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14
    push r15

    mov r12, rdi
    xor ecx, ecx
    not rcx
    xor al, al
    cld
    repne scasb
    not rcx
    dec rcx
    test rcx, rcx
    jz .end
    mov r13, rcx
    dec r13

.loop:
    test r13, r13
    jz .end

    sub rsp, 4
    mov rax, 318
    mov rdi, rsp
    mov rsi, 4
    xor edx, edx
    syscall

    mov eax, [rsp]
    add rsp, 4

    xor rdx, rdx
    lea rbx, [r13 + 1]
    div rbx

    mov r14b, [r12 + r13]
    mov r15b, [r12 + rdx]
    mov [r12 + r13], r15b
    mov [r12 + rdx], r14b

    dec r13
    jmp .loop

.end:
    mov rax, r12
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret