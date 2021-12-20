
org 100h

; output the smaller num
mov ax, 2;
mov bx, 20;
cmp ax, bx;
ja showB;
jmp exit;
showB: 
mov ax, bx;
exit:
out 199, ax;
ret




