section .data
section .text
	global ft_memset
; rdi, rsi, rdx
ft_memset:
	push	rdi
	cmp		rsi, 0
	jge		.cpy
	neg		rsi
.cpy:
	mov		rax, rsi
	mov		rcx, rdx
	cld
	rep		stosb
.end:
	pop		rax
	ret
