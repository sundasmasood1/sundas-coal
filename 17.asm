 model small
.data
.code
main proc
    mov cx,10
    mov dx,57
    Odd:
    mov ah,2
    int 21h 
    dec dx
    dec dx
    Loop Odd
    mov ah,4ch
    int 21h
    main endp
end main