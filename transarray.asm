org 100h
   
jmp start

arr1 db 1,2,3,5,4,6,5,4
arr2 db ?

n db 8
start:

mov cl,n
lea si,arr1
lea di,arr2
mov bl,0

transfer:
         
       mov ax,[si]
       cmp ax,0ah
       jmp l1
       l1:
       add ax,30h
       mov [di],ax
       mov dx,[di]
       mov ah,02
       int 21h       ;mov arr2,[di]
       inc si
       inc di
       loop transfer    
        

 
 ret
         