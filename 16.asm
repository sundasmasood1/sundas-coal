 model small
.data
.code
main proc
    mov cx,5
    mov dx,56
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