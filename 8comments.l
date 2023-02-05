%{
#include<stdio.h>
%}
comment1 [\/\/.]*
comment2 [\/\*(.|\n)*\*\/]
%%
{comment1} {}
{comment2} {}
%%

