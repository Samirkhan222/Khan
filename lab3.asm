.intel_syntax noprefix
.data

  firstq:
    .ascii "Hello, did you wash your hands prior to getting sick (1=yes 2=no)\n\0"

  sick:
    .quad 0
                                                
  secondq:
    .ascii "Did you eat all of your vitamins? (1=yes 2=no)\n\0"

   vitamin:
     .quad 0

  thirdq:
    .ascii "Did you santize and clean your room? (1=yes 2=no)\n\0"

   sanitize:
     .quad 0

  fourthq:
    .ascii "Did you have a sore throat before getting sick? (1=yes 2=no)\n\0"

   sore:
     .quad 0

  fifthq:
    .ascii "Were you stressed out before getting sick? (1=yes 2=no)\n\0"

    stress:
     .quad 0

  opt1:
    .ascii "Oh man! You are so stressed!! Go see a doctor now!\n\0"

  opt2:
    .ascii "Letsss gooooo! You are not stressed at all! Go code some unix!\n\0"

   .text
   .global _start

_start:

   movq rbx, 1

   lea rcx, firstq
   call PrintStringZ
  
   call ScanInt
   cmp rcx, 1
   je Then
   #false block
   jmp Yer
 Then:
    movq rax, 25
    add rbx, rax
Yer:
   lea rcx, secondq
   call PrintStringZ

   call ScanInt
   cmp rcx, 1
   je Dhen
 
   #false block
   jmp Ber
 Dhen:
   movq rax, 10
   add rbx, rax
   
Ber:
   lea rcx, thirdq
   call PrintStringZ
   
   call ScanInt
   cmp rcx, 1
   je Bhen
 
   #false block
   jmp Fer
 Bhen:
   movq rax, 30
   add rbx, rax
Fer:
   lea rcx, fourthq
   call PrintStringZ

   call ScanInt
   cmp rcx, 1
   je Khen

   #false block
   jmp Ker
 Khen:
   movq rax, 15
   add rbx, rax
 Ker:
   lea rcx, fifthq
   call PrintStringZ

   call ScanInt
   cmp rcx, 1
   je Phen

   #false block
   jmp For
 Phen:
   movq rax, 20
   add rbx, rax

#THE FINAL QUESTION

For:

   cmp rbx, 50
   jl  Unstressed

Nor:
   lea rcx, opt1
   call PrintStringZ

   jmp End

Unstressed:
   lea rcx, opt2
   call PrintStringZ

End:
   call Exit
   
   
 
