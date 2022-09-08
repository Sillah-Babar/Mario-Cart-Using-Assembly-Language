;Move a character (First character of your name) with arrow keys on screen
.model small
.stack 100h
.data
saveX dw ?
saveY dw ?
.code
mov ax,@data
mov ds,ax
;--------------

main proc
;set video mode
mov ah,0
mov al,13h
int 10h
;move cursor to start
mov cx,0 ;x-coordinate
mov dx,0 ;y-coordinate
again:
	mov saveX,cx
	mov saveY,dx
	;clear
	mov ah,0
	mov al,13h
	int 10h
	;move cursor depending on x and y
	mov ah,02h
	int 10h
	;U display (Umais)
	mov al,85
	mov cx,1
	mov bl,20h
	mov ah,09h
	int 10h
	;clear
	mov ax,0
	mov cx,0
;rebound:
	;check if any key pressed
	;mov ah,01
	;int 16h
	;jz rebound
	;if not pressed then go back
	mov ah,0 ;register pressed key
	int 16h 
	mov cx,saveX
	mov dx,saveY
	cmp ah,01h
	je exit
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
	jmp again
lefter:
	dec dx ;y-coordinate ++ (Down)
	jmp again
upper:
	inc dh
	jmp again
lower:
	dec dh
	jmp again
main endp

exit:
mov ah,04ch
int 21h
end

;mov ch,0	;upper row number
;mov cl,38	;left column number
;mov dh,60	;lower row number
;mov dl,38	;right column number
