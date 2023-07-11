
/*
==========================================================================================
==========================================================================================

가능한 것
int, short, long long int, char 변수의 store, load 기록 가능
int, short, long long int, char 타입의 배열의 stroe, load 기록 가능
int, short, long long int, char 타입의 8 이상 크기를 갖는 배열의 초기 할당값 기록 가능

string 타입의 직접 접근 store, load 가능  ex) str[3] = 3, if(str[2] == 'G')   // -> 포인터 모두 같게 나옴

불가능한 것
int, short, long long int, char 타입의 8 이하 크기를 갖는 배열의 초기 할당값 기록 불가능

해야할 것

3차원 배열 초기 할당 다르게 나옴

  정리

  기능
    전역 변수 및 배열
      - 전역 선언시 변수명 작성할 수 있도록 record_strfile.txt 작성 함수 수정

    string
      - _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev   string 소멸자
      - _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc string 생성자   기록 가능  @@@@@@@@@@@

      - _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc string 재할당                   기록 가능  @@@@@@@@@@@
      - _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm str[2] = 'A' 의 경우 사용          

      - _ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_   string if문 비교시 사용
      - _ZNSt3__111char_traitsIcE6lengthEPKc

      - _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv  인자로 받은 string의 length 가져오는 함수

      - _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv

      - 함수에 기록 코드 넣는 방식으로

    vector
    구조체
    포인터 -> 타입 기록 시 *빼고 p로 대체, above에 @.str.i32p, @.str.i32pp 추가, 다른 타입도 추가해야함, 3차 포이터까지 필요한지 질문


    기록 실행시 타겟 파일 입력 할 수 있도록 변경
    기록에 사용하는 함수명 중복되지 않도록 유니크하게 변경  (현재 타겟 cpp에서 fstream 사용시 에러 발생)


    printf 를 사용한 기록

  배열 선언 시 할당 크기 기록 &&&&&&&&&&&&& 23.07.05
  깃허브 사용방법 업데이트
  cin 함수 바꾸기



==========================================================================================
==========================================================================================

메모 이것저것

변수명 가장 앞에 @ 이 붙은 경우 전역으로 생성된 것 -> 변수명 출력 시 현재 함수 추가할 필요 없음

1.


*/

#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <stack>
#include <string>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;;

/*
  test용 임시 변수
*/
map<string, int> checkDuplVarName;

string output_result_FileName("record_result.ll"); // 실행시켜야 할 파일 이름, record_AddPrintf와 record_strfile을 결합한 것
fstream output_result_fstream;

string output_printf_FileName("record_AddPrintf.ll"); // 기록을 위한 fprintf 코드를 추가한 결과
fstream output_printf_fstream;

string targetFileName("test.ll"); // 기록하고자 하는 타겟의 ll 파일
fstream targetfile_fstream(targetFileName);

string strFileName("record_strfile.ll"); // test.ll에 있는 변수명 등을 전역으로 선언하기 위해 작성한 코드들을 저장
fstream str_fstream;

string LineNum; // 코드의 위치를 기록하기 위한 변수
string ColNum;

string currentFunc = "Global_"; // 현재 함수
string currentFunc_returnType = "";

vector<vector<string> > previoustempv;    // 배열 선언 후, load, stroe 사용 시 차수 저장을 위한 벡터

stack<string> stackForResetArr;

pair<string , string> pairForStringArrAndName;       // string 의 store 또는 load 시 변수명과 접근 차수 기록을 위한 페어

vector<pair<string , string> > vectorForResetArr;   // 배열의 선언 및 초기화 시 차주 저장을 위한 벡터
string var_name_ForResetArr = "";

int globalNum = 0;

void findLineAndColNumber(string , string);
void addPrintfInstruction(string , string , string , string , string);
void writeTxtFile(string);
void writeArrayIndex(bool isArr , bool isResetArr);

