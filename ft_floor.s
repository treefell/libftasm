section .data
section .text
		global ft_floor
; rdi rsi rdx
ft_floor:
	mov		rax, 0
.check:
	mov		st0, rax
	fcomi	rdi
	je		.end
;	jl		.dec
.inc:
	add		rax, 1
	mov		rax, st0
	fcomi	 rdi
	jl		.inc
	jge		.end
;.dec:
;	inc		rax
;	cmp		rax, rdi
;	jg		.dec
;	jle		.end
.end:
	ret
