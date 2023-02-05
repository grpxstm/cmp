%{
#include<stdio.h>
int s=0;
int u=0;
%}
digits [0-9]
num {digits}*
sign [+-]{num}
unsign {num}
%%
{sign} {s++;}
{unsign} {u++;}
"\n" {return 0;}
%%
int main()
{
printf("enter the string : ");
yylex();
printf("signed = %d\n",s);
printf("unsigned = %d\n",u);
return 0; 
}