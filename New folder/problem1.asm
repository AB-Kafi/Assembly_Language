.model small
.stack 100h
.data

array db 150 dup(0)
clrf  db 0dh,0ah,'$'


.code
    main proc
        mov ax,@data
        mov ds,ax    
            xor cx,cx
            mov cl,0
            mov ah,01h 
            
        while:
             int 21h
             cmp al,0Dh
             je break
             
             
             
             mov bl,al   
             mov si,bx
             add si,20h
             inc array[si]
             
        
        
        
        
             jmp while
             break:
             
             mov ah,09h 
             lea dx,clrf
             int 21h
               
      
             
              
              mov cx,26
              mov si,61h 
              
                 
              xor bx,bx
              
              while2: 
              
              
              
                mov bl , array[si]
                cmp bl,0 
                
                
                je esc 
                    
                    
                    
                    print:
                    cmp bl,0
                    je here
                    
                    
                    mov ah,02h
                    mov dx,si
                    int 21h 
                    dec bl  
                          
                      jmp print
                        here:
                 
                
                    esc:
                        
                    inc si 
                
                loop while2
           
                               
                               
                  mov ah,4ch
                  int 21h
        
        main endp
        end main
        