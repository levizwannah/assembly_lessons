
org 100h

; delay instructions
mov bx, 30
add bx, 30
xchg ax, bx
out 199, ax
mov dx, 02420h
mov cx, 0fh
mov ah, 86h
int 15h 

out 199, ax

ret




