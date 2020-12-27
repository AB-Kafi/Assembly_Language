.MODEL SMALL


.CODE
    MAIN PROC
         
       MOV AL,3
       SUB AL,5
       JC NEGTIVE
            ADD AL,4
            MOV DL,AL
            ADD DL,30H
            MOV AH,02H
            INT 21H
            JMP EXIT
       
       
                 NEGTIVE:
                 MOV BL,AL
                    MOV DL,'-'
                    MOV AH,02H
                    INT 21H
                    NEG BL
                    MOV DL,BL
                    ADD DL,30H
                    INT 21H
                    
                    
                    EXIT:
                    
        
        
        
    MAIN ENDP
    END MAIN