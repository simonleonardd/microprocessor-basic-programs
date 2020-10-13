org 100h

jmp start

array db 44,66,77,55
n dw 0004

start:
    lea si,array
    mov cx,n
    mov al,255
    
    L2:
        cmp al,[si]
        jc L1
        mov al,[si]
    L1:
        inc si
        loop L2   

mov dl,al
mov ah,02
INT 21h
ret