.intel_syntax noprefix
.data

 pump:
   .ascii "Pumpkin pie : 15 grams\n\0"

 butter:
   .ascii "Butterbeer  : 31 grams\n\0"

 ice:
   .ascii "Icecream    : 25 grams\n\0"

 pie:
   .ascii "How many pumpkin pies do you eat?\n\0"

.quad 0

 but:
   .ascii "How many glasses of butterbeer?\n\0"

.quad 0

 cream:
   .ascii "How many cups of icecream?\n\0"

.quad 0

total:
   .ascii "your total sugar in grams is\n\0"

sugar:

 .quad 0

student:
   .ascii "How much sugar can the student have?\n\0"

stud:

  .quad 0

total2:
   .ascii "The student can only eat this many times\n\0"

tot2:
   
  .quad 0

.text

.global _start

_start:

lea rcx, pump
call PrintStringZ

lea rcx, butter
call PrintStringZ

lea rcx, ice
call PrintStringZ

lea rcx, pie
call PrintStringZ
call ScanInt
imul rcx, 15

add sugar, rcx

lea rcx, but
call PrintStringZ
call ScanInt
imul rcx, 31

add sugar, rcx

lea rcx, cream
call PrintStringZ
call ScanInt
imul rcx, 25

add sugar, rcx

lea rcx, total
call PrintStringZ
mov rcx, sugar
call PrintInt


lea rcx, student
call PrintStringZ
call ScanInt
mov rax, rcx
cqo

idivq sugar 

lea rcx, total2
call PrintStringZ
mov rcx, rax
call PrintInt
lea rcx, tot2
call PrintStringZ


call Exit

