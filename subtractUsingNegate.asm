
org 100h

; subtract using negate

mov ax, 10;
mov bx, 20;
neg ax;
add ax, bx;
out 199, ax;

ret




