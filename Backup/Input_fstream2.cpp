#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <stack>
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

vector<vector<string> > previoustempv;

stack<string> stackForResetArr;

vector<pair<string, string> > vectorForResetArr;
string var_name_ForResetArr = "";

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

  string var_type_for_arr;

  bool isArr = false;
  bool isResetArr = false;

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

  // var_name가 arrayidx 일 경우
  cout << var_name.substr(1, 8) << "\n";
  if (var_name.substr(1, 8) == "arrayidx") {

    cout << "find arrayidx !!!!!!!!!!!!!!! \n";

    // var_name 을 배열 이름으로 설정해야함
    var_name = previoustempv[0][previoustempv[0].size() - 8];
    cout << "previoustempv 's var_name is : " << var_name << "\n";

    // var_type 변경
    // [7 x [4 x [500 x i32]]]
    int tempcnt = 6;
    while (previoustempv[0][tempcnt][previoustempv[0][tempcnt].size() - 1] != ',') {
      var_type_for_arr += previoustempv[0][tempcnt];
      var_type_for_arr += " ";
      tempcnt++;
    }
    var_type_for_arr += previoustempv[0][tempcnt];
    var_type_for_arr = var_type_for_arr.substr(0, var_type_for_arr.size() - 1);
    cout << "previoustempv 's var_type is : " << var_type_for_arr << "\n";

    isArr = true;

  } else if (var_name[1] == '0' || var_name[1] == '1' || var_name[1] == '2' || var_name[1] == '3' || var_name[1] == '4' || var_name[1] == '5' || var_name[1] == '6' || var_name[1] == '7' || var_name[1] == '8' || var_name[1] == '9') {
    //  %10 = bitcast [3 x [15 x i32]]* %arrJJJJJ to i8*
    // 의 형식일 때 stack에 %10 추가
    isResetArr = true;

    // cout << "isResetArr 's type : " << var_type << "\n";

  }
  
  string tempsVarName = var_name.substr(1, var_name.size() - 1);                    // %var_name, -> var_name
  string tempPtrStr = var_name.substr(0, var_name.size() - 1);                      // %var_name, -> %var_name

  if (var_name == "retval") {
    tempsVarName = var_name.substr(1, var_name.size() - 2);
  }
  LineNum = "0";
  ColNum = "0";
  if (debugNum.size() > 1) {
    LineNum = "";
    ColNum = "";
    findLineAndColNumber(targetFileName, debugNum);
  }

  if (isResetArr) {
    // 여기서는 출력만

    if (vectorForResetArr.back().first == var_name.substr(0, var_name.size() - 1)) {
      // vectorForResetArr에 저장된 var_name 과 store의 var_name이 같을 때 모두 출력 후 하나 pop

      cout << "start print vectorForResetArr       ";

      for (int i = 0; i < vectorForResetArr.size(); i++) {
        cout << vectorForResetArr[i].first << " " << vectorForResetArr[i].second << "  ";
      }
      cout << "remove " << vectorForResetArr.back().first << "\n";
      vectorForResetArr.pop_back();

      tempsVarName = var_name_ForResetArr.substr(1, var_name_ForResetArr.size());
      tempPtrStr = var_name_ForResetArr.substr(0, var_name.size() - 1);                      // %var_name, -> %var_name
    }
  }

  // 키워드 이름 타입 값 포인터 라인 컬럼   순으로
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << keyWord.size() + 2 << " x i8], [" << keyWord.size() + 2 << " x i8]* @.str.op_" << keyWord << ", i32 0, i32 0))\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << tempsVarName.size() + 2 << " x i8], [" << tempsVarName.size() + 2 << " x i8]* @__const." << func_name << "var_name_" << tempsVarName << " i64 0, i64 0))\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_length << " x i8], [" << var_type_length << " x i8]* @.str." << var_type << ", i64 0, i64 0))\n";


  // ===================== 함수로 만들기 ============================================================
  if (isArr) {
    // 초기값이 아닌 배열의 차수를 출력하겠다는 의미로 isArr를 출력
    output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";

    // 배열의 차수를 모두 출력
    cout << "print num @@@@@@@ ";

    for (int i = 0; i < previoustempv.size(); i++) {
      string previoustempv_arrnum = previoustempv[i][previoustempv[i].size() - 4];
      output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << previoustempv_arrnum.substr(0, previoustempv_arrnum.size() - 1) << ")\n";
    }

    while (!previoustempv.empty()) {
      previoustempv.pop_back();
    }
    cout << "\n";
  }  else {
    // var_name 가 arrayidx 가 아닌 경우
    var_type_for_arr = var_type;
  }

  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << var_type_for_arr << "* " << tempPtrStr << ")\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << LineNum << ")\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 " << ColNum << ")\n";

  cout << "find " << keyWord << "!! current Function && Line number is =====> " << currentFunc << " " << LineNum << "\n";

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
        } else if ((tempv[i] == "store" && tempv[6] != "getelementptr") || tempv[i] == "load") {

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

          cout << " current Function name is =====> ";
          cout << currentFunc << "\n";
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
        }
        // else if (tempv[i] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"\*") {
        //   // string str 선언 후  str = "문자열" 수행 시 탐지
        //   cout << "find @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%!!!!\n\n";

        //   // 이제 한 줄 더 읽고 invoke.cont 를 찾아서 그 아래에 코드 삽입
        // }
        else if (tempv[i] == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc") {
        } else if (tempv[2][0] == '%' && tempv[4] == "getelementptr") {

          string tempStrForCompareArrayidx = tempv[2].substr(1, 8);
          if (tempStrForCompareArrayidx == "arrayidx") {
            //%arrayidx = getelementptr inbounds 의 형식일 때

            // cout << tempv[2] << " " << tempv[tempv.size() - 4] << "\n";

            // 차수를 가져온다
            string tempArrIndexNum = tempv[tempv.size() - 4].substr(0, tempv[tempv.size() - 4].size() - 1);

            // 차수 기록이 비어있거나     새로운 차수인 경우
            if (previoustempv.empty() || (previoustempv.back()[2] != tempv[2])) {
              previoustempv.push_back(tempv);
              // cout << "find arrayidx " << tempArrIndexNum << "\n";
            }
          } else if ((tempv[2][1] == '0' || tempv[2][1] == '1' || tempv[2][1] == '2' || tempv[2][1] == '3' || tempv[2][1] == '4' || tempv[2][1] == '5' || tempv[2][1] == '6' || tempv[2][1] == '7' || tempv[2][1] == '8' || tempv[2][1] == '9')) {
            // tempv[6] == "<{" && !!!!! 무조건 <{ 가 있지 않으므로 주의

            // %12 = getelementptr inbounds <{ <{ i32, i32, [13 x i32] }>, <{ i32, [14 x i32] }>, <{ i32, [14 x i32] }> }>, <{ <{ i32, i32, [13 x i32] }>, <{ i32, [14 x i32] }>, <{ i32, [14 x i32] }> }>* %11, i32 0, i32 0, !dbg !1009
            // 의 형식일 경우     // %12   0   저장
            if (vectorForResetArr.empty() || vectorForResetArr.back().first != tempv[2]) {
              vectorForResetArr.push_back(make_pair(tempv[2], tempv[tempv.size() - 4].substr(0, tempv[tempv.size() - 4].size() - 1))); // %12 0 저장
              cout << vectorForResetArr.back().first << "    " <<  vectorForResetArr.back().second << "   jjjjjjjjjjjjj\n";
            }
          }

          } else if (tempv[i] == "bitcast" && tempv[tempv.size() - 5] == "to" ) {
            //tempv[0][1] == '0' || tempv[0][1] == '1' || tempv[1][1] == '2' || tempv[2][1] == '3' || tempv[2][1] == '4' || tempv[2][1] == '5' || tempv[2][1] == '6' || tempv[2][1] == '7' || tempv[2][1] == '8' || tempv[2][1] == '9'
            var_name_ForResetArr = tempv[tempv.size() - 6];
            cout << var_name_ForResetArr << " mmmmmmmmmmm \n";

        } else {
        }
      }
    } // while end
  }

  str_fstream.close();
  output_printf_fstream.close();
  targetfile_fstream.close();
  output_result_fstream.close();
  return 0;
}
