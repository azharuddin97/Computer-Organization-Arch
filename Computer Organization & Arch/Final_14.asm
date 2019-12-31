.model small
.stack 100h
.data
    msg1 db 'Enter HEXA input: $'
    msg2 db 'HEXA output : $'
    msg3 db 0dh,0ah,'$' 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    xor bx,bx
    mov cl,4
    mov ah,1
    int 21h   

    
    L1:
        cmp al,' ' 
        je L2
        
        cmp al,39h
        jg LETTER
        
        sub al,30h
        jmp SHIFT
        
        LETTER:
            sub al,37h
        SHIFT:
            shl bx,cl
            or bl,al
            int 21h
            jmp L1   
            
    L2:    
    mov ah,9
    lea dx,msg3
    int 21h    
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov cx,4
    L3:
        mov dl,bh
        shr dl,4
        cmp dl,09h
        jle ZERO
        add dl,37h
        mov ah,2
        int 21h
        rol bx,4
        loop L3
        jmp EXIT
        ZERO:
        add dl,30h
        mov ah,2
        int 21h
        rol bx,4
        loop L3
        EXIT:
        mov ah,4ch
        int 21h 