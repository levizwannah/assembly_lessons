
org 100h

; inner loop
; compute E{x=1, x=10}(E{y=0, y=x} y)

mov cx, 10;
mov ax, 0;

outerL:
mov bx, cx; save the previous cx value

innerL:
inc ax;
loop cx innerL;

out 199, ax;

mov cx, bx;
loop cx outerL:

ret




