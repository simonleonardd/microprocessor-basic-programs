include emu8086.inc

org 100h

jmp start 

arr1 dw 01,02,03,04
arr2 dw 05,06,07,08



start:
       
     lea si,arr1
     lea di,arr2
     mov cx,04h
     
 exchange:
        
        
        mov ax,[si]
        mov bx,[di]
        xchg ax,bx
        mov [si],ax
        mov [di],bx
        inc si
        inc si
        inc di
        inc di
        loop exchange
        
print "ARRAY 1 :"  

lea si,arr1
mov cx,4

print1:
 ; xea si,arr1
 mov bx,[si]
 mov dx,30h
 Cmp bx,0Ah
 JC x5
    mov dx,37h
 x5:Add dx,bx
    mov ah,02h
    int 21h 
    inc si
    inc si
loop print1 
mov dx,10
mov ah,02
int 21h

mov dx,13
mov ah,02
int 21h

print "ARRAY 2 :"  

lea di,arr2
mov cx,04h

print2:
  
 mov bx,[di]
 mov dx,30h
 Cmp bx,0Ah
 JC x6
    mov dx,37h
 x6:Add dx,bx
    mov ah,02h
    int 21h 
    inc di
    inc di  
loop print2 


ret
end
