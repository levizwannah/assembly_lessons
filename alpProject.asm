
org 100h

; define normal levels L1, L2
; read the thermometer and display on LCD
; check if t < L1 and stop the motor
; else check if t > L2 and increase the motor
; else let the motor rotate at a fair speed: FS = ?
; delay for 60 seconds
; go to step 1

; defining the constants 
mov [02h], 20; L1  degree C
mov [03h], 22; L2  degree C
mov cx, 0; the main switch  @todo

mainLoop:
call readTemp;
call displayTemp;

;main logic here 

call delay1Sec;
jmp mainLoop;
exit:

; read temperature procedure
readTemp proc:
    push ax;
    in ax, 125;
    mov ax, [04h]; where temperature values will be read from
    pop ax
    ret

;display temperature procedure
displayTemp proc:
    push ax;
    mov ax, [04h]
    out 199, ax
    pop ax
    ret
    
setFanSpeed proc:
    push ax;
    mov ax, [05h]; [05h] contains the new fan speed
    out 7, ax;
    pop ax;
    ret  

delay1Sec proc:
    push ax;
    mov dx, 02420h;
    mov cx, 0fh;
    mov ah, 86h;
    int 15h;
    pop ax;            
    ret
ret




