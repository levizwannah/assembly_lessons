
org 100h

; logical not
mov [03h], 35;
not [03h];
mov ax, [03h];
out 199, ax;

ret




