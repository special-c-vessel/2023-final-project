
/*==========================================================================================

==========================================================================================*/

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
map<string , int> checkDuplVarName;

string output_result_FileName("record_result.ll"); // 실행시켜야 할 파일 이름, record_AddPrintf와 record_strfile을 결합한 것
fstream output_result_fstream;

string output_printf_FileName("record_AddPrintf.ll"); // 기록을 위한 fprintf 코드를 추가한 결과
fstream output_printf_fstream;

string targetFileName("culry.ll"); // 기록하고자 하는 타겟의 ll 파일
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

string vector_type_num;

struct checkDeclare
{
    bool checkString_base;
    bool checkString_struct_anon;
    bool checkString_length_Func;
    bool checkString_rep;
    bool checkString_pair;
    /*
        %"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
        %union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
        %"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
    */

    string compressed_pair_Num;
    string compressed_pair_elem_Num;
};

checkDeclare checkDel;

int globalNum = 0;

int maxPtrCnt = 0;
int maxNumValueName = 0;

void findLineAndColNumber(string , string);
void addPrintfInstruction(string , string , string , string , string);
void writeLLFile(string);
void writeArrayIndex(bool isArr , bool isResetArr);
void writeDeclare();

// 변수의 기록을 위한 (코드를 삽입하는) 함수
void addPrintfInstruction(string var_name , string var_type , string debugNum , string func_name , string keyWord) // string currentFunc // string var_type
{

    // if (var_type == "i8*" || var_type == "i8**")
    //     return;


    //    %randomNum,       i32
    globalNum++;
    cout << "addPrintfInstruction start!!!!   globalNum count : " << globalNum << "  ################################ \n";

    int pointerSize = var_name.size() - 1;
    int templocalNum = 1;

    int var_type_length;
    int var_type_print_length;

    int var_ptr_cnt = 0;

    string var_type_for_arr;

    bool isArr = false;         // 배열인 경우              arr[1][2] = 5;
    bool isResetArr = false;    // 배열의 초기값 할당인 경우   int arr[5][5] = {{1, 2}, {3, 4}};
    bool isString = false;      // string 인 경우

    if(var_type[var_type.size() - 1] == '*')
    {
        for(int i = var_type.size() - 1; i > 0; i --)
        {
            if(var_type[i] == '*')
                var_ptr_cnt ++;
            else
                break;
        }
    }

    maxPtrCnt = max(var_ptr_cnt, maxPtrCnt);

    // 각 타입에 맞게 타입 출력 길이를 설정
    if (var_type.substr(0, 2) == "i8")       // char
    {
        var_type_length = 6;
        var_type_print_length = 4;
    }
    else if (var_type.substr(0, 3) == "i16") // short
    {
        var_type_length = 7;
        var_type_print_length = 4;
    }
    else if (var_type.substr(0, 3) == "i32") // int
    {
        var_type_length = 5;
        var_type_print_length = 4;
    }
    else if (var_type.substr(0, 3) == "i64") // long long int
    {
        var_type_length = 15;
        var_type_print_length = 5;
    }
    else if (var_type.substr(0, 5) == "float") // float
    {
        var_type_length = 7;
        var_type_print_length = 4;
    }
    else if (var_type.substr(0, 6) == "double") // double
    {
        var_type_length = 8;
        var_type_print_length = 5;
    }
    // else    // 포인터인 경우
    // {
    //     var_type_length = 4;
    //     var_type_print_length = 4;
    // }

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
        maxNumValueName = max(maxNumValueName, stoi(var_name.substr(1 , var_name.size() - 1)));   //// %var_name, -> var_name

        // if(tempv[7] != "getelementptr")
        if(!vectorForResetArr.empty())
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
    output_printf_fstream << "%temp_KeyWord_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << keyWord.size() + 2 << " x i8], [" << keyWord.size() + 2 << " x i8]* @.str.op_" << keyWord << ", i32 0, i32 0))\n";
    output_printf_fstream << "%temp_ValName_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << tempsVarName.size() + 1 << " x i8], [" << tempsVarName.size() + 1 << " x i8]* @__const_culry." << tempsVarName << " i64 0, i64 0))\n";

    // type 출력 

    // type이 pointer 인 경우 
    if(var_ptr_cnt > 0)
    {
        // %temp_varVal_10_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32** %var_10_value) 
        // output_printf_fstream << "%temp_varVal_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
        // var_type_print_length = 4;
        // var_type = "ptr";
    }

    if (isString)
        output_printf_fstream << "%temp_ValTYpe_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";
    else
    {
        if(var_ptr_cnt > 0)
        {
            string temp_var_type;
            int temp_var_type_cnt = 0;
            for(int i = 0; i < var_type.size(); i ++)
            {
                if(var_type[i] == '*')
                    {
                        temp_var_type += 'p';
                        temp_var_type_cnt ++;
                    }
                else
                    temp_var_type += var_type[i];
            }
            output_printf_fstream << "%temp_ValTYpe_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_length + temp_var_type_cnt << " x i8], [" << var_type_length + temp_var_type_cnt << " x i8]* @.str." << temp_var_type << ", i64 0, i64 0))\n";
        }
        else
        {
            output_printf_fstream << "%temp_ValTYpe_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_length << " x i8], [" << var_type_length << " x i8]* @.str." << var_type << ", i64 0, i64 0))\n";

        }

    }

    // cout << "\n\n\n\n\n\n\n\n\n\n var_type is :  ";
    // cout << var_type << "\n\n\n\n\n\n\n\n\n";


    // ===================== 함수로 만들기 ============================================================
    if (isArr)
    {
        // 배열의 차수를 출력하겠다는 의미로 isArr를 출력
        output_printf_fstream << "%temp_isArr_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";

        // 배열의 모든 차수 출력
        cout << "=========== print previoustempv  : ";

        for (int i = 0; i < previoustempv.size(); i++)
        {
            string previoustempv_arrnum = previoustempv[i][previoustempv[i].size() - 4];
            output_printf_fstream << "%temp_ArrayIndex_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << previoustempv_arrnum.substr(0 , previoustempv_arrnum.size() - 1) << ")\n";
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
        output_printf_fstream << "%temp_ArrayIndex_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";

        cout << "---------- print vectorForResetArr_arrnum  : ";


        for (int i = 0; i < vectorForResetArr.size(); i++)
        {
            string vectorForResetArr_arrnum = vectorForResetArr[i].second;
            output_printf_fstream << "%temp_ArrayIndex_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << vectorForResetArr_arrnum << ")\n";
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
        output_printf_fstream << "%temp_IsString_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << pairForStringArrAndName.second.substr(0 , pairForStringArrAndName.second.size() - 1) << ")\n";
    }

    else
    {
        // var_name 가 arrayidx 가 아닌 경우
        var_type_for_arr = var_type;
    }



    // 값 포인터 라인 컬럼 기록
    if(var_ptr_cnt > 0)
    {
        // %temp_varVal_10_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32** %var_10_value) 
        // output_printf_fstream << "%temp_varVal_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
        // var_type_print_length = 4;
        // var_type = "ptr";
        output_printf_fstream << "%temp_varVal_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr" << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
    }
    else
    {
        output_printf_fstream << "%temp_varVal_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";

    }
    output_printf_fstream << "%temp_varPtr_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << var_type_for_arr << "* " << tempPtrStr << ")\n";
    output_printf_fstream << "%temp_varLine_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << LineNum << ")\n";
    output_printf_fstream << "%temp_varColnum_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 " << ColNum << ")\n";

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
void writeLLFile(string txtName)
{
    ifstream tempTxtFstream;
    vector<string> WTFv; // == writeLLFileVector
    string WTFLine;

    tempTxtFstream.open(txtName , std::ios_base::out);

    if (tempTxtFstream.is_open())
    {
        output_printf_fstream << "; " << txtName << " File Write Start\n";

        while (getline(tempTxtFstream , WTFLine))
        {
            output_printf_fstream << WTFLine << "\n";
        }

        for(int i = 1; i <= maxPtrCnt; i ++)
        {
            string p = "";
            string star = "";
            for(int j = 0; j < i; j ++)
            {
                p += "p";
                star += '*';
            }
            output_printf_fstream << "@.str.i8" << p << " = private unnamed_addr constant [" << 6 + i << " x i8]  c\"char" << p << " \\00\", align 1" << "\n";
            output_printf_fstream << "@.str.i16" << p << " = private unnamed_addr constant [" << 7 + i << " x i8]  c\"short" << p << " \\00\", align 1" << "\n";
            output_printf_fstream << "@.str.i32" << p << " = private unnamed_addr constant [" << 5 + i << " x i8]  c\"int" << p << " \\00\", align 1" << "\n";
            output_printf_fstream << "@.str.i64" << p << " = private unnamed_addr constant [" << 15 + i << " x i8]  c\"long_long_int" << p << " \\00\", align 1" << "\n";
            output_printf_fstream << "@.str.float" << p << " = private unnamed_addr constant [" << 7 + i << " x i8]  c\"float" << p << " \\00\", align 1" << "\n";
            output_printf_fstream << "@.str.double" << p << " = private unnamed_addr constant [" << 8 + i << " x i8]  c\"double" << p << " \\00\", align 1" << "\n";
        }

        for(int i = 0; i <= maxNumValueName; i ++)
        {
            string valName = to_string(i);
            output_printf_fstream << "@__const_culry." << valName << " = private unnamed_addr constant [" << valName.size() + 2 << " x i8] c\"" << valName << " \\00\", align 1"<< "\n";
            //@__const_culry.arr = private unnamed_addr constant [5 x i8] c"arr \00", align 1 
        }

        output_printf_fstream << "; " << txtName << " File Write End\n";
    }
    else
    {
        cout << txtName << " 파일을 열 수 없습니다\n";
    }

    return;
}

