.model small
.stack 100h

.data

prompt db 'Enter a character: $'
newline  db 0dh,0ah,'$'
a1 db ? 
a2 db ?


.code

main proc
    
    mov ax , @data
    mov ds , ax
    
    mov ah , 09h
    lea dx , prompt
    int 21h
    
    mov ah , 1
    int 21h 
    
    
    
    
    mov a1 , al
    mov a2 , al
    
    mov cx , 8
    mov ah , 2 
    
    lea dx,newline
    mov ah,09h
    int 21h 
    mov ah,02h
     
    top:
    
    shl a1 , 1
    
    jc set 
    
    mov dl , '0'
    int 21h
    
    jmp label

    set:
    
    mov dl , '1'
    int 21h
    
    jmp top
    
    
    label:
    
    loop top 
    
    mov ah , 2
    mov dl , 8
    int 21h
    int 21h
    mov dl , 09h
    int 21h
    int 21h
   
    

    
   
    
    exit:
    
    mov ah , 4ch
    int 21h
    main endp
end main