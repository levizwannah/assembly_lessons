
org 100h

; memory register

mov [03h], 24;
mov bx, 5;
sub [03h], bx;
xchg ax, [03h];
out 199, ax;

ret




