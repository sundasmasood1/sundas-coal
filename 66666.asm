  .model small
.data
msg DB 'enter a number=$'
  msg1 DB 'square of number entered is=$'
.code  
main proc
          
         mov ax,@data
         mov ds,ax
         mov dl,msg
         mov dx,offset msg
         
         mov ah,9
         int 21h
          
       mov ah,1
       int 21h 
        mov bl,al
       sub bl,48
          mov al,bl
         
         mov dl,10
         mov ah,2
         int 21h
         
               mov dl,13
         mov ah,2
         int 21h
                 
              mov ax,@data
         mov ds,ax
         mov dl,msg1
         mov dx,offset msg1
         
         mov ah,9
         int 21h  
         mov al,bl   
  
    mul al        
    
      AAM 
    mov ch,ah
    mov cl,al
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
     mov dl,cl
    add dl,48
    mov ah,2
    int 21h
     

   

mov ah,4ch
int 21h   

main endp
end main
