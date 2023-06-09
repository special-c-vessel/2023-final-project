// #include <cstdio>

#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <string>
#include <vector>

using namespace std;

string outputFileName("output.ll");
fstream output_fstream;

string targetFileName("test.ll");
fstream file(targetFileName);

string strFileName("strfile.txt");
fstream str_fstream;

/*
한번 돌면서 
    string alloca 모두 체크
    printf 문 추가
이후
    기본 세팅되어 있는 txt에 새로 생성한 string 전역 변수를 합한 txt 파일 생성

타겟 ll파일에 구문 추가
*/

void writeTxtFile(string txtName) {

  ifstream tempTxtFstream;
  vector<string> WTFv; // == WriteTxtFileVector
  string WTFLine;

  tempTxtFstream.open(txtName, std::ios_base::out);

  if (tempTxtFstream.is_open()) {

    output_fstream << "; " << txtName << " File Write Start\n";

    while (getline(tempTxtFstream, WTFLine)) {
      output_fstream << WTFLine << "\n";
    }

    output_fstream << "; " << txtName << " File Write End\n";

    tempTxtFstream.close();

  } else {
    cout << txtName << " 파일을 열 수 없습니다\n";
  }
  return;
}

int main() {

  /*
      string targetFileName;
      cin >> targetFileName;  로 변수 설정하도록 변경해야함
  */

  int globalNum = 0;

  string line;
  vector<string> v;

  output_fstream.open(outputFileName, std::ios_base::out);

  str_fstream.open(strFileName, std::ios_base::out);

  if (file.is_open()) {
    while (getline(file, line)) {
      // cout << line << endl;

      stringstream ss(line);

      vector<string> tempv;

      // 단어 단위로 벡터에 저장
      string word;
      while (getline(ss, word, ' ')) {
        tempv.push_back(word);
      }
      tempv.push_back("enter");

      for (int i = 0; i < tempv.size(); i++) {
        if (tempv[i] == "enter")
          output_fstream << "\n";
        else
          output_fstream << tempv[i] << " ";
      }

      string currentFunc = "";

      // 줄에 store가 있다면 타입 확인 수 그에 맞는 값을 벡터에 추가
      for (int i = 0; i < tempv.size(); i++) {

        if (tempv[i] == "define") {
          //   currentFunc = "";
          //     cout << tempv[i + 1] << " " << tempv[i + 2] << " ";
          //   for (int j = 1; j < tempv[i + 2].size(); j++) {
          //     currentFunc += tempv[i + 2][j];
          //   }
          //   cout << "find define! " << currentFunc << "\n";

        } else if (tempv[i] == "entry:") {
          // 함수 시작에 loadfile 추가
          //%loadfile = load %struct.__sFILE*, %struct.__sFILE** @file, align 8
          output_fstream << "%loadfile = load %struct.__sFILE*, "
                            "%struct.__sFILE** @file, align 8\n";
        }

        else if (tempv[i] == "store" && tempv[i + 1] == "i32" &&
                 tempv[i + 3] == "i32*" && tempv[6] != "getelementptr") {

          globalNum++;

          // store 이고 int 형 일 때 아래의 구문 추가
          //    %var_6_value = load i32, i32* %tempvar, align 4
          //   %temp_var_6_4 = call i32 (%struct.__sFILE*, i8*, ...)
          //   @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds
          //   ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32
          //   %var_6_value)

          // 일단             //   %var_6_value = load i32, i32* %tempvar, align
          // 4 부터
          //   cout << tempv[6] << "\n";
          output_fstream << "%var_" << globalNum << "_value = load i32, i32* "
                         << tempv[6] << " align 4\n";

          int templocalNum = 1;

          //              %temp_var_1_1 = call i32 (%struct.__sFILE*, i8*, ...)
          //              @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr
          //              inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0,
          //              i64 0))
          output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([9 x i8], [9 x i8]* "
                            "@.str.op_declare, i32 0, i32 0))\n";

          output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_int, i32 0, i32 0), i32 %var_"
                         << globalNum << "_value)\n";

          //                  %temp_var_1_5 = call i32 (%struct.__sFILE*, i8*,
          //                  ...) @fprintf(%struct.__sFILE* %loadfile, i8*
          //                  getelementptr inbounds ([4 x i8], [4 x i8]*
          //                  @.str.print_ptr, i32 0, i32 0), i32* %randomNum)
          string tempPtrStr = "";
          for (int i = 0; i < tempv[6].size() - 1; i++)
            tempPtrStr += tempv[6][i];
          output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_ptr, i32 0, i32 0), i32* "
                         << tempPtrStr << ")\n";

          // 이 부분에서 PASS로 Line 번호 따와서 넣어주면 됨
          output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_int, i64 0, i64 0), i32 118)\n";
          output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                         << " = call i32 (%struct.__sFILE*, i8*, ...) "
                            "@fprintf(%struct.__sFILE* %loadfile, i8* "
                            "getelementptr inbounds ([4 x i8], [4 x i8]* "
                            "@.str.print_int, i64 0, i64 0), i32 32)\n";
          //%temp_var_1_6 =                                       call i32
          //(%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile,
          // i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int,
          // i64 0, i64 0), i32 118) %temp_var_1_7 = call i32 (%struct.__sFILE*,
          // i8*, ...)
          //@fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4
          // x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 29)

          // tempv[6]의 값을 사용하면 됨
          //   cout << i << " " << tempv[4] << " \n";
          // for(int j = 0; j < tempv.size(); j ++)
          // cout << tempv[j] << " ";
          //   cout << tempv[6] << " ";
          //   cout << "\n";

          //%var_1_value = load i32, i32* %randomNum, align 4
          // output_fstream << "%var_" << globalNum << "_value = load i32,
          // i32* " << tempv[6] << " align 4\n";

          //%var_1_name_ptr = alloca [10 x i8], align 1
          // output_fstream << "%var_" << globalNum << "name_ptr = load i32,
          // i32* " << tempv[6] << " align 4\n";

          //%temp_var_1_name = bitcast [10 x i8]* %var_1_name_ptr to i8*
          // output_fstream << "%var_" << globalNum << "_value = load i32,
          // i32* " << tempv[6] << " align 4\n";
        } else if (tempv[i] == "target" && tempv[i + 1] == "triple") {
          cout << "above txt file write\n";
          writeTxtFile("above.txt");
        } else if (tempv[i] == "alloca") {
          cout << "find alloca!   ";
          cout << tempv[i - 2] << "  ";
          //  %randomNum = alloca i32, align 4 이게 나올 때
          //@__const.main.var_name_%randomnum = private unnamed_addr constant
          //[10 x i8] c"randomNum\00", align 1 이것을 추가

          //%, @ 제거
          string tempallocastr = "";
          for (int j = 1; j < tempv[i - 2].size(); j++) {
            tempallocastr += tempv[i - 2][j];
          }
          cout << tempallocastr << "\n";
          //                                                                                                              size + 1
          str_fstream << "@__const." << currentFunc << "var_name_"
                      << tempallocastr << " = private unnamed_addr constant ["
                      << tempallocastr.size() + 1 << " x i8] c\""
                      << tempallocastr << "\\00\", align 1\n";
          //              @__const.           main      .var_name_ randomnum =
          //              private unnamed_addr constant [ 10      x
          //              i8]c"randomNum\00", align 1 이것을 추가
          //   @__const..var_name_randomNum = private unnamed_addr constant [10
          //   x i8] c"randomNum\00", align 1

        } else {
        }
      }
    }


    if (file.is_open()) {
      while (getline(file, line)) {

        stringstream ss(line);
        vector<string> tempv;
        string word;
        while (getline(ss, word, ' ')) {
          tempv.push_back(word);
        }
        tempv.push_back("enter");

        for (int i = 0; i < tempv.size(); i++) {
          if (tempv[i] == "enter")
            output_fstream << "\n";
          else
            output_fstream << tempv[i] << " ";
        }

        string currentFunc = "";

        // 줄에 store가 있다면 타입 확인 수 그에 맞는 값을 벡터에 추가
        for (int i = 0; i < tempv.size(); i++) {

          if (tempv[i] == "define") {

          } else if (tempv[i] == "entry:") {
            output_fstream << "%loadfile = load %struct.__sFILE*, "
                              "%struct.__sFILE** @file, align 8\n";
          }

          else if (tempv[i] == "store" && tempv[i + 1] == "i32" &&
                   tempv[i + 3] == "i32*" && tempv[6] != "getelementptr") {

            globalNum++;

            output_fstream << "%var_" << globalNum << "_value = load i32, i32* "
                           << tempv[6] << " align 4\n";
            int templocalNum = 1;
            output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                           << " = call i32 (%struct.__sFILE*, i8*, ...) "
                              "@fprintf(%struct.__sFILE* %loadfile, i8* "
                              "getelementptr inbounds ([9 x i8], [9 x i8]* "
                              "@.str.op_declare, i32 0, i32 0))\n";

            output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                           << " = call i32 (%struct.__sFILE*, i8*, ...) "
                              "@fprintf(%struct.__sFILE* %loadfile, i8* "
                              "getelementptr inbounds ([4 x i8], [4 x i8]* "
                              "@.str.print_int, i32 0, i32 0), i32 %var_"
                           << globalNum << "_value)\n";

            string tempPtrStr = "";
            for (int i = 0; i < tempv[6].size() - 1; i++)
              tempPtrStr += tempv[6][i];
            output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                           << " = call i32 (%struct.__sFILE*, i8*, ...) "
                              "@fprintf(%struct.__sFILE* %loadfile, i8* "
                              "getelementptr inbounds ([4 x i8], [4 x i8]* "
                              "@.str.print_ptr, i32 0, i32 0), i32* "
                           << tempPtrStr << ")\n";

            // 이 부분에서 PASS로 Line 번호 따와서 넣어주면 됨
            output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                           << " = call i32 (%struct.__sFILE*, i8*, ...) "
                              "@fprintf(%struct.__sFILE* %loadfile, i8* "
                              "getelementptr inbounds ([4 x i8], [4 x i8]* "
                              "@.str.print_int, i64 0, i64 0), i32 118)\n";
            output_fstream << "%temp_var_" << globalNum << "_" << templocalNum++
                           << " = call i32 (%struct.__sFILE*, i8*, ...) "
                              "@fprintf(%struct.__sFILE* %loadfile, i8* "
                              "getelementptr inbounds ([4 x i8], [4 x i8]* "
                              "@.str.print_int, i64 0, i64 0), i32 32)\n";
            //%temp_var_1_6 =                                       call i32
            //(%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile,
            // i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int,
            // i64 0, i64 0), i32 118) %temp_var_1_7 = call i32
            // (%struct.__sFILE*,
            // i8*, ...)
            //@fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds
            //([4
            // x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 29)

            // tempv[6]의 값을 사용하면 됨
            //   cout << i << " " << tempv[4] << " \n";
            // for(int j = 0; j < tempv.size(); j ++)
            // cout << tempv[j] << " ";
            //   cout << tempv[6] << " ";
            //   cout << "\n";

            //%var_1_value = load i32, i32* %randomNum, align 4
            // output_fstream << "%var_" << globalNum << "_value = load i32,
            // i32* " << tempv[6] << " align 4\n";

            //%var_1_name_ptr = alloca [10 x i8], align 1
            // output_fstream << "%var_" << globalNum << "name_ptr = load i32,
            // i32* " << tempv[6] << " align 4\n";

            //%temp_var_1_name = bitcast [10 x i8]* %var_1_name_ptr to i8*
            // output_fstream << "%var_" << globalNum << "_value = load i32,
            // i32* " << tempv[6] << " align 4\n";
          } else if (tempv[i] == "target" && tempv[i + 1] == "triple") {
            cout << "above txt file write\n";
            writeTxtFile("above.txt");
          } else if (tempv[i] == "alloca") {
            cout << "find alloca!   ";
            cout << tempv[i - 2] << "  ";
            //  %randomNum = alloca i32, align 4 이게 나올 때
            //@__const.main.var_name_%randomnum = private unnamed_addr constant
            //[10 x i8] c"randomNum\00", align 1 이것을 추가

            //%, @ 제거
            string tempallocastr = "";
            for (int j = 1; j < tempv[i - 2].size(); j++) {
              tempallocastr += tempv[i - 2][j];
            }
            cout << tempallocastr << "\n";
            //                                                                                                              size + 1
            str_fstream << "@__const." << currentFunc << "var_name_"
                        << tempallocastr << " = private unnamed_addr constant ["
                        << tempallocastr.size() + 1 << " x i8] c\""
                        << tempallocastr << "\\00\", align 1\n";
            //              @__const.           main      .var_name_ randomnum =
            //              private unnamed_addr constant [ 10      x
            //              i8]c"randomNum\00", align 1 이것을 추가
            //   @__const..var_name_randomNum = private unnamed_addr constant
            //   [10 x i8] c"randomNum\00", align 1

          } else {
          }
        }
      }
    }
    str_fstream.close();
    output_fstream.close();
    file.close(); // 열었떤 파일을 닫는다.
    return 0;
  }
