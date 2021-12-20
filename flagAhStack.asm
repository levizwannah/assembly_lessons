
org 100h

; Flag, Ah, and stack
mov ah, 0ffh;
sahf;store from AH into flag   
mov ah, 00h;
lahf;load into ah from flag
pushf; pushes flag register into top of stack   
popf; pops what is at the top of stack to the flag register
end;
ret




