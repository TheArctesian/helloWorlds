.global _start
.intel_syntax noprefix

// run with 
// as helloworld.asm -o asem.o
// gcc -o asm asem.o -nostdlib -static

_start: 
    // sys_write
    mov rax, 1
    mov rdi, 1
    lea rsi, [hello_world]
    mov rdx, 14
    syscall

    // sys_exit
    mov rax, 60
    mov rdi, 69
    syscall

hello_world: 
    .asciz "Hello, World!\n"


