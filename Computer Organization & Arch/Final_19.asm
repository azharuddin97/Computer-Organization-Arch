.model small
.stack 100h
.data 
    msg db 0dh,0ah,'$'
    msg1 db 'Input: $'
    msg2 db 'Inorder: $'
    msg3 db 'Output: $'
   
    
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1 
    mov cx,4
    L1:
      int 21h 
      sub al,30h
      mov ah,00h
      push ax
      mov ah,1
      loop L1    
    mov cx,4
    L2:
     pop dx
     or bx,dx 
     cmp cx,1
     je L3
     shl bx,4
     loop L2
    L3:  
     mov ah,9
     lea dx,msg
     int 21h  
     lea dx,msg2
     int 21h
     
     mov ah,2
     mov dl,bl
     and dl,0Fh  
     add dl,30h
     int 21h 
     
     mov dl,bl
     shr dl,4 
     add dl,30h
     int 21h
     
     mov dl,bh
     and dl,0Fh
     add dl,30h
     int 21h
     
     mov dl,bh
     shr dl,4 
     add dl,30h
     int 21h 
    
     mov ah,9
     lea dx,msg
     int 21h
     lea dx,msg3
     int 21h
     
    L4:
     rol bx,16
       
    L5:
     xor cx,cx
     mov cx,8
    L6:       
     shl bx,1 
     jnc L7
     mov ax,0  
     shl dx,1
     or dx,ax     
     loop L6  
     jmp L8
     
    L7:
     mov ax,1
     shl dx,1
     or dx,ax
     loop L6 
   L8: 
    mov cx,4 
    mov bx,dx
             
   L9:          
    
    mov dl,bh
    shr dl,4
    cmp dl,9
    je LETTER 
    mov ah,2
    add dl,30h 
    int 21h
   LETTER:  
    mov ah,2
    add dl,37h
    int 21h
    rol bx,4
    loop L9

   EXIT:
    mov ah,4ch
    int 21h


    
