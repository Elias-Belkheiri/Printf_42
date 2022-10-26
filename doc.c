#include <stdio.h>
#include <stdarg.h>
#include <unistd.h>

int variadac(int multp, int n, ...)
{
    va_list args;
    va_start(args, n);
    int sum = 0;


    //while (n--)
        //sum += multp * va_arg(args, int);
    
    return (sum);
}

int main()
{
    /*char *a = "He\n";
    while (*a)
    {
        write(1, a++, 1);
    }*/
    printf("%p",variadac);
}