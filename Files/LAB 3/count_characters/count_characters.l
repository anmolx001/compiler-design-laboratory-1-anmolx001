%{
int count = 0;
%}

%%
\n { return 0; }
. count++;
%%

int main()
{
    yylex();
    printf("%d character(s) detected\n", count);
}

int yywrap (void)
{
    return 0;
}