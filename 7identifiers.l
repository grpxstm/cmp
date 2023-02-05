%{
#include<stdio.h>
int i=0;
%}
digits [0-9]
character [a-zA-Z]
comb {character}({character}|{digits})*
nre {digits}({digits}|{character})*
identifier {comb}
%%
{identifier} {i++;}
{nre} {}
"\n" {return 0;}
%%
int main()
{
printf("enter the string : ");
yylex();
printf("identifiers = %d\n",i);
return 0; 
}