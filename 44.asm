 .model small
.model small
.data  
.code  
main proc
   
    
    mov ah,1
    int 21h
       mov bl,al
       sub bl,48
    
    
     mov ah,1
    int 21h 
    mov cl,al
    sub cl,48
    mov al,bl
    
    
    mul cl
    mov dl,al
    add dl,48
    AAM 
    mov ch,ah
    mov cl,al
    
    mov dl,ch
    add dx,48
    mov ah,2
    int 21h
    
       mov dl,cl
    add dx,48
    mov ah,2
    int 21h 

mov ah,4ch
int 21h   

main endp
end main
