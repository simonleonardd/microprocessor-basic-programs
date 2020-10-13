include emu8086.inc

org 100h

jmp start

a db -1
a1 db 1
a2 db ?

n db 7 
lea si,a
lea di,a1

start:
     lea si,a
     lea di,a1
     mov al,a
     mov bl,a1
     mov bh,bl
     add al,bl
     mov dh,al
     mov dl,al
     add dl,30h
     mov ah,02
     int 21h
     mov dl,10
     mov ah,02
     int 21h
     mov dl,13
     mov ah,02
     int 21h
     mov al,bh
     mov [si],bh
     mov bl,dh
     mov [di],dh
     inc si
     inc di
     dec n
     jz o1
     
     loop start

o1:     
ret
end   
