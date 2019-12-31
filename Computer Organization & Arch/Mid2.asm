mov ah,1
int 21h;AX=0131H ;ZF=0    ;PF=0    ;
mov bl,al;BL=00000000   B
int 21h;AX=0132  H   ,BX= 0031   H
mov cl,al
add bl,cl;CX=   H
xchg bl,cl;CF=  ;OF=    ,PF=
mov ah,2;PF=
mov dl,bl
int 21h
mov dl,cl