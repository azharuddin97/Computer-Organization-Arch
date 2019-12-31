.model small
.stack 100h
.data 
    msg1 db 'Frist Letter is Vowel ! $'
    msg2 db 'Frist Letter is Consonent ! $'
    msg3 db 0dh,0ah,'$'
    
.code
main proc 
    mov ax,@data
    mov ds,ax

    
    mov ah,1
    int 21h
    mov bh,al
    int 21h
    mov bl,al
    int 21h
    mov ch,al
    
    cmp bh,'a'
    je IF
    cmp bh,'e'
    je IF
    cmp bh,'i'
    je IF
    cmp bh,'o'
    je IF
    cmp bh,'u'
    je IF

    cmp bh,'A'
    je IF
    cmp bh,'E'
    je IF
    cmp bh,'I'
    je IF
    cmp bh,'O'
    je IF
    cmp bh,'U'
    je IF  
    jmp ELSE
    
    IF:
        mov  ah,9 
        lea dx,msg3
        int 21h 
        
        lea dx,msg1
        int 21h  
        jmp EXIT
        
    ELSE:
        mov  ah,9 
        lea dx,msg3
        int 21h 
        
        lea dx,msg2
        int 21h
        
    EXIT:
        mov ah,4ch
        int 21h
       
       
   main endp
end main