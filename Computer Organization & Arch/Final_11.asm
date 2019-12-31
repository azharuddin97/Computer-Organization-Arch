.model small
.stack 100h
.data
    msg1 db 'Input: $'
    msg2 db 'Output: $'
    msg4 db 'InOrder $'
    msg5 db 'PostOrder $'
    msg3 db 0dh,0ah,'$' 
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
    mov bh,bl
    
    InOrder:
        
        mov ah,9
        lea dx,msg3
        int 21h  
        
        lea dx,msg4
        int 21h    
    
        
        mov cx,8  
        
        L1:
        shl bl,1
        jnc CF
        
        mov ah,2
        mov dl,'1'
        int 21h
        loop L1
        jmp PostOrder
        
        CF:  
        mov ah,2
        mov dl,'0'
        int 21h
        loop L1
        
    PostOrder:
    
        mov ah,9
        lea dx,msg3
        int 21h  
        
        lea dx,msg5
        int 21h  
        mov cx,8       
        
        L2:    
        shr bh,1
        jnc CF_2
        
        mov ah,2
        mov dl,'1'
        int 21h
        loop L2
        jmp EXIT
        
        CF_2:  
        mov ah,2
        mov dl,'0'
        int 21h
        loop L2
    
    EXIT:
    mov ah,4ch
    int 21h
    
    main endp
end main