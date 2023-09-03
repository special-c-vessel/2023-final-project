#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <stack>
#include <string>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;


// class name,  class types
map<string , vector<string> > classStruct;

string output_result_FileName("record_result.ll"); // 실행시켜야 할 파일 이름, record_AddPrintf와 record_strfile을 결합한 것
fstream output_result_fstream;

string output_printf_FileName("record_AddPrintf.ll"); // 기록을 위한 fprintf 코드를 추가한 결과
fstream output_printf_fstream;

string targetFileName("culry.ll"); // 기록하고자 하는 타겟의 ll 파일
fstream targetfile_fstream(targetFileName);
fstream targetfile_fstream2(targetFileName);

string strFileName("record_strfile.ll"); // test.ll에 있는 변수명 등을 전역으로 선언하기 위해 작성한 코드들을 저장
fstream str_fstream;

string LineNum; // 코드의 위치를 기록하기 위한 변수
string ColNum;

string xType; // %__x 의 타입 저장

vector<string> totalFunc;
string currentFunc = "Global_"; // 현재 함수
string currentFunc_returnType = "";

vector<vector<string> > previoustempv;    // 배열 선언 후, load, stroe 사용 시 차수 저장을 위한 벡터

stack<string> stackForResetArr;

pair<string , string> pairForStringArrAndName;       // string 의 store 또는 load 시 변수명과 접근 차수 기록을 위한 페어

vector<pair<string , string> > vectorForResetArr;   // 배열의 선언 및 초기화 시 차주 저장을 위한 벡터
string var_name_ForResetArr = "";

string vector_type_num;

vector<string> varName;
vector<string> varType;

vector<string> funcName;
vector<string> writeString;
vector<string> funcNamePlusVarName;     // strfile 중복 확인을 위한

struct checkDeclare
{
    bool checkString_base;
    bool checkString_struct_anon;
    bool checkString_length_Func;
    bool checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv;
    bool checkString__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv;
    bool checkString__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv;

    bool checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv;
    bool checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv;
    bool checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv;


    bool checkString_rep;
    bool checkString_pair;

    bool checkFstream_File;
    bool checkFstream_fprint;
    bool checkFstream_fclose;
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
int globalNumSub = 0;

int maxPtrCnt = 0;
int maxNumValueName = -1;

void findLineAndColNumber(string , string); // 디버그 정보(line, colnum 번호 읽어오는 함수)
string ifDontWriteVarNameThanWrite(string , string , bool* , bool* , bool* , bool* , bool*);  // 변수명, 타입 등의 string 선언 중복체크 및 선언을 위한 함수 , 갈무리된 변수명을 반환 (ex) %var_name, -> var_name
void addPrintfInstruction(string , string , string , string , string); // (출력을 위한 코드 작성 함수)
void writeLLFile(string);
void writeArrayIndex(bool isArr , bool isResetArr);
void writeDeclare();


class checkFeature
{
    public:
    void forCheckDebugMeggage(string str)
    {
        cout << "#################################\n";
        cout << str << "\n";
        cout << "#################################\n";
    }

