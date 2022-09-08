
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BOX PROC uses ax bx cx dx
BOX MACRO  pX, pY       ;point's x and y 

push ax
push bx
push cx
push dx
 ;set video mode

mov ah,0
mov al,13h
int 10h

;trying to clear
COMMENT #
 mov ah,6
 mov al,0
; mov bh,01111101b
 mov bh,0h
 mov cx ,pX
 mov dx, pY
 mov LOW_X,cx               ;update new box coordinates
 mov LOW_Y,dx
 int 10h
 #

 mov ah,6
 mov al,0
; mov bh,01111101b
 mov bh, 05h
 mov LOW_X,cx               ;update new box coordinates
 mov LOW_Y,dx
 int 10h
 

;ret
;BOX ENDP

pop dx
pop cx
pop bx
pop ax
ENDM

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

KEY_MOVE MACRO pX, pY       ;point's x and y 

push ax
push bx
push cx
push dx

;set video mode
mov ah,0
mov al,13h
int 10h
;move cursor to start
mov cx,0 ;x-coordinate
mov dx,0 ;y-coordinate
    mov cx, pX
    mov dx, pY
again:

	mov LOW_X,cx
	mov LOW_Y,dx
	;move cursor depending on x and y
	mov ah,02h
	int 10h
	

	;call BOX
	BOX LOW_X LOW_Y
	;clear
;	mov ax,0
;	mov cx,0
;rebound:
	;check if any key pressed
	;mov ah,01
	;int 16h
	;jz rebound
	;if not pressed then go back
	mov ah,0 ;register pressed key
	int 16h 
	mov cx,LOW_X
	mov dx,LOW_Y
	cmp ah,01h
	je EXIT_MOVE_KEY
	cmp ah,4Dh
	je righter
	cmp ah,4Bh
	je lefter
	cmp ah,50h
	je upper
	cmp ah,48h
	je lower
righter:
	inc dx
	inc cx
	jmp again
lefter:
	dec dx
	dec cx          ;y-coordinate 
	jmp again
upper:
	inc dh
	inc ch
	jmp again
lower:
	dec dh
	dec ch
	jmp again

EXIT_MOVE_KEY:
;ret
;KEY_MOVE ENDP

pop dx
pop cx
pop bx
pop ax
ENDM


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOVE_BOX PROC uses ax bx cx dx
COMMENT #
;move all coordinates
add cl, 20
add dl, 20
 #
 
  mov dl, 2
 add dl , 48
 mov ah, 02h
 int 21h
 mov dx, 0
 mov ax, 0
 ;set video mode
mov ah,0
mov al,12h
;mov bh,01111101b
int 10h
  mov ah,6
 mov al,0
 mov bh,01111101b
; mov bh, 02h
 mov cl,20
 mov ch,10
 mov dh,10
 mov dl,30
 int 10h

ret
MOVE_BOX ENDP


KEY_MOVE PROC

;set video mode
mov ah,0
mov al,13h
int 10h
;move cursor to start
mov cx,0 ;x-coordinate
mov dx,0 ;y-coordinate
again:
	mov LOW_X,cx
	mov LOW_Y,dx
	;clear
;	mov ah,0
;	mov al,13h
;	int 10h
	;move cursor depending on x and y
	mov ah,02h
	int 10h
	
	comment#
	;U display (Umais)
	mov al,85
	mov cx,1
	mov bl,20h
	mov ah,09h
	int 10h
	#
	;call BOX
	call DRAW_GROOT
;    call KEY_MOVE
	;clear
;	mov ax,0
;	mov cx,0
;rebound:
	;check if any key pressed
	;mov ah,01
	;int 16h
	;jz rebound
	;if not pressed then go back
	mov ah,0 ;register pressed key
	int 16h 
	mov cx,LOW_X
	mov dx,LOW_Y
	cmp ah,01h
	je EXIT_MOVE_KEY
	cmp ah,4Dh
	je righter
	cmp ah,4Bh
	je lefter
	cmp ah,50h
	je upper
	cmp ah,48h
	je lower
righter:
	inc dx
	inc cx
	jmp again
lefter:
	dec dx
	dec cx          ;y-coordinate 
	jmp again
upper:
	inc dh
	inc ch
	jmp again
lower:
	dec dh
	dec ch
	jmp again

EXIT_MOVE_KEY:
ret
KEY_MOVE ENDP


BOX PROC uses ax bx cx dx
 ;set video mode

mov ah,0
mov al,13h
int 10h

;trying to clear
 mov ah,6
 mov al,0
; mov bh,01111101b
 mov bh, 90h
; mov LOW_X,cx               ;update new box coordinates
; mov LOW_Y,dx
 mov LOW_X, 80
 mov LOW_Y, 25
 int 10h
 
 mov ah,6
 mov al,0
; mov bh,01111101b
 mov bh, 05h
 mov LOW_X,cx               ;update new box coordinates
 mov LOW_Y,dx
 int 10h
 call DRAW_GROOT

ret
BOX ENDP
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
delay proc


mov cx,002h
mov dx,0h
mov ah,86h
int 15h

ret 
delay endp

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::














