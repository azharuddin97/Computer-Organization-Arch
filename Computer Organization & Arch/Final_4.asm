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
        cmp bh,'5'
        je IF_1
        jmp ELSE_1
        IF_1:
            mov ah,2
            mov dl,'5'
            int 21h
            jmp EXIT_1
        ELSE_1:
            mov ah,2
            mov dl,'0'
            int 21h
        EXIT_1:
            mov ah,4ch
            int 21h
        jmp EXIT
    ELSE:
        mov ah,2
        mov dl,30h
        int 21h
    EXIT:
    mov ah,4ch
    int 21h  