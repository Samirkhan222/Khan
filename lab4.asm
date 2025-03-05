.intel_syntax noprefix
.data

 greet:
   .ascii "Greetings Uzayr! Before you pass the secret door you must pick a number between 1-100!\n\0"

 Number:
   .quad 0
 
 low:
   .ascii "The number is lower!\n\0"

 high:
   .ascii "The number is higher!\n\0"


 grats:
   .ascii "You have passed fellow Uzayr but you found NOTHING!!\n\0"

.text
.global _start

_start:
   mov rcx, 100
   call Random
   add rcx, 1
   mov Number, rcx

top:
   lea rcx, greet
   call PrintStringZ
   call ScanInt

   cmp rcx, Number

   jl Fow

   jg Pow

   je Finale

Pow:
   lea rcx, low
   call PrintStringZ
   jmp top

Fow:
   lea rcx, high
   call PrintStringZ
   jmp top

Finale:
 
   lea rcx, grats
   call PrintStringZ

   call Exit
