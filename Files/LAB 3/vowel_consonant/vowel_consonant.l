vowel [aeiouAEIOU]*
consonant [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]*

%%
{vowel} { printf("Contains only vowel(s)\n"); };
{consonant} { printf("Contains only consonant(s)\n"); };
[a-zA-Z]* { printf("Contains both vowel(s) and consonant(s)\n"); };
.* { printf("Other character(s) detected\n"); };
%%

int main()
{
    yylex();
}

int yywrap(void)
{
    return 0;
}