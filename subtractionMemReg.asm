
org 100h
; subtract number
mov ax, 100;
mov [02h], 50;
sub ax, [02h];
out 199, ax;

ret




