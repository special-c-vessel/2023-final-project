#include <iostream>
#include <vector>
#include <map>
#include <queue>

using namespace std;

class B {
  public:
  int x;
  int y;
  B() : x(-99), y(-88) {}  
};

class AAAAA {
  public:
  int xxxxx;
  int yyyyy;
  // B z;
  AAAAA() : xxxxx(99), yyyyy(-1) {}

  void inc_x(int zz111) {
    xxxxx += zz111;
  }

  void dec_x(int zz222) {
    xxxxx -= zz222;
  }

  void inc_y(int zz333) {
    yyyyy += zz333;
  }

  void dec_y(int zz444) {
    yyyyy -= zz444;
  }

  int* get_x_ptr() {
    return &(this->xxxxx);
  }
  int& get_x_ref() {
    return this->xxxxx;
  }
};

int main()
{


  AAAAA x11111;
  AAAAA x22222;

  int num11, num22;
  int *tempnum1, *tempnum2;

  num11 = x11111.xxxxx;
  num22 = x11111.yyyyy;

  tempnum1 = &x11111.xxxxx;
  tempnum2 = &x11111.yyyyy;

  *tempnum1 = 55555;

  cout << num11 << " ";
  cout << tempnum1 << " ";
  cout << x11111.xxxxx << "\n";

  cout << num22 << "\n";

  

  // std::cout << x11111.xxxxx << std::endl;
  // std::cout << x11111.yyyyy << std::endl;

  x11111.inc_x(10);

  num11 = x11111.xxxxx;
  num22 = x11111.yyyyy;

  cout << num11 << "\n";
  cout << num22 << "\n";

  // std::cout << x11111.xxxxx << std::endl;
  // std::cout << x11111.yyyyy << std::endl;

  x22222.xxxxx = 55;
  x22222.yyyyy = 99;

  num11 = x22222.xxxxx;
  num22 = x22222.yyyyy;

  cout << num11 << "\n" << num22 << "\n";

  x22222.dec_x(3);
  x22222.dec_y(11);

  num22 = x22222.yyyyy;

  int * ptr1111 = x11111.get_x_ptr();
  int ptr2222 = x11111.get_x_ref();

  int num1 = 10;
  int num2 = 20;
  int num3 = num1 + num2;

  long long int num4 = 111111;
  float ffffstatic = 112.2414;
  double vvvv = 525.124;
  bool isisis = true;

  float arrTest[50];
  long long int arrTest2[50][50];

  int ResetArr[50] = {11, 22, 33, 44, 55};

  arrTest[30] = 12;
  arrTest2[25][25] = 55555;

  int arrTest1[100];

  int num333 = 5;
  int * ptrarrTest = &num333;
  int ** pptrarrTest = &ptrarrTest;
  int *** ppptrarrTest = &pptrarrTest;


  int kkk = 11111;
  **pptrarrTest = 22222;
  ***ppptrarrTest = 55555;

  string str1111 = "hello world\n";
  str1111 = "faewfefe\n";

  string str2222 = "hello world\n";
  str2222 = "change value\n";
  int lll = 123123;

  str2222[5] = 'e';

  vector<int> vvvvv;
  vector<long long int> vvvvv22;
  vector<float> fffff;
  vector<string> sssss;

  vvvvv.push_back(55555);
  vvvvv.push_back(66);
  vvvvv.push_back(77);

  vvvvv22.push_back(12345);
  vvvvv22.push_back(3456);
  vvvvv22.push_back(56789);


  fffff.push_back(111.24124);

  sssss.push_back("vector string test");

  string tempvectorStringTest = sssss[0];
  string compareStringTest = "asdfgzxcvbn\n\n\n";

  vector<AAAAA> VA;

  VA.push_back(x11111);
  VA.push_back(x11111);
  VA.push_back(x22222);

  return 0;
}


