include emu8086.inc
org 100h

;multiply using shift
;mul 7 by 3
mov ax, 7
push ax
shl ax, 1
pop bx
add ax, bx
call print_num_uns
define_print_num_uns

ret




