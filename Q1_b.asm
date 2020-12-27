.model small
.stack 100h
.data

prompt  db   "Number ",'$'
colon   db   ': ','$'
newline db   0DH,0AH,'$' 
array   db   100 dup(0)


.code
    main proc 
         
                        ;Algorithm
        ;input can be 33215 , so i am using count sort 
        ;i will take input in array[ascci] and count them
        ; according ascii then 
        ;print them according to the value of the array index
        
        mov ax,@data
        mov ds,ax
        
        mov cx,4
        mov bl,31h
        
        while:
        lea dx,prompt ;printing prompt
        
        mov ah,09h 
        int 21h 

        
        mov ah,02h
        mov dl,bl      ;printing number of time
        int 21h
         
        mov ah,09h         
        lea dx,colon
        int 21h
        
        
        mov ah,01h
        int 21h 
        mov ah,0
        
        mov si,ax
        
        inc array[si]    ; using count sort
        
        mov ah,09h
        lea dx,newline
        int 21h
        
         inc bl
            loop while
            
          mov cx,10
          mov si , 30h
         
         
         
         
         
              
              xor bx,bx
              
              while2: 
              
              
              
                mov bl , array[si]      ;checking for count in array
                cmp bl,0 
                
                
                je esc 
                    
                    
                    
                    print:
                    cmp bl,0
                    je here
                    
                    
                    mov ah,02h        ;printing element 
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