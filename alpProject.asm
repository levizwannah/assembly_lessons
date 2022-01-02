include emu8086.inc
org 100h

; GROUP MEMBERS ICS 3A
; 123558 Zwannah, Levi Kamara
; 116814 Ombaso, Tony Mogoa
; 110195 Ooko, Emmanuel Odhiambo

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
mov [06h], 0; switched off
mov cx, 1; the main switch  @todo

mainLoop: 

;check if system is on
cmp cx, [06h];
je exit;

call readTemp;
call displayTemp;

;main logic here
mov bx, [04h]; get the temperature  
cmp bl, [02h];

jb stopAirCond; 

cmp bl, [03h];
ja increaseAirCond;

;normal speed
mov [05h], 00000010b; 
print ' normal speed ' 
call rotateNormalSpeed
jmp finally;

;stop air cond
stopAirCond:
mov [05h], 00000001b;  
print ' stoped fan '
jmp finally;

;high speed
increaseAirCond:
mov [05], 00000100b; 
print ' Increased speed'
call rotateHigherSpeed


finally: 
jmp mainLoop;
exit:

; read temperature procedure
readTemp proc
    push ax;
    in ax, 125;
    mov [04h], ax; where temperature values will be read from
    pop ax
    ret

;display temperature procedure
displayTemp proc
    push ax;
    mov ax, [04h]
    out 199, ax
    pop ax
    ret 

delay1Sec proc
    push ax;
    mov dx, 02420h;
    mov cx, 0fh;
    mov ah, 86h;
    int 15h;
    pop ax;            
    ret 

rotateHigherSpeed proc
    mov ax, 0
    call is_ready
    mov ax, 1
    out 7, ax
    mov ax, 0
    call is_ready
    mov ax, 3
    out 7, ax
    mov ax, 0
    call is_ready
    mov ax, 6
    out 7, ax
    ret

rotateNormalSpeed proc
    mov ax, 0
    call is_ready  
    call delay
    mov ax, 1
    out 7, ax
    mov ax, 0
    call is_ready
    call delay
    mov ax, 3
    out 7, ax
    mov ax, 0
    call is_ready
    call delay
    mov ax, 6
    out 7, ax
    ret

is_ready proc
    wait:
        in al, 7
        test al, 10000000b
        jz wait     
    ret


delay proc
    ;delay by a 10th of a second
    mov dx, 86a0h
    mov cx, 1h 

    mov ah, 86h
    int 15h
    ret 
    
ret
