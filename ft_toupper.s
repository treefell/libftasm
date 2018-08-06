section .data
section .text
	global ft_toupper
	extern ft_isalpha
;rdi, rsi, rdx
ft_toupper:
	call	ft_isalpha
	cmp		rax, 0
	je		.fail
	cmp		rdi, 97
	jnge	.fail
	sub		rdi, 32
.fail:
	mov		rax, rdi
	ret
