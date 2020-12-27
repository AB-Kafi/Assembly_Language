.model small
.stack 100h
.data

array db 150 dup(0) 
clrf  db 0dh,0ah,'$'
counter db 2 dup(0)


.code   

           ;      idea
        ; idea is to count sort and print the first then count 
        ; first and rest
        ; there is nothing mensioned about duplicate
        ; but i tried but
        ; duplicate can't be count short on register and looping
        ; uing condition making the code more complex 
        
    main proc
        mov ax,@data
        mov ds,ax    
            xor cx,cx
            
            mov ah,01h 
            
           
        while:
             int 21h
             cmp al,0Dh
             je break
             
             
             
             mov bl,al   
             mov si,bx
             inc array[si]
             
        
        
        
        
             jmp while
             break:
             
             mov ah,09h 
             lea dx,clrf
             int 21h
               
      
             
              
              mov cx,26
              mov si,41h 
              
                 
              xor bx,bx
              
              while2: 
                  mov bl,array[si]
                  
                  cmp bl,0 
                  jne check2
                  jmp esc
                        check2: 
                                
                       
                            cmp counter[0],0
                            jne dont
                            jmp do 
                          
                           do:
                            mov ah,02h
                            mov dx,si
                            int 21h
                  
                            inc counter[0]
                            dec bl
                            jmp esc
                            dont:
                                inc counter[0] 
                                dec bl
                  
                        
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  esc:
                       inc si
                  
                  loop while2
                             
                             
                   mov dl,counter[0] 
                   add dl,30h
                   mov ah,02h
                   int 21h
                               
                               
                  mov ah,4ch
                  int 21h
        
        
        main endp
        end main
        