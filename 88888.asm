 .model small
 .stack 100
 .data
 .code
 main proc
    mov cx,26
    mov dx,97
     Print:
    mov ah,2
    int 21h
      Inc dx
    
      Loop Print
    mov ah,4ch
    int 21h
    main endp
 end main
