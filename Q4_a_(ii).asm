.model small
.stack 100h
.data
.code 

    main proc
        
        ;as CX is 16 bit so lsb is last and msb 16th index 
        ;lets consider CX has 0 in it . 
        ;so i will need to xor it with a value 1000000000000001
        
        xor cx,cx ;clear cx so cx has 0 in it
        xor cx,08001h  
        
        ;here all other bits are unchanged 
        
        
        
         
        main endp
    end main
