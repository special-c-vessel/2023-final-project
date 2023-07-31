/*

기록에 사용하기 위해 전역으로 선언된 변수명들을 타켓 ll 파일에 추가하는 작업 수행


*/

#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <string>
#include <vector>

using namespace std;

string output_result_FileName("record_result.ll"); 
fstream output_result_fstream;

string output_printf_FileName("record_AddPrintf.ll");
ifstream output_printf_fstream;

string strFileName("record_strfile.ll");
ifstream str_fstream;

// string output_printf_FileName("record_AddPrintf.ll");
// fstream output_printf_fstream;

// string targetFileName("test.ll");
// fstream targetfile_fstream(targetFileName);

// string strFileName("record_strfile.txt");
// fstream str_fstream;

int main()
{

  int globalNum = 0;

  string line;
  vector<string> v;
  bool isWrite;

  isWrite = false;

  output_printf_fstream.open(output_printf_FileName , std::ios_base::out);

  output_result_fstream.open(output_result_FileName , std::ios_base::out);
  // ifstream strfile("record_strfile.txt");

  // 최초 파일 열기, string alloca 모두 체크
  //  printf 문 추가

  // printffile.open("record_AddPrintf.ll");

  int getLinenum = 1;
  if (output_printf_fstream.is_open())
  {
    cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@   record 3 start   @@@@@@@@@@@@@@@@@@@@@@@@@@@\n";
    while (getline(output_printf_fstream , line))
    {
      // cout << "getLine num = " << getLinenum ++ << "\n";
      stringstream ss(line);
      vector<string> tempv;
      string word;

      while (getline(ss , word , ' '))
      {
        tempv.push_back(word);
      }
      tempv.push_back("enter");

      for (int i = 0; i < tempv.size(); i++)
      {
        if (tempv[i] == "enter")
          output_result_fstream << "\n";
        else
          output_result_fstream << tempv[i] << " ";
      }


    
      for (int i = 0; i < tempv.size(); i++)
      {
        if (tempv[i] == "target" && tempv[i + 1] == "triple")
        {

          str_fstream.open(strFileName , std::ios_base::out);

          output_result_fstream << "; 새로운 전역 str 작성 시작\n";

          if(isWrite == false)
          while (getline(str_fstream , line))
          {

            stringstream ss2(line);
            vector<string> tempv2;
            string word2;
            isWrite = true;
            
            while (getline(ss2 , word2 , ' '))
            {
              tempv2.push_back(word2);
            }
            tempv2.push_back("enter");

            for (int j = 0; j < tempv2.size(); j++)
            {
              if (tempv2[j] == "enter")
                output_result_fstream << "\n";
              else
              {
                output_result_fstream << tempv2[j] << " ";
                // cout << "write string is : " << tempv2[j] << "\n";
              }
            }

          }
          output_result_fstream << "; 새로운 전역 str 작성 종료\n";

          break;
        }
      }


      // str_fstream.close();
      // output_printf_fstream.close();
      // targetfile_fstream.close();
      // output_result_fstream.close();
    }
        cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@   record 3 end     @@@@@@@@@@@@@@@@@@@@@@@@@@@\n";
  }
  else
  {
    cout << "cant open\n";
  }
  return 0;
}
