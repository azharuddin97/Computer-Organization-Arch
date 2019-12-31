.model small
.stack 100h
.data 
    msg db 0dh,0ah,'$'
    msg1 db 'Input: $'
    msg2 db 'Inorder: $'
    msg3 db 'Reverse: $'
    msg4 db 'Commom Digit: $' 
    
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
    L4:
     mov ah,9 
     lea dx,msg
     int 21h
     lea dx,msg3
     int 21h
     
     mov ah,2
     mov dl,bh
     shr dl,4  
     add dl,30h
     int 21h 
     
     mov dl,bh
     and dl,0Fh
     add dl,30h
     int 21h
     
     mov dl,bl
     shr dl,4
     add dl,30h
     int 21h
     
     mov dl,bl
     and dl,0Fh 
     add dl,30h
     int 21h 
      
    COMMON1:
        xor cl,cl
        CHECK1:
         mov dh,bh
         shr dh,4
         mov ch,dh
         cmp ch,dh
         je COUNT1
         jne CHECK_1   
         
         COUNT1:
          inc cl 
          
        CHECK_1:
         mov dh,bh
         and dh,0Fh 
         cmp ch,dh
         je COUNT_1
         jne CHECK__1
         
         COUNT_1:
          inc cl  
          
        CHECK__1:
         mov dh,bl
         shr dh,4
         cmp ch,dh
         je COUNT__1
         jne CHECK___1
         
         COUNT__1:
          inc cl    
          
        CHECK___1:
         mov dh,bl
         and dh,0Fh
         cmp ch,dh
         je COUNT___1
         jne PRINT1
         
         COUNT___1:
          inc cl
         
       PRINT1:
        mov ah,9 
        lea dx,msg
        int 21h
        lea dx,msg4
        int 21h 
        
        cmp cl,1
        je  COMMON2
        mov ah,2
        mov dl,ch
        add dl,30h
        int 21h
        mov dl,':'
        int 21h
        mov dl,cl
        add dl,30h
        int 21h 
        mov dl,' '
        int 21h
        mov dl,' '
        int 21h
    
    COMMON2:     
       xor cl,cl
       CHECK2:
        mov dh,bh
        and dh,0Fh
        mov ch,dh
        cmp ch,dh
        je COUNT2
        jne CHECK_2
        
        COUNT2:
         inc cl
         
       CHECK_2:
        mov dh,bh
        shr dh,4
        cmp ch,dh
        je COUNT_2      
        jne CHECK__2
        
        COUNT_2:
         inc cl
         
       CHECK__2:
        mov dh,bl
        shr dh,4
        cmp ch,dh
        je COUNT__2
        jne CHECK___2
        
       COUNT__2:
        inc cl
        
      CHECK___2:
       mov dh,bl
       and dh,0Fh
       cmp ch,dh
       je COUNT___3
       jne PRINT2
       
       COUNT___2:
        inc cl
        
     PRINT2:
        cmp cl,1
        je  COMMON3
        mov ah,2
        mov dl,ch
        add dl,30h
        int 21h
        mov dl,':'
        int 21h
        mov dl,cl
        add dl,30h
        int 21h  
        mov dl,' '
        int 21h 
        mov dl,' '
        int 21h
         
   COMMON3:
      xor cl,cl
      CHECK3:
         mov dh,bl
         shr dh,4
         mov ch,dh
         cmp ch,dh
         je COUNT3
         jne CHECK_3   
         
         COUNT3:
          inc cl 
          
        CHECK_3:
         mov dh,bl
         and dh,0Fh 
         cmp ch,dh
         je COUNT_3
         jne CHECK__3
         
         COUNT_3:
          inc cl  
          
        CHECK__3:
         mov dh,bh
         shr dh,4
         cmp ch,dh
         je COUNT__3
         jne CHECK___3
         
         COUNT__3:
          inc cl    
          
        CHECK___3:
         mov dh,bh
         and dh,0Fh
         cmp ch,dh
         je COUNT___3
         jne PRINT3
         
         COUNT___3:
          inc cl
         
       PRINT3:
        cmp cl,1
        je  COMMON4
        mov ah,2
        mov dl,ch 
        add dl,30h
        int 21h
        mov dl,':'
        int 21h
        mov dl,cl
        add dl,30h
        int 21h
        mov dl,' '
        int 21h 
        mov dl,' '
        int 21h
    
    COMMON4:
       xor cl,cl
       CHECK4:
        mov dh,bl
        and dh,0Fh
        mov ch,dh
        cmp ch,dh
        je COUNT4
        jne CHECK_4
        
        COUNT4:
         inc cl
         
       CHECK_4:
        mov dh,bl
        shr dh,4
        cmp ch,dh
        je COUNT_4      
        jne CHECK__4
        
        COUNT_4:
         inc cl
         
       CHECK__4:
        mov dh,bh
        shr dh,4
        cmp ch,dh
        je COUNT__4
        jne CHECK___4
        
        COUNT__4:
         inc cl
        
       CHECK___4:
        mov dh,bh
        and dh,0Fh
        cmp ch,dh
        je COUNT___4
        jne PRINT4
       
        COUNT___4:
         inc cl
        
     PRINT4:
        cmp cl,1
        je  EXIT
        mov ah,2
        mov dl,ch
        add dl,30h
        int 21h
        mov dl,':'
        int 21h
        mov dl,cl
        add dl,30h
        int 21h  
        mov dl,' '
        int 21h 
        mov dl,' '
        int 21h
                  
                  
    EXIT:
        mov ah,4ch
        int 21h        
   
     main endp
end main
     
