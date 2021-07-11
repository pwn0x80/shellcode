;push pop method

global _start

section .text

_start:
       
       jmp call_shellcode

shellcode:
       pop rsi
       xor rax, rax
       mov al, 1
       mov rdi, rax
       mov rdx, rdi
       add rdx, 9
       syscall

       xor rax,rax 
       add rax,60
       xor rdi,rdi
       syscall

call_shellcode:
       call shellcode
       hello_World: db 'helloworld', 0xa
