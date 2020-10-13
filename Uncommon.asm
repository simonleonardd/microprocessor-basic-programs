include emu8086.inc

org 100h

jmp start:
a1 db 1,5,4,5
a2 db 1,2,2,4

start:



lea si,a1          
lea di,a2
mov cx,04  

print "THE UNCOMMON ELEMENTS ARE :"


  l1:  mov dh,0
       mov al,[si]
  l2:  add dh,1
       cmp dh,5
       jz l3
       cmp al,[di]
       jz l4
       inc di
       jmp l2
  l3:   mov bl,[si]
        mov dl,30h
        Cmp bl,0Ah
        JC iL4
        mov dl,37h
            iL4:Add dl,bl
                mov ah,02h
                int 21h 
                inc si
       
  l4:  inc si
       lea di,a2
       loop l1
       

lea si,a2          
lea di,a1
mov cx,04
  ll1:  mov dh,0
       mov al,[si]
  ll2:  add dh,1
       cmp dh,5
       jz ll3
       cmp al,[di]
       jz ll4
       inc di
       jmp ll2
  ll3:        
       mov bl,[si]
        mov dl,30h
        Cmp bl,0Ah
        JC kL4
        mov dl,37h
            kL4:Add dl,bl
                mov ah,02h
                int 21h 
                inc si 
  ll4:  inc si
       lea di,a1
       loop ll1 
              
ret