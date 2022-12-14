/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putunbr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/24 18:27:47 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/27 08:36:44 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static void	ft_printunbr(unsigned int n)
{
	if (n >= 0 && n < 10)
	{
		n += 48;
		write (1, &n, 1);
	}
	else
	{
		ft_putnbr(n / 10);
		ft_putnbr(n % 10);
	}
}

int	ft_putunbr(unsigned int n)
{
	int	len;
	
	len = ft_numlen(n);
	ft_printunbr(n);
	return (len);
}