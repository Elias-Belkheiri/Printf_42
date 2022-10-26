NAME		=	libftprintf.a

SRCS		=	ft_putchar.c ft_putstr.c ft_putptr.c ft_blank_zeros.c ft_putnbr.c ft_putunbr.c ft_puthexa.c \
				ft_putadd.c

OBJS		= $(SRCS:.c=.o)

CC			= cc

CFLAGS		=	-Wall -Wextra -Werror

all			:	${NAME}

${NAME}		: ${OBJS}
				ar -rc ${NAME} ${OBJS}

${OBJS}		: ${SRCS}
				${CC}  ${CFLAGS} -c ${SRCS}

clean		:
				rm -f $(OBJS)

fclean		: clean
				rm -f ${NAME} 

re 			: fclean all 