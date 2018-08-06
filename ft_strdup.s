section .data
section .text
	global ft_strdup
	extern ft_memcpy
	extern ft_strlen
	extern malloc
; rdi, rsi, rdx
ft_strdup:
; init stack
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16				;indique de prendre 8 sur la stack

	push	rdi
	call	ft_strlen			;len dans rax
	inc		rax					;rax
	mov		r12, rax			;rdi recois len
;	push	rax					;save rax
	mov		rdi, r12
	call	malloc				;malloc de taille rdi(len)
	cmp		rax, 0				;rax different de null sinon exit
;	pop		rdx
	mov		rdx, r12
	pop		rsi
	je		.end
.cpy:
	mov		rdi, rax
	call	ft_memcpy			;cpy de la taille len dans rdi
.end:
;reset stack
	mov		rsp, rbp
	pop		rbp
	ret
