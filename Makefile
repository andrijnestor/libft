# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anestor <anestor@student.unit.ua>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 13:41:32 by anestor           #+#    #+#              #
#    Updated: 2018/07/04 15:01:17 by anestor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
ODIR = obj
IDIR = inc
SDIR = src
INCLUDE = -I$(IDIR)
L_DIR = libc
NL_DIR = nonlibc
EXT = $(IDIR)/*.h

#SRCS =
#SRCS += $(addprefix $(SDIR)/$(L_DIR)/,$(SRCL))
#SRCS += $(addprefix $(SDIR)/$(NL_DIR)/,$(SRCNL))

OBJS =
OBJS += $(addprefix $(ODIR)/,$(SRCL:.c=.o))
OBJS += $(addprefix $(ODIR)/,$(SRCNL:.c=.o))

SRCL =	ft_atoi.c \
		ft_memchr.c \
		ft_strlen.c \
		ft_bzero.c \
		ft_memcmp.c \
		ft_strncat.c \
		ft_isalnum.c \
		ft_memcpy.c \
		ft_sqrt.c \
		ft_strncmp.c \
		ft_isalpha.c \
		ft_memmove.c \
		ft_strcat.c \
		ft_strncpy.c \
		ft_isascii.c \
		ft_memset.c \
		ft_strchr.c \
		ft_strnstr.c \
		ft_isbase.c \
		ft_strcmp.c \
		ft_strrchr.c \
		ft_isdigit.c \
		ft_strcpy.c \
		ft_strstr.c \
		ft_isprint.c \
		ft_strdel.c \
		ft_tolower.c \
		ft_isspace.c \
		ft_strdup.c \
		ft_toupper.c \
		ft_memccpy.c \
		ft_strlcat.c

SRCNL =	ft_atod.c \
		ft_lstadd_back.c \
		ft_num_len.c \
		ft_strclr.c \
		ft_strsplit.c \
		ft_atoi_base.c \
		ft_lstdel.c \
		ft_putchar.c \
		ft_strequ.c \
		ft_strsub.c \
		ft_copy_matrix.c \
		ft_lstdelone.c \
		ft_putchar_fd.c \
		ft_striter.c \
		ft_strtrim.c \
		ft_count_words.c \
		ft_lstiter.c \
		ft_putendl.c \
		ft_striteri.c \
		ft_strtrim_char.c \
		ft_del_matrix.c \
		ft_lstmap.c \
		ft_putendl_fd.c \
		ft_strjoin.c \
		ft_uitoa_base.c \
		ft_invert_char.c \
		ft_lstnew.c \
		ft_putnbr.c \
		ft_strmap.c \
		ft_xy.c \
		ft_itoa.c \
		ft_make_array.c \
		ft_putnbr_fd.c \
		ft_strmapi.c \
		ft_xyz.c \
		ft_itoa_base.c \
		ft_make_matrix.c \
		ft_putstr.c \
		ft_strnequ.c \
		get_next_line.c \
		ft_itoa_base_int.c \
		ft_memalloc.c \
		ft_putstr_col.c \
		ft_strnew.c \
		ft_lstadd.c \
		ft_memdel.c \
		ft_putstr_fd.c \
		ft_strrmap.c


all: $(NAME)

$(NAME): $(OBJS) $(EXT)
	@ar rc $(NAME) $(OBJS) $(EXT)
	@ranlib $(NAME)

$(ODIR)/%.o: $(SDIR)/*/%.c
	@echo "... compiling \033[96m$<\033[0m ..."
	@gcc $(FLAGS) -c $< -o $@ $(INCLUDE)

$(OBJS): | ./obj

./obj:
	@mkdir $(ODIR)

clean:
	@echo "...  cleaning \033[96mlibft obj\033[0m ..."
	@rm -rf obj/

fclean: clean
	@echo "...  cleaning \033[96m$(NAME)\033[0m ..."
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
