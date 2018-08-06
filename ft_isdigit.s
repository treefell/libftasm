section .data
section .text
global ft_isdigit
;rdi, rsi, rdx
ft_isdigit:
	mov		rax, 0
	cmp		rdi, 48			;if < '0' sent to fail
	jnge	.fail
	cmp		rdi, 58			; if > '9' sent to fail
	jnl		.fail
.succes:
	mov		rax, 1
.fail:
	ret
