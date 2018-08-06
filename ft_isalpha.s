; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_isalpha.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: chuang <chuang@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/04/07 20:42:05 by chuang            #+#    #+#              #
;    Updated: 2015/04/13 20:41:21 by chuang           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_isalpha
; rdi, rsi , rdx
ft_isalpha:
	mov		rax, 0
	cmp		rdi, 0
	jge		.cmp			;if unsigned turn signed
	neg		rdi
.cmp:
	cmp		rdi, 65			;comp if < to 65 not alpha
	jl		.fail
	cmp		rdi, 91			;comp if < 91 is alpha
	jl		.succes
.lowercase:
	cmp		rdi, 97			;comp if it > to 97 else is not
	jl		.fail
	cmp		rdi, 123		;comp if it's > to 'z'
	jge		.fail
.succes:
	mov		rax, 1
.fail:
	ret
