%{
#include<stdio.h>
int nl=1;
%}
nl.*\n
%%
{nl} {printf("%d,s",nl++,yytext);}
%%

