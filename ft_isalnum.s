section .data
section .text
	global ft_isalnum
	extern ft_isalpha
	extern ft_isdigit
;rdi, rsi, rdx
ft_isalnum:
	call	ft_isalpha			;check isalpha
	mov		r8, rax				;store result
	call	ft_isdigit			;check isdigit
	or		rax, r8				;ret rax or r8 depending of value
.succes:
	ret
