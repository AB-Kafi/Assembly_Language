.MODEL SMALL
.DATA 


a DB  08d
b DB  05d   
c DB  03d
d DB  01d
e DB  02d           
x DB  ?

.CODE 

    MAIN PROC
        ;DATA INIT 
        MOV AX,@DATA
        MOV DS,AX
        
        ;first section 
        
                        
         mov bl ,  a
         sub bl ,  b
         add bl ,  c
        
         xor cx,cx 
         
         add cl ,  c
         add cl ,  d
         sub cl ,  e
          
         xor dx,dx 
         
         add dl,  e
         sub dl,  d
         add dl,  b
         
         add bl,cl
         sub bl,dl 
         add bl,30h
         
        mov x,bl  
     
        
        mov dl,x
        mov ah,02h
        int 21h
        
        
        
        
        
        
        
        
    MAIN    ENDp 
       END MAIN  
       