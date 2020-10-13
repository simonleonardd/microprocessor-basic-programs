include emu8086.inc
print 'Enter the number :'
jmp start

arr dw ?
n dw ?
;c dw ?

start:  
lea si,arr




  mov ah,01
 int 21h
 mov dl,al
 cmp dl,30h
 jz l1        
 ;mov dl,al
 ;mov bx,10
 ;mul bx
 ;start1:
 ;mov ah,01
 ;int 21h
 ;add dl,al
 ;mov bl,10
 ;mul bl 
 mov [si],al                   
 lea di,[si]
 inc si
 ;inc si
 inc di
 ;inc di
 
 loop start
 l1:
    ret 
end