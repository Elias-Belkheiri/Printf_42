/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putadd.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/25 09:17:16 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/25 22:14:20 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	ft_printhexa(int *remainders, int tall)
{
	char	*hexa;
	int		idx;
	int		len;
	hexa = "0123456789abcdef";
	tall--;
	write (1, "0x", 2);
	len = 2;
	while (tall >= 0)
	{
		idx = remainders[tall--];
		write (1, hexa + idx, 1);
		len++;
	}
	return (len);
}

int	ft_putadd(unsigned long n)
{
	unsigned long	a;
	int				*remainders;
	int				len;
	int				j;

	len = 1;
	a = n;
	while (a / 16)
	{
		len++;
		a /= 16;
	}
	remainders = malloc(len * sizeof(int));
	if (!remainders)
		return (0);
	j = 0;
	while (n)
	{
		remainders[j++] = n % 16;
		n /= 16;
	}
	return (ft_printhexa(remainders, len));
}