section .data
section .text
	global ft_bzero
; rdi, rsi, rdx
ft_bzero:
	cmp		rsi, 0				;check n
	je		.there				;jp end
.loop:							;loop
	dec		rsi					;decrease rsi
	mov		byte [rdi + rsi], 0	;set to 0
	cmp		rsi, 0				; end when rsi = 0
	jge		.loop				;jp to loop
.there:
	mov		rax, 0			;ret nothing
	ret