    bool ifStartNum_ReturnTrue(string varString)
    {
        if (varString[1] == '0' || varString[1] == '1' || varString[1] == '2' || varString[1] == '3' ||
            varString[1] == '4' || varString[1] == '5' || varString[1] == '6' || varString[1] == '7' ||
            varString[1] == '8' || varString[1] == '9')
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    bool ifPrimitiveType_ReturnTrue(string type)
    {
        if (type == "i8" || type == "i16" ||
            type == "i32" || type == "i64" ||
            type == "double" || type == "float" ||
            type == "string")
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    bool ifStratAtsing_ReturnTrue(string str)
    {
        if (str[0] == '@')
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    int checkStarCnt(string varType)    // 포인터의 * 개수 cnt
    {
        int cnt = 0;
        for (int i = varType.size() - 1; i > 0; i--)
        {
            if (varType[i] == '*')
                cnt ++;
            else
                return cnt;
        }

        return -1;
    }

    int checkVarPrintSize(string varType)
    {
        if (varType.substr(0 , 3) == "i64" || varType.substr(0 , 6) == "double") // long long int, double 만 %ld, %lf 이므로 5로 설정 , 나머지는 4
        {
            return 5;
        }
        else
        {
            return 4;
        }
    }

};

class galmoori
{
    public:
    string removePersentOrAtsign(string str)
    {
        if (str[0] == '%' || str[0] == '@')
        {
            return str.substr(1 , str.size());
        }
        else
        {
            return str;
        }
    }

    string removeLastComma(string str)
    {
        if (str[str.size() - 1] == ',')
        {
            return str.substr(0 , str.size() - 1);
        }
        else
        {
            return str;
        }
    }

    string removePersentOrAtsignAndLastComma(string str)
    {
        str = removePersentOrAtsign(str);
        str = removeLastComma(str);

        return str;
    }

    string stroeDebugNum(string debug_Num)
    {
        LineNum = "0";
        ColNum = "0";
        if (debug_Num.size() > 1)
        {
            findLineAndColNumber(targetFileName , debug_Num);
        }

        if (LineNum == "0" && ColNum == "0")
            return;
    }



};

class oStreamInfo
{
    public:

    void writeOpenStream(int glo_Cnt)   // 파일 입출력 a+로 이어쓰기
    {
        output_printf_fstream << "%openFile" << glo_Cnt << " = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";
    }

    void writeLoadVarValue(int glo_Cnt, string varType, string varName)  // 변수가 가진 값을 가져와 %var_num_value에 저장, 변수값 출력 시 사용
    {
        output_printf_fstream << "%var_" << glo_Cnt << "_value = load " << varType << ", " << varType << "* " << varName << " align 4\n";
    }

    void writeKeyWord(int glo_cnt, int tmp_cnt, string keyWord)
    {
        output_printf_fstream << "%temp_KeyWord_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << keyWord.size() + 2 << " x i8], [" << keyWord.size() + 2 << " x i8]* @.str.op_" << keyWord << ", i32 0, i32 0))\n";
    }

    void writeVarName(int glo_cnt, int tmp_cnt, string funcName, string varName)
    {
        output_printf_fstream << "%temp_ValName_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << funcName.size() + varName.size() + 2 << " x i8], [" << funcName.size() + varName.size() + 2 << " x i8]* @__const_culry." << funcName + varName << ", i64 0, i64 0))\n";
    }

    void writeType(int glo_cnt, int tmp_cnt, string varType)
    {
        output_printf_fstream << "%temp_ValTYpe_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << varType.size() + 2 << " x i8], [" << varType.size() + 2 << " x i8]* @__const_culry." << varType << ", i64 0, i64 0))\n";
    }


};

class strStreamInfo {
    public:
    
    void writeStrTypeStream(string varType)
    {
        str_fstream << "@__const_culry." << varType << " = private unnamed_addr constant [" << varType.size() + 2 << " x i8] c\"" << varType << " \\00\", align 1\n";
    }

    void writeStrNameStream(string varName)
    {
        str_fstream << "@__const_culry." << varName << " = private unnamed_addr constant [" << varName.size() + 2 << " x i8] c\"" << varName << " \\00\", align 1\n";
    }


};

checkFeature checkFeature1;
galmoori galmoori1;
oStreamInfo ostreamInfo1;
strStreamInfo strStreamInfo1;

//

