.intel_syntax noprefix
.data

  diz:
   .ascii "Input three numbers!\n\0"

  num1:
   .quad 0

  num2:
   .quad 0

  num3:
   .quad 0

.global _start

_start:

Top:

 lea rcx, diz
 call PrintStringZ
 call ScanInt
 mov num1, rcx

 call ScanInt
 mov num2, rcx

 call ScanInt
 mov num3, rcx

 mov rcx, num1
 add rcx, num2
 add rcx, num3 
 call PrintInt


End:
 call Exit


   
