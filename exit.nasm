; \x48\x31\xc0\x48\x89\xc7\x04\x3c\x0f\x05


global _start

section .text

_start:

      xor rax,rax
      mov rdi, rax
      add al, 60

      syscall
      
      
