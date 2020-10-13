include emu8086.inc

org 100h

jmp start

arr1 db 8,5,1,3
arr2 db ?

n db 4

start:

lea si,arr1
mov cl,n

calc:
lea si,arr1
mov ch,3
asc:
    mov bh,[si+1]
    cmp [si],bh
    jnc swap
    jmp else
    swap:
        mov dh,[si]
        mov dl,[si+1]
        
        mov [si],dl
        mov [si+1],dh
    else:
        inc si
        dec ch
        jnz asc
        dec cl
loop calc 
        
lea si,arr1
mov cl,n
        

print "ASCENDING ORDER :"  

print:
  
 mov bl,[si]
 mov dl,30h
 Cmp bl,0Ah
 JC L4
    mov dl,37h
 L4:Add dl,bl
    mov ah,02h
    int 21h 
    inc si
loop print 


mov cl,n

calc1:
lea si,arr1
mov ch,3
desc:
    mov bh,[si+1]
    cmp [si],bh
    jc swap1
    jmp else1
    swap1:
        mov dh,[si]
        mov dl,[si+1]
        
        mov [si],dl
        mov [si+1],dh
    else1:
        inc si
        dec ch
        jnz desc
        dec cl
        jnz calc1 
                 
mov dl,0ah
mov ah,02
int 21h    

mov dl,0dh
mov ah,02
int 21h 

print "DESCENDING ORDER :"  

lea si,arr1
mov cl,n

print1:
  
 mov bl,[si]
 mov dl,30h
 Cmp bl,0Ah
 JC L5
    mov dl,37h
 L5:Add dl,bl
    mov ah,02h
    int 21h 
    inc si
loop print1


ret
end     