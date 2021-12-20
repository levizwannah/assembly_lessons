
org 100h

; branching instructions
mov ax, 20;
call p1;
dec ax;
ret
p1 proc
    add ax, 1;
    out 199, ax;
ret




