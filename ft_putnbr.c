/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/24 18:08:43 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/27 09:42:37 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static void	ft_printnbr(int n)
{
	if (n == -2147483648)
		write (1, "-2147483648", 11);
	else if (n >= 0 && n < 10)
	{
		n += 48;
		write (1, &n, 1);
	}
	else if (n < 0)
	{
		write (1, "-", 1);
		n *= -1;
		ft_putnbr(n);
	}
	else
	{
		ft_putnbr(n / 10);
		ft_putnbr(n % 10);
	}
}


int	ft_putnbr(int n)
{
	int	len;
	
	if (n < 0)
	{
		len = ft_numlen(n * (-1));
		len++;
	}
	else
		len = ft_numlen(n);
	ft_printnbr(n);
	return (len);
}
