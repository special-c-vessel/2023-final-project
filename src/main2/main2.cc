#include <iostream>
#include <stdio.h>
#include <cstring>

using namespace std;

int main()
{
    FILE * file = fopen("main2.txt", "w");

    int xxxxx = 5;

    int yyyyy = 9;

    int lineNum = 5, Value = 99;
    char type[] = "int";
    //string type = "int";

    //cout << &lineNum << "\n";

    //fprintf(file, "[line Number : %d] [type : %s] [Value : %d] [Address : %p] \n", lineNum, &type, Value, &lineNum);        //printf -> fprintf
    
    //fprintf(file, "[line Number : %d] [Value : %d] [Address : %p] \n", lineNum, Value, &lineNum);        //printf -> fprintf

    fprintf(file, "[line Number : %d] [type : %s] [Value : %d] [Address : %p] \n", lineNum, type, Value, &lineNum);        //printf -> fprintf
    
    fclose(file);
    return 0;
}