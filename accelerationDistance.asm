
org 100h

; acceleration
; s = t ( u + at/2);

mov ax, 10; a = 10
mov bx, 8; t = 8
mul bx; 
mov cx, 2;
div cx;
mov cx, 30;
add ax, cx;
mul bx;
out 199, ax;

ret




