#include<stdio.h>
#include"ft_printf.h"
int main()
{
    int a, b;
    scanf("%i", &a);
    scanf("%d", &b);
    ft_printf("%i\n", a);
    ft_printf("%d", b);
}