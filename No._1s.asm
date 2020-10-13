org 100

mov dh,10000000b
mov bh,dh


mov al,0    
mov cx,8
L1:
    rcr dh,1
    jc L2 
    loop L1
        L2:add al,1
    loop L1    
mov dl,al
mov ah,02
INT 21h
ret