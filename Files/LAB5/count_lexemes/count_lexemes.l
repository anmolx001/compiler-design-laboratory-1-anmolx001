%{
int keyCount=0,varCount=0,intCount=0,floatCount=0,opCount=0;
%}

keyword bool|float|double|if|else|while|int|switch|for|char|break|enum|register|typedef|goto|sizeof|struct
identifier [a-zA-Z_][a-zA-Z0-9_]*
int [0-9]*
float {int}+"."{int}+
operator ("+"|"\-"|"/"|"%"|"\*"|">"|"<"|"."|"="|"!="|"&&"|"&"|"||"|";")
eol \n

%%
{keyword}  {keyCount++;} 
{identifier}  {varCount++;}
{int}  {intCount++;}
{float}  {floatCount++;}
{operator}  {opCount++;}
{eol}  {return 0;}
%%

int main()
{
    yylex();
    printf("No. of lexemes = %d\n", keyCount + intCount + floatCount + varCount + opCount); 
    printf("No. of keywords = %d\n", keyCount);
    printf("No. of identifiers = %d\n", varCount);
    printf("No. of integers = %d\n", intCount);
    printf("No. of fractions = %d\n", floatCount);
    printf("No. of operators = %d\n", opCount);
}

int yywrap(void)
{
   return 0;
}