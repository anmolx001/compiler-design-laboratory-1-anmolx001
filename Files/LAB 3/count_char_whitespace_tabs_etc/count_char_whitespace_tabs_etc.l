%{
int tab=0,other=0,dig=0,ws=0;
%}

digit [0-9]

%%
\n {return 0;};
\t tab++;
{digit} dig++;
[ ] ws++;
. other++;
%%

int main () 
{
    yylex ();
    printf("\nTotal Characters detected : %d\n No. of tabs : %d\n No. of Digits: %d \n No. of white spaces: %d \n Other Characters: %d\n",tab+ws+dig+other,tab,dig,ws,other);
}

int yywrap (void)
{
    return 0;
}