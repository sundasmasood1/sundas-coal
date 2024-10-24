 .model small
.data
.code
msg DB 'Enter a character:$'
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
    
    mov cx,10
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    mov dx,bx
    PrintDigits:
    mov ah,2
    int 21h
    
    Loop PrintDigits
    
    mov ah,4ch
    int 21h
    main endp
end main
