
org 100h

; AND OR NOT
mov ax, 100b;
mov bx, 100000000b;
OR ax, bx;
out 4, ax;

ret




