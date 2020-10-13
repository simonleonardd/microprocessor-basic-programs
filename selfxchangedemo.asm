include emu8086.inc

org 100h

jmp start

arr1 dw 1,2,3,4
arr2 dw 5,6,7

start:
    lea si,arr1
    lea di,arr2
    ;mov bh,arr2
    ;mov dh,arr1
    mov cx,4
    
exchange:
      mov bh,[si]
      mov [di],bh
      ;mov dh,[di]
      ;mov [si],dh
      inc si
      inc di
      loop exchange
 
 mov cl,4     
exchange1:
      ;mov bh,[si]
      ;mov [di],bh
      mov dh,[di]
      mov [si],dh
      inc si
      inc di
   loop exchange1      

print "ELEMENTS IN ARRAY 1 :"

 lea di,arr2
 mov cl,4
 
 print:
  
 mov bl,[di]
 mov dl,30h
 Cmp bl,0Ah
 JC L4
    mov dl,37h
 L4:Add dl,bl
    mov ah,02h
    int 21h 
    inc di
loop print
               
print "ELEMENTS IN ARRAY 2 :"

 lea si,arr1
 mov cl,4
 
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