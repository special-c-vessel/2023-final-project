#include <iostream>

using namespace std;

int main()
{
  int num1 = 5;
  num1 = 55;
  // cout << num1 << "\n";

  int * numptr = &num1;
  int ** nnuummppttrr = &numptr;
  int *** nnnptr = &nnuummppttrr;

  *numptr = 44;
  **nnuummppttrr = 77;
  ***nnnptr = 99;

  // int num2 = 11111;

  // int arr[50] = {11, 22, 33, 44, 55};

  // **nnuummppttrr = 77;

  // cout << num1 << "\n";

  // temprecFunc("int", 2);

  char char1 = 'a';
  char1 = 'b';
  char * charptr = &char1;
  char ** cchhaarrptr = &charptr;

  short short1 = 22;
  short1 = 33;
  short * shortptr = &short1;
  short ** shortccc = &shortptr;

  long long int lli1 = 11112123123213;
  lli1 = 456453654363456;
  long long int * lli1ptr = &lli1;
  long long int ** lli222 = &lli1ptr;

}


