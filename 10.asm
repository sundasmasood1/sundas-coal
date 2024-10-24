model small
.data
msg1 DB "Enter 1st number: $" 
msg2 DB 10,13, "Enter 2nd number: $"
msg3 DB 10,13, "Number 2 is less$"
msg4 DB 10,13, "Numbers are equal$"   
msg5 DB 10,13, "Number 2 is greater$"
                                        
.code
main proc
    
    mov ax,@data
    mov ds,ax         
    mov dl,msg1
    mov dx,offset msg1
    
    mov ah,9  
    int 21h
    
    mov ah,1
    int 21h
    
    mov cl,al
    
    mov ax,@data
    mov ds,ax       
    mov dl,msg2
    mov dx,offset msg2   
    
    mov ah,9  
    int 21h
    
    mov ah,1
    int 21h
    
    mov dl,al
    
    cmp dl,cl
    
    jl label1 
    
    
    cmp dl,cl
    
    jg label2
    
    mov ax,@data
    mov ds,ax       
    mov dl,msg4
    mov dx,offset msg4  
    
    mov ah,9 
    int 21h  
    
    mov ah,4ch 
    int 21h
    
    label1:
    mov ax,@data
    mov ds,ax       
    mov dl,msg3
    mov dx,offset msg3  
    mov ah,9 
    int 21h  
    
    mov ah,4ch 
    int 21h 
    
     
    label2:
    mov ax,@data
    mov ds,ax       
    mov dl,msg3
    mov dx,offset msg5  
    mov ah,9 
    int 21h  
    
    mov ah,4ch 
    int 21h       
    
    
    
main endp
end main



