
org 100h

mov ax, 06h;
mov ah, 04h;
mov cl, 09h;
mov [08h], 07h; move to memory location
mov bl, [08h]; Get from memory location                       
mov ch, bl; inter-register transferred

ret




