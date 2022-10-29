/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 08:23:37 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/29 10:00:33 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTPRINTF_H
# define LIBFTPRINTF_H

#	include <unistd.h>
#	include <stdlib.h>
#	include <stdarg.h>
#	include <stdio.h>
#   include <limits.h>
#   include <string.h>
# include "./Libft/libft.h"

int     ft_printf(const char *format, ...);
int     ft_putchar(int c);
int	    ft_putstr(char *str);
int     ft_blank_zeros(const char *str, int i);
int     ft_putnbr(int n);
int     ft_putunbr(unsigned int n);
int     ft_puthexa(unsigned int n, int mode);
int	    ft_putadd(unsigned long n);
int     ft_numlen(unsigned int n);
typedef struct printf_flags
{
	int	zero;
    int	plus;
    int	minus;
	int	hash;
	int	dot;
	int	space;
}	flags_;

#endif 