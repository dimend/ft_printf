# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dimendon <dimendon@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/12 19:39:40 by dimendon          #+#    #+#              #
#    Updated: 2024/11/19 12:58:12 by dimendon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

CFLAGS = -Wall -Wextra -Werror

TARGET = libftprintf.a

SRCS = ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_printf.c
OBJS = $(SRCS:.c=.o)

HEADERS = libftprintf.h

all: $(TARGET)

$(TARGET): $(OBJS)
	ar -crs $(TARGET) $(OBJS)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJS_BONUS)

fclean: 
	rm -f $(OBJS) $(TARGET)

re: fclean all

.PHONY: all clean fclean re bonus
