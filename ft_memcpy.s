section .data
section .text
	global	ft_memcpy
;rdi, rsi, rdx
ft_memcpy:
	mov		rax, rdi		;ret rdi
	mov		rcx, rdx		;rcx = count
	cld						;move forward
	rep		movsb			;repeat on recopying chara
	ret
