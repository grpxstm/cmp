%{
#include<stdio.h>
int d=0;
int op=0;
%}
digits [0-9]
operators "+"|"-"|"*"|"/"|"="
%%
{digits} {d++;}
{operators} {op++;}
"\n" {return 0;}
%%
int main()
{
printf("enter the string : ");
yylex();
printf("operators = %d\n",op);
return 0; 
}