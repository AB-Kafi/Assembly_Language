.model small
.data
.code

    main proc
         
   
         
         
         cmp bx,ax
         jg do
         cmp cx,bx
         jg do
         jmp else
            
                do:
                mov dx,-1 
                jmp exit
                else:
                mov dx,1
        
        
          exit:
        main endp
    end main