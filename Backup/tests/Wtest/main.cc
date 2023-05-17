#include<stdio.h>


#include <typeinfo>
#include <iostream>
#include <stdio.h>
//[line Number : 5] [type : int]
//[Value : 99] [Address : 0x16f98a584] 

#include <string>

using namespace std;


void func(char str[])
{
    cout << str;

    printf("%s\n", str);

    return ;
}

void func(int a, int b)
{
    cout << a << endl;
    cout << &a << "\n";
    cout << "ggggg\n";

    printf("%d\n", a);

    return ;
}


void qqq(int a)
{
    cout << a;
    return ;
}

void qqq(float a)
{
    cout << a;
    return;
}

int main(void)
{
    cout << "start \n";

    char str[] = "12345";

    func(str);

    // func(1);

    // func(2, 3);

    for(int i = 0; i < 5; i ++)
    {
        cout << i << endl;
    }

    int x = 5;
    float f = 6.1;

    qqq(x);
    qqq(f);

    return 0;
}
