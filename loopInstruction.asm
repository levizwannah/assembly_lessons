
org 100h

; loop decrement
mov ax, 20;
mov cx, 15;

L1:
dec ax;
out 199, ax;
loop cx L1;

ret




