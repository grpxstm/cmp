%{
#include <stdio.h>
#include <stdlib.h>
%}
%token ID NUM FOR LE GE EQ NE OR AND
%right "="
%left OR AND
%left '>''<' LE GE EQ NE
%left '+''-'
%left '*''/'
%right UMINUS
%left '!'
%%
S     :ST {printf("input accepted\n"); exit(0);}
ST    :FOR'('E';'E2';'E')'DEF
      ;
DEF   :'{'BODY'}'
      |E';'
      |ST
      |
      ;
BODY  :BODY BODY
      |E';'
      |ST
      |
      ;
E     :ID'='E
      |E'+'E
      |E'-'E
      |E'*'E
      |E'/'E
      |E'<'E
      |E'>'E
      |E LE E
      |E GE E
      |E EQ E
      |E NE E
      |E OR E
      |E AND E
      |ID
      |NUM
      ;
E2    :E'<'E
      |E'>'E
      |E LE E
      |E GE E
      |E EQ E
      |E NE E
      |E OR E
      |E AND E
      |ID
      |NUM
      ;
%%
int main()
{
printf("enter the exp :");
yyparse();
}
