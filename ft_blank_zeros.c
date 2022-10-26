/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_blank_zeros.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 12:06:55 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/25 11:21:34 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int		ft_blank_zeros(const char *str, int i)
{
    int at;
    
    at = ft_atoi(str + i);
    if(str[i] != '0')
        while (at--)
        {
            write(1, " ", 1);
            i++;
        }
            
    else
        while (at--)
        {
            write (1, "0", 1);
            i++;
        }
    while (ft_isdigit(str[i]))
        i++;
    return (i - 1);
}