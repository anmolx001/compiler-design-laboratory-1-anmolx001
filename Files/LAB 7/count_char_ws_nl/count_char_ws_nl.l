%{
#include <stdio.h>
int count = 0, ws = 0, tab = 0, lines = 0;
%}

%%
\n {++lines;}
\t {++tab;}
([ ]) {++ws;}
[a-zA-Z] {++count;}
%%

int main()
{
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
    fprintf(yyout,"%d character(s) detected\n", count);
    fprintf(yyout,"%d whitespace(s) detected\n", ws);
    fprintf(yyout,"%d tab(s) detected\n", tab);
    fprintf(yyout,"%d line(s) detected\n\n", lines);
}

int yywrap(void)
{
    return 1;
}