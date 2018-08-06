# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chuang <chuang@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/13 19:37:28 by chuang            #+#    #+#              #
#    Updated: 2015/06/09 19:48:22 by chuang           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libfts.a

CFLAGS += -Wall -Werror -Wextra

SRCS = ft_bzero.s\
	   ft_cat.s\
	   ft_isalpha.s\
	   ft_isalnum.s\
	   ft_isascii.s\
	   ft_isdigit.s\
	   ft_memcpy.s\
	   ft_memset.s\
	   ft_isprint.s\
	   ft_puts.s\
	   ft_strcat.s\
	   ft_strdup.s\
	   ft_strlen.s\
	   ft_tolower.s\
	   ft_toupper.s\
	   ft_isspace.s\
	   ft_fact.s\
	   ft_intpow.s\
	   ft_strncat.s\
	   ft_iscntrl.s

SRCC = libftasm.c

OBJS = $(SRCS:.s=.o)

OBJC = $(CSRC:.c=.o)

RM = rm -f

%.o: %.s
	nasm -g --prefix _ -f macho64 $^ -o $@

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) -rcs $(NAME) $?

test: re
	gcc -o test -L./ -lfts -I./libftasm.h libftasm.c

clean:
	$(RM) $(OBJS) $(OBJC)

fclean: clean
	$(RM) $(NAME)

re: fclean all
