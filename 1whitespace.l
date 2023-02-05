%{
#include<stdio.h>
int w=0;
%}
whitespace [\t" "]+
letters [A-Za-z]
%%
{whitespace} {w++;}
{letters} { }
"\n" {return 0;}
%%
int main()
{
printf("enter the string:");
yylex();
printf("whitespace = %d\n",w); 
}