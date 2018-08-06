section .data
section .text
global ft_strcat
;rdi, rsi, rdx
ft_strcat:
	mov		rax, rdi
	jmp		.stcheck
.loop:
	inc		rdi
.stcheck:
	cmp		byte [rdi], 0
	jne		.loop
	jmp		.ndcheck
.cpy:
	mov		al, [rsi]
	mov		[rdi], al
	inc		rdi
	inc		rsi
.ndcheck:
	cmp		byte [rsi], 0
	jne		.cpy
.end:
	mov		byte [rdi], 0
	ret
