
org 100h

; divide using shift
mov ax, 240;
mov cl, 3; 2 ^3 = 8
shr ax, cl;
out 199, ax;

ret




