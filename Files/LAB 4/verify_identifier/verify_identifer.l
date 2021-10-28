%{
//macros
%}
identifiers [a-zA-Z_][a-zA-Z0-9_]*
%%
{identifiers}   {printf("A valid identifier\n");} 
.+ {printf("Not a valid identifier\n");};
%%

int main(){
    yylex();
}

int yywrap(void) {
  return 0;
}