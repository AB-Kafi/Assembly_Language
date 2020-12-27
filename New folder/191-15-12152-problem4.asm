.model small
.stack 100h
.data
CRLF    DB  0DH,0AH,'$'
.code 
    main proc
        mov ax,@data
        mov ds,ax   
        
        
        
        mov ah,01h
        int 21h  
        
        xor cx,cx
        mov cl,al
        sub cl,30h
        mov bl,1
        mov dl,0
        
        for:  
             add dl,bl
             add bl,3
             
        
        
        
        loop for
         
                     
         mov bl,dl
         
                  
        lea dx, CRlF
        mov ah,09h
        int 21h  
        
         
        xor ax,ax 
        
        mov al,bl
        
        mov cl,10
        
        div cl
        
        mov bl,ah ;reminder
        mov dl,al ;co 
        add dl,30h
        
        mov ah,02h
        int 21h
        
        mov dl,bl 
        add dl,30h
        int 21h
         
        
        
        
        
        
        
        
        main endp
        end main