include emu8086.inc
org 100h 


jmp l5

zero dw 0
one dw 0


num dw 0fff0h

l5:

mov si,num
mov cx,16
                                                                                           
start:
    
    rcl si,1
    jnc then
    inc one
    jmp nxt
    then:
    inc zero
    nxt:
    loop start


;mov bx,one
cmp one,0ah
jc l1


add one,37h
l1:
    add one,30h
;mov bx,one       

;mov ax,zero
cmp zero,0ah
jc l2
add zero,37h
l2:
    add zero,30h
;mov ax,zero
;add one,0030h

mov ax,zero
mov bx,one

print 'no.of.zero :'
mov dx,ax
mov ah,02
int 21h

mov dl,10
mov ah,02
int 21h

mov dl,13
mov ah,02
int 21h

print 'no.of.ones :'
mov dx,bx
mov ah,02
int 21h
ret
end