include emu8086.inc

org 100h

jmp start

n dw 4
arr db 8,5,1,3

m dw 4
arr2 db 0,0,0,0 

start:

lea si,arr  

mov cx,n

calc:
lea si,arr
mov ch,3

 calc1:
  mov bh,[si+1]
  cmp [si],bh
  JNC L1
   jmp else 
 
 L1:  
  mov dh,[si]
  mov dl,[si+1]
   
  
  mov [si],dl
  mov [si+1],dh 
          
 else: 
  inc si
  dec ch
  JNZ calc1
  dec cx
  JNZ calc
  ;inc si   

lea si,arr         
mov cx,n

PRINT " THE SORTED ARRAY ELEMENTS (ASCENDING) ARE :"                                                                        

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

;lea di,arr2         
mov cx,n     
desc:
lea si,arr
mov ch,3
 desc1:
  mov bh,[si+1]
  cmp [si],bh
  JC L2
   jmp else1 
 
 L2:  
  mov dh,[si]
  mov dl,[si+1]
  
  mov [si],dl
  mov [si+1],dh 
  
 else1: 
  inc si
  dec ch
  JNZ desc1
  dec cx
  JNZ desc
  ;inc si   

mov dl,0ah
mov ah,02
int 21h    

mov dl,0dh
mov ah,02
int 21h 

PRINT " THE SORTED ARRAY ELEMENTS (DESCENDING) ARE :"                                                                        

lea si,arr         
mov cx,n

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


