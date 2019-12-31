mov ah,2
mov dl,'*'
mov cl,'5'
cmp cl,'0'
je EXIT
jmp L1

L1:
int 21h
dec cl
cmp cl,'0' 
je EXIT
jmp L1    

EXIT:
mov ah,4ch
int 21h