#include <iostream>
#include <fstream>

using namespace std;

int main()
{
  int num1 = 10, num2 = 20, num3 = 30;
  int * ptr1num1 = &num1;
  int * tempptr2;

  int * ooooo[12];
  int * arrptr[13][20];
  int ** arrpptr[30][20];
  
  int temparr[20][40];

  arrptr[2][2] = &num1;
  arrptr[10][10] = &num2;

  // segmentation fault !!!!!
  // 그러나 기록됨
  *ooooo[5] = 11;

  arrpptr[15][13] = &ptr1num1;

  **arrpptr[15][13] = 99999;

  temparr[11][22] = 66666;
  temparr[12][33] = 77777;

  // segmentation fault !!!!!
  // 이 아래로 기록되지 않음
  *tempptr2 = 22222;

  temparr[12][35] = 88888;
  temparr[12][36] = 99999;
  
  return 0;
}


