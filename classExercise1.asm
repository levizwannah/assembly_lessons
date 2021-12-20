
org 100h

; do A - B + C * A^2

mov [03h], 10;  for reusability a
mov ax, [03h];  mov into ax
mul ax;         square ax
mov [02h], ax;  saving a^2
mov ax, [03h];  reinitialize
mov bx, 5;
sub bx, ax;
mov ax, 4;
mul [02h];
add ax, bx;

out 199, ax;

ret




