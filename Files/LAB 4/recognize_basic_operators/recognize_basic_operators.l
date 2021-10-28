PLUS [\+]
MINUS [\-]
GE  ">="
LE "<="

%%
{PLUS} {printf("It's a PLUS operator.\n");};
{MINUS} {printf("It's a MINUS operator\n");};
{GE} {printf("Greater or equal to operator\n");};
{LE} {printf("Lesser or equal to operator\n");};
.* {printf("invalid input!");};
%%

int main()
{
    yylex();
}

int yywrap(void)
{
    return 0;
}