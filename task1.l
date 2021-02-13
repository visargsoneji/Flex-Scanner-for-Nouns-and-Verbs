/* Lex program to search nouns and verbs in a string */

%{
/* Definition section */
#include<string.h>
void check(char *str);
%}
/* yylex() - this is the main flex function 
          which runs the Rule Section | Call to invoke lexer*/
/* yytext is a pointer to the matched string*/ 
/* Rule Section */
%%
[a-zA-Z]+   check(yytext);

[ \t.,0-9]     ;

\n          {
                printf("\n");
                return 0;
            }
%%

// user code section

void check(char *str)
{
    //fp as pointer of File type 
    
    FILE *fp,*fp2;
    
    char temp[50];

    printf("%s :",str);

    /* fp points to the file nouns.txt
    and opens it in read mode */


    fp=fopen("nouns.txt", "r");
    
    while((fscanf(fp, "%s", temp))!=EOF)
    {
        if(!(strcmp(temp, str)))
        {
            printf("Noun\n");
            return;
        }

    }

    fclose(fp);


    fp2=fopen("verbs.txt", "r");
    
    while((fscanf(fp2, "%s", temp))!=EOF)
    {
        if(!(strcmp(temp, str)))
        {
            printf("Verb\n");
            return;
        }

    }

    fclose(fp2);


    printf("None\n");
}
