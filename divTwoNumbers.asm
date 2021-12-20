
org 100h

;division div - unsigned div
;idiv - signed division

mov ax,20;
mov [02h], 5;
div [02h];

out 199, ax;

ret




