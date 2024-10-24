 .model small
.data
msg DB 'enter base=$'
  msg1 DB 'enter height=$'
  msg2 DB 'result=$'
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
         
           mov ah,1
       int 21h 
        mov cl,al
       sub cl,48 
            
               
         mov dl,10
         mov ah,2
         int 21h
         
          mov dl,13
         mov ah,2
         int 21h
         
         mov ax,@data
         mov ds,ax
         mov dl,msg2
         mov dx,offset msg2
         
         mov ah,9
         int 21h 
         mov al,bl 
          mov bl,2
  
    mul cl
    div bl
    mov dl,al
    add dl,48        
    
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
