mov ah,2
mov dl,'*'
mov cx,5
jcxz EXIT
cmp cx,0
je EXIT
L1:
    int 21h 
    dec cx
    cmp cx,0
    jg L1
EXIT:
    mov ah,4ch
    int 21h