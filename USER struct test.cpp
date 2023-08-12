#include <iostream>
#include <vector>
#include <map>
#include <queue>

using namespace std;

// class B {
//   public:
//   int x;
//   int y;
//   B() : x(-99), y(-88) {}  
// };

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

  // int* get_x_ptr() {
  //   return &(this->x);
  // }
  // int& get_x_ref() {
  //   return this->x;
  // }
};

int main()
{
  AAAAA x11111;
  AAAAA x22222;

  int num11, num22;

  num11 = x11111.xxxxx;
  num22 = x11111.yyyyy;

  cout << num11 << "\n";
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

  // *(x.get_x_ptr()) = 999;
  // std::cout << x.x << std::endl;
  // x.get_x_ref() = 888;
  // std::cout << x.x << std::endl;
  // int arr[5][7][8] = {{{1,2}}};
  // int arr222[5][7][8][10] = {{{{3,4}}}};
//   vector<int> vvvvv(10);
//   vector<float> kkkkk;
//   // vector<vector<int> > nnnnn(20);
//   vector<long long int> lllll;
//   vector<short> hhhhh;
  
//   vector<double> ddddd;
//   vector<char> ccccc;

//   ddddd.push_back(11111.22222);
//   ccccc.push_back('G');
//   // vector<string> sssss;

// // string tempstr = "bbadfgae";
// // // 
// // tempstr = "vaaeg\netsetset\ndfydreg";

// // cout << tempstr.length() << "\n";
// // tempstr.length();
// // tempstr.length();

// // sssss.push_back("qqqqqqqq");

// // sssss[0].length();
// // cout << sssss[0].length() << "\n"; 

// vvvvv.push_back(5555);
// vvvvv.push_back(6666);
// vvvvv.push_back(7777);
// kkkkk.push_back(22222.22);
// lllll.push_back(33333333333);
// hhhhh.push_back(444);
// sssss.push_back("qwergfewerfd");

// nnnnn.push_back(vvvvv);

// cout << nnnnn[0][0] << "\n";

// // cout << vvvvv.front() << "\n";

// string ssttrr = "123424242"; 

// ssttrr = "12345";

// if(ssttrr == "12345")
// {
//   ssttrr[5] = 'K';
// }

// if(ssttrr == "12345")
// {
//   cout << ssttrr << "(" << ssttrr.length() << ")" << endl;
// }

// int x[4] = {11, 22, 33, 44};

// int* y = x + 1;

// *y = 7;
// std::cout << x[1] << std::endl;

}
