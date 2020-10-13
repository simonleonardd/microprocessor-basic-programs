org 100h

mov al,05
mov bh,15h
add al,bh
shl al,1
test al,0fh
mov ah,2
mov dl,al
int 21h 
ret