%{
#include<stdio.h>
int d=0;
int a=0;
int r=0;
%}
digits [0-9]
arithmetic "+"|"-"|"*"|"/"|"="
rational "<"|">"|"<="|">="|"=="
unsign {num}
%%
{digits} {d++;}
{arithmetic} {a++;}
{rational} {r++;}
"\n" {return 0;}
%%
int main()
{
printf("enter the string : ");
yylex();
printf("arithmetic = %d\n",a);
printf("rational = %d\n",r);
return 0; 
}