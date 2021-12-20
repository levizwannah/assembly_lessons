
org 100h

; Sub with carry
stc;
mov ax, 10;
mov bx, 21;
sbb bx, ax;
xchg ax, bx;
out 199, ax;

ret
      



