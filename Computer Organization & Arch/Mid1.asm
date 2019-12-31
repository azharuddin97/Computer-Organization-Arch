.model small
.stack 100h 
.data
.code
main proc
    mov ah,1
    int 21h
    mov bh,al  
    
    int 21h
    mov bl,al
    
    add bh,bl;bh=bh+bl   
    sub bh,30h;bh=bh-30h
    
    mov ah,2 
    mov dl,bh
    int 21h
    
    main endp
end main
             
             
   
    