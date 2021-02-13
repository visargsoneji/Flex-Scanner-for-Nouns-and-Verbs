#include<stdio.h>
#include<string.h>
#include<stdlib.h>

const int lineSize=100;

extern int yylex();

int main()
{
    FILE *fp=fopen("input.txt", "r");
    
    char* temp=(char*)malloc(lineSize*sizeof(char));

    printf("\nInput String is:\n");

    while((fscanf(fp, "%s", temp))!=EOF)
    {
        printf("%s ",temp);
    }

    printf("\n\nParsing the Text:\n");

    yylex();

    fclose(fp);

    free(temp);

    return 0;
}
