countryCode ("91")
digits [0-9]{10}
mobileNo ({countryCode}{digits})

%%
{mobileNo} {printf("It's valid phone no.\n");}
.* {printf("Invalid phone no.\n");}
%%

int main()
{
    yylex();
}

int yywrap(void)
{
    return 0;
}