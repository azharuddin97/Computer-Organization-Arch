.model small
.stack 100h
.data
    msg1 dw 'Smaller than Zero !! $ '
    msg2 dw 'Learger than Zero !! $ '
    
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    mov ch,35h
    mov bh,34h
    
    xchg ch,bh                                                                                        
    sub ch,bh
    cmp ch,0
    jb IF
    jmp ELSE
    
    IF:
    lea dx,msg1
    int 21h
    jmp EXIT
    
    ELSE:
    lea dx,msg2
    int 21h
    
    EXIT:
    mov ah,4ch
    int 21h 
main endp
end main