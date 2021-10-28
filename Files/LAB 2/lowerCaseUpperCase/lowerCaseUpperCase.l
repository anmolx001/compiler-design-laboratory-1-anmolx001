capital [A-Z]*
small [a-z]*
mix [a-zA-Z]+

%%
{capital} {printf ("All Capital letter(s)\n"); };
{small} {printf ("All small letter(s)\n"); };
{mix} {printf ("Contains both capital and small letter(s)\n"); };
.* {printf ("Other character(s)\n"); };
%%

int main()
{
    yylex ();
}

int yywrap (void)
{
    return 0;
}