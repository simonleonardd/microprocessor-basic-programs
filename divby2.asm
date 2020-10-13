include emu8086.inc    
org 100h

print 'Enter the Number :'


mov ah,01
int 21h

mov bl,al
;add bl,30h 

mov dl,10
mov ah,02
int 21h

mov dl,13
mov ah,02
int 21h

print 'The Number is :'

mov dl,bl
mov ah,2
int 21h 

mov dl,10
mov ah,02
int 21h

mov dl,13
mov ah,02
int 21h


mov ah,0
mov al,dl
mov bl,2

div bl

cmp ah,0

je l1
print 'Not DIvisible by 2'
mov dl,10
mov ah,02
int 21h

mov dl,13
mov ah,02
int 21h
print 'The number is ODD' 

jmp l2
l1:
    print 'Divisible by 2'
    mov dl,10
mov ah,02
int 21h

mov dl,13
mov ah,02
int 21h
    print 'The number is Even'
l2:    
    ret
    
end