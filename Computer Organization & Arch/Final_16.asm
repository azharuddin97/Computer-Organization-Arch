mov bx,4CA9h
mov cx,4
L1:
mov dl,bh
shr dl,4
cmp dl,09h
jle ZERO
add dl,37h
mov ah,2
int 21h
rol bx,4
loop L1
jmp EXIT
ZERO:
add dl,30h
mov ah,2
int 21h
rol bx,4
loop L1
EXIT:
mov ah,4ch
int 21h