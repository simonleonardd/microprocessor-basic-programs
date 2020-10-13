org 100h
 jmp l
array db 5,6,11,4
n dw 4
 l:
lea si,array
mov cx,3
mov al,[si]
inc si

L3:cmp [si],al

jae L2
jmp L1

L2:mov al,[si]

L1: inc si
    loop L3

mov dl,al
mov ah,02
INT 21h