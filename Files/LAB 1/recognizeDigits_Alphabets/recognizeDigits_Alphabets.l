letter [A-Za-z]+
digit [0-9]+

%%
{digit} { printf("Contains only digit(s)\n"); };
{letter} { printf("Contains only letter(s)\n"); };
.* { printf("Contains both letter(s) and digit(s) and/or special character(s)\n"); };
%%

int main()
{
    yylex();
}

int yywrap(void)
{
    return 0;
}