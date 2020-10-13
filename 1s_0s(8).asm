include emu8086.inc
org 100h

mov dh,25


mov al,0
mov bl,0    
mov cx,8
Lx:
    rcr dh,1
    jc L1 
    jnc L0
    L1: add al,1
        jmp LL
    L0: add bl,1
        jmp LL
    LL:loop Lx   

add al,30h
add bl,30h
        
print 'No. of 1s:'        
mov dl,al
mov ah,02
INT 21h
  
mov dl,10
mov ah,02
INT 21h 
mov dl,13
mov ah,02
INT 21h 
print 'No. of 0s:' 
mov dl,bl
mov ah,02
INT 21h
ret  
end