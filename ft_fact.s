section .data
section .text
		global ft_fact
; rdi rsi rdx , !rdi
ft_fact:
	mov		rax, 1
	cmp		rdi, 2
	jl		.end
.loop:
	imul	rax, rdi
	dec		rdi
	cmp		rdi, 2
	jge		.loop
.end:
	ret
