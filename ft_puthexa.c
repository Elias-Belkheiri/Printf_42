/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puthexa.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/24 20:05:46 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/25 22:14:27 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	ft_printhexa(int *remainders, int tall, int mode)
{
	char	*hexa;
	int		idx;
	int		len;

	if (mode == 'X')
		hexa = "0123456789ABCDEF";
	else if (mode == 'x')
		hexa = "0123456789abcdef";
	tall--;
	while (tall >= 0)
	{
		idx = remainders[tall--];
		write (1, hexa + idx, 1);
		len++;
	}
	return (len);
}

int	ft_puthexa(unsigned int n, int mode)
{
	unsigned int	a;
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
	return (ft_printhexa(remainders, len, mode));
}
