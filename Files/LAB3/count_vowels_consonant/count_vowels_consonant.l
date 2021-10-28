%{
int vow = 0, con = 0, other = 0;
%}

vowel [aeiouAEIOU]
consonant [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]

%%
\n { return 0; }
{vowel} ++vow;
{consonant} ++con;
. ++other;
%%

int main()
{
    yylex ();
    printf("\nFollowing Characters detected :\n No. of vowels : %d\n No. of consonants: %d\n Other Characters: %d\n", vow, con, other);
}

int yywrap(void)
{
    return 0;
}