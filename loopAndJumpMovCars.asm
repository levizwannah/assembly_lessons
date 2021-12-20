
org 100h

; loop and jump instruction
; control the traffic light

mov cx, 100;    
mov bx, 1100001100b; mov first two cars
mov dx, 100001100001b; mov the second 2 cars

L1:  
mov ax, 50;
cmp ax, cx;
mov ax, dx; 

ja car1; 
jmp changeLight;

car1:
mov ax, bx;
changeLight:
out 4, ax;

Loop cx L1;

ret




