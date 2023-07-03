#include <cstdio>
#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <string>
#include <vector>

using namespace std;

int tempfunc11111(int tempfucn_int, float tempfunc_float = 24.4444)
{
  tempfucn_int = 125;
  tempfunc_float += tempfucn_int;

  int tempfunc_arr[15] = {12, 13, 14, 15, 16, 17};
  tempfunc_arr[14] = 9876543;

  return tempfucn_int;
}


int main()
{
  int num_int = 5;
  num_int++;

  float num_float = 123.15;
  num_float += num_int;

  long long int num_llint = 12421522512;
  num_llint = 9999999999999999;

  char chr = 'G';
  chr = 'Q';

  if (num_int + num_float == 1111111)
  {
    num_llint = 11;
  }
  else
  {
    num_llint = 22;
  }

  int arr_int[50] = { 33, 44, 55, 66, 77, 88 };
  arr_int[30] = 99;

  int arr_iint[30][30] = { {123, 456, 789}, {321, 654, 987}, };
  arr_iint[15][16] = 44444;
  arr_iint[15][16] = 99999;


  // int arr_iiiint[10][20][30] = {{{-1, -2, -3}, {-4, -5, -6}, {-77, -88, -99}}};
  int arr_iiiint[10][20][30] = { {{-1, -2, -3}, {-4, -5, -6}} };
  arr_iiiint[9][10][11] = 55555;

  char arr_charp[] = "hello, World!";
  arr_charp[10] = 'B';

  cout << arr_charp << "\n";

  if (arr_iint[15][16] == 99999)
  {
    arr_iint[20][21] = 88888;
  }
  else
  {
    arr_iint[20][21] = 77777;
  }

  int funcvalue = tempfunc11111(12);

}
