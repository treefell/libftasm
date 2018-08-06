section .data
section .text
		global ft_iscntrl
; rdi rsi rdx
ft_iscntrl:
	mov		rax, 0
	cmp		rdi, 127
	je		.succes
	cmp		rdi, 0
	jl		.end
	cmp		rdi, 31
	jge		.end
.succes:
	mov		rax, 1
.end:
	ret
