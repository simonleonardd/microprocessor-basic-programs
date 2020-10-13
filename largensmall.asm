org 100h


 jmp l5

arr1 db 1,2,13,5
n dw 4

l5:
mov cx,3
lea si,arr1
mov bl,[si]
inc si

large:  
        ;cmp bl,[si]
        cmp [si],bl
        jae then
        jmp nxt
        then:
            mov bl,[si]
            
        nxt:   
            inc si
            loop large

mov al,bl

and bl,0f0h 
 mov cl,04

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


 ;shr al,cl
                     
                     
mov dl,30h
cmp cl,0Ah

jc printy

mov dl,37h 

printy: add dl,cl
        mov ah,02
        INT 21h
        
ret