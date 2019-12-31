.model small
.stack 100h
.data
    msg1 db ' Positive Value !!$'
    msg2 db ' Negative Value !!$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al   
    int 21h
    int 21h  
    
    cmp bl,'-'
    je IF
    jmp ELSE
    
    IF:
        mov ah,9
        lea dx,msg2
        int 21h
        jmp EXIT
        
    ELSE:
        mov ah,9
        lea dx,msg1
        int 21h
    EXIT:
    mov ah,4ch
    int 21h
    