%{
#include"y.tab.h"
int yylval;
%}
alpha [A-Za-z]
digit [0-9]
%%
{alpha}({alpha}|{digit})* return ID;
{digit}+ {yylval=atoi(yytext);return NUM;}
[\n\t] yyterminate();
. return yytext[0];
%%
