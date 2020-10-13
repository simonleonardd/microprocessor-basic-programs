
include emu8086.inc
org 100h 


jmp l5

zero dw 0
one dw 0


num dw 12

l5:

lea si,num
mov cx,8

start:
    
    rcl [si],1
    jnc then
    inc one
    jmp nxt
    then:
    inc zero
    nxt:
    
    loop start
    

add zero,30h
add one,30h

mov ax,zero
mov bx,one

print 'no.of.zero :'
mov dx,ax
mov ah,02
int 21h

mov dl,10
mov ah,02
int 21h
print 'no.of.ones :'
mov dx,bx
mov ah,02
int 21h
ret
  end