string ifDontWriteVarNameThanWrite(string NameString , bool isName)
{

    cout << "ifDontWriteVarNameThanWrite fffffffffffffffff\n\n\n";

    string tempFuncName = currentFunc;
    string tempstr;

    if(checkFeature1.ifStratAtsing_ReturnTrue(NameString))      // @var, 일 경우 
        tempFuncName = "global_";

    NameString = galmoori1.removePersentOrAtsignAndLastComma(NameString);   // %var, -> var

    tempstr = tempFuncName + NameString;    // ex) main_var1

    if (isName == false)        // type을 대상으로 할 경우
    {
        if(checkFeature1.ifPrimitiveType_ReturnTrue(NameString) == true)    // 기본형이면 넘어감
        {

        }
        else if (auto it = find(varType.begin() , varType.end() , NameString) == varType.end()) // 유저타입이면서 선언되지 않은 경우
        {
            varType.push_back(NameString);
            strStreamInfo1.writeStrTypeStream(NameString);
        }
    }

    else if (auto it = find(funcNamePlusVarName.begin() , funcNamePlusVarName.end() , tempstr) == funcNamePlusVarName.end())    // 변수명 대상으로 하면서 선언되지 않은 경우
    {
        funcNamePlusVarName.push_back(tempstr);
        strStreamInfo1.writeStrNameStream(tempstr);

        cout << "fffName is : " << tempstr << "    ";
        cout << "nnnnnnnnnnnnnn\n";
    }

    return NameString;
}


string ifDontWriteVarNameThanWrite(string NameString , string NameType , bool* isPointer , bool* isArr , bool* isString , bool* isResetArr, bool* isGlobalVar)
{
    cout << "ifDontWriteVarNameThanWrite is start \n";

    string tempstr = "";
    string tempFuncName = currentFunc;
    string tempFuncPlusVarNamestr;

    if (previoustempv.size() > 0)       // 배열인 경우 변수명 가져옴
    {
        cout << "find arrayidx !!!!!!!!!!!!!!! \n";

        *isPointer = true;

        NameString = previoustempv[0][previoustempv[0].size() - 8]; // 변수명 가져옴
        cout << "previoustempv 's var_name is : " << NameString << "\n";
    }

    else if (checkFeature1.ifStartNum_ReturnTrue(NameString) == true)   // %num 인 경우
    {
        maxNumValueName = max(maxNumValueName , stoi(NameString.substr(1 , NameString.size() - 1)));   //// %var_name, -> var_name

        if (!vectorForResetArr.empty()) // 배열인지 확인
            *isResetArr = true;
    }

    else if (NameString.substr(1 , 4) == "call" && NameType == "i8")
    {
        NameString = pairForStringArrAndName.first;     // %tempstr11111,
        *isString = true;
    }

    // type 이라면 
    else
    {
        // cout << "### ifDontWriteVarNameThanWrite is middle " << NameString << "\n";
    }

    if(checkFeature1.ifStratAtsing_ReturnTrue(NameString))      // @var, 일 경우 
    {
        tempFuncName = "global_";
        *isGlobalVar = true;
    }

    tempstr = galmoori1.removePersentOrAtsignAndLastComma(NameString);   // %var, -> var

    tempFuncPlusVarNamestr = tempFuncName + tempstr;    // main_varName

    if(auto it = find(funcNamePlusVarName.begin(), funcNamePlusVarName.end(), tempFuncPlusVarNamestr) == funcNamePlusVarName.end())
    {
        // funcNamePlusVarName.push_back(tempFuncPlusVarNamestr);

        if (checkFeature1.ifStartNum_ReturnTrue(tempstr) == true)
        {

        }
        else
        {
            funcNamePlusVarName.push_back(tempFuncPlusVarNamestr);
            strStreamInfo1.writeStrNameStream(tempFuncPlusVarNamestr);
        }
    }

    // % , * 같은 특수문자 처리 후 변수명 반환 
    return tempstr;
}

