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

string currentFunc = "Global";
string currentFunc_returnType = "";

int globalNum = 0;

void findLineAndColNumber(string, string);
void addPrintfInstruction(string, string, string, string, string);
void writeTxtFile(string);

// 변수의 기록을 위한 (코드를 삽입하는) 함수
void addPrintfInstruction(string var_name, string var_type, string debugNum, string func_name, string keyWord) // string currentFunc // string var_type
{                                                                                                              //    %randomNum,       i32
  globalNum++;
  int pointerSize = var_name.size() - 1;
  int templocalNum = 1;

  int var_type_length;
  int var_type_print_length;

  // 각 타입에 맞게 타입 출력 길이를 설정
  if (var_type == "i8") // char
  {
    var_type_length = 6;
    var_type_print_length = 4;
  } else if (var_type == "i16") // short
  {
    var_type_length = 7;
    var_type_print_length = 4;
  } else if (var_type == "i32") // int
  {
    var_type_length = 5;
    var_type_print_length = 4;
  } else if (var_type == "i64") // long long int
  {
    var_type_length = 15;
    var_type_print_length = 5;
  } else if (var_type == "float") // float
  {
    var_type_length = 7;
    var_type_print_length = 4;
  } else if (var_type == "double") // double
  {
    var_type_length = 8;
    var_type_print_length = 5;
  }

  // 새로 할당된 값 불러옴
  output_printf_fstream << "%var_" << globalNum << "_value = load " << var_type << ", " << var_type << "* " << var_name << " align 4\n";

  string tempsVarName = var_name.substr(1);                    // %var_name, -> var_name,
  string tempPtrStr = var_name.substr(0, var_name.size() - 1); // %var_name, -> %var_name

  LineNum = "0";
  ColNum = "0";
  if (debugNum.size() > 1) {
    LineNum = "";
    ColNum = "";
    findLineAndColNumber(targetFileName, debugNum);
  }

  // 키워드 이름 타입 값 포인터 라인 컬럼   순으로
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << keyWord.size() + 2 << " x i8], [" << keyWord.size() + 2 << " x i8]* @.str.op_" << keyWord << ", i32 0, i32 0))\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << tempsVarName.size() + 1 << " x i8], [" << tempsVarName.size() + 1 << " x i8]* @__const." << func_name << "var_name_" << tempsVarName << " i64 0, i64 0))\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_length << " x i8], [" << var_type_length << " x i8]* @.str." << var_type << ", i64 0, i64 0))\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << var_type << "* " << tempPtrStr << ")\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << LineNum << ")\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 " << ColNum << ")\n";

  return;
}

// 디버거 정보(line, column) 을 읽어오는 함수
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

          LineNum = FLACNFtempv[i + 3].substr(0, FLACNFtempv[i + 3].size() - 1);
          ColNum = FLACNFtempv[i + 5].substr(0, FLACNFtempv[i + 5].size() - 1);

          break;
        }
      }
    }
  } else {
    cout << txtName << " 파일을 열 수 없습니다\n";
  }
  return;
}

// 파일을 읽는 함수
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

      // 줄에 store가 있다면 타입 확인, 맞는 값을 벡터에 추가
      for (int i = 0; i < tempv.size(); i++) {

        if (tempv[i] == "define") {

          currentFunc_returnType = tempv[i + 1];
          currentFunc = "";
          while (tempv[i][0] != '@') {
            i++;
          }

          for (int j = 1; tempv[i][j] != '('; j++)
            currentFunc += tempv[i][j];
          currentFunc += '_';

        } else if (tempv[i] == "entry:") {
          // 함수 시작에 loadfile 추가
          output_printf_fstream << "%loadfile = load %struct.__sFILE*, "
                                   "%struct.__sFILE** @file, align 8\n";
        }

        else if ((tempv[i] == "store" && tempv[6] != "getelementptr") || tempv[i] == "load") {

          if (currentFunc_returnType == "linkonce_odr" || currentFunc_returnType == "internal")
            continue;

          string var_name;
          string var_type;
          string debugNum;

          if (tempv[i] == "store") {

            var_name = tempv[6];  // %randomNum,
            var_type = tempv[3];  // i32  포인터 타입은 * 만 붙히면 됨
            debugNum = tempv[10]; //  !864

          } else if (tempv[i] == "load") {

            string temp_var_type = tempv[5];

            var_type = temp_var_type.substr(0, temp_var_type.size() - 1);

            var_name = tempv[7];  // %randomNum,
            debugNum = tempv[11]; //  !864
          }

          addPrintfInstruction(var_name, var_type, debugNum, currentFunc, tempv[i]);

        } else if (tempv[i] == "target" && tempv[i + 1] == "triple") {

          cout << "record_above txt file write\n";
          writeTxtFile("record_above.txt");

        } else if (tempv[i] == "alloca") {

          cout << "find alloca!   ";
          cout << tempv[i - 2] << "  ";

          string tempallocastr = tempv[i - 2].substr(1);

          cout << tempallocastr << "\n";
          cout << currentFunc << " <- currentFunc \n";
          str_fstream << "@__const." << currentFunc << "var_name_" << tempallocastr << " = private unnamed_addr constant [" << tempallocastr.size() + 2 << " x i8] c\"" << tempallocastr << " \\00\", align 1\n";

        } else if (tempv[i] == "@_ZNSt3__13cinE,") {

          cout << "find cin\n";
          if (tempv[4] == "call") {
            //  %call = call nonnull align 8 dereferenceable(16) %"class.std::__1::basic_istream"* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(%"class.std::__1::basic_istream"* @_ZNSt3__13cinE, i32* nonnull align 4 dereferenceable(4) %num1), !dbg !987
            // invork  인 경우 따로 만들어야 함

            string temp_var_name = tempv[tempv.size() - 4]; // %randomNum),
            string temp_var_type = tempv[i + 1];            // type*
            string debugNum = tempv[tempv.size() - 2];      //  !864

            string var_name;
            string var_type;

            var_name = temp_var_name.substr(0, temp_var_name.size() - 2);
            var_name += ",";

            var_type = temp_var_type.substr(0, temp_var_type.size() - 1);

            //                                                      cin으로 새로 값을 할당하는 것이므로 store로 설정
            addPrintfInstruction(var_name, var_type, debugNum, currentFunc, "store");

          } else if (tempv[4] == "invoke") {
            // cin 이고 invoke 인 경우
            cout << "find cin voke\n";
          }
        } else if (tempv[i] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"\*") {
          // string str 선언 후  str = "문자열" 수행 시 탐지
          cout << "find @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%!!!!\n\n";

          // 이제 한 줄 더 읽고 invoke.cont 를 찾아서 그 아래에 코드 삽입
        } else if (tempv[i] == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc") {
        }
      }
    }
  }

  str_fstream.close();
  output_printf_fstream.close();
  targetfile_fstream.close();
  output_result_fstream.close();
  return 0;
}
