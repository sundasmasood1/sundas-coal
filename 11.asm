 model small
.data
msg1 DB "Enter 1st number: $" 
msg3 DB 10,13, "Satisfactory$"
msg4 DB 10,13, "Need Hard work$"   

                                        
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
    
    mov dl,53
    
    cmp dl,cl
    
    jl label1 
    
    
    cmp dl,cl
    
    ;jg label2
    
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
        
    
main endp
end main
