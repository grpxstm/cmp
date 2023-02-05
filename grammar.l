%{
#include "y.tab.h"
int yylval;
%}
%%
"a" {return A;}
"b" {return B;}
[\n|.] {return yytext[0];}
%%
