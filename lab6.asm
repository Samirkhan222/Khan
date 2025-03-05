.intel_syntax noprefix
.data

   greet:
     .ascii "Hello! Welcome to the valorant store!\n\0"
   
   opt1:
     .ascii "1. Reaver vandal (75 VPoints)\n\0"

   opt2:
     .ascii "2. Ion operator (50 VPoints)\n\0"

   opt3:
     .ascii "3. Vengeance sheriff (120 VPoints)\n\0"

   opt4:
     .ascii "4. Gaia vandal (75 VPoints)\n\0"
 
   opt5:
     .ascii "5. Cancel the order (0 VPoints)\n\0"

   Names:
     .quad opt1

     .quad opt2

     .quad opt3

     .quad opt4
 
     .quad opt5

   Points:
     .quad 75

     .quad 50

     .quad 120

     .quad 75
  
     .quad 0

   balance:
      .ascii "How much VPoints are you inputting?\n\0"

   bal:
     .quad 0

   selection:
      .ascii "Enter your selection:\n\0"

   sel:
     .quad 0

   change:
     .ascii "Your change is \0"

   changeend:
     .ascii " VPoints.\n\0"

.text
 
.global _start

_start:

lea rcx, greet	
call PrintStringZ

lea rcx, opt1
call PrintStringZ

lea rcx, opt2
call PrintStringZ

lea rcx, opt3
call PrintStringZ

lea rcx, opt4
call PrintStringZ

lea rcx, opt5
call PrintStringZ

lea rcx, balance
call PrintStringZ
call ScanInt
mov rax, rcx

lea rcx, selection
call PrintStringZ
call ScanInt
sub rcx, 1
mov sel, rcx
mov rdi, sel

mov rcx, [Names + rdi * 8]
call PrintStringZ

lea rcx, change
call PrintStringZ

mov rcx, [Points + rdi * 8]
sub rax, rcx
mov rcx, rax
call PrintInt

lea rcx, changeend
call PrintStringZ

call Exit
