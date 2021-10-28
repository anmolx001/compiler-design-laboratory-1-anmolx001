arithmetic_op ("+"|"-"|"/"|"%"|"*"|"++"|"--")
logical_op  ("=="|"!="|"&&"|"!"|"||")

%%
{arithmetic_op}  {printf("It's a valid arithmetic operator\n");};
{logical_op}  {printf("It's a valid logical operator\n");} 
.+ {printf("Neither logical nor arithmetic operator!\n");};
%%

int main()
{
    yylex();
}

int yywrap(void)
{
   return 0;
}