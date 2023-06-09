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

string LineNum;
string ColNum;

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

void findLineAndColNumber(string txtName, string debugNum) {

  ifstream FLACNFstream;
  vector<string> FLACNv;
  string FLACNLine;

  FLACNFstream.open(txtName, std::ios_base::out);

  if (FLACNFstream.is_open()) {

    while (getline(FLACNFstream, FLACNLine)) {
      // output_printf_fstream << FLACNLine << "\n";
      stringstream FLACNFss(FLACNLine);
      vector<string> FLACNFtempv;
      string FLACNFword;

      while (getline(FLACNFss, FLACNFword, ' ')) {
        FLACNFtempv.push_back(FLACNFword);
      }

      for (int i = 0; i < FLACNFtempv.size(); i++) {
        if (FLACNFtempv[i] == debugNum && FLACNFtempv[i + 1] == "=") {

          for (int j = 0; j < FLACNFtempv[i + 3].size() - 1; j++) {
            LineNum += FLACNFtempv[i + 3][j];
          }

          for (int j = 0; j < FLACNFtempv[i + 5].size() - 1; j++) {
            ColNum += FLACNFtempv[i + 5][j];
          }

          // cout << LineNum << " " << ColNum << "\n";

          break;
        }
      }
    }

  } else {
    cout << txtName << " 파일을 열 수 없습니다\n";
  }
  return;
}

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
  if (targetfile_fstream.is_open()) {
    while (getline(targetfile_fstream, line)) {

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

        else if (tempv[i] == "store" && tempv[i + 1] == "i32" && tempv[i + 3] == "i32*" && tempv[6] != "getelementptr") {

          globalNum++;
          int pointerSize = tempv[6].size() - 1;
          int templocalNum = 1;

          //                        %var_         1         _value = load i32, i32*      %randomNum,   align 4     ;
          output_printf_fstream << "%var_" << globalNum << "_value = load i32, i32* " << tempv[6] << " align 4\n";

          //                        %var_       1           _name_ptr = alloca [      10              x i8], align 1
          output_printf_fstream << "%var_" << globalNum << "_name_ptr = alloca [" << pointerSize << " x i8]\n";

          //                        %temp_var_          1        _name = bitcast [          10          x i8]*       %var_        1          _name_ptr to i8*
          output_printf_fstream << "%temp_var_" << globalNum << "_name = bitcast [" << pointerSize << " x i8]* "
                                << "%var_" << globalNum << "_name_ptr to i8*\n";

          string tempstr2 = "";
          for (int j = 1; j < tempv[6].size() - 1; j++) {
            tempstr2 += tempv[6][j];
          }
          //                        call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_         1         _name, i8* align 1 getelementptr inbounds ([      10              x i8], [    10                x i8]* @__const.main.var_1_name           , i32 0, i32 0), i64 10, i1 false)
          output_printf_fstream << "call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_" << globalNum << "_name, i8* align 1 getelementptr inbounds ([" << pointerSize << " x i8], [" << pointerSize << " x i8]* @__const.var_name_" << tempstr2 << ", i32 0, i32 0), i64 10, i1 false)\n";

          //                        %var_         1         _name = getelementptr inbounds [            10        x i8], [            10        x i8]* %var_        1          _name_ptr, i64 0, i64 0
          output_printf_fstream << "%var_" << globalNum << "_name = getelementptr inbounds [" << pointerSize << " x i8], [" << pointerSize << " x i8]* %var_" << globalNum << "_name_ptr, i64 0, i64 0\n";

          // %var_1_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

          /*
            디클레어
            이름
            타입
            값
            포인터
            라인
            컬럼      순으로
          */

          // declare
          //                        %temp_var_          1       _               1          = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i32 0, i32 0))\n";

          // 이름
          //                        %temp_var_    2_2                                      = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8*      %var_2_name)
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_" << globalNum << "_name)\n";

          // 타입
          // 이건 이미 넣어놨음  @.str.int = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
          // %call1                                                                        = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !991
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.int, i64 0, i64 0))\n";

          // 값
          //                        %temp_var_          1        _              4          = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_         1         _value)
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_" << globalNum << "_value)\n";

          string tempPtrStr = "";
          for (int i = 0; i < tempv[6].size() - 1; i++)
            tempPtrStr += tempv[6][i];
          // 포인터
          //                         %temp_var_          1        _            5            = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %randomNum)
          output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* " << tempPtrStr << ")\n";

          if (tempv.size() > 10 && tempv[i + 7] == "!dbg") {
            cout << "find dbg\n";

            LineNum = "";
            ColNum = "";

            findLineAndColNumber("test.ll", tempv[i + 8]);

            // line && col number
            //                        %temp_var_        1          _            6            = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 118)
            output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << LineNum << ")\n";

            output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << ColNum << ")\n";
          }

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
          str_fstream << "@__const." << currentFunc << "var_name_" << tempallocastr << " = private unnamed_addr constant [" << tempallocastr.size() + 1 << " x i8] c\"" << tempallocastr << "\\00\", align 1\n";

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
