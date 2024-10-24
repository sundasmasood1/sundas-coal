 .model small
             .stack 100h
             .data  
             msg DB 'Enter the Character in Lower case $' 
             
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
                mov bx,ax 
                          
                sub bx,32  
                         
               mov dx,10
               mov ah,2
               int 21h 
               
               mov dx,13
               mov ah,2
               int 21h
                 
               
               
               
               mov dl,bl
               mov ah,2
               int 21h 
               
               
                                  
                              
               
                
                mov ah,4ch
                int 21h
                main endp
             end main
