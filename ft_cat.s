%define		SYSCALL(nb)		0x2000000 | nb
%define		WRITE			4
%define		READ			3
;%define		BUF				256
section .data
buffer times 4096 db 0
bufsize equ $ - buffer
section .text
	global ft_cat
	extern read
	extern write
; rdi, rsi , rdx
ft_cat:
; init stack
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16;272				;indique de prendre x sur la stack

.read:
	push	rdi
	mov		rdx, bufsize
;	lea		rsi, [rel esp + 16]
	lea		rsi, [rel buffer]
	mov		rax, SYSCALL(READ)
	syscall
;	call	read
	cmp		rax, 0
	pop		rdi
	jc		.end
	jle		.end
.write:
	push	rdi
;	lea		rsi, [rel rsp + 16]
	lea		rsi, [rel buffer]
	mov		rdi, 1
	mov		rdx, rax
	mov		rax, SYSCALL(WRITE)
	syscall
;	call	write
	pop		rdi
	jc		.end
	jmp		.read
	.end:
;reset stack
	mov		rsp, rbp
	pop		rbp
	ret
