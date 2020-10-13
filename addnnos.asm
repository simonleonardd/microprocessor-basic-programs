
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start

arr1 db 1,2,3,4
n db ?

start:

mov ah,1
int 21h
mov n,al

    lea si,arr1
    mov bx,0  
   ; mov cx,n
        
sum:
      
    add bx,[ si ]
    inc si
    loop sum

mov dl,bl 
mov ah,02

int 21h      

inc si
ret




