#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <string>
#include <vector>

using namespace std;

string output_result_FileName("record_result.ll");
fstream output_result_fstream;

string output_printf_FileName("record_AddPrintf.ll");
fstream output_printf_fstream;

string targetFileName("test.ll");
fstream targetfile_fstream(targetFileName);

string strFileName("record_strfile.txt");
fstream str_fstream;
/*
한번 돌면서 
    string alloca 모두 체크
    printf 문 추가
이후
    기본 세팅되어 있는 txt에 새로 생성한 string 전역 변수를 합한 txt 파일 생성
    후
    기존 파일에 추가 삽입

타겟 ll파일에 구문 추가
*/

void writeTxtFile(string txtName) {

  ifstream tempTxtFstream;
  vector<string> WTFv; // == WriteTxtFileVector
  string WTFLine;

  tempTxtFstream.open(txtName, std::ios_base::out);

  if (tempTxtFstream.is_open()) {

    output_printf_fstream << "; " << txtName << " File Write Start\n";

    while (getline(tempTxtFstream, WTFLine)) {
      output_printf_fstream << WTFLine << "\n";
    }

    output_printf_fstream << "; " << txtName << " File Write End\n";


  } else {
    cout << txtName << " 파일을 열 수 없습니다\n";
  }
  return;
}

int main() {

  int globalNum = 0;

  string line;
  string line2;
  vector<string> v;

  output_printf_fstream.open(output_printf_FileName, std::ios_base::out);

  str_fstream.open(strFileName, std::ios_base::out);

  // 최초 파일 열기, string alloca 모두 체크
  //  printf 문 추가
  if (targetfile_fstream.is_open()) 
  {
    while (getline(targetfile_fstream, line)) 
    {

      stringstream ss(line);
      vector<string> tempv;
      string word;

      while (getline(ss, word, ' ')) {
        tempv.push_back(word);
      }
      tempv.push_back("enter");

      for (int i = 0; i < tempv.size(); i++) {
        if (tempv[i] == "enter")
          output_printf_fstream << "\n";
        else
          output_printf_fstream << tempv[i] << " ";
      }

      string currentFunc = "";

      // 줄에 store가 있다면 타입 확인 수 그에 맞는 값을 벡터에 추가
      for (int i = 0; i < tempv.size(); i++) {

        if (tempv[i] == "define") {

        } else if (tempv[i] == "entry:") {
          // 함수 시작에 loadfile 추가
          output_printf_fstream << "%loadfile = load %struct.__sFILE*, "
                            "%struct.__sFILE** @file, align 8\n";
        }

        else if (tempv[i] == "store" && tempv[i + 1] == "i32" &&
                 tempv[i + 3] == "i32*" && tempv[6] != "getelementptr") {

          globalNum++;

          int templocalNum = 1;

          output_printf_fstream << "%var_" << globalNum << "_value = load i32, i32* "
                         << tempv[6] << " align 4\n";

          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([9 x i8], [9 x i8]* "
                            "@.str.op_declare, i32 0, i32 0))\n";

          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_int, i32 0, i32 0), i32 %var_"
                         << globalNum << "_value)\n";

          string tempPtrStr = "";
          for (int i = 0; i < tempv[6].size() - 1; i++)
            tempPtrStr += tempv[6][i];

          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_ptr, i32 0, i32 0), i32* "
                         << tempPtrStr << ")\n";

          // 이 부분에서 PASS로 Line 번호 따와서 넣어주면 됨
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_int, i64 0, i64 0), i32 118)\n";
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_int, i64 0, i64 0), i32 32)\n";
        } else if (tempv[i] == "target" && tempv[i + 1] == "triple") {
          cout << "record_above txt file write\n";
          writeTxtFile("record_above.txt");
        } else if (tempv[i] == "alloca") {
          cout << "find alloca!   ";
          cout << tempv[i - 2] << "  ";

          string tempallocastr = "";
          for (int j = 1; j < tempv[i - 2].size(); j++) {
            tempallocastr += tempv[i - 2][j];
          }
          cout << tempallocastr << "\n";
          str_fstream << "@__const." << currentFunc << "var_name_"
                      << tempallocastr << " = private unnamed_addr constant ["
                      << tempallocastr.size() + 1 << " x i8] c\""
                      << tempallocastr << "\\00\", align 1\n";

        } else {
        }
      }
    }
  }

    str_fstream.close();
    output_printf_fstream.close();
    targetfile_fstream.close(); // 열었떤 파일을 닫는다.
    output_result_fstream.close();
    return 0;
  }
