.model small
.stack 100h
.data 
.code
main proc   
    mov ah,1
    mov cx,0000h
    L1:
    
    int 21h 
    cmp al,0dh
    je EXIT  
    cmp al,39h
    jg L1
    sub al,30h
    xor ah,ah
    push ax 
    mov ah,1
    inc cx
    jmp L1  
    
    EXIT:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    xor bx,bx
     L2:
     pop dx
     or bx,dx 
     cmp cx,1
     je L3
     shl bx,4    
     loop L2
     L3:
     mov ah,2
     mov dl,bl
     and dl,0Fh
     add dl,30h
     int 21h
    
     mov dl,bl
     shr dl,4
     add dl,30h
     int 21h 
     
     mov dl,bh
     and dl,0Fh
     add dl,30h
     int 21h
     
     mov dl,bh
     shr dl,4
     add dl,30h
     int 21h 
     L5:
     mov ah,4ch
     int 21h
     
     main endp
end main