.model small
.stack 100h
.data      

    msg1 db 'First Input : $'
    msg2 db 'Second Input : $'
    msg3 db 'RESULT : $'
    msg4 db  0dh,0ah,'$'
    
.code      

main proc
    mov ax,@data
    mov ds,ax
              
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov cl,al 
    mov dh,al

    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
                  
    mov ah,9
    lea dx,msg2
    int 21h  
    
    mov ah,1
    int 21h
    mov bh,al
    int 21h 
    mov ch,al
    add cl,ch
    sub cl,30h  
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h   
                  
    mov ah,9
    lea dx,msg3
    int 21h    
    
    mov ah,9
    lea dx,msg4
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    mov dl,dh
    int 21h   
    mov dl,' '
    int 21h
    mov dl,'+'
    int 21h  
    mov dl,' '
    int 21h
    mov dl,bh
    int 21h
    mov dl,ch
    int 21h
    mov dl,'='
    int 21h
    mov dl,' '
    int 21h
    
    mov ah,2
    mov dl,'-'   
    int 21h
    mov dl,cl
    int 21h
    
    main endp
end main