// 변수의 기록을 위한 (코드를 삽입하는) 함수
void addPrintfInstruction(string var_name , string var_type , string debugNum , string func_name , string keyWord) // string currentFunc // string var_type
{
    globalNum++;

    cout << "################################     addPrintfInstruction start!!!!   globalNum count : " << globalNum << "  ################################ \n";
    cout << "### var_name = " << var_name << "\n";
    cout << "### var_type = " << var_type << "\n";
    cout << "### current Func Name = " << func_name << "\n";

    int pointerSize = var_name.size() - 1;
    int templocalNum = 1;

    int var_type_print_length;

    int var_ptr_cnt = 0;

    string var_type_for_arr;
    string compareVarType;

    bool isGlobalVar = false;

    bool isArr = false;         // 배열인 경우              arr[1][2] = 5;
    bool isResetArr = false;    // 배열의 초기값 할당인 경우   int arr[5][5] = {{1, 2}, {3, 4}};
    bool isString = false;      // string 인 경우
    bool isPointer = false;

    galmoori1.stroeDebugNum(debugNum);  

    var_ptr_cnt = checkFeature1.checkStarCnt(var_type);  // 포인터 * 개수 카우느

    maxPtrCnt = max(var_ptr_cnt , maxPtrCnt);           // 임시 변수의 최대 int값 파악

    var_type_print_length = checkFeature1.checkVarPrintSize(var_type);  


    ostreamInfo1.writeOpenStream(globalNum);    // open
    ostreamInfo1.writeLoadVarValue(globalNum, var_type, var_name);  // 변수값 load
    ostreamInfo1.writeKeyWord(globalNum, templocalNum++, keyWord);  // 키워드

    // var_name = var_name + currentFunc;
    cout << "### var_name change " << var_name << " -> ";
    var_name = ifDontWriteVarNameThanWrite(var_name , var_type , &isPointer , &isArr , &isString , &isResetArr, &isGlobalVar);
    cout << var_name << "\n";
    // %var, -> var

    // var_name가 arrayidx 일 경우 배열이므로 차수 기록을 위한 작업 수행
    // cout << var_name.substr(1 , 8) << "\n";
    if (previoustempv.size() > 0)
    {
        int tempcnt = 6;
        for (; previoustempv[0][tempcnt][previoustempv[0][tempcnt].size() - 1] != ','; tempcnt++)
        {
            var_type_for_arr += previoustempv[0][tempcnt];
            var_type_for_arr += " ";
        }

        var_type_for_arr += previoustempv[0][tempcnt];                                  // 마지막 i32]]], 저장
        var_type_for_arr = var_type_for_arr.substr(0 , var_type_for_arr.size() - 1);    // , 제거 -> [10 x [20 x [30 x i32]]]
        cout << "### previoustempv 's var_type is : " << var_type_for_arr << "\n";          //

        isArr = true; // 현재 기록하고자 하는 것이 배열임을 표시
    }


    // 배열의 초기 할당의 기록을 위한 작업
    if (isResetArr)
    {
        // vectorForResetArr에 저장된 var_name 과 store의 var_name이 같을 때

        if (vectorForResetArr.back().first == var_name.substr(0 , var_name.size() - 1))
        {
            cout << "### start print vectorForResetArr       ";
            var_name = galmoori1.removePersentOrAtsign(var_name_ForResetArr);   // % 빼줌 
        }
    }


    if (var_name[0] != '\"')    // string 타입이 아닐 때
    {
        // 이미 존재하는 경우
        if (find(varName.begin(), varName.end(), var_name) == varName.end())
        {
            if (checkFeature1.ifStartNum_ReturnTrue(var_name) == true)
            {
                // maxVarNum 으로 최대값 추가하기때문에 숫자일 경우 넘어감 
            }
            else
            {
                // 존재하지 않고 숫자가 아닐 경우 추가 
                // str_fstream << "@__const_culry." << var_name << " = private unnamed_addr constant [" << var_name.size() + 2 << " x i8] c\"" << var_name << " \\00\", align 1\n";
                // varName.push_back(compareVarName);
            }
        }

        if(isGlobalVar == false)
            ostreamInfo1.writeVarName(globalNum, templocalNum++, currentFunc, var_name);    // 변수명 
        else
            ostreamInfo1.writeVarName(globalNum, templocalNum++, "global_", var_name);
    }
    else
    {

    }

    // type 출력 

    
    for (int i = 0; i < var_type.size(); i++)
    {
        if (var_type[i] == '\"' || var_type[i] == '%' || var_type[i] == ':') // " 문자 건너뜀
            continue;

        if (var_type[i] == '*')  // * -> p로 변경
            compareVarType += 'p';

        else if (var_type[i] == '<' || var_type[i] == '>')
            compareVarType += '-';

        else
            compareVarType += var_type[i];
    }

    // 해당 타입을 한번도 사용하지 않은 경우
    if (find(varType.begin() , varType.end() , var_type) == varType.end())
    {
        varType.push_back(var_type);
        strStreamInfo1.writeStrTypeStream(compareVarType);
    }

    ostreamInfo1.writeType(globalNum, templocalNum, compareVarType);    // 타입


    // ===================== 함수로 만들기 ============================================================
    if (isArr)
    {
        if (isPointer)
        {
            output_printf_fstream << "%temp_isPointerArr_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.userKeyWord_isPointerArr, i32 0, i32 0))\n";
        }
        else
        {
            // 배열의 차수를 출력하겠다는 의미로 isArr를 출력
            output_printf_fstream << "%temp_isArr_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";
        }

        // 배열의 모든 차수 출력
        cout << "### =========== print previoustempv  : ";

        for (int i = 0; i < previoustempv.size(); i++)
        {
            string previoustempv_arrnum = previoustempv[i][previoustempv[i].size() - 4];
            output_printf_fstream << "%temp_ArrayIndex_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 " << previoustempv_arrnum.substr(0 , previoustempv_arrnum.size() - 1) << ")\n";
            cout << previoustempv_arrnum << " ";
        }
        cout << "### \n";
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

        cout << "### ---------- print vectorForResetArr_arrnum  : ";


        for (int i = 0; i < vectorForResetArr.size(); i++)
        {
            string vectorForResetArr_arrnum = vectorForResetArr[i].second;
            output_printf_fstream << "%temp_ArrayIndex_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 " << vectorForResetArr_arrnum << ")\n";
            cout << vectorForResetArr_arrnum << " ";
        }
        cout << "###  and ";
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
    if (var_ptr_cnt > 0)
    {
        for (int i = var_type.size(); var_type[i] == '*'; i--)
        {
            if (var_type[i] == 'p')
                var_type[i] = '*';
        }
        output_printf_fstream << "%temp_varVal_777" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr" << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
    }
    else
    {
        output_printf_fstream << "%temp_varVal_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";

    }

    for (int i = var_type_for_arr.size(); var_type_for_arr[i] == '*'; i--)
    {
        if (var_type_for_arr[i] == 'p')
            var_type_for_arr[i] = '*';
    }
    if(isGlobalVar == false)
        output_printf_fstream << "%temp_varPtr_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << var_type_for_arr << "* %" << var_name << ")\n";
    else
        output_printf_fstream << "%temp_varPtr_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << var_type_for_arr << "* @" << var_name << ")\n";
    output_printf_fstream << "%temp_varLine_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << LineNum << ")\n";
    output_printf_fstream << "%temp_varColnum_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 " << ColNum << ")\n";

    // 파일 닫기
    output_printf_fstream << "%closeFile" << globalNum << " = call i32 @fclose(%struct.__sFILE* %loadfile) \n";

    cout << "###  >>>>>>> write is completed!!!    \n";
    cout << "###  >>>>>>> var_name is " << var_name << "\n";
    cout << "###  >>>>>>> var_type is " << var_type << "\n";
    cout << "### keyWord is " << keyWord << "!! current Function && Line number is =====> " << currentFunc << " " << LineNum << "\n";
    cout << "################################     addPrintfInstruction end!!!!   globalNum count : " << globalNum << "  ################################ \n\n\n\n";

    // addPrintfInstruction end
    return;
}


int main()
{

    return 0;
}
























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































