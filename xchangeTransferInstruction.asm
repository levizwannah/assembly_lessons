
org 100h

; exchange instruction
mov bx, 25h;
mov cx, 45h;
xchg cx, bx; registers to register

mov [0ah], 28h;
mov ax, 98h;
xchg ax, [0ah]; 
out 199, ax;

ret




