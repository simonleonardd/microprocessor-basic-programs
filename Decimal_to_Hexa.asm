org 100

mov al,05
mov bl,0F5h

add al,bl

mov bh,al
and bh,0F0h
mov cl,04
shr bh,cl

and al,0Fh
mov dh,al

mov dl,30h
cmp bh,0Ah
jc L1
mov dl,37h 
L1: add dl,bh
    mov ah,02h
    INT 21h 
    
mov dl,30h
cmp dh,0Ah
jc L2
mov dl,37h
L2: add dl,dh
    mov ah,02
    INT 21h
ret
             