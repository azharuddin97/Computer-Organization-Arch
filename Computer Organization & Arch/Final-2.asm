.model small
.stack 100h
.data
.code
main proc
    mov bh,'5'
    cmp bh,'0'
    jge IF
    jmp ELSE
    
    IF:
    mov ah,2
    mov dl,'P'
    int 21h
    jmp EXIT
    
    ELSE:
    mov ah,2
    mov dl,'N'
    int 21h
    
    EXIT:
    mov ah,4ch
    int 21h
    
main endp
end main