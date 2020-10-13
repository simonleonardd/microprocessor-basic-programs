include emu8086.inc

org 100h

jmp start

prompt db 'Enter a String:'

string db ?

start:
    mov ds,ax
    mov es,ax
    
    lea dx,prompt
    mov ah,09
    int 21h
    
    cld
    lea di,string
    xor bx,bx
    
    input:
    
        mov ah,1
        int 21h
        
        cmp al,0dh
        je end1
        
        cmp bx,0
        je error
        
        mov ah,02
        mov dl,20h
        int 21h
        
        mov dl,08h
        int 21h
        
        dec bx
        dec di
        jmp input
        
        lodsb
        mov dl,al
        int 21h
        
        error:
            mov ah,02
            mov dl,07h
            int 21h
            
            mov dl,20h
            int 21h
            jmp input
            
            back:
                stosb
                inc si
                jmp input
            end1:
                mov ah,4ch
                int 21h
ret 
end