// 변수의 기록을 위한 (코드를 삽입하는) 함수
void addPrintfInstruction(string var_name , string var_type , string debugNum , string func_name , string keyWord) // string currentFunc // string var_type
{

  if(var_type == "i8*" || var_type == "i8**")
    return ;

  //    %randomNum,       i32
  globalNum++;
  cout << "addPrintfInstruction start!!!!   globalNum count : " << globalNum << "  ################################ \n";

  int pointerSize = var_name.size() - 1;
  int templocalNum = 1;

  int var_type_length;
  int var_type_print_length;

  string var_type_for_arr;

  bool isArr = false;         // 배열인 경우              arr[1][2] = 5;
  bool isResetArr = false;    // 배열의 초기값 할당인 경우   int arr[5][5] = {{1, 2}, {3, 4}};
  bool isString = false;      // string 인 경우 

  // 각 타입에 맞게 타입 출력 길이를 설정
  if (var_type == "i8")       // char
  {
    var_type_length = 6;
    var_type_print_length = 4;
  }
  else if (var_type == "i16") // short
  {
    var_type_length = 7;
    var_type_print_length = 4;
  }
  else if (var_type == "i32") // int
  {
    var_type_length = 5;
    var_type_print_length = 4;
  }
  else if (var_type == "i64") // long long int
  {
    var_type_length = 15;
    var_type_print_length = 5;
  }
  else if (var_type == "float") // float
  {
    var_type_length = 7;
    var_type_print_length = 4;
  }
  else if (var_type == "double") // double
  {
    var_type_length = 8;
    var_type_print_length = 5;
  }

  // 변수가 가진 값을 가져와 %var_num_value에 저장, 변수값 출력 시 사용
  output_printf_fstream << "%var_" << globalNum << "_value = load " << var_type << ", " << var_type << "* " << var_name << " align 4\n";

  // var_name가 arrayidx 일 경우 배열이므로 차수 기록을 위한 작업 수행
  // cout << var_name.substr(1 , 8) << "\n";
  if (var_name.substr(1 , 8) == "arrayidx")
  {
    cout << "find arrayidx !!!!!!!!!!!!!!! \n";

    // var_name 을 배열 이름으로 설정하기 위해  previoustempv에서 배열 변수명 가져옴 
    var_name = previoustempv[0][previoustempv[0].size() - 8];
    cout << "previoustempv 's var_name is : " << var_name << "\n";

    // var_type 변경, 배열 크기에 따라 타입의 크기도 변하므로 변수타입 시작부터 , 가 나올 때 까지를 type으로 저장
    // %arrayidx5 = getelementptr inbounds [10 x [20 x [30 x i32]]], [10 x [20 x [30 x i32]]]* %arr_iiiint, i64 0, i64 9, !dbg !2505
    // 변수 타입 예시 : [10 x [20 x [30 x i32]]]
    int tempcnt = 6;
    for (; previoustempv[0][tempcnt][previoustempv[0][tempcnt].size() - 1] != ','; tempcnt++)
    {
      var_type_for_arr += previoustempv[0][tempcnt];
      var_type_for_arr += " ";
    }

    var_type_for_arr += previoustempv[0][tempcnt];                                  // 마지막 i32]]], 저장
    var_type_for_arr = var_type_for_arr.substr(0 , var_type_for_arr.size() - 1);    // , 제거 -> [10 x [20 x [30 x i32]]] 
    cout << "previoustempv 's var_type is : " << var_type_for_arr << "\n";          // 

    isArr = true; // 현재 기록하고자 하는 것이 배열임을 표시
  }

  // 배열의 초기값 할당 시 차수 기록을 위한 작업 수행
  // %10 = bitcast [3 x [15 x i32]]* %arrJJJJJ to i8*   
  else if (var_name[1] == '0' || var_name[1] == '1' || var_name[1] == '2' || var_name[1] == '3' || var_name[1] == '4' || var_name[1] == '5' || var_name[1] == '6' || var_name[1] == '7' || var_name[1] == '8' || var_name[1] == '9')
  {
    // if(tempv[7] != "getelementptr")
      isResetArr = true;
      // cout << "isResetArr 's type : " << var_type << "\n";
  }

  else if (var_name.substr(1 , 4) == "call")
  {
    var_name = pairForStringArrAndName.first;     // %tempstr11111,
    // var_type = "string";
    // var_type_length = 5;
    // var_type_print_length = 4;

    isString = true;
  }

  string tempsVarName = var_name.substr(1);                     // %var_name, -> var_name,
  string tempPtrStr = var_name.substr(0 , var_name.size() - 1); // %var_name, -> %var_name

  // main의 반환인 retval 같은 경우 변수 선언을 하지 않아도 값이 할당되고 기록됨
  // 실제 코드에 작성되지 않은 부분이므로 line, col 을 (0, 0) 으로 설정
  // -> 현재 코드 line의 debug 정보가 있다면 그것을 출력, 아니라면 (0, 0)
  LineNum = "0";
  ColNum = "0";
  if (debugNum.size() > 1)
  {
    LineNum = "";
    ColNum = "";
    findLineAndColNumber(targetFileName , debugNum);
  }

  // 배열의 초기 할당의 기록을 위한 작업
  if (isResetArr)
  {
    // vectorForResetArr에 저장된 var_name 과 store의 var_name이 같을 때    
    // tempsVarName 재설정
    if (vectorForResetArr.back().first == var_name.substr(0 , var_name.size() - 1))
    {
      cout << "start print vectorForResetArr       ";
      tempsVarName = var_name_ForResetArr.substr(1);
    }
  }

  // 키워드 변수명 변수타입 기록
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << keyWord.size() + 2 << " x i8], [" << keyWord.size() + 2 << " x i8]* @.str.op_" << keyWord << ", i32 0, i32 0))\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << tempsVarName.size() + 1 << " x i8], [" << tempsVarName.size() + 1 << " x i8]* @__const_culry." << tempsVarName << " i64 0, i64 0))\n";

  if (isString)
    output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";
  else
    output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_length << " x i8], [" << var_type_length << " x i8]* @.str." << var_type << ", i64 0, i64 0))\n";

  // ===================== 함수로 만들기 ============================================================
  if (isArr)
  {
    // 배열의 차수를 출력하겠다는 의미로 isArr를 출력
    output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";

    // 배열의 모든 차수 출력
    cout << "=========== print previoustempv  : ";

    for (int i = 0; i < previoustempv.size(); i++)
    {
      string previoustempv_arrnum = previoustempv[i][previoustempv[i].size() - 4];
      output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << previoustempv_arrnum.substr(0 , previoustempv_arrnum.size() - 1) << ")\n";
      cout << previoustempv_arrnum << " ";
    }
    cout << "\n";
    // 저장된 차수 모두 삭제
    while (!previoustempv.empty())
    {
      previoustempv.pop_back();
    }
  }
  else if (isResetArr)
  {
    // 배열의 차수를 출력하겠다는 의미로 isArr를 출력
    output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";

    cout << "---------- print vectorForResetArr_arrnum  : ";


    for (int i = 0; i < vectorForResetArr.size(); i++)
    {
      string vectorForResetArr_arrnum = vectorForResetArr[i].second;
      output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << vectorForResetArr_arrnum << ")\n";
      cout << vectorForResetArr_arrnum << " ";
    }
    cout << " and ";
    cout << vectorForResetArr.back().second << " is removed --------\n";
    vectorForResetArr.pop_back();
    var_type_for_arr = var_type;
  }
  else if (isString)
  {
    var_type_for_arr = "%\"class.std::__1::basic_string\"";
    output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << pairForStringArrAndName.second.substr(0 , pairForStringArrAndName.second.size() - 1) << ")\n";
  }

  else
  {
    // var_name 가 arrayidx 가 아닌 경우
    var_type_for_arr = var_type;
  }



  // 값 포인터 라인 컬럼 기록
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << var_type_for_arr << "* " << tempPtrStr << ")\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << LineNum << ")\n";
  output_printf_fstream << "%temp_var_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 " << ColNum << ")\n";

  cout << " >>>>>>> write is completed!!!    \n";
  cout << " >>>>>>> var_name is " << var_name << "\n";
  cout << " >>>>>>> var_type is " << var_type << "\n";
  cout << "keyWord is " << keyWord << "!! current Function && Line number is =====> " << currentFunc << " " << LineNum << "\n\n\n";

  return;
}

