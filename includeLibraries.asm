include emu8086.inc
org 100h

; using libraries
;printing sign numbers
mov ax, 20
call PRINT_NUM_UNS
DEFINE_PRINT_NUM_UNS
END
;printing characters  
gotoxy 8, 2
print 'LOVE'
ret




