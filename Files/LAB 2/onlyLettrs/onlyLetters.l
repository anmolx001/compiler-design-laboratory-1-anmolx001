alphabet [a-zA-Z]*

%%
{alphabet} { printf("Contains only letter(s)\n"); };
.* { printf("Character(s) other than the alphabets are present\n"); };
%%

int main()
{
    yylex ();
}

int yywrap(void)
{
    return 0;
}