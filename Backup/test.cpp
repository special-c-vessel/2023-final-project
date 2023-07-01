#include <cstdio>
#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <string>
#include <vector>

using namespace std;

// vector 선언, 할당, load

// string

// 구조체

// struct tempstruct {
//   int tempint;
//   float tempfloat;
// };

int main() {

  int num1 = 5;
  if (num1 == 99) {
    num1 = 200;
  }

  // FILE *ffffffile = fopen("example.txt", "w+");

  // ofstream fout;
  // fout.open("helloworld.txt");

  // // string str = "ff";
  // string str2 = "bb";

  // int num1;
  // fout << str2;

  // string ssttrr = "hello, world!";

  // string tempstr = "hello, world!";
  // char tempchararr[] = "hello, world!";

  // fprintf(ffffffile, "%s\n", tempchararr);

  // num1 = 111111;
  // fprintf(ffffffile, "%d\n", num1);

  // int nnuumm = 99999;
  // int intarr[7][4][500] = {1, 2, 3};

  // intarr[2][1][150] = 55555;

  // if(intarr[1][2][3] == 444)
  // {
  //   intarr[1][2][3] = 333333;
  // }
  // else
  // {
  //   intarr[6][3][250] = 111111;
  // }

  // float floatarr[124] = {1, 2, 3};

  // floatarr[12] = 125415.12512;

  // char chararr[] = "hello world!";

  // chararr[3] = 'A';

  int arr[] = {11111, 22222, 33333, 44444, 55555};

  int arrAAAAA[8] = {11, 22, 33, 44, 55, };

  int arrCCCCC[15] = {9, 8, 7, 6, 5, };

  int arrDDDDD[5][5] = {{3, 3, 3,}, {3, 3, 3,}, {4, 4, 4},};

  int arrJJJJJ[3][15] = {{444, 555},  {222}, {777}};

  int arrKKKKK[15][3] = {{99, 88, 77}, {66, 55, 44}};

  int arrLLLLL[20][20];

  float arrfloat[30][30] = {{1.1, 1.2, 1.3}, {2.1, 2.2, 2.3}};

  arrfloat[5][16] = 99999.777;

  // int temptemptemptemptemp[100][200][300]; // = {{{11, 22, 33, 111, 222, 333, 444}, {44, 55, 66},}, {{66, 77, 88}}};
  // temptemptemptemptemp[5][6][7] = 222222;

  int sampsmapsamp[100][200][50] = {{{11, 22, 33, 111, 222, 333, 444}, {44, 55, 66},}, {{66, 77, 88}}};
  sampsmapsamp[1][2][3] = 777777;

  int temparr2[5][200];
  temparr2[1][99] = 555555;
  int temptemparr3[6][4][100];
  temptemparr3[2][3][55] = 22222;
  if (temptemparr3[2][3][55] == 11111) {
  }

  int num11 = 5;
  int num2 = 10;
  int num3;

  num3 = num1 + num2;

  // int num1 = 5;
  // float num2 = 111.5234;

  // vector<int> v;
  // v.push_back(1);

  return 0;
}