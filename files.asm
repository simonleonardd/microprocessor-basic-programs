include emu8086.inc

org 100h 

jmp start

dir1 db "D:\test1",0

file1 db "D:\test1\file1.txt",0
text db "CANDIDATES"
text1 db "1.rakibhai"
text2 db "2.vicky khan"
text_size = $-offset text
handle dw ?
value dw ?


start:
prompt db 'Enter the Candidate Number to vote: $'
mov dx,offset prompt
mov ah,09
int 21h  

    input:
       mov ah,1
       int 21h
       mov ah,40h
  mov bx,handle
  mov dx,offset value  
  mov cx,text_size
  int 21h
       cmp al,0dh
       je endl 
     jmp input

    mov ax,cs
    mov dx,ax
    mov es,ax
    
    
  mov  dx,offset dir1
  mov ah,39h
  int 21h 
  
  mov ah,3ch
  mov cx,0
  mov dx,offset file1
  int 21h
  jc err
  mov handle,ax
  ;write
  
  mov ah,40h
  mov bx,handle
  mov dx,offset text  
  mov cx,text_size
  int 21h
  ;close file
  mov ah,3eh
  mov bx,handle
  int 21h
  err:
  nop        
  
  endl:
    mov ah,4ch
    int 21h
  
  ret 
  end