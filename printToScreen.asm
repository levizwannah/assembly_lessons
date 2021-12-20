include emu8086.inc
org 100h
;perform and arithmetic operation
;print the result on the screen
;as ans=ans
mov ax, 20;
mov bx, 30;
add ax, bx;
push ax
mov ax, bx;
call PRINT_NUM_UNS
DEFINE_PRINT_NUM_UNS
print " + ";
mov ax, 20;
call PRINT_NUM_UNS
print " = "; 
pop ax;
call PRINT_NUM_UNS
END
ret




