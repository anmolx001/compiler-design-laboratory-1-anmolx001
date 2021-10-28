%{
int charCount=0;
%}

%%
\n charCount++;
. charCount++;
%%

int main () {
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex ();
    fprintf(yyout,"Total Characters detected : %d",charCount);
}

int yywrap(){return 1;}