%define		SYSCALL(nb)		0x2000000 | nb
%define		WRITE			4

section .data
backline	db		10
null		db		"(null)",10,0
section .text
	global ft_puts
;rdi, rsi, rdx
ft_puts:
	mov		rsi, rdi
	cmp		rsi, 0
	jnz		.notnull
	lea		rsi, [rel null]
	mov		rdi, 1
	mov		rdx, 8
	mov		rax, SYSCALL(WRITE)
	syscall
	mov		rax, 10
	jmp		.end
.notnull:
	mov		rdi, 1
	mov		rdx, -1
.count:
	inc		rdx
	cmp		[rsi + rdx], byte 0
	jne		.count
.puts:
	mov		rax, SYSCALL(WRITE)
	syscall
	cmp		rax, 0
	jl		.end
.bl:
	lea		rsi, [rel backline]
	mov		rdi, 1
	mov		rdx, 1
	mov		rax, SYSCALL(WRITE)
	syscall
	cmp		rax, 0
	jg		.end
	neg rax
.end:
	ret
