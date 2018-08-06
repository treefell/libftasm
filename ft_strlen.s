section .data
section .text
	global ft_strlen
;rdi, rsi , rdx
ft_strlen:
		mov		rcx, 0
		not		rcx
.increment:
		mov		AL, 0
		cld
		repne	scasb
.end:
		not		rcx
		dec		rcx
		mov		rax, rcx
		ret
