%{
#include<stdio.h>
int v=0;
int c=0;
%}
vowels [aeiouAEIOU]
consonants [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]
%%
{vowels} {v++;}
{consonants} {c++;}
"\n" {return 0;}
%%
int main()
{
printf("enter the string : ");
yylex();
printf("vowels = %d\n",v);
printf("consonants = %d\n",c);
return 0; 
}