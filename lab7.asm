.intel_syntax noprefix

.data

World:
  .ascii "Hello World!\n"

Winter:
  .ascii "sleep and play apex legends!\n"

Class:
  .ascii "A fun class would be physics 11a\n"

Name:
  .byte 115
  .byte 97
  .byte 109
  .byte 10

.text
.global _start

_start:

mov rax, 1
mov rdi, 1
lea rsi, World
mov rdx, 13
syscall

mov rax, 1
mov rdi, 1
lea rsi, Winter
mov rdx, 29
syscall

mov rax, 1
mov rdi, 1
lea rsi, Class
mov rdx, 33
syscall

mov rax, 1
mov rdi, 1
lea rsi, Name
mov rdx, 4
syscall

mov rax, 60
syscall
