
org 100h

; loop and jump instruction
; control the traffic light

mov cx, 100;    
mov ax, 50;
mov bx, 100000100b; mov first two cars
mov dx, 10000010000b;

L1:
ja cx

ret




