org 100h


jmp start

arr1 db 1,2,3,5
n dw 4

start:

mov cx,n
lea si,arr1
mov bl,0

sum:
add bl,[si]
inc si
loop sum

mov al,bl
and bl,0f0h 
shr bl,cl
and al,00fh
mov dl,30h
cmp bl,0ah
jc printx
mov dl,37h

printx: add dl,bl
        mov ah,02h 
        mov cl,al
        INT 21h
                              
mov dl,30h
cmp cl,0Ah
jc printy
mov dl,37h 

printy: add dl,cl
        mov ah,02
        INT 21h
        
ret