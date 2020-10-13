include emu8086.inc
org 100h

one db ?
zero db ?
mov bx,0f0ffh


mov one,0
mov zero,0
mov al,0    
mov cx,16
Lx:
    rcr bx,1
    jc L1 
    jnc L0
    L1: add one,1
        jmp LL
    L0: add zero,1
        jmp LL
    LL:loop Lx   
         

print 'No. of 1s:'
mov al,one
mov bl,10
div bl   
         
mov bh,ah
;Q         
mov dl,al
add dl,30h
mov ah,02
INT 21h
;R          
mov dl,bh
add dl,30h
mov ah,02
INT 21h

;new line     
mov dl,10
mov ah,02
INT 21h

print 'No. of 0s:'
mov ax,0
mov al,zero
div bl   
         
mov bh,ah         
mov dl,al
add dl,30h
mov ah,02
INT 21h
          
mov dl,bh
add dl,30h
mov ah,02
INT 21h


ret  
end