section .data
section .text
		global ft_intpow
; rdi rsi rdx , rdi^rsi only rsi >= 1
ft_intpow:
	mov		rax, 1
	cmp		rsi, 0
	jg		.set
	mov		rdi, 0
.set:
	mov		rax, 0
	cmp		rdi, 0
	je		.end
	mov		rax, rdi
.loop:
	imul	rax, rdi
	dec		rsi
	cmp		rsi, 2
	jge		.loop
	cmp		rdi, 0
	jg		.end
.end:
	ret
