section .data
section .text
global ft_tolower
extern ft_isalpha
; rdi, rsi, rdx
ft_tolower:
	call	ft_isalpha
	cmp		rax, 1
	jne		.fail
	cmp		rdi, 97
	jnl		.fail
	add		rdi, 32
.fail:
	mov		rax, rdi
	ret
