mov bl,'*'
mov cx,5
L1:
    mov ah,2
    mov dl,bl
    int 21h
    loop L1
EXIT:
mov ah,4ch
int 21h
