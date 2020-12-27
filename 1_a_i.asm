.model small
.stack 100h
.data
.code

    main proc  
          
          cmp bx,ax
          jg next
          jmp endif
            next:
                 cmp cx,bx
                      jg  next2
                      jmp endif2
                      next2:
                     
                         mov ax,0 
                         jmp endif
                      
                        endif2:
                        mov bx,0
            endif:      
        
        main endp
    end main