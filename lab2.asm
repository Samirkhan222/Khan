.intel_syntax noprefix
  data  
 Greeting:
   .ascii "How much do you earn from helping innocent people?\n\0"

 Quote:
   .ascii "How much do you receive from your allowance?\n\0"

 Cashflow:
   .ascii "\nCongrats you earned \0"
 
.text


_start:
 
 lea rbx, Greeting
 call PrintStr

 call ScanDec
 mov rax, rbx

 lea rbx, Name
 call PrintStr

 call ScanDec
 mov rcx, rbx

 lea rbx, Quote
 call PrintStr

 call ScanDec
 mov rdx, rbx


 lea rbx, Cashflow
 call PrintStr

 add rax, rcx
 add rax, rdx
 mov rbx, rax 

 call PrintDec

 call ExitProgram    