void writeArrayIndex(bool isArr , bool isResetArr)
{

  return;
}

// 디버거 정보(line, column) 을 읽어오는 함수
void findLineAndColNumber(string txtName , string debugNum)
{
  ifstream FLACNFstream;
  vector<string> FLACNv;
  string FLACNLine;

  FLACNFstream.open(txtName , std::ios_base::out);

  if (FLACNFstream.is_open())
  {
    while (getline(FLACNFstream , FLACNLine))
    {
      // output_printf_fstream << FLACNLine << "\n";
      stringstream FLACNFss(FLACNLine);
      vector<string> FLACNFtempv;
      string FLACNFword;

      while (getline(FLACNFss , FLACNFword , ' '))
      {
        FLACNFtempv.push_back(FLACNFword);
      }

      for (int i = 0; i < FLACNFtempv.size(); i++)
      {
        if (FLACNFtempv[i] == debugNum && FLACNFtempv[i + 1] == "=")
        {

          LineNum = FLACNFtempv[i + 3].substr(0 , FLACNFtempv[i + 3].size() - 1);
          ColNum = FLACNFtempv[i + 5].substr(0 , FLACNFtempv[i + 5].size() - 1);

          break;
        }
      }
    }
  }
  else
  {
    cout << txtName << " 파일을 열 수 없습니다\n";
  }

  return;
}

