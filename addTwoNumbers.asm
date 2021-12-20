
org 100h

; add two numbers
mov [02h], 50;    
mov AX, 200;
ADD [02h], AX;
mov AX, [02h];  
out 199, AX;
ret




