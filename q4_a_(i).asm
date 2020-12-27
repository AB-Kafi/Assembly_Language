.MODEL  SMALL
.STACK  100H
.DATA  
.CODE


    MAIN PROC
        
        ;LET AL HAS 16 IN IT
        
        MOV AL,16D
        SHR AL,4   
        ; 1 RIGHT SHIFTING IS = DIVISION BY 2
        ; SO 4 RIGHT SHIFTING = DIVISION BY (2^4=16)
        
        
        
        
        
        
        MAIN ENDP
    END MAIN