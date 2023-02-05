%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token A B
%%
E   :S {printf("\n invalid string");exit(0);}
    ;
S   :CC
    ; 
C   :AC
    |B
    ;
%%
int main()
{
printf("enter the exp :");
yyparse();
exit(0);
}

