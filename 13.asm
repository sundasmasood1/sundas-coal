 model small
.data
.code
main proc
    mov cx,26
    mov dx,97ww
    PrintDigits:
    mov ah,2
    int 21h
    inc dx
    Loop PrintDigits
    mov ah,4ch
    int 21h
    main endp
end main