void writeDeclare()
{
    output_printf_fstream << "; ===========================================================\n";
    output_printf_fstream << "; =================   writeDeclare start =================   \n";
    output_printf_fstream << "; ===========================================================\n";

    if (checkDel.checkString_base == false)
    {
        output_printf_fstream << "%\"class.std::__1::basic_string\" = type { %\"class.std::__1::__compressed_pair\" }" << "\n";

        // output_printf_fstream << "%\"struct.std::__1::__default_init_tag\" = type { i8 }" << "\n";
        // output_printf_fstream << "%\"class.std::__1::__basic_string_common\" = type { i8 }" << "\n";
        // output_printf_fstream << "%\"struct.std::__1::__compressed_pair_elem.0\" = type { i8 }" << "\n";
        // output_printf_fstream << "%\"class.std::__1::allocator\" = type { i8 }" << "\n";
        // output_printf_fstream << "%\"struct.std::__1::__non_trivial_if\" = type { i8 }" << "\n";

    }

    if (checkDel.checkString_pair == false)
    {
        output_printf_fstream << "%\"class.std::__1::__compressed_pair\" = type { %\"struct.std::__1::__compressed_pair_elem\" }" << "\n";
        output_printf_fstream << "%\"struct.std::__1::__compressed_pair_elem\" = type { %\"struct.std::__1::basic_string<char>::__rep\" }" << "\n";

    }

    if (checkDel.checkString_struct_anon == false)
    {
        output_printf_fstream << "%\"struct.std::__1::basic_string<char>::__short\" = type { [23 x i8], %struct.anon }" << "\n";
        output_printf_fstream << "%struct.anon = type { i8 }" << "\n";
    }

    if (checkDel.checkString_rep == false)
    {
        output_printf_fstream << "%\"struct.std::__1::basic_string<char>::__rep\" = type { %union.anon }" << "\n";
        output_printf_fstream << "%union.anon = type { %\"struct.std::__1::basic_string<char>::__long\" }" << "\n";
        output_printf_fstream << "%\"struct.std::__1::basic_string<char>::__long\" = type { i8*, i64, i64 }" << "\n";
    }

    if (checkDel.checkString_length_Func == false && checkDel.checkString_base == true)
    {
        writeLLFile("record_above_stringLength.ll");

        //_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
        output_printf_fstream << "define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%\"class.std::__1::basic_string\"* %this) #10000003 align 2 {" << "\n";
        output_printf_fstream << "entry:" << "\n";
        output_printf_fstream << "  %this.addr = alloca %\"class.std::__1::basic_string\"*, align 8" << "\n";
        output_printf_fstream << "  store %\"class.std::__1::basic_string\"* %this, %\"class.std::__1::basic_string\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %this1 = load %\"class.std::__1::basic_string\"*, %\"class.std::__1::basic_string\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %__r_ = getelementptr inbounds %\"class.std::__1::basic_string\", %\"class.std::__1::basic_string\"* %this1, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %call = call nonnull align 8 dereferenceable(24) %\"struct.std::__1::basic_string<char>::__rep\"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"* %__r_) #10000007" << "\n";
        output_printf_fstream << "  %0 = getelementptr inbounds %\"struct.std::__1::basic_string<char>::__rep\", %\"struct.std::__1::basic_string<char>::__rep\"* %call, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %__s = bitcast %union.anon* %0 to %\"struct.std::__1::basic_string<char>::__short\"*" << "\n";
        output_printf_fstream << "  %1 = getelementptr inbounds %\"struct.std::__1::basic_string<char>::__short\", %\"struct.std::__1::basic_string<char>::__short\"* %__s, i32 0, i32 1" << "\n";
        output_printf_fstream << "  %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %2 = load i8, i8* %__size_, align 1" << "\n";
        output_printf_fstream << "  %conv = zext i8 %2 to i64" << "\n";
        output_printf_fstream << "  %and = and i64 %conv, 128" << "\n";
        output_printf_fstream << "  %tobool = icmp ne i64 %and, 0" << "\n";
        output_printf_fstream << "  ret i1 %tobool" << "\n";
        output_printf_fstream << "}" << "\n";

        // _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
        output_printf_fstream << "define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%\"class.std::__1::basic_string\"* %this) #10000003 align 2 {" << "\n";
        output_printf_fstream << "entry:" << "\n";
        output_printf_fstream << "  %this.addr = alloca %\"class.std::__1::basic_string\"*, align 8" << "\n";
        output_printf_fstream << "  store %\"class.std::__1::basic_string\"* %this, %\"class.std::__1::basic_string\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %this1 = load %\"class.std::__1::basic_string\"*, %\"class.std::__1::basic_string\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %__r_ = getelementptr inbounds %\"class.std::__1::basic_string\", %\"class.std::__1::basic_string\"* %this1, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %call = call nonnull align 8 dereferenceable(24) %\"struct.std::__1::basic_string<char>::__rep\"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"* %__r_) #10000007" << "\n";
        output_printf_fstream << "  %0 = getelementptr inbounds %\"struct.std::__1::basic_string<char>::__rep\", %\"struct.std::__1::basic_string<char>::__rep\"* %call, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %__l = bitcast %union.anon* %0 to %\"struct.std::__1::basic_string<char>::__long\"*" << "\n";
        output_printf_fstream << "  %__size_ = getelementptr inbounds %\"struct.std::__1::basic_string<char>::__long\", %\"struct.std::__1::basic_string<char>::__long\"* %__l, i32 0, i32 1" << "\n";
        output_printf_fstream << "  %1 = load i64, i64* %__size_, align 8" << "\n";
        output_printf_fstream << "  ret i64 %1" << "\n";
        output_printf_fstream << "}" << "\n";

        //_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
        output_printf_fstream << "define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%\"class.std::__1::basic_string\"* %this) #10000003 align 2 {" << "\n";
        output_printf_fstream << "entry:" << "\n";
        output_printf_fstream << "  %this.addr = alloca %\"class.std::__1::basic_string\"*, align 8" << "\n";
        output_printf_fstream << "  store %\"class.std::__1::basic_string\"* %this, %\"class.std::__1::basic_string\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %this1 = load %\"class.std::__1::basic_string\"*, %\"class.std::__1::basic_string\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %__r_ = getelementptr inbounds %\"class.std::__1::basic_string\", %\"class.std::__1::basic_string\"* %this1, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %call = call nonnull align 8 dereferenceable(24) %\"struct.std::__1::basic_string<char>::__rep\"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"* %__r_) #10000007" << "\n";
        output_printf_fstream << "  %0 = getelementptr inbounds %\"struct.std::__1::basic_string<char>::__rep\", %\"struct.std::__1::basic_string<char>::__rep\"* %call, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %__s = bitcast %union.anon* %0 to %\"struct.std::__1::basic_string<char>::__short\"*" << "\n";
        output_printf_fstream << "  %1 = getelementptr inbounds %\"struct.std::__1::basic_string<char>::__short\", %\"struct.std::__1::basic_string<char>::__short\"* %__s, i32 0, i32 1" << "\n";
        output_printf_fstream << "  %__size_ = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0" << "\n";
        output_printf_fstream << "  %2 = load i8, i8* %__size_, align 1" << "\n";
        output_printf_fstream << "  %conv = zext i8 %2 to i64" << "\n";
        output_printf_fstream << "  ret i64 %conv" << "\n";
        output_printf_fstream << "}" << "\n";

        //_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
        output_printf_fstream << "define internal nonnull align 8 dereferenceable(24) %\"struct.std::__1::basic_string<char>::__rep\"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"* %this) #10000003 align 2 {" << "\n";
        output_printf_fstream << "entry:" << "\n";
        output_printf_fstream << "  %this.addr = alloca %\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"*, align 8" << "\n";
        output_printf_fstream << "  store %\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"* %this, %\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %this1 = load %\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"*, %\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %0 = bitcast %\"class.std::__1::__compressed_pair" << checkDel.compressed_pair_Num << "\"* %this1 to %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"*" << "\n";
        output_printf_fstream << "  %call = call nonnull align 8 dereferenceable(24) %\"struct.std::__1::basic_string<char>::__rep\"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"* %0) #10000007" << "\n";
        output_printf_fstream << "  ret %\"struct.std::__1::basic_string<char>::__rep\"* %call" << "\n";
        output_printf_fstream << "}" << "\n";

        //_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
        output_printf_fstream << "define internal nonnull align 8 dereferenceable(24) %\"struct.std::__1::basic_string<char>::__rep\"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"* %this) #10000003 align 2 {" << "\n";
        output_printf_fstream << "entry:" << "\n";
        output_printf_fstream << "  %this.addr = alloca %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"*, align 8" << "\n";
        output_printf_fstream << "  store %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"* %this, %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %this1 = load %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"*, %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"** %this.addr, align 8" << "\n";
        output_printf_fstream << "  %__value_ = getelementptr inbounds %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\", %\"struct.std::__1::__compressed_pair_elem" << checkDel.compressed_pair_elem_Num << "\"* %this1, i32 0, i32 0" << "\n";
        output_printf_fstream << "  ret %\"struct.std::__1::basic_string<char>::__rep\"* %__value_" << "\n";
        output_printf_fstream << "}" << "\n";

    }

    output_printf_fstream << "; ===========================================================\n";
    output_printf_fstream << "; =================   writeDeclare end   =================   \n";
    output_printf_fstream << "; ===========================================================\n";
    output_printf_fstream << "\n";

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

                // ll코드 재선언을 방지하기 위한 판별
                // %"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
                else if (tempv[i] == "%\"class.std::__1::basic_string\"" && tempv[i + 4].substr(0 , 35) == "%\"class.std::__1::__compressed_pair")
                {   //  %"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" } 
                    output_printf_fstream << tempv[i] << " ";
                    checkDel.checkString_base = true;

                    if (tempv[i + 4][35] == '.')
                    {
                        checkDel.compressed_pair_Num = tempv[i + 4][35];
                        checkDel.compressed_pair_elem_Num = tempv[i + 4][35];

                        string tempcompressed_pair_Num;

                        for (int j = 36; tempv[i + 4][j] != '\"'; j++)
                        {
                            tempcompressed_pair_Num += tempv[i + 4][j];
                        }

                        checkDel.compressed_pair_Num += tempcompressed_pair_Num;
                        checkDel.compressed_pair_elem_Num += to_string(stoi(tempcompressed_pair_Num) + 1);

                        cout << checkDel.compressed_pair_Num << " " << checkDel.compressed_pair_elem_Num << "\n";
                    }
                }

                else if (tempv[i].substr(0 , 35) == "%\"class.std::__1::__compressed_pair" && tempv[i + 2] == "type")
                {
                    output_printf_fstream << tempv[i] << " ";
                    checkDel.checkString_pair = true;
                }

                else if (tempv[i] == "%\"struct.std::__1::basic_string<char>::__rep\"" && tempv[i + 4] == "%union.anon")
                {
                    output_printf_fstream << tempv[i] << " ";
                    checkDel.checkString_rep = true;
                }

                // %"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon }
                else if (tempv[i] == "%\"struct.std::__1::basic_string<char>::__short\"" && tempv[i + 7] == "%struct.anon")
                {
                    output_printf_fstream << tempv[i] << " ";
                    checkDel.checkString_struct_anon = true;
                }

                // string 함수에서 line, colnum을 받는 인자 추가
                else if (tempv[i] == "define" && tempv[i + 1] == "internal"
                    &&
                    (
                        (tempv[i + 2] == "%\"class.std::__1::basic_string\"*" && tempv[i + 3] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*")
                        || (tempv[i + 6] == "%\"class.std::__1::basic_string\"*" && tempv[i + 7] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"*")
                        || (tempv[i + 2] == "zeroext" && tempv[i + 4] == "@_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%\"class.std::__1::basic_string\"*")

                        // vector int tpye push_back
                        || (tempv[i + 2] == "void" && tempv[i + 3].substr(0, 50) == "@_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERK")
                        || (tempv[i + 2] == "void" && tempv[i + 3].substr(0, 50) == "@_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backERK")
                        || (tempv[i + 2] == "void" && tempv[i + 3].substr(0, 50) == "@_ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backERK")
                        || (tempv[i + 2] == "void" && tempv[i + 3].substr(0, 50) == "@_ZNSt3__16vectorIsNS_9allocatorIsEEE9push_backERK")
                        || (tempv[i + 2] == "void" && tempv[i + 3].substr(0, 50) == "@_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backERK")
                        || (tempv[i + 2] == "void" && tempv[i + 3].substr(0, 50) == "@_ZNSt3__16vectorIcNS_9allocatorIcEEE9push_backERK")
                        )
                    )
                {
                    if (tempv[i + 3].substr(0, 18) == "@_ZNSt3__16vectorI")
                    {
                        //vector_type_num
                        vector_type_num = "";
                        if(tempv[i + 3].size() > 78)
                        {
                            vector_type_num = ".";
                            for(int k = 77; tempv[i + 3][k] != '\"'; k ++)
                            {
                                vector_type_num += tempv[i + 3][k];
                            }

                            cout << "vector type8 is : " << vector_type_num << "\n\n\n\n\n\nnnnnnn\n\n\n\n\n\"";

                        }
                    }

                    while (tempv[i] != "%__s)" && tempv[i] != "%__rhs)" && tempv[i] != "%__x)")
                    {
                        output_printf_fstream << tempv[i] << " ";
                        i++;
                    }

                    // %__s) -> %__s,
                    output_printf_fstream << tempv[i].substr(0 , tempv[i].size() - 1) << ", ";

                    output_printf_fstream << "i8* %__str_name, ";
                    output_printf_fstream << "i32 %__line, ";
                    output_printf_fstream << "i32 %__colnum) ";

                    // i ++;
                }

                //  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %str, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !1775
                // string call 함수에 디버그 정보 인자 전달
                else if (
                    (tempv[i] == "call" || tempv[i] == "invoke")
                    && (tempv[i + 1] == "%\"class.std::__1::basic_string\"*" || tempv[i + 5] == "%\"class.std::__1::basic_string\"*" || tempv[i + 1] == "zeroext")
                    && (tempv[i + 2] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*"
                        || tempv[i + 6] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"*"
                        || tempv[i + 3] == "@_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%\"class.std::__1::basic_string\"*"
                        )
                    )
                {

                    int string_var_length = 0;
                    string string_var_name;

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
                            if (i > 2 && tempv[i][0] == '%')
                            {
                                string_var_length = tempv[i].length();
                                string_var_name = tempv[i].substr(1);  // %str, -> str,
                            }

                            output_printf_fstream << tempv[i] << " ";
                            i++;
                        }
                    }

                    // invoke 인 경우
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
                            if (i > 2 && tempv[i][0] == '%')
                            {
                                string_var_length = tempv[i].length();
                                string_var_name = tempv[i].substr(1);  // %str, -> str,
                            }

                            output_printf_fstream << tempv[i] << " ";
                            i++;
                        }
                    }


                    // 0)), -> 0), i32 LineNum, i32 ColNum),
                    output_printf_fstream << "0)," << " ";

                    // i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0),
                    output_printf_fstream << "i8* getelementptr inbounds ([" << string_var_length << " x i8], [" << string_var_length << " x i8]* @__const_culry." << string_var_name << "i64 0, i64 0), ";
                    output_printf_fstream << "i32" << " ";
                    output_printf_fstream << LineNum << ", ";
                    output_printf_fstream << "i32" << " ";

                    if (tempv[4] == "call")
                    {
                        if (tempv[5] == "zeroext")
                        {
                            output_printf_fstream << ColNum << ") ";
                        }
                        else
                        {
                            output_printf_fstream << ColNum << "), ";
                        }

                        while (i < tempv[i].size())
                        {
                            output_printf_fstream << tempv[i] << " ";
                            i++;
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

                // 함수 안에서 사용된 int tpye push back 에 추가 인자 전달
                else if (tempv[i] == "invoke" && tempv[i + 1] == "void" && tempv[i + 2].substr(0 , 18) == "@_ZNSt3__16vectorI")
                {

                    // if (tempv[i + 2] != "@_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi(%\"class.std::__1::vector\"*")
                    // {
                    //     output_printf_fstream << tempv[i] << " ";
                    //     continue;
                    // }

                    if (currentFunc_returnType == "linkonce_odr")
                    {
                        output_printf_fstream << tempv[i] << " ";
                        continue;
                    }

                    if( (tempv[i + 2].substr(0, 50) != "@_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERK")
                       && (tempv[i + 2].substr(0, 50) != "@_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backERK")
                       && (tempv[i + 2].substr(0, 50) != "@_ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backERK")
                       && (tempv[i + 2].substr(0, 50) != "@_ZNSt3__16vectorIsNS_9allocatorIsEEE9push_backERK")
                       && (tempv[i + 2].substr(0, 50) != "@_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backERK")
                       && (tempv[i + 2].substr(0, 50) != "@_ZNSt3__16vectorIcNS_9allocatorIcEEE9push_backERK")
                       )
                       {
                            output_printf_fstream << tempv[i] << " ";
                            continue;
                       }


                    // if (tempv[i + 2][18] == 'i')
                    {
                        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

                        // output_printf_fstream << ";;aewfewafwefewaewaewfeaw" << " ";

                        int string_var_length = 0;
                        string string_var_name;

                        // invoke 시 사용
                        string templine;
                        vector<string> templinev;

                        getline(targetfile_fstream , templine);
                        stringstream tempss(templine);

                        string tempword;
                        while (getline(tempss , tempword , ' '))
                        {
                            templinev.push_back(tempword);
                        }

                        cout << "templinev vector start :   0000000000000 ";
                        for (int k = 0; k < templinev.size(); k++)
                        {
                            cout << templinev[k] << " ";
                        }
                        cout << "templinev print end :  \n\n\n ";
                        cout << templinev[templinev.size() - 1];

                        LineNum = "";
                        ColNum = "";
                        findLineAndColNumber(targetFileName , templinev[templinev.size() - 1]);

                        // cout << LineNum << " ffffffffffffff  " << ColNum << "\n";

                        while (1)
                        {
                            if (i == 11)
                            {
                                output_printf_fstream << tempv[i].substr(0 , tempv[i].size() - 1) << "";
                                break;
                            }
                            if (i == 5) // %vvvvv,
                            {
                                string_var_length = tempv[i].length();
                                string_var_name = tempv[i].substr(1);  // %str, -> str,
                            }

                            output_printf_fstream << tempv[i].substr(0 , tempv[i].size()) << " ";
                            i++;
                        }


                        // 0)), -> 0), i32 LineNum, i32 ColNum),
                        // %ref.tmp_num) -> %ref.tmp_num, 
                        output_printf_fstream << "," << " ";

                        // i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0),
                        output_printf_fstream << "i8* getelementptr inbounds ([" << string_var_length << " x i8], [" << string_var_length << " x i8]* @__const_culry." << string_var_name << "i64 0, i64 0), ";
                        output_printf_fstream << "i32" << " ";
                        output_printf_fstream << LineNum << ", ";
                        output_printf_fstream << "i32" << " ";


                        {
                            output_printf_fstream << ColNum << ")\n";

                            for (int k = 0; k < templinev.size(); k++)
                            {
                                output_printf_fstream << templinev[k] << " ";
                            }
                        }

                    }   // if end
                    // else    // int 타입이 아닌 경우 일단 예외처리
                    // {
                    //     output_printf_fstream << tempv[i] << " ";
                    // }

                }

                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

                else if (currentFunc.substr(0 , 8) == "_ZNSt3__" && currentFunc.substr(8 , 9) == "16vectorI" && tempv[i] == "if.end:")
                {
                    output_printf_fstream << tempv[i] << " ";
                    // output_printf_fstream << ";asfaewfew" << " ";

                    if (currentFunc_returnType == "linkonce_odr")
                    {
                        continue;
                    }

                    // if (currentFunc == "_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi_")
                    {

                        char currentVectorTempType = currentFunc[17];
                        string currentVectorType;
                        string currentPrintType;
                        int currentTypeSize;
                        int currentPrintTypeSize;

                        if (currentVectorTempType == 'i')
                        {
                            currentVectorType = "i32";
                            currentPrintType = "int";
                            currentTypeSize = 5;
                            currentPrintTypeSize = 4;
                        }
                        else if(currentVectorTempType == 'f')
                        {
                            currentVectorType = "float";
                            currentPrintType = "float";
                            currentTypeSize = 7;
                            currentPrintTypeSize = 4;
                        }
                        else if(currentVectorTempType == 'x')
                        {
                            currentVectorType = "i64";
                            currentPrintType = "i64";
                            currentTypeSize = 15;
                            currentPrintTypeSize = 5;
                        }
                        else if(currentVectorTempType == 's')
                        {
                            currentVectorType = "i16";
                            currentPrintType = "i16";
                            currentTypeSize = 7;
                            currentPrintTypeSize = 4;
                        }
                        else if(currentVectorTempType == 'd')
                        {
                            currentVectorType = "double";
                            currentPrintType = "double";
                            currentTypeSize = 8;
                            currentPrintTypeSize = 5;
                        }
                        else if(currentVectorTempType == 'c')
                        {
                            currentVectorType = "i8";
                            currentPrintType = "i8";
                            currentTypeSize = 6;
                            currentPrintTypeSize = 4;
                        }
                        else
                        {

                            continue;
                        }
                        


                        output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) " << "\n";

                        output_printf_fstream << "%var_push_back =  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_pushBack, i32 0, i32 0)) " << "\n";

                        output_printf_fstream << "%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) " << "\n";
                        output_printf_fstream << "%var_type = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentTypeSize << " x i8], [ "<< currentTypeSize <<" x i8]* @.str." << currentVectorType << ", i64 0, i64 0)) " << "\n";
                        output_printf_fstream << "%var_3_value = load " << currentVectorType << ", " << currentVectorType << "* %__x, align 4 " << "\n";
                        output_printf_fstream << "%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %\"class.std::__1::vector" << vector_type_num << "\"* %this) " << "\n";
                        output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentPrintTypeSize << " x i8], [" << currentPrintTypeSize <<" x i8]* @.str.print_" << currentPrintType << ", i64 0, i64 0), " << currentVectorType << " %var_3_value) " << "\n";
                        output_printf_fstream << "%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line) " << "\n";
                        output_printf_fstream << "%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum) " << "\n";
                        output_printf_fstream << "" << "\n";
                    }

                }

                else
                    output_printf_fstream << tempv[i] << " ";
            }

            //************************************************************************
            //************************************************************************
            //************************************************************************
            //************************************************************************
            //************************************************************************

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
                if (tempv[i] == "entry:")
                {
                    // 함수 시작에 loadfile 추가
                    output_printf_fstream << "%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8\n";

                    // output_printf_fstream << "%var_colnum2222 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 99999)" << "\n";

                    cout << currentFunc << "\n\n\n";

                }

                // 변수의 할당 및 불러오기, store 및 load 일 때 새로 할당된 값 또는 불러온 값을 기록
                else if ((tempv[i] == "store" && tempv[6] != "getelementptr") ) //|| tempv[i] == "load"
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

                        if (var_name == "getelementptr")
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
                    //&& tempv[i  + 1] != "%\"class.std::__1::basic_string\"*"

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
                        // findLineAndColNumber 사용하여 다음 getline의  %invoke.cont_num의 다음줄에 기록 코드 작성
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

                // string length 계산 함수에 길이 기록 코드 추가
                else if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv_"
                    && tempv[i + 4] == "@_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%\"class.std::__1::basic_string\"*"
                    && tempv[i] == "%call" && tempv[i + 3] == "i64")
                {
                    output_printf_fstream << "%var_length = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 %call) \n";
                    checkDel.checkString_length_Func = true;
                }

                // string 과 관련된 함수일 경우 출력을 위한 코드를 함수 안에 추가, 함수 인자에 line colnum 을 추가해야함
                // string 함수이면서 마지막 부분일 경우
                else if ((currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc_"
                    && tempv[i] == "%\"class.std::__1::basic_string\"*"
                    && tempv[i + 1] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*"
                    && tempv[i + 2] == "%this1,")
                    //%call = call nonnull align 8 dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(%"class.std::__1::basic_string"* %this1, i8* %0), !dbg !1838
                    || (currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc_"
                        && tempv[i] == "dereferenceable(24)"
                        && tempv[i + 1] == "%\"class.std::__1::basic_string\"*"
                        && tempv[i + 2] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(%\"class.std::__1::basic_string\"*"
                        && tempv[i + 3] == "%this1,")
                    || (currentFunc == "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6__"
                        && tempv[i] == "%9"
                        && tempv[i + 2] == "load"
                        && tempv[i + 5] == "%retval,")
                    )
                {
                    string stringValue;
                    string stringPointer;
                    bool isStore = true;

                    if (currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc_"
                        || currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc_")
                    {
                        stringValue = "%__s";
                        stringPointer = "%this";
                    }

                    // %this -> %__lhs  %__s -> %__rhs
                    else if (currentFunc == "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6__")
                    {
                        stringValue = "%__rhs";
                        stringPointer = "%__lhs";
                        isStore = false;
                    }

                    if (isStore)
                    {
                        output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0))\n";
                    }
                    else
                    {
                        output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0))\n";
                    }

                    // name
                    output_printf_fstream << "%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) \n";

                    // type
                    output_printf_fstream << "%var_type = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";

                    // String 값 출력 시작
                    output_printf_fstream << "%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0))\n";

                    // string length record
                    output_printf_fstream << "%var_string_length = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv(%\"class.std::__1::basic_string\"* " << stringPointer << ") \n";

                    // 내용 출력
                    if (isStore)
                    {
                        output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* " << stringValue << ")\n";
                    }
                    else
                    {
                        output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), %\"class.std::__1::basic_string\"* %__lhs) \n";
                    }

                    // String 값 출력 끝
                    output_printf_fstream << "%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0))\n";

                    output_printf_fstream << "%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %\"class.std::__1::basic_string\"* " << stringPointer << ")\n";
                    output_printf_fstream << "%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line)\n";
                    output_printf_fstream << "%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum)\n";

                }

                else if (currentFunc.substr(0 , 8) == "_ZNSt3__" && tempv[i] == "ret")
                {
                    cout << "\n\n\n\n\n\n";
                    // output_printf_fstream << tempv[i];
                    // output_printf_fstream << ";";
                    cout << tempv[i] << "\n";
                    cout << currentFunc << "\n";
                    cout << "\n\n\n\n\n\n";
                    // return 0;

                    // %value_name 을 저장하기 위한 vector
                    vector<string> saveValueName;

                    // 따로 저장을 하는 경우   ex) %call25 = (invoke or call) function operation 

                    // 따로 저장하지 않는 경우 ex) (call or invoke) function operation
                }

                else
                {

                }
            } //for (int i = 0; i < tempv.size(); i++) end
        } // while end
    }



    cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@@ record_above ll file write start @@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";
    writeLLFile("record_above.ll");
    cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@@ record_above ll file write end   @@@@@@@@@@@@@@@@@@@@@@@@@@@@ \n";

    writeDeclare();

    str_fstream.close();
    output_printf_fstream.close();
    targetfile_fstream.close();
    output_result_fstream.close();

    cout << "\n\n";
    cout << "target file name is " << targetFileName << "\n";

    cout << checkDel.checkString_base << "\n";

    cout << "***************************   record 2 end  222   ***************************\n";
    return 0;
}