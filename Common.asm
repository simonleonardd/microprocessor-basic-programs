org 100h

jmp start:
a1 db 1,5,4,5
a2 db 1,2,2,4

start:

lea si,a1          
lea di,a2
mov cx,04
  l1:  mov dh,0
       mov al,[si]
  l2:  add dh,1
       cmp dh,5
       jz l4
       cmp al,[di]
       jz l3
       inc di
       jmp l2
  l3:  mov dl,al
       mov ah,02
       INT 21h 
  l4:  inc si
       lea di,a2
       loop l1 
              
ret