// 파일을 읽는 함수
void writeTxtFile(string txtName)
{
  ifstream tempTxtFstream;
  vector<string> WTFv; // == WriteTxtFileVector
  string WTFLine;

  tempTxtFstream.open(txtName , std::ios_base::out);

  if (tempTxtFstream.is_open())
  {
    output_printf_fstream << "; " << txtName << " File Write Start\n";

    while (getline(tempTxtFstream , WTFLine))
    {
      output_printf_fstream << WTFLine << "\n";
    }

    output_printf_fstream << "; " << txtName << " File Write End\n";
  }
  else
  {
    cout << txtName << " 파일을 열 수 없습니다\n";
  }

  return;
}

int main()
{
  cout << "***************************   record 2 start   ***************************\n";

  string line;
  string line2;
  vector<string> v;

  output_printf_fstream.open(output_printf_FileName , std::ios_base::out);

  str_fstream.open(strFileName , std::ios_base::out);

  // 최초 파일 열기, string alloca 모두 체크
  // printf 문 추가
  if (targetfile_fstream.is_open())
  {
    while (getline(targetfile_fstream , line))
    {
      stringstream ss(line);
      vector<string> tempv;
      string word;

      while (getline(ss , word , ' '))
      {
        tempv.push_back(word);
      }
      tempv.push_back("enter");       // 마지막 부분임을 알기 위해 enter 추가

      for (int i = 0; i < tempv.size(); i++)
      {
        if (tempv[i] == "enter")
          output_printf_fstream << "\n";

        // string 함수에서 line, colnum을 받는 인자 추가
        else if (tempv[i] == "define" && tempv[i + 1] == "internal"
          && 
          (
            (tempv[i + 2] == "%\"class.std::__1::basic_string\"*" && tempv[i + 3] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*")
            || (tempv[i + 6] == "%\"class.std::__1::basic_string\"*" && tempv[i + 7] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"*")
            || (tempv[i + 2] == "zeroext" && tempv[i + 4] == "@_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%\"class.std::__1::basic_string\"*")
            )
          )
        {
          // if (tempv[i + 3] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*")
          // {
          while (tempv[i] != "%__s)" && tempv[i] != "%__rhs)")
          {
            output_printf_fstream << tempv[i] << " ";
            i++;
          }

          // %__s) -> %__s, 
          output_printf_fstream << tempv[i].substr(0, tempv[i].size() - 1) << ", ";
          output_printf_fstream << "i32" << " ";
          output_printf_fstream << "%__line," << " ";
          output_printf_fstream << "i32" << " ";
          output_printf_fstream << "%__colnum)" << " ";

          // i ++;
        }

        // else
        //   output_printf_fstream << tempv[i] << " ";
// 
        // }
        //  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %str, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !1775 
        // string call 함수에 디버그 정보 인자 전달
        else if (
          (tempv[i] == "call" || tempv[i] == "invoke") 
          && (tempv[i + 1] == "%\"class.std::__1::basic_string\"*" || tempv[i + 5] == "%\"class.std::__1::basic_string\"*" || tempv[i + 1] == "zeroext")
          && (   tempv[i + 2] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*"
              || tempv[i + 6] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"*"
              || tempv[i + 3] == "@_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%\"class.std::__1::basic_string\"*"
            )
          )
        {


          // invoke 시 사용
          string templine;
          vector<string> templinev;

          // 항상 디버그 정보 존재
          if (tempv[i] == "call")
          {
            LineNum = "";
            ColNum = "";
            findLineAndColNumber(targetFileName , tempv[tempv.size() - 2]);

            while (tempv[i] != "0))," && tempv[i] != "0))")
            {
              output_printf_fstream << tempv[i] << " ";
              i++;
            }
          }
          else
          {

            getline(targetfile_fstream , templine);
            stringstream tempss(templine);

            string tempword;
            while (getline(tempss , tempword , ' '))
            {
              templinev.push_back(tempword);
            }

            cout << "templinev print start :   0000000000000 ";
            for (int k = 0; k < templinev.size(); k++)
            {
              cout << templinev[k] << " ";
            }
            cout << "templinev print end :  \n\n\n ";
            cout << templinev[templinev.size() - 1];

            LineNum = "";
            ColNum = "";
            findLineAndColNumber(targetFileName , templinev[templinev.size() - 1]);

            cout << LineNum << " ffffffffffffff  " << ColNum << "\n";
            while (tempv[i] != "0))")
            {
              output_printf_fstream << tempv[i] << " ";
              i++;
            }
          }


          // 0)), -> 0), i32 LineNum, i32 ColNum),
          output_printf_fstream << "0)," << " ";
          output_printf_fstream << "i32" << " ";
          output_printf_fstream << LineNum << ", ";
          output_printf_fstream << "i32" << " ";

          if (tempv[4] == "call")
          {
            if(tempv[5] == "zeroext")
            {
              output_printf_fstream << ColNum << ") ";
            }
            else
            {
              output_printf_fstream << ColNum << "), ";
            }

            while(i < tempv[i].size())
            {
              output_printf_fstream << tempv[i] << " ";
              i ++;
            }
          }
          else if (tempv[4] == "invoke")
          {
            output_printf_fstream << ColNum << ")\n";

            for (int k = 0; k < templinev.size(); k++)
            {
              output_printf_fstream << templinev[k] << " ";
            }
          }
          // i ++;


        }

        else
          output_printf_fstream << tempv[i] << " ";
      }

      // tempv의 단어를 탐색하며 keywrod에 맞는 작업 수행
      for (int i = 0; i < tempv.size(); i++)
      {

        // define 인 경우 새로운 함수의 시작, 현재 함수명을 저장하며 변수 기록 시 사용
        if (tempv[i] == "define")
        {
          currentFunc_returnType = tempv[i + 1];
          currentFunc = "";
          while (tempv[i][0] != '@')
          {
            i++;
          }

          for (int j = 1; tempv[i][j] != '('; j++)
            currentFunc += tempv[i][j];
          currentFunc += '_';

        }

        // 마찬가지로 새로운 함수의 시작, 기록 정보를 write하기 위해 txt파일의 주소를 불러옴
        else if (tempv[i] == "entry:")
        {
          // 함수 시작에 loadfile 추가
          output_printf_fstream << "%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8\n";

          cout << currentFunc << "\n\n\n";

          // string 과 관련된 함수일 경우 출력을 위한 코드를 함수 안에 추가, 함수 인자에 line colnum 을 추가해야함
          if (currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc_"
            || currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc_"
            )
          {
            output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0))\n";
            output_printf_fstream << "%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";
            
            // String 값 출력 시작
            output_printf_fstream << "%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0))\n";
            
            output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* %__s)\n";
            
            // String 값 출력 끝
            output_printf_fstream << "%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0))\n";

            output_printf_fstream << "%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %\"class.std::__1::basic_string\"* %this)\n";
            output_printf_fstream << "%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line)\n";
            output_printf_fstream << "%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum)\n";
          }

          // %this -> %__lhs  %__s ->rhs
          else if(currentFunc == "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6__")
          {
            output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0))\n";
            output_printf_fstream << "%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";
            
            // String 값 출력 시작
            output_printf_fstream << "%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0))\n";

            output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* %__rhs)\n";
            
            // String 값 출력 끝
            output_printf_fstream << "%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0))\n";

            output_printf_fstream << "%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %\"class.std::__1::basic_string\"* %__lhs)\n";
            output_printf_fstream << "%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line)\n";
            output_printf_fstream << "%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum)\n";
          }

        }

        // 변수의 할당 및 불러오기, store 및 load 일 때 새로 할당된 값 또는 불러온 값을 기록
        else if ((tempv[i] == "store" && tempv[6] != "getelementptr") || tempv[i] == "load")
        {
          // 기록할 필요 없는 기본 내장 함수 건너뜀
          if (currentFunc_returnType == "linkonce_odr" || currentFunc_returnType == "internal")
            continue;

          // string type일 때 건너뜀
          if (tempv[6] == "%exn.slot," || tempv[6] == "%ehselector.slot," || tempv[2] == "%exn" || tempv[2] == "%sel" || tempv[6] == "%saved_stack," || tempv[7] == "%saved_stack,")
            continue;

          string var_name;    // 변수 이름
          string var_type;    // 변수 타입
          string debugNum;    // 현재 변수의 line, column 정보 

          if (tempv[i] == "store")    // store 일 경우, 지정된 형식에서 값을 가져옴
          {
            cout << "find store  !!!!\n";

            var_name = tempv[6];  // %randomNum,
            var_type = tempv[3];  // i32  포인터 타입은 * 만 붙히면 됨
            debugNum = tempv[10]; // !864
          }
          else if (tempv[i] == "load")  // load 일 경우, 지정된 형식에서 값을 가져와 addPrintfInstruction 함수에 사용할 수 있도록 갈무리
          {
            cout << "find load  !!!!!!!\n";

            string temp_var_type = tempv[5];

            var_type = temp_var_type.substr(0 , temp_var_type.size() - 1);

            var_name = tempv[7];  // %randomNum,
            debugNum = tempv[11]; //  !864

            if(var_name == "getelementptr")
            {
              // 문자열 배열 경우 아직 기록 불가능
              continue;
            }
          }

          // 포인터 아직 지원 안되므로 넘어감
          // if(var_type.substr(var_type.size() - 3, var_type.size() - 1) == "**")
          //   continue;

          addPrintfInstruction(var_name , var_type , debugNum , currentFunc , tempv[i]);  // 변수의 정보를 바탕으로 기록 코드 작성
        }

        else if (tempv[i] == "target" && tempv[i + 1] == "triple")  // 기록 정보 저장에 사용되는 ll 코드 추가
        {
          cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@@ record_above txt file write start @@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";
          writeTxtFile("record_above.txt");
          cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@@ record_above txt file write end   @@@@@@@@@@@@@@@@@@@@@@@@@@@@ \n";
        }

        // 새로운 변수가 선언된 경우(메모리 할당된 경우), 변수명 출력을 위해 변수명 크기에 맞게 전역 string 선언 코드 추가
        else if (tempv[i] == "alloca")
        {
          cout << "find alloca!   ";
          cout << tempv[i - 2] << "  ";

          string tempallocastr = tempv[i - 2].substr(1);

          cout << " current Function name is =====> ";
          cout << currentFunc << "   and  current alloca name is ----->>>> " << tempallocastr << "\n";
          // str_fstream << "@__const." << currentFunc << "var_name_" << tempallocastr << " = private unnamed_addr constant [" << tempallocastr.size() + 2 << " x i8] c\"" << tempallocastr << " \\00\", align 1\n";
          // str_fstream << "@__const_culry.1" << tempallocastr << " = private unnamed_addr constant [" << tempallocastr.size() + 2 << " x i8] c\"" << tempallocastr << " \\00\", align 1\n";
          
          if(checkDuplVarName.find(tempallocastr) == checkDuplVarName.end() )
          {
            checkDuplVarName.insert(make_pair(tempallocastr, 1));
            str_fstream << "@__const_culry." << tempallocastr << " = private unnamed_addr constant [" << tempallocastr.size() + 2 << " x i8] c\"" << tempallocastr << " \\00\", align 1\n";  
          }
          else
          {
            checkDuplVarName[tempallocastr] ++;
          }
        }

        // 전역 변수 선언시 변수명 기록
        // 함수 하나 만들어야 할 듯
        // 전역 선언 예시) @thread_Cnt = global i32 0, align 4, !dbg !1787 
        else if (tempv[0][0] == '@' && tempv[2] == "global")
        {
          string tempallocastr = tempv[0].substr(1);
          
          if (checkDuplVarName.find(tempallocastr) == checkDuplVarName.end())
          {
            checkDuplVarName.insert(make_pair(tempallocastr , 1));
            str_fstream << "@__const_culry." << tempallocastr << " = private unnamed_addr constant [" << tempallocastr.size() + 2 << " x i8] c\"" << tempallocastr << " \\00\", align 1\n";
          }
          else
          {
            checkDuplVarName[tempallocastr]++;
          }
        }

        // cin 함수를 사용한 경우, 새로운 값 할당과 같으므로 store와 같은 기록 진행을 위한 작업 진행
        else if (tempv[i] == "@_ZNSt3__13cinE,")
        {
          cout << "find cin\n";
          if (tempv[4] == "call")
          {
            // 코드 예제: %call = call nonnull align 8 dereferenceable(16) %"class.std::__1::basic_istream"* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(%"class.std::__1::basic_istream"* @_ZNSt3__13cinE, i32* nonnull align 4 dereferenceable(4) %num1), !dbg !987
            // invork  인 경우 따로 만들어야 함

            string temp_var_name = tempv[tempv.size() - 4]; // %randomNum),
            string temp_var_type = tempv[i + 1];            // type*
            string debugNum = tempv[tempv.size() - 2];      //  !864

            string var_name;
            string var_type;

            var_name = temp_var_name.substr(0 , temp_var_name.size() - 2);
            var_name += ",";

            var_type = temp_var_type.substr(0 , temp_var_type.size() - 1);

            // cin으로 새로 값을 할당하는 것이므로 keyword는 store로 설정
            addPrintfInstruction(var_name , var_type , debugNum , currentFunc , "store");

          }

          // 
          else if (tempv[4] == "invoke")
          {
            // cin 이고 invoke 인 경우
            cout << "find cin invoke\n";
          }
        }

        else if (tempv[4] == "call" && tempv[i] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm(%\"class.std::__1::basic_string\"*")
        {
          //string 을 배열로 접근할 때, ex) str[3] = 5;
          pairForStringArrAndName.first = tempv[i + 1];
          pairForStringArrAndName.second = tempv[i + 3];

          cout << "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n";
          cout << pairForStringArrAndName.first << " " << pairForStringArrAndName.second << "\n";
        }

        // 배열의 store, load 인 경우, 기록을 위한 작업 진행
        else if (tempv[2][0] == '%' && tempv[4] == "getelementptr")
        {
          // %arrayidx = getelementptr inbounds 의 형식일 때
          // 배열의 store 또는 load
          string tempStrForCompareArrayidx = tempv[2].substr(1 , 8);
          if (tempStrForCompareArrayidx == "arrayidx")
          {
            // cout << tempv[2] << " " << tempv[tempv.size() - 4] << "\n";

            // 차수를 가져온다
            string tempArrIndexNum = tempv[tempv.size() - 4].substr(0 , tempv[tempv.size() - 4].size() - 1);

            // 차수 기록이 비어있거나     새로운 차수인 경우 
            if (previoustempv.empty() || (previoustempv.back()[2] != tempv[2]))
            {
              previoustempv.push_back(tempv);
              // cout << "find arrayidx " << tempArrIndexNum << "\n";
            }
          }

          // 배열의 초기값 할당인 경우, 형식은 %자연수 이므로 그것을 탐지하여 기록을 위한 작업 진행
          else if ((tempv[2][1] == '0' || tempv[2][1] == '1' || tempv[2][1] == '2' || tempv[2][1] == '3' || tempv[2][1] == '4' || tempv[2][1] == '5' || tempv[2][1] == '6' || tempv[2][1] == '7' || tempv[2][1] == '8' || tempv[2][1] == '9'))
          {
            //     // %11 = bitcast i8* %10 to <{ <{ i32, i32, [13 x i32] }>, <{ i32, [14 x i32] }>, <{ i32, [14 x i32] }> }>*, !dbg !1009
            //     // %12 = getelementptr inbounds <{ <{ i32, i32, [13 x i32] }>, <{ i32, [14 x i32] }>, <{ i32, [14 x i32] }> }>, <{ <{ i32, i32, [13 x i32] }>, <{ i32, [14 x i32] }>, <{ i32, [14 x i32] }> }>* %11, i32 0, i32 0, !dbg !1009
            //     // %13 = getelementptr inbounds <{ i32, i32, [13 x i32] }>, <{ i32, i32, [13 x i32] }>* %12, i32 0, i32 0, !dbg !1009
            // tempv[6] == "<{" && !!!!! 무조건 <{ 가 있지 않으므로 주의

            if (vectorForResetArr.empty() || vectorForResetArr.back().first != tempv[2])  // 비어있거나 중복되지 않는다면
            {
              // 현재 line에서 %11을 탐색
              string tempStrForCompareResetArrIndex;
              for (int j = 3; ; j++)
              {
                if (tempv[j][0] == '%')
                {
                  tempStrForCompareResetArrIndex = tempv[j].substr(0 , tempv[j].size() - 1);
                  break;
                }
              }

              if (!vectorForResetArr.empty()) // 비어 있지 않을 때
              {
                // 연결되어 있지 않다면 (연결된 차수가 아니라면) 새로운 입력을 받기 위해 기존 값들 모두 제거
                if (tempStrForCompareResetArrIndex != vectorForResetArr.back().first)
                {
                  cout << "tempStrForCompareResetArrIndex : " << tempStrForCompareResetArrIndex << " vectorForResetArr.back().first : " << vectorForResetArr.back().first << "              5555555555555\n";
                  // while (!vectorForResetArr.empty()) // 
                  {
                    vectorForResetArr.pop_back();
                  }
                }
              }

              // 변수명과 차수 저장, (%12, 0)
              vectorForResetArr.push_back(make_pair(tempv[2] , tempv[tempv.size() - 4].substr(0 , tempv[tempv.size() - 4].size() - 1)));
              cout << vectorForResetArr.back().first << "    " << vectorForResetArr.back().second << "   stored!!!!!!\n";
            }
          }

        }

        // 배열을 불러올 때, 배열이름을 저장하기 위한 작업 수행
        else if (tempv[i] == "bitcast" && tempv[tempv.size() - 5] == "to")
        {
          var_name_ForResetArr = tempv[tempv.size() - 6];
          var_name_ForResetArr += ",";
          cout << var_name_ForResetArr << " mmmmmmmmmmm \n";
        }

        else
        {

        }
      }
    } // while end
  }

  // 열었던 파일 모두 닫음
  str_fstream.close();
  output_printf_fstream.close();
  targetfile_fstream.close();
  output_result_fstream.close();

  cout << "\n\n";
  cout << "target file name is " << targetFileName << "\n";
  cout << "***************************   record 2 end     ***************************\n";
  return 0;
}
