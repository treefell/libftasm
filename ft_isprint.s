section .data
section .text
global ft_isprint
;rdi, rsi , rdx
ft_isprint:
	mov		rax, 0
	cmp		rdi, 32			;if >= 'sp' continue
	jnge	.fail
	cmp		rdi, 127		; if < '~' continue
	jge		.fail
.succes:
	mov		rax, 1
.fail:
	ret
