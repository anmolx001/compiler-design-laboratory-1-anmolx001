digit [0-9]

%%
{digit}{1} { printf("It's a valid digit\n"); };
.* { printf("Not a digit\n"); };
%%

int main()
{
    yylex ();
}

int yywrap(void)
{
    return 0;
}