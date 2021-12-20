
org 100h

; branching instructions
mov ax, 20;
mov bx, 25;
call p1;   
add ax, bx;
out 199, ax;

ret
p1 proc
    add ax, 1;
    ret




