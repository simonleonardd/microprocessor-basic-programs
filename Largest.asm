org 100h

jmp start

array db 6,3,4,44
n dw 0004

;largest
start:
    lea si,array
    mov cx,n
    mov al,00
    
    L2:
        cmp al,[si]
        jnc L1
        mov al,[si]
    L1:
        inc si
        loop L2   

mov dl,al
mov ah,02
INT 21h   
 
;smallest
    lea di,array
    mov cx,n 
    mov bl,dl
        L4:
            cmp bl,[di]
            jc L3
            mov bl,[di]
        L3:
            inc di
            loop L4   

mov dl,bl
mov ah,02
INT 21h
ret