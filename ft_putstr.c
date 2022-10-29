/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 08:40:21 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/27 09:39:01 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putstr(char *str)
{
	int	len;
	
	len = 0;
	if (!str)
	{
		write (1, "(null)", 6);
		return (6);
	}
	while (*str)
	{
		write(1, str++, 1);
		len++;	
	}
	return (len);
}
