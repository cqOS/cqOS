org 0x7c00
use16
testing:
mov ah, 0x0E
mov al, 't'
int 10h
mov al, 'e'
int 10h
mov al, 's'
int 10h
mov al, 't'
int 10h
mov al, 'i'
int 10h
mov al, 'n'
int 10h
mov al, 'g'
int 10h
mov al, '.'
int 10h
mov al, '.'
int 10h
mov al, '.'
int 10h
mov al, 10
int 10h
mov al, 13
int 10h
well:
mov al, 13
int 10h
mov al, 10
int 10h
mov al, 'c'
int 10h
mov al, 'q'
int 10h 
mov al, 'O'
int 10h
mov al, 'S'
int 10h
mov al, '>'
int 10h

main:
mov ah,0
int 16h
mov ah,0x0E
int 10h


cmp al, 13
je new
cmp al, 'w'
je well
cmp al, 'W'
je well
cmp al, 'c'
je contrl
cmp al, 'C'
je contrl
jmp main
 new:
mov al, 10
jmp well
contrl:
mov ah,0
int 16h
mov ah,0x0E
int 10h

cmp al,13
je color
jmp contrl
color:
mov ah,0
int 16h
mov ah,0x0E
int 10h
mov al, 10
int 10h
mov al, 13
int 10h
mov al, 'p'
int 10h
mov al, 'r'
int 10h
mov al, 'e'
int 10h
mov al, 'e'
int 10h
mov al, 's'
int 10h
mov al, ' '
int 10h
mov al, '+'
int 10h
mov al, ' '
int 10h
mov al, 't'
int 10h
mov al, 'o'
int 10h
mov al, ' '
int 10h
mov al, 'i'
int 10h
mov al, 'n'
int 10h
mov al, 'c'
int 10h
mov al, ' '
int 10h
mov al, 'c'
int 10h
mov al, 'o'
int 10h
mov al, 'l'
int 10h
mov al, 'o'
int 10h
mov al, 'r'
int 10h
CHICKEING:
mov ah,0
int 16h
mov ah,0x0E
int 10h

cmp al, '+'
je inc_color
cmp al, 27
je well
jmp CHICKEING
inc_color:
mov al,0
mov ah,2
inc al
int 10h
jmp CHICKEING
msg db 'wellcome to OS',10
times 510-($-$$) db 0
dw 0xAA55