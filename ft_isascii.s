section .data
section .text
global ft_isascii
;rdi, rsi, rdx
ft_isascii:
	mov		rax, 0
	cmp		rdi, 128			; check chara
	jge		.fail
	cmp		rdi, 0				; if > 0 fail
	jl		.fail
.succes:
	mov		rax, 1
.fail:
	ret
