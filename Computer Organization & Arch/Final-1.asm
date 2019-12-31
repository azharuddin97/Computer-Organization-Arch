.model small
.stack 100h
.data    

   msg1 db 'Input Value : $'
   msg2 db 'Output : $'
   msg3 db 0dh,0ah,'$'
   msg4 db ' is Positive Value !! $'
   msg5 db ' is Negative Value !! $'
   
   
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
    
    int 21h
    mov bh,al 
     
    mov ah,9
    lea dx,msg3
    int 21h
    
    cmp bl,'0'
    jge IF
    jmp ELSE
    
    IF:       
        mov ah,9
        lea dx,msg2
        int 21h 
        lea dx,msg3
        int 21h

        mov ah,2
        mov dl,bl
        int 21h 
        mov dl,bh
        int 21h
        
        mov ah,9
        lea dx,msg4
        int 21h 
        jmp EXIT
        
     ELSE:
        mov ah,9
        lea dx,msg2
        int 21h 
        lea dx,msg3
        int 21h

        mov ah,2
        mov dl,bl
        int 21h  
        mov dl,bh
        int 21h
        mov ah,9
        lea dx,msg5
        int 21h 
        
    EXIT:
    mov ah,4ch
    int 21h   
        
    
        
    