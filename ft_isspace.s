section .data
section .text
		global ft_isspace
; rdi rsi rdx
ft_isspace:
	mov		rax, 0
	cmp		rdi, 32
	je		.succes
	cmp		rdi, 9
	jl		.end
	cmp		rdi, 13
	jge		.end
.succes:
	mov		rax, 1
.end:
	ret
