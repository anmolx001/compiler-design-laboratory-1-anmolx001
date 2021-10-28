%{
//macros
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

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex ();
    fprintf(yyout,"%d lexemes present\n", keyCount + intCount + floatCount + varCount + opCount);
    fprintf(yyout,"%d keywords present\n",keyCount);
    fprintf(yyout,"%d identifiers present\n",varCount);
    fprintf(yyout,"%d integers present\n",intCount);
    fprintf(yyout,"%d fractions present\n",floatCount);
    fprintf(yyout,"%d operators present\n\n",opCount);
}

int yywrap(void)
{
   return 1;
}