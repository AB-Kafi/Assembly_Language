.MODEL SMALL
.DATA 

ENTERDIG DB 'ENTER A DIGIT: ' ,'$'   
NEWLINE  DB 0AH,0DH,'$'
AFTERSUB DB 'AFTER SUBTRACTING 5: ','$'
RESULT   DB 'THE RESULT IS : ','$'


.STACK 100H
.CODE

    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV DX , OFFSET ENTERDIG
        MOV AH,09H
        INT 21H
        
        
        
        MOV AH,01H
        INT 21H 
        SUB AL,30H 
        MOV BL,AL
        
        MOV AH,09H
        MOV DX,OFFSET NEWLINE
        INT 21H
        
        
        
        MOV AH,09H
        MOV DX,OFFSET AFTERSUB
        INT 21H
        
        MOV CL,BL 
        
        SUB CL,5
        
        MOV DL,CL 
        JC PRINTNEG
        
         MOV DL,CL
         ADD DL,30H
         MOV AH,02H
         INT 21H
         
         
         SUB BL,4 
         
         JMP NEXT
          
          PRINTNEG:
                MOV DL,'-'
                MOV AH,02H
                INT 21H
                
                NEG CL 
                
                MOV DL,CL 
                ADD DL,30H
                INT 21H  
                ADD BL,4
                
               JMP NEXT
               
               
            NEXT:
            
                 MOV AH,09H
                 MOV DX,OFFSET NEWLINE
                 INT 21H
                 
                 
                 MOV DX,OFFSET RESULT
                 INT 21H      
                 MOV AH,02H
                 MOV DL,BL 
                 ADD DL,30H
                 INT 21H
        
        
        
        
        MAIN ENDP
    END MAIN