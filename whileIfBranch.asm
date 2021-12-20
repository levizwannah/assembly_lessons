
org 100h

; if statements while loop
mov ax, 12;
mov bx, 33;

check:
cmp ax, bx;
jb incA;
jmp st;
incA:
inc ax;
jmp check;
st:
out 199, ax;
ret




