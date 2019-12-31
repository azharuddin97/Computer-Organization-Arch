.model small
.stack 100h
.data 
    msg1 db 'Inter the Input : $' 
    msg2 db 'Output : $'
    msg3 db 0dh,0ah,'$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,msg1
    int 21h
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bh,' '
    je EXIT
    L1: 
        mov ah,9
        lea dx,msg3
        int 21h
        lea dx,msg2
        int 21h
        mov ah,2
        mov dl,bh
        int 21h 
        mov ah,9
        lea dx,msg3
        int 21h
        lea dx,msg1
        int 21h
        mov ah,1
        int 21h
        mov bh,al
        cmp bh,' '
        jne L1
    EXIT:
    mov ah,4ch
    int 21h