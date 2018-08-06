section .data
section .text
global ft_strncat
;rdi, rsi, rdx
ft_strncat:
	mov		rax, rdi
	cmp		rax, 0
	je		.ndcheck
.loop:
	inc		rdi
.stcheck:
	cmp		[rdi], byte 0
	jne		.loop
	jmp		.ndcheck
.cpy:
	mov		CL, [rsi]
	mov		[rdi], CL
	dec		rdx
	inc		rsi
	inc		rdi
	cmp		rdx, 0 ;doesn't fucking WORK
	je		.end
.ndcheck:
	cmp		[rsi], byte 0
	jne		.cpy
.end:
	mov		[rdi], byte 0
	ret
