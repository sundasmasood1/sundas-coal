 model small
.data
.code
main proc
    mov cx,3     
         mov ax,0
          mov dx,56
          print:
          add ax,cx
          Loop print 
          mov ah,2
          mov dl,al
          add dl,48
          int 21h
          
                  
          mov ah,4ch
          int 21h
          main endp
end main