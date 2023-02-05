%{
#include<stdio.h>
int d=0;
int w=0;
int k=0;
%}
digits [0-9]
words [a-zA-Z]
keywords "printf"|"scanf"
%%
{digits} {d++;}
{words} {w++;}
{keywords} {k++;}
%%
int main()
{
printf("enter the string : ");
yylex();
printf("digits : %d",d);
printf("words : %d",w);
printf("keywords : %d",k);
return 0;
}