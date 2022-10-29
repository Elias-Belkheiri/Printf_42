/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebelkhei <ebelkhei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 08:23:48 by ebelkhei          #+#    #+#             */
/*   Updated: 2022/10/29 14:02:32 by ebelkhei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int  ft_check_format_specifie(const char *format, va_list args, int i)
{
    int len;

    len = 0;
    if (format[i] == '%')
        len += write (1, format + i, 1);
    else if (format[i] == 'c')
        len += ft_putchar(va_arg(args, int));
	else if (format[i] == 's')
        len += ft_putstr(va_arg(args, char *));
    else if (format[i] == 'i' || format[i] == 'd')
        len += ft_putnbr(va_arg(args, int));
    else if (format[i] == 'u')
        len += ft_putunbr(va_arg(args, int));
    else if (format[i] == 'x')
        len += ft_puthexa(va_arg(args, unsigned int), 'x');
    else if (format[i] == 'X')
        len += ft_puthexa(va_arg(args, unsigned int), 'X');
    else if (format[i] == 'p')
        len += ft_putadd(va_arg(args, unsigned long));
    return (len);
}

static int ft_vprintf(const char *format, va_list args)
{
    int	i;
	int	len;

	i = 0;
	len = 0;
	while (format[i])
    {
        if (format[i] != '%')
        {
			write(1, format + i, 1);
			len++;	
		}
        else
            len += ft_check_format_specifie(format, args, ++i);
        i++;
    }
	return (len);
}

int ft_printf(const char *format, ...)
{
    va_list args;
    va_start(args, format);
    char *str;
	int	i;

    str = (char *)format;
	i = ft_vprintf(str, args);
	return (i);
}

int main()
{
    // printf("t % 05d t\n", 55);
    // printf("t %05d t\n", 55);
    system("date");
}
