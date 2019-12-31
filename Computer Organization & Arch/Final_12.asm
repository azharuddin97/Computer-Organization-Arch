.model small
.stack 100h
.data
    msg1 db 'Input: $'
    msg2 db 0dh,0ah,'Output: $'
.code
main proc      
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov cx,16
    L1:
     shl bx,1
     jnc ZERO
     mov ah,2
     mov dl,'1'
     int 21h
     loop L1
     jmp EXIT
     
     ZERO:
     mov ah,2
     mov dl,'0'
     int 21h
     loop L1
     

     
   EXIT:
   mov ah,4ch
   int 21h

    