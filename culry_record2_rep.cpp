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
map<string, string> classUserStruct;

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

    bool ifStartNum_ReturnTrue(string varString , int index)
    {
        if (varString[index] == '0' || varString[index] == '1' || varString[index] == '2' || varString[index] == '3' ||
            varString[index] == '4' || varString[index] == '5' || varString[index] == '6' || varString[index] == '7' ||
            varString[index] == '8' || varString[index] == '9')
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
                cnt++;
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

    void stroeDebugNum(string debug_Num)
    {
        LineNum = "0";
        ColNum = "0";
        if (debug_Num.size() > 1)
        {
            findLineAndColNumber(targetFileName , debug_Num);
            return;
        }

        if (LineNum == "0" && ColNum == "0")
        {
            return;
        }
    }



};

class oStreamInfo
{
public:

    void writeOpenStream(int glo_Cnt)   // 파일 입출력 a+로 이어쓰기
    {
        output_printf_fstream << "%openFile_" << glo_Cnt << " = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";
    }

    void writeCloseStream(int glo_Cnt)
    {
        output_printf_fstream << "%closeFile_" << glo_Cnt << " = call i32 @fclose(%struct.__sFILE* %loadfile) \n";
    }

    void writeLoadVarValue(int glo_Cnt , string varType , string varName)  // 변수가 가진 값을 가져와 %var_num_value에 저장, 변수값 출력 시 사용
    {
        output_printf_fstream << "%var_" << glo_Cnt << "_value = load " << varType << ", " << varType << "* " << varName << " align 4\n";
    }

    void writeVarName(int glo_cnt , int tmp_cnt , string funcName , string varName)
    {
        output_printf_fstream << "%temp_ValName_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << funcName.size() + varName.size() + 2 << " x i8], [" << funcName.size() + varName.size() + 2 << " x i8]* @__const_culry." << funcName + varName << ", i64 0, i64 0))\n";
    }

    void writeType(int glo_cnt , int tmp_cnt , string varType)
    {
        output_printf_fstream << "%temp_ValTYpe_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << varType.size() + 2 << " x i8], [" << varType.size() + 2 << " x i8]* @__const_culry." << varType << ", i64 0, i64 0))\n";
    }

    void writeArrIndex(int glo_cnt , int tmp_cnt , string arrNum)
    {
        output_printf_fstream << "%temp_ArrayIndex_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 " << arrNum << ")\n";
    }

    void writeVarValue(int glo_cnt , int tmp_cnt , int varTypeLength , string varType , bool isString)
    {
        if (isString == true)
            output_printf_fstream << "%temp_varVal_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << varTypeLength << " x i8], [" << varTypeLength << " x i8]* @.str.print_ptr, i32 0, i32 0), " << varType << " %var_" << glo_cnt << "_value)\n";
        else
            output_printf_fstream << "%temp_varVal_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << varTypeLength << " x i8], [" << varTypeLength << " x i8]* @.str.print_" << varType << ", i32 0, i32 0), " << varType << " %var_" << glo_cnt << "_value)\n";
    }

    void writeVarPointerAddress(int glo_cnt , int tmp_cnt , bool isGlobalVar , string varType , string varName)
    {
        if (isGlobalVar == true) // 전역변수일 경우 @ 사용
        {
            output_printf_fstream << "%temp_varPtr_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << varType << "* @" << varName << ")\n";
        }
        else                    // 전역 아닐 경우 % 사용
        {
            output_printf_fstream << "%temp_varPtr_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << varType << "* %" << varName << ")\n";
        }
    }

    void writeLineAndCol(int glo_cnt , int tmp_cnt , string __Line , string __Colnum)
    {
        output_printf_fstream << "%temp_varLine_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << __Line << ")\n";
        output_printf_fstream << "%temp_varColnum_" << glo_cnt << "_" << tmp_cnt + 1 << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 " << __Colnum << ")\n";
    }





    // KeyWord ========
    void writeKeyWord(int glo_cnt , int tmp_cnt , string keyWord)
    {
        output_printf_fstream << "%temp_KeyWord_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << keyWord.size() + 2 << " x i8], [" << keyWord.size() + 2 << " x i8]* @.str.op_" << keyWord << ", i32 0, i32 0))\n";
    }

    void writeKeyWord_isPointerArr(int glo_cnt , int tmp_cnt)
    {
        output_printf_fstream << "%temp_isPointerArr_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.userKeyWord_isPointerArr, i32 0, i32 0))\n";
    }

    void writeKeyWord_isArr(int glo_cnt , int tmp_cnt)
    {
        output_printf_fstream << "%temp_isArr_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.userKeyWord_isArr, i32 0, i32 0))\n";
    }

    void writeKeyWord_isString(int glo_cnt , int tmp_cnt , string strName)
    {
        output_printf_fstream << "%temp_IsString_" << glo_cnt << "_" << tmp_cnt << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << strName << ")\n";
    }


    // ========

};

class strStreamInfo
{
public:

    void writeStrTypeStream(string varType)
    {
        str_fstream << "@__const_culry." << varType << " = private unnamed_addr constant [" << varType.size() + 2 << " x i8] c\"" << varType << " \\00\", align 1\n";
    }

    void writeStrNameStream(string varName)
    {
        str_fstream << "@__const_culry." << varName << " = private unnamed_addr constant [" << varName.size() + 2 << " x i8] c\"" << varName << " \\00\", align 1\n";
    }

    void writePointType(string type , string star , int typeLength)
    {
        output_printf_fstream << "@.str." << type << star << " = private unnamed_addr constant [" << type.length() + star.length() + 2 << " x i8]  c\"" << type << star << " \\00\", align 1" << "\n";
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

    if (checkFeature1.ifStratAtsing_ReturnTrue(NameString))      // @var, 일 경우 
        tempFuncName = "global_";

    NameString = galmoori1.removePersentOrAtsignAndLastComma(NameString);   // %var, -> var

    tempstr = tempFuncName + NameString;    // ex) main_var1

    if (isName == false)        // type을 대상으로 할 경우
    {
        if (checkFeature1.ifPrimitiveType_ReturnTrue(NameString) == true)    // 기본형이면 넘어감
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


string ifDontWriteVarNameThanWrite(string NameString , string NameType , bool* isPointer , bool* isArr , bool* isString , bool* isResetArr , bool* isGlobalVar)
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

    else if (checkFeature1.ifStartNum_ReturnTrue(NameString , 1) == true)   // %num 인 경우
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

    if (checkFeature1.ifStratAtsing_ReturnTrue(NameString))      // @var, 일 경우 
    {
        tempFuncName = "global_";
        *isGlobalVar = true;
    }

    tempstr = galmoori1.removePersentOrAtsignAndLastComma(NameString);   // %var, -> var

    tempFuncPlusVarNamestr = tempFuncName + tempstr;    // main_varName

    if (auto it = find(funcNamePlusVarName.begin() , funcNamePlusVarName.end() , tempFuncPlusVarNamestr) == funcNamePlusVarName.end())
    {
        // funcNamePlusVarName.push_back(tempFuncPlusVarNamestr);

        if (checkFeature1.ifStartNum_ReturnTrue(tempstr , 0) == true)
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

    if(var_name == "bitcast")
        return ;

    ostreamInfo1.writeOpenStream(globalNum);    // open a+
    ostreamInfo1.writeLoadVarValue(globalNum , var_type , var_name);  // 변수값 load
    ostreamInfo1.writeKeyWord(globalNum , templocalNum++ , keyWord);  // 키워드

    // var_name = var_name + currentFunc;
    cout << "### var_name change " << var_name << " -> ";
    var_name = ifDontWriteVarNameThanWrite(var_name , var_type , &isPointer , &isArr , &isString , &isResetArr , &isGlobalVar);
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
        if (find(varName.begin() , varName.end() , var_name) == varName.end())
        {
            if (checkFeature1.ifStartNum_ReturnTrue(var_name , 0) == true)
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

        if (isGlobalVar == false)
            ostreamInfo1.writeVarName(globalNum , templocalNum++ , currentFunc , var_name);    // 변수명 
        else
            ostreamInfo1.writeVarName(globalNum , templocalNum++ , "global_" , var_name);
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

    ostreamInfo1.writeType(globalNum , templocalNum++ , compareVarType);    // 타입


    // ===================== 함수로 만들기 ============================================================
    if (isArr)
    {
        if (isPointer)
        {
            // 포인터 배열임을 알리는 유저키워드 출력
            ostreamInfo1.writeKeyWord_isPointerArr(globalNum , templocalNum++);
        }
        else
        {
            // 배열임을 알리는 유저키워드 출력
            ostreamInfo1.writeKeyWord_isArr(globalNum , templocalNum++);
        }

        // 배열의 모든 차수 출력
        cout << "### =========== print previoustempv  : ";

        for (int i = 0; i < previoustempv.size(); i++)
        {
            string previoustempv_arrnum = previoustempv[i][previoustempv[i].size() - 4];
            previoustempv_arrnum = previoustempv_arrnum.substr(0 , previoustempv_arrnum.size() - 1);
            ostreamInfo1.writeArrIndex(globalNum , templocalNum++ , previoustempv_arrnum);
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
        ostreamInfo1.writeKeyWord_isArr(globalNum , templocalNum++);

        cout << "### ---------- print vectorForResetArr_arrnum  : ";


        for (int i = 0; i < vectorForResetArr.size(); i++)
        {
            string vectorForResetArr_arrnum = vectorForResetArr[i].second;
            ostreamInfo1.writeArrIndex(globalNum , templocalNum++ , vectorForResetArr_arrnum);
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

        ostreamInfo1.writeKeyWord_isString(globalNum , templocalNum++ , pairForStringArrAndName.second.substr(0 , pairForStringArrAndName.second.size() - 1));
        // output_printf_fstream << "%temp_IsString_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << pairForStringArrAndName.second.substr(0 , pairForStringArrAndName.second.size() - 1) << ")\n";
    }

    else
    {
        // var_name 가 arrayidx 가 아닌 경우
        var_type_for_arr = var_type;
    }



    // 값 포인터 라인 컬럼 기록
    if (var_ptr_cnt > 0)
    {
        string var_type_include_star = var_type;
        for (int i = var_type.size(); var_type[i] == '*'; i--)
        {
            if (var_type[i] == 'p')
                var_type_include_star[i] = '*';
        }
        ostreamInfo1.writeVarValue(globalNum , templocalNum++ , 4 , var_type , true);
        // output_printf_fstream << "%temp_varVal_777" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr" << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";
    }
    else
    {
        ostreamInfo1.writeVarValue(globalNum , templocalNum++ , var_type_print_length , var_type , false);
        // output_printf_fstream << "%temp_varVal_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << var_type_print_length << " x i8], [" << var_type_print_length << " x i8]* @.str.print_" << var_type << ", i32 0, i32 0), " << var_type << " %var_" << globalNum << "_value)\n";

    }

    for (int i = var_type_for_arr.size(); var_type_for_arr[i] == '*'; i--)
    {
        if (var_type_for_arr[i] == 'p')
            var_type_for_arr[i] = '*';
    }

    ostreamInfo1.writeVarPointerAddress(globalNum , templocalNum++ , isGlobalVar , var_type_for_arr , var_name); // 포인터
    ostreamInfo1.writeLineAndCol(globalNum , templocalNum++ , LineNum , ColNum);        // 줄번호 

    // 파일 닫기
    ostreamInfo1.writeCloseStream(globalNum);

    cout << "###  >>>>>>> write is completed!!!    \n";
    cout << "###  >>>>>>> var_name is " << var_name << "\n";
    cout << "###  >>>>>>> var_type is " << var_type << "\n";
    cout << "### keyWord is " << keyWord << "!! current Function && Line number is =====> " << currentFunc << " " << LineNum << "\n";
    cout << "################################     addPrintfInstruction end!!!!   globalNum count : " << globalNum << "  ################################ \n\n\n\n";

    // addPrintfInstruction end
    return;
}

void writeArrayIndex(bool isArr , bool isResetArr)
{

    return;
}

void followInvokeconv(string convNum)
{

}

// 디버거 정보(line, column) 을 읽어오는 함수
void findLineAndColNumber(string txtName , string debugNum)
{
    LineNum = "";
    ColNum = "";

    ifstream FLACNFstream;
    vector<string> FLACNv;
    string FLACNLine;
    // bool isFind = false;

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

        // if(isFind == false)
        // {
        //     LineNum = "0";
        //     ColNum = "0";
        //
        // }
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

        if (txtName == "record_above.ll")
        {

            string tempstrarr[7] = { "i1", "i8", "i16", "i32", "i64", "float", "double" };

            for (int i = 1; i <= maxPtrCnt; i++)
            {
                string p = "";
                string star = "";
                for (int j = 0; j < i; j++)
                {
                    p += "p";
                    star += '*';
                }

                for (int j = 0; j < 7; j++)
                {
                    strStreamInfo1.writePointType(tempstrarr[j] , p , checkFeature1.checkVarPrintSize(tempstrarr[j]));
                }
            }

            if (maxNumValueName > -1)
            {
                for (int i = 0; i <= maxNumValueName; i++)
                {
                    string valName = to_string(i);

                    for (int j = 0; j < totalFunc.size(); j++)
                    {
                        strStreamInfo1.writeStrNameStream(totalFunc[j] + valName);
                        // output_printf_fstream << "@__const_culry." << funcName[j] + valName << " = private unnamed_addr constant [" << funcName[j].size() + valName.size() + 2 << " x i8] c\"" << funcName[j] + valName << " \\00\", align 1" << "\n";

                    }
                    //@__const_culry.arr = private unnamed_addr constant [5 x i8] c"arr \00", align 1 
                }

            }
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

        if (checkDel.checkString__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv == false)
        {
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
        }

        // _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
        if (checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv == false)
        {
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
        }


        //_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
        if (checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv == false)
        {
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
        }

        if (checkDel.checkString__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv == false)
        {
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
        }

        if (checkDel.checkString__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv == false)
        {
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

        if (checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv == false)
        {
            output_printf_fstream << "define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%\"class.std::__1::basic_string\"* %this) #10000003 align 2 { \n"
                "entry:  \n"
                "%this.addr = alloca %\"class.std::__1::basic_string\"*, align 8  \n"
                "store %\"class.std::__1::basic_string\"* %this, %\"class.std::__1::basic_string\"** %this.addr, align 8  \n"
                "%this1 = load %\"class.std::__1::basic_string\"*, %\"class.std::__1::basic_string\"** %this.addr, align 8  \n"
                "%call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%\"class.std::__1::basic_string\"* %this1) #10000007  \n"
                "br i1 %call, label %cond.true, label %cond.false  \n"

                "cond.true:                                        ; preds = %entry  \n"
                "%call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%\"class.std::__1::basic_string\"* %this1) #10000007  \n"
                "br label %cond.end  \n"

                "cond.false:                                       ; preds = %entry  \n"
                "%call3 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%\"class.std::__1::basic_string\"* %this1) #10000007  \n"
                "br label %cond.end  \n"

                "cond.end:                                         ; preds = %cond.false, %cond.true  \n"
                "%cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]  \n"
                "ret i64 %cond  \n"
                " } " << "\n";
        }


    }

    if (checkDel.checkFstream_fprint == false)
    {
        output_printf_fstream << "declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222" << "\n";
    }

    if (checkDel.checkFstream_fclose == false)
    {
        output_printf_fstream << "declare i32 @fclose(%struct.__sFILE*) #222" << "\n";
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

    // 처음에 한번 전체를 살피면서 class 등을 탐지
    if (targetfile_fstream2.is_open())
    {
        while (getline(targetfile_fstream2 , line))
        {
            stringstream ss(line);
            vector<string> tempv;
            string word;

            while (getline(ss , word , ' '))
            {
                tempv.push_back(word);
            }

            for (int i = 0; i < tempv.size(); i++)
            {
                // define 인 경우 새로운 함수의 시작, 현재 함수명을 저장하며 변수 기록 시 사용
                if (tempv[i] == "define")
                {

                    if(tempv[i + 2].substr(0, 7) == "%class.")
                    {
                        string tempfuncName = "";
                        for(int j = 0; j < tempv[i + 3].size(); j ++)
                        {
                            if(tempv[i + 3][j] == '(')
                                break;
                            else
                                tempfuncName += tempv[i + 3][j];
                        }
                        // %class.B* @_ZN1BC1Ev
                        classUserStruct.insert({tempv[i + 2], tempfuncName});
                    }

                    for (int j = 0; j < tempv.size(); j++)
                    {
                        if (tempv[j] == "%__x," || tempv[j] == "%__x)")
                            xType = tempv[j - 5];
                    }

                    currentFunc_returnType = tempv[i + 1];
                    currentFunc = "";
                    while (tempv[i][0] != '@')
                    {
                        i++;
                    }

                    for (int j = 1; tempv[i][j] != '('; j++)
                        currentFunc += tempv[i][j];
                    currentFunc += '_';

                    totalFunc.push_back(currentFunc);

                    if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv_")
                    {
                        checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = true;
                    }

                    if (currentFunc == "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv_")
                    {
                        checkDel.checkString__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = true;
                    }

                    if (currentFunc == "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv_")
                    {
                        checkDel.checkString__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = true;
                    }

                    if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv_")
                    {
                        checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = true;
                    }

                    if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv_")
                    {
                        checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = true;
                    }

                    if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv_")
                    {
                        checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = true;
                    }

                }
            }

        }
    }





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

            // 
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

                // // string 함수 및 vector의 push_back 함수에서 line, colnum을 받는 인자 추가
                // //      define internal void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::vector"* %this, i32* nonnull align 4 dereferenceable(4) %__x) #2 align 2 !dbg !6092 {
                // // ->   define internal void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::vector"* %this, i32* nonnull align 4 dereferenceable(4) %__x, i8* %__str_name, i32 %__line, i32 %__colnum) #2 align 2 !dbg !6092 { 
                // else if (tempv[i] == "define" && tempv[i + 1] == "internal"
                //     &&
                //     (
                //         (tempv[i + 2] == "%\"class.std::__1::basic_string\"*" && tempv[i + 3] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*")
                //         || (tempv[i + 6] == "%\"class.std::__1::basic_string\"*" && tempv[i + 7] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"*")
                //         || (tempv[i + 2] == "zeroext" && tempv[i + 4] == "@_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%\"class.std::__1::basic_string\"*")

                //         // vector int tpye push_back
                //         // || (tempv[i + 2] == "void" && tempv[i + 3].substr(0 , 50) == "@_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backERK")
                //         // || (tempv[i + 2] == "void" && tempv[i + 3].substr(0 , 50) == "@_ZNSt3__16vectorIcNS_9allocatorIcEEE9push_backERK")

                //         || (
                //             // @_ZNSt3__16vectorI ~~ NS_9allocatorI ~~ EEE9push_backERK ~~ 의 push_back 형태일 경우

                //             tempv[i + 3].find("@_ZNSt3__16vectorI") != string::npos
                //             && tempv[i + 3].find("NS_9allocatorI") != string::npos
                //             && tempv[i + 3].find("EEE9push_backERK") != string::npos
                //             )

                //         )
                //     )
                // {

                //     if (tempv[i + 3].substr(0 , 18) == "@_ZNSt3__16vectorI")
                //     {
                //         //vector_type_num
                //         // vector.23"* %this 에서 %위치에서부터 .23 까지 탐색하며 23만 추출
                //         vector_type_num = "";
                //         size_t nPos0 = tempv[i + 3].find("vector.");
                //         size_t nPos1 = tempv[i + 3].find("%this");

                //         cout << "top 1 \n";
                //         if (nPos0 != string::npos)
                //         {
                //             cout << "top 2 \n";

                //             for (int k = tempv[i + 3].size() - 3; tempv[i + 3][k] != '.'; k--)
                //             {
                //                 vector_type_num += tempv[i + 3][k];
                //             }

                //             vector_type_num += '.';
                //             reverse(vector_type_num.begin() , vector_type_num.end());

                //             cout << "tempv[i + 3] = " << tempv[i + 3] << "\n";
                //             cout << "vector type8 is : " << vector_type_num << "\n\n\n\n\n\nnnnnnn\n\n\n\n\n\"";
                //         }
                //     }

                //     while (tempv[i] != "%__s)" && tempv[i] != "%__rhs)" && tempv[i] != "%__x)")
                //     {
                //         output_printf_fstream << tempv[i] << " ";
                //         i++;
                //     }

                //     // %__s) -> %__s,
                //     output_printf_fstream << tempv[i].substr(0 , tempv[i].size() - 1) << ", ";

                //     output_printf_fstream << "i8* %__str_name, ";
                //     output_printf_fstream << "i32 %__line, ";
                //     output_printf_fstream << "i32 %__colnum) ";

                //     // i ++;
                // }

                // // string call 함수에 디버그 정보 인자 전달
                // else if (
                //     (tempv[i] == "call" || tempv[i] == "invoke")
                //     && (tempv[i + 1] == "%\"class.std::__1::basic_string\"*" || tempv[i + 5] == "%\"class.std::__1::basic_string\"*" || tempv[i + 1] == "zeroext")
                //     && (tempv[i + 2] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*"
                //         || tempv[i + 6] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc(%\"class.std::__1::basic_string\"*"
                //         || tempv[i + 3] == "@_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(%\"class.std::__1::basic_string\"*"
                //         )
                //     )
                // {

                //     int string_var_length = 0;
                //     string string_var_name;

                //     // invoke 시 사용
                //     string templine;
                //     vector<string> templinev;

                //     // 항상 디버그 정보 존재
                //     if (tempv[i] == "call")
                //     {
                //         findLineAndColNumber(targetFileName , tempv[tempv.size() - 2]);

                //         while (tempv[i] != "0))," && tempv[i] != "0))")
                //         {
                //             if (i > 2 && tempv[i][0] == '%')
                //             {
                //                 string_var_length = tempv[i].length();
                //                 string_var_name = tempv[i].substr(1);  // %str, -> str,
                //             }

                //             output_printf_fstream << tempv[i] << " ";
                //             i++;
                //         }
                //     }

                //     // invoke 인 경우
                //     else
                //     {

                //         getline(targetfile_fstream , templine);
                //         stringstream tempss(templine);

                //         string tempword;
                //         while (getline(tempss , tempword , ' '))
                //         {
                //             templinev.push_back(tempword);
                //         }

                //         cout << "templinev print start :   0000000000000 ";
                //         for (int k = 0; k < templinev.size(); k++)
                //         {
                //             cout << templinev[k] << " ";
                //         }
                //         cout << "templinev print end :  \n\n\n ";
                //         cout << templinev[templinev.size() - 1];

                //         findLineAndColNumber(targetFileName , templinev[templinev.size() - 1]);

                //         cout << LineNum << " ffffffffffffff  " << ColNum << "\n";
                //         while (tempv[i] != "0))")
                //         {
                //             if (i > 2 && tempv[i][0] == '%')
                //             {
                //                 string_var_length = tempv[i].length();
                //                 string_var_name = tempv[i].substr(1);  // %str, -> str,
                //             }

                //             output_printf_fstream << tempv[i] << " ";
                //             i++;
                //         }
                //     }


                //     // 0)), -> 0), i32 LineNum, i32 ColNum),
                //     output_printf_fstream << "0)," << " ";

                //     // i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0),
                //     output_printf_fstream << "i8* getelementptr inbounds ([" << currentFunc.size() + string_var_length << " x i8], [" << currentFunc.size() + string_var_length << " x i8]* @__const_culry." << currentFunc + string_var_name << "i64 0, i64 0), ";

                //     string tempstrName = string_var_name.substr(0 , string_var_name.size() - 1);

                //     // 존재하는지 판별 
                //     cout << "vector qqqqqqqqqqqqq " << tempstrName << "\n";


                //     // tempstrName = tempstrName + currentFunc;
                //     ifDontWriteVarNameThanWrite(tempstrName , true);

                //     output_printf_fstream << "i32" << " ";
                //     output_printf_fstream << LineNum << ", ";
                //     output_printf_fstream << "i32" << " ";

                //     if (tempv[4] == "call")
                //     {
                //         if (tempv[5] == "zeroext")
                //         {
                //             output_printf_fstream << ColNum << ") ";
                //         }
                //         else
                //         {
                //             output_printf_fstream << ColNum << "), ";
                //         }

                //         while (i < tempv[i].size())
                //         {
                //             output_printf_fstream << tempv[i] << " ";
                //             i++;
                //         }
                //     }
                //     else if (tempv[4] == "invoke")
                //     {
                //         output_printf_fstream << ColNum << ")\n";

                //         for (int k = 0; k < templinev.size(); k++)
                //         {
                //             output_printf_fstream << templinev[k] << " ";
                //         }
                //     }
                //     // i ++;
                // }

                // // 함수 안에서 사용된 int tpye push back 에 추가 인자 전달
                // //      invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::vector"* %vvvvv, i32* nonnull align 4 dereferenceable(4) %ref.tmp)
                // // ->   invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::vector"* %vvvvv, i32* nonnull align 4 dereferenceable(4) %ref.tmp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__const_culry.vvvvv,i64 0, i64 0), i32 145, i32 9) 
                // else if (tempv[i + 1] == "void"
                //     // && tempv[i + 2].substr(0 , 18) == "@_ZNSt3__16vectorI"
                //     && (tempv[i + 2].find("@_ZNSt3__16vectorI") != string::npos
                //         && tempv[i + 2].find("NS_9allocatorI") != string::npos
                //         && tempv[i + 2].find("EEE9push_backERK") != string::npos
                //         )
                //     )
                // {

                //     if (currentFunc_returnType == "linkonce_odr")
                //     {
                //         output_printf_fstream << tempv[i] << " ";
                //         continue;
                //     }

                //     // if (    // @_ZNSt3__16vectorI ~~ NS_9allocatorI ~~ EEE9push_backERK ~~ 의 push_back 형태일 경우
                //     //         tempv[i + 2].find("@_ZNSt3__16vectorI") != string::npos
                //     //         && tempv[i + 2].find("NS_9allocatorI") != string::npos
                //     //         && tempv[i + 2].find("EEE9push_backERK") != string::npos
                //     //         )
                //     // {
                //     //     output_printf_fstream << tempv[i] << " ";
                //     //     continue;
                //     // }


                //     // if (tempv[i + 2][18] == 'i')
                //     {
                //         //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //         //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //         //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //         //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

                //         // output_printf_fstream << ";;aewfewafwefewaewaewfeaw" << " ";

                //         int string_var_length = 0;
                //         string string_var_name;

                //         // invoke 시 사용
                //         string templine;
                //         vector<string> templinev;

                //         getline(targetfile_fstream , templine);
                //         stringstream tempss(templine);

                //         string tempword;
                //         while (getline(tempss , tempword , ' '))
                //         {
                //             templinev.push_back(tempword);
                //         }

                //         cout << "templinev vector start :  000000" << templinev.size() << "\n";
                //         for (int k = 0; k < templinev.size(); k++)
                //         {
                //             cout << templinev[k] << " ";
                //         }
                //         cout << "templinev print end :  \n\n\n ";
                //         cout << templinev[templinev.size() - 1];

                //         findLineAndColNumber(targetFileName , templinev[templinev.size() - 1]);

                //         // cout << LineNum << " ffffffffffffff  " << ColNum << "\n";

                //         while (1)
                //         {
                //             if (i == 11)
                //             {
                //                 string tempstr2 = "";
                //                 for (int j = 0; tempv[i][j] != ')'; j++)
                //                 {
                //                     tempstr2 += tempv[i][j];
                //                 }
                //                 output_printf_fstream << tempstr2 << "";
                //                 break;
                //             }
                //             if (i == 5) // %vvvvv,
                //             {
                //                 string_var_length = tempv[i].length();
                //                 string_var_name = tempv[i].substr(1);  // %str, -> str,
                //             }

                //             output_printf_fstream << tempv[i].substr(0 , tempv[i].size()) << " ";
                //             i++;
                //         }


                //         // 0)), -> 0), i32 LineNum, i32 ColNum),
                //         // %ref.tmp_num) -> %ref.tmp_num, 
                //         output_printf_fstream << "," << " ";

                //         // i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0),
                //         output_printf_fstream << "i8* getelementptr inbounds ([" << currentFunc.size() + string_var_length << " x i8], [" << currentFunc.size() + string_var_length << " x i8]* @__const_culry." << currentFunc + string_var_name << "i64 0, i64 0), ";

                //         // string_var_name = string_var_name + currentFunc;

                //         ifDontWriteVarNameThanWrite(string_var_name , true);
                //         // if(find(varName.begin(), varName.end(), string_var_name) == varName.end())
                //         // {
                //         //     // 없는 경우
                //         //     varName.push_back(string_var_name);
                //         //     string tempVarName = string_var_name.substr(0, string_var_name.size() - 1);
                //         //     // str_fstream << "@__const_culry." << tempVarName << " = private unnamed_addr constant [" << tempVarName.size() + 2 << " x i8] c\"" << tempVarName << " \\00\", align 1\n";
                //         // }

                //         output_printf_fstream << "i32" << " ";
                //         output_printf_fstream << LineNum << ", ";
                //         output_printf_fstream << "i32" << " ";


                //         {
                //             output_printf_fstream << ColNum << ")\n";

                //             for (int k = 0; k < templinev.size(); k++)
                //             {
                //                 output_printf_fstream << templinev[k] << " ";
                //             }
                //         }

                //     }

                //     // if end
                //  // else    // int 타입이 아닌 경우 일단 예외처리
                //  // {
                //  //     output_printf_fstream << tempv[i] << " ";
                //  // }
                // }

                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

                // else if (currentFunc.substr(0 , 8) == "_ZNSt3__" && currentFunc.substr(8 , 9) == "16vectorI" && tempv[i] == "if.end:")
                // {
                //     output_printf_fstream << tempv[i] << " \n";
                //     // output_printf_fstream << ";asfaewfew" << " ";

                //     if (currentFunc_returnType == "linkonce_odr")
                //     {
                //         continue;
                //     }

                //     // if (currentFunc == "_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi_")
                //     // _ZNSt3__16vectorI    NS_12basic_stringIcNS_11char_traitsIcEE NS_9allocatorI  cEEEENS4_IS6    _EEE9push_backERK   S6_
                //     // _ZNSt3__16vectorI    5AAAAA                                  NS_9allocatorI  S1              _EEE9push_backERK S1_



                //     {

                //         char currentVectorTempType = currentFunc[17];
                //         string currentVectorType;
                //         string currentPrintType;
                //         int currentTypeSize;
                //         int currentPrintTypeSize = 4;

                //         if (currentVectorTempType == 'i')
                //         {
                //             currentVectorType = "i32";
                //         }
                //         else if (currentVectorTempType == 'f')
                //         {
                //             currentVectorType = "float";
                //         }
                //         else if (currentVectorTempType == 'x')
                //         {
                //             currentVectorType = "i64";
                //             currentPrintTypeSize = 5;
                //         }
                //         else if (currentVectorTempType == 's')
                //         {
                //             currentVectorType = "i16";
                //         }
                //         else if (currentVectorTempType == 'd')
                //         {
                //             currentVectorType = "double";
                //             currentPrintTypeSize = 5;
                //         }
                //         else if (currentVectorTempType == 'c')
                //         {
                //             currentVectorType = "i8";
                //         }
                //         else if (currentVectorTempType == 'b')
                //         {
                //             currentVectorType = "i1";
                //         }
                //         else
                //         {
                //             std::string text = currentFunc;
                //             size_t nPos1 = text.find("_ZNSt3__16vectorI");  // size 16
                //             size_t nPos2 = text.find("NS_9allocatorI");     // 

                //             // cout << "aaaaaa\n";
                //             // cout << nPos1 << " " << nPos2 << "\n";
                //             // cout << text[nPos1] << " " << text[nPos2] << "\n";
                //             // cout << text << "\n";

                //             // 
                //             if (nPos2 != string::npos)
                //             {
                //                 string tempstr = "";
                //                 for (int i = 18; i < nPos2; i++)
                //                 {
                //                     tempstr += text[i];
                //                 }
                //                 cout << tempstr << "\n";

                //                 currentVectorType = tempstr;

                //                 // tempstr = currentFunc + tempstr;

                //                 ifDontWriteVarNameThanWrite(tempstr , true);

                //             }

                //             // return 0;
                //             if (currentVectorType == "NS_12basic_stringIcNS_11char_traitsIcEE")
                //                 // currentVectorType = "%\"class.std::__1::basic_string\"";
                //                 currentVectorType = "string";

                //             // continue;
                //         }


                //         output_printf_fstream << "%openFile_vectorEnd = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";

                //         output_printf_fstream << "%var_store__vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) " << "\n";
                //         output_printf_fstream << "%var_push_back =  call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_pushBack, i32 0, i32 0)) " << "\n";
                //         output_printf_fstream << "%var_name_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) " << "\n";
                //         output_printf_fstream << "%var_type_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentVectorType.size() + 2 << " x i8], [" << currentVectorType.size() + 2 << " x i8]* @__const_culry." << currentVectorType << ", i64 0, i64 0)) " << "\n";

                //         ifDontWriteVarNameThanWrite(currentVectorType , false);

                //         output_printf_fstream << "%var_target_ptr_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), " << xType << " %__x) " << "\n";
                //         // output_printf_fstream << "%var_load_value = load " << currentVectorType << ", " << currentVectorType << "* %__x, align 4 " << "\n";
                //         // output_printf_fstream << "%var_value_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentPrintTypeSize << " x i8], [" << currentPrintTypeSize << " x i8]* @.str.print_" << currentVectorType << ", i64 0, i64 0), " << currentVectorType << " %var_load_value) " << "\n";

                //         output_printf_fstream << "%var_ptr_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %\"class.std::__1::vector" << vector_type_num << "\"* %this) " << "\n";
                //         output_printf_fstream << "%var_line_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line) " << "\n";
                //         output_printf_fstream << "%var_colnum_vectorEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum) " << "\n";

                //         output_printf_fstream << "%closeFile_vectorEnd = call i32 @fclose(%struct.__sFILE* %loadfile) \n";
                //         output_printf_fstream << "" << "\n";
                //     }

                // }

                // %class.AAAAA = type { i32, i32, %class.B }
                else if (tempv[0].substr(0 , 7) == "%class." && tempv[2] == "type")
                {
                    output_printf_fstream << tempv[i] << " ";
                    // map <string, vector<string> > classStruct;

                    // AAAAA
                    string className = tempv[0].substr(7 , tempv[0].size() - 7);

                    // 해당 클래스를 저장하지 않은 경우 
                    if (classStruct.find(className) == classStruct.end())
                    {
                        // 등록되지 않은 클래스라면
                        // type { i32, i32, %class.B }
                        // 

                        vector<string> tempClassTypeVector;

                        int j = 4;

                        while (tempv[j + 1] != "}")
                        {
                            if (tempv[j][0] != '%')
                            {
                                // i32, 에서 i32 만 저장
                                tempClassTypeVector.push_back(tempv[j].substr(0 , tempv[j].size() - 1));
                            }

                            // 타입으로 class가 들어있는 경우
                            else if (tempv[j].substr(0 , 7) == "\%class.")
                            {
                                // %class.B 에서 B 만 저장
                                tempClassTypeVector.push_back(tempv[j].substr(7 , tempv[j].size() - 7));
                            }

                            // string 타입인 경우 
                            else
                            {
                                tempClassTypeVector.push_back("string");
                            }

                            j++;
                        }

                        if (tempv[j][0] == '%')
                            tempClassTypeVector.push_back(tempv[j].substr(7 , tempv[j].size() - 7));
                        else
                            tempClassTypeVector.push_back(tempv[j]);

                        classStruct.insert(make_pair(className , tempClassTypeVector));

                        // for(int l = 0; l < tempClassTypeVector.size(); l ++)
                        // {
                        //     cout << " dd :: ";
                        //     cout << tempClassTypeVector[l] << " \n";
                        // }
                        cout << "sider15\n";
                        cout << "현재 class 이름 " << className << " \n";

                        // map 안에 유저 구조체가 등록되어 있을 경우
                        if (classStruct.find(className) != classStruct.end())
                        {
                            // map<string, vector<string>>::iterator iter = ;
                            vector<string> aaaa = classStruct[className];

                            for (int i = 0; i < aaaa.size(); i++)
                            {
                                cout << aaaa[i] << " ";
                            }
                            cout << "\n";
                        }
                    }

                    // 이미 해당 클래스를 저장한 경우
                    else
                    {

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

                if (tempv[i] == "define")
                {

                    for (int j = 0; j < tempv.size(); j++)
                    {
                        if (tempv[j] == "%__x," || tempv[j] == "%__x)")
                            xType = tempv[j - 5];
                    }

                    currentFunc_returnType = tempv[i + 1];
                    currentFunc = "";
                    while (tempv[i][0] != '@')
                    {
                        i++;
                    }

                    for (int j = 1; tempv[i][j] != '('; j++)
                        currentFunc += tempv[i][j];
                    currentFunc += '_';

                    // 다른 함수에서 썼던 것들 초기화
                    while (!previoustempv.empty())
                    {
                        previoustempv.pop_back();
                    }

                    // if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv_")
                    // {
                    //     checkDel.checkString__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = true;
                    // }

                    // if (currentFunc == "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv_")
                    // {
                    //     checkDel.checkString__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = true;
                    // }

                    // if (currentFunc == "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv_")
                    // {
                    //     checkDel.checkString__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = true;
                    // }

                }

                // 마찬가지로 새로운 함수의 시작, 기록 정보를 write하기 위해 txt파일의 주소를 불러옴
                if (tempv[i] == "entry:")
                {
                    // 함수 시작에 loadfile 추가
                    output_printf_fstream << "%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8\n";
                    // output_printf_fstream << "%loadfile   = load %struct.__sFILE*, %struct.__sFILE** @file, align 8\n";

                    // output_printf_fstream << "%var_colnum2222 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 99999)" << "\n";

                    cout << currentFunc << "\n\n\n";

                }

                // 변수의 할당 및 불러오기, store 및 load 일 때 새로 할당된 값 또는 불러온 값을 기록
                else if (
                    (tempv[i] == "store")
                    || tempv[i] == "load"
                    ) //
                {
                    // // 기록할 필요 없는 기본 내장 함수 건너뜀
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

                        while (!previoustempv.empty())
                        {
                            previoustempv.pop_back();
                        }

                        // continue;

                        // if (var_name == "getelementptr")
                        // {
                        //     // 문자열 배열 경우 아직 기록 불가능
                        //     continue;
                        // }
                    }

                    // 포인터 아직 지원 안되므로 넘어감
                    // if(var_type.substr(var_type.size() - 3, var_type.size() - 1) == "**")
                    //   continue;
                    // if(var_type == "i1")
                    //     continue;
                    addPrintfInstruction(var_name , var_type , debugNum , currentFunc , tempv[i]);  // 변수의 정보를 바탕으로 기록 코드 작성
                }

                // // cin 함수를 사용한 경우, 새로운 값 할당과 같으므로 store와 같은 기록 진행을 위한 작업 진행
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
                    // else if (tempv[4] == "invoke")
                    // {
                    //     // cin 이고 invoke 인 경우
                    //     // findLineAndColNumber 사용하여 다음 getline의  %invoke.cont_num의 다음줄에 기록 코드 작성
                    //     cout << "find cin invoke\n";
                    // }
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
                else if (tempv[2][0] == '%' && tempv[4] == "getelementptr" && tempv[2].substr(1 , 8) == "arrayidx")
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

                //%xxxxx = getelementptr inbounds %class.AAAAA, %class.AAAAA* %x11111, i32 0, i32 0, !dbg !2507
                // 
                else if (tempv[i].substr(0 , 7) == "%class." && tempv[4] == "getelementptr")
                {

                }

                // 배열을 불러올 때, 배열이름을 저장하기 위한 작업 수행
                else if (tempv[i] == "bitcast" && tempv[tempv.size() - 5] == "to")
                {
                    var_name_ForResetArr = tempv[tempv.size() - 6];
                    var_name_ForResetArr += ",";
                    cout << var_name_ForResetArr << " mmmmmmmmmmm \n";
                }

                // // string length 계산 함수에 길이 기록 코드 추가
                // else if (currentFunc == "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv_"
                //     && tempv[i + 4] == "@_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%\"class.std::__1::basic_string\"*"
                //     && tempv[i] == "%call" && tempv[i + 3] == "i64")
                // {

                //     // 기본적으로 stringLength.ll 파일에서 읽어오는 방식]
                //     // 그러나 length 함수가 사용되었다면 아래 코드 사용
                //     output_printf_fstream << "%openFile" << 999 << " = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";
                //     output_printf_fstream << "%var_length22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 %call) \n";
                //     output_printf_fstream << "%closeFile" << 999 << " = call i32 @fclose(%struct.__sFILE* %loadfile) \n";

                //     checkDel.checkString_length_Func = true;
                // }

                // string 과 관련된 함수일 경우 출력을 위한 코드를 함수 안에 추가, 함수 인자에 line colnum 을 추가해야함
                // string 함수이면서 마지막 부분일 경우
                // else if ((currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc_"
                //     && tempv[i] == "%\"class.std::__1::basic_string\"*"
                //     && tempv[i + 1] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc(%\"class.std::__1::basic_string\"*"
                //     && tempv[i + 2] == "%this1,")
                //     //%call = call nonnull align 8 dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(%"class.std::__1::basic_string"* %this1, i8* %0), !dbg !1838
                //     || (currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc_"
                //         && tempv[i] == "dereferenceable(24)"
                //         && tempv[i + 1] == "%\"class.std::__1::basic_string\"*"
                //         && tempv[i + 2] == "@_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(%\"class.std::__1::basic_string\"*"
                //         && tempv[i + 3] == "%this1,")
                //     || (currentFunc == "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6__"
                //         && tempv[i] == "%9"
                //         && tempv[i + 2] == "load"
                //         && tempv[i + 5] == "%retval,")
                //     )
                // {
                //     string stringValue;
                //     string stringPointer;
                //     bool isStore = true;

                //     if (currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc_"
                //         || currentFunc == "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc_")
                //     {
                //         stringValue = "%__s";
                //         stringPointer = "%this";
                //     }

                //     // %this -> %__lhs  %__s -> %__rhs
                //     else if (currentFunc == "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6__")
                //     {
                //         stringValue = "%__rhs";
                //         stringPointer = "%__lhs";
                //         isStore = false;
                //     }

                //     // string length record
                //     output_printf_fstream << "%var_string_length = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv(%\"class.std::__1::basic_string\"* " << stringPointer << ") \n";

                //     // file open
                //     output_printf_fstream << "%openFile" << 999 << " = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";

                //     if (isStore)
                //     {
                //         output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0))\n";
                //     }
                //     else
                //     {
                //         output_printf_fstream << "%var_store = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.op_load, i32 0, i32 0))\n";
                //     }

                //     // name
                //     output_printf_fstream << "%var_name = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.print_string_name, i64 0, i64 0), i8* %__str_name) \n";

                //     // type
                //     output_printf_fstream << "%var_type = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";

                //     // String 값 출력 시작`
                //     output_printf_fstream << "%var_print_stringStart = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.userKeyWord_isStringStart, i32 0, i32 0))\n";

                //     output_printf_fstream << "%var_length = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i64 %var_string_length) \n";


                //     // 내용 출력
                //     if (isStore)
                //     {
                //         output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* " << stringValue << ")\n";
                //     }
                //     else
                //     {
                //         output_printf_fstream << "%var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), %\"class.std::__1::basic_string\"* %__lhs) \n";
                //     }

                //     // String 값 출력 끝
                //     output_printf_fstream << "%var_print_stringEnd = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.userKeyWord_isStringEnd, i32 0, i32 0))\n";

                //     output_printf_fstream << "%var_ptr = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %\"class.std::__1::basic_string\"* " << stringPointer << ")\n";
                //     output_printf_fstream << "%var_line = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 %__line)\n";
                //     output_printf_fstream << "%var_colnum = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 %__colnum)\n";

                //     // file close
                //     output_printf_fstream << "%closeFile" << 999 << " = call i32 @fclose(%struct.__sFILE* %loadfile) \n";

                // }

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

                // 구조체 내용 출력 
                else if (tempv[i] == "alloca" && tempv[i + 1].substr(0 , 7) == "%class.")
                {
                    // while(i <= tempv.size())
                    // {
                        // output_printf_fstream << tempv[i] << " ";
                        // output_printf_fstream << tempv[i++] << " ";
                        // output_printf_fstream << tempv[i++] << " ";
                        // output_printf_fstream << tempv[i++] << " ";
                        // i ++;
                    // }

                    // if (currentFunc != "main_")
                    //     continue;

                    string classNamea = tempv[i + 1].substr(0 , tempv[i + 1].size() - 1);

                    globalNumSub++;

                    cout << "abc 12345678 current class name is : " << classNamea << "\n";   // classNamea = %class.AAAAA
                    string tempclassNameb = classNamea;
                    classNamea += '*';  // classNamea = %class.AAAAA*
                    if(classUserStruct.find(classNamea) != classUserStruct.end())   // value 가 존재한다면
                    {
                        string mapValue = classUserStruct.at(classNamea);

                        output_printf_fstream << "%loadStruct_" << globalNumSub << " = call " << classNamea << " " << mapValue << "(" << classNamea << " " << tempv[2] << ") \n";
                            //                          %call                            = call %class.AAAAA               *        @_ZN5AAAAAC1Ev                                          (%class.        AAAAA* %x11111)

                            cout << "pear13\n";
                            cout << classNamea << "\n";

                            vector<string> classValue = classStruct[classNamea];


                            string tempVarName = ifDontWriteVarNameThanWrite(tempv[2] , true);
                            
                            string removePersenttempclassNameb = ifDontWriteVarNameThanWrite(tempclassNameb , false);
                            

                            string tempVarType = tempv[i + 1].substr(7 , tempv[i + 1].size() - 8);

                            tempVarName = currentFunc + tempVarName;


                            output_printf_fstream << "%openFile_004" << globalNumSub << " = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";

                            // output_printf_fstream << "%var_store_005" << globalNumSub + 31 << "_ = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) " << "\n";
                            output_printf_fstream << "%var_isStruct_004" << globalNumSub << "_ = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.userKeyWord_isStruct, i32 0, i32 0)) " << "\n";
                            output_printf_fstream << "%temp_structName_004" << globalNumSub << "_" << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << tempVarName.size() + 2 << " x i8], [" << tempVarName.size() + 2 << " x i8]* @__const_culry." << tempVarName << ", i64 0, i64 0))\n";
                            output_printf_fstream << "%temp_ValTYpe_004" << globalNumSub << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << removePersenttempclassNameb.size() + 2 << " x i8], [" << removePersenttempclassNameb.size() + 2 << " x i8]* @__const_culry." << removePersenttempclassNameb << ", i64 0, i64 0))\n";

                            for (int j = 0; j < classValue.size(); j++)
                            { 
                                string currentType = classValue[j];

                                // output_printf_fstream << "%temp_ValName_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentFunc.size() + compareVarName.size() + 2 << " x i8], [" << currentFunc.size() + compareVarName.size() + 2 << " x i8]* @__const_culry." << currentFunc + compareVarName << ", i64 0, i64 0))\n";
                                output_printf_fstream << "%tempstructPtr_004" << globalNumSub << "_" << j << " = getelementptr inbounds %class." << classNamea << ", %class." << classNamea << "* " << tempv[2] << " , i32 0, i32 " << j << "\n";

                                if (currentType == "i8" || currentType == "i16" ||
                                    currentType == "i32" || currentType == "i64")
                                {
                                    output_printf_fstream << "%temp_ValTYpe_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentType.size() + 2 << " x i8], [" << currentType.size() + 2 << " x i8]* @__const_culry." << currentType << ", i64 0, i64 0))\n";
                                    output_printf_fstream << "%tempstructValue_004" << globalNumSub << "_" << j << " = load " << currentType << ", " << currentType << "* %tempstructPtr_004" << globalNumSub << "_" << j << ", align 8 \n";

                                    {
                                        output_printf_fstream << "%temp_varVal_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << 4 << " x i8], [" << 4 << " x i8]* @.str.print_i32, i32 0, i32 0), " << currentType << " %tempstructValue_004" << globalNumSub << "_" << j << ")\n";

                                    }



                                }

                                else if (currentType == "string")
                                {
                                    output_printf_fstream << "%var_type_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";
                                    // output_printf_fstream << 
                                    // i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str
                                    // %var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* %__s) 

                                }

                                else
                                {
                                    // if user struct 
                                    // => rec??
                                    currentType = ifDontWriteVarNameThanWrite(currentType , false);
                                    output_printf_fstream << "%var_isStruct_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.userKeyWord_isStruct, i32 0, i32 0)) " << "\n";
                                    output_printf_fstream << "%temp_ValTYpe_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentType.size() + 2 << " x i8], [" << currentType.size() + 2 << " x i8]* @__const_culry." << currentType << ", i64 0, i64 0))\n";
                                }
                            }

                            output_printf_fstream << "%temp_varPtr_004" << globalNumSub << "_" << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %class." << tempVarType << "* %" << "loadStruct_" << globalNumSub << " )\n";
                            // output_printf_fstream << "%temp_varLine_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << 888 << ")\n";
                            output_printf_fstream << "%temp_varColnum_004" << globalNumSub << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 999)\n";
                            output_printf_fstream << "%closeFile_004" << globalNumSub << " = call i32 @fclose(%struct.__sFILE* %loadfile) \n";

                            break;
                    }

                    // // if(auto it = totalFunc.begin(); it != totalFunc.end(); it ++)
                    // for (int j = 0; j < totalFunc.size(); j++)
                    // {
                    //     cout << totalFunc[j] << "\n";
                    //     // totalFunc 에 class가 포함되어 있을 경우
                    //     // classUserStruct ( %class.B* @_ZN1BC1Ev )
                    //     if (totalFunc[j].find(classNamea) != string::npos)
                    //     {
                    //         output_printf_fstream << "%loadStruct_" << globalNumSub << " = call %class." << classNamea << "* " << "@" << totalFunc[j].substr(0 , totalFunc[j].size() - 1) << "(%class." << classNamea << "* " << tempv[2] << ") \n";
                    //         //                          %call                            = call %class.AAAAA               *        @_ZN5AAAAAC1Ev                                          (%class.        AAAAA* %x11111)

                    //         cout << "pear13\n";
                    //         cout << classNamea << "\n";

                    //         vector<string> classValue = classStruct[classNamea];


                    //         string tempVarName = ifDontWriteVarNameThanWrite(tempv[2] , true);
                    //         ifDontWriteVarNameThanWrite(classNamea , false);

                    //         tempVarName = currentFunc + tempVarName;


                    //         output_printf_fstream << "%openFile_004" << globalNumSub << " = call %struct.__sFILE* @\"\01_fopen\"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.continue, i64 0, i64 0)) \n";

                    //         // output_printf_fstream << "%var_store_005" << globalNumSub + 31 << "_ = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.op_store, i32 0, i32 0)) " << "\n";
                    //         output_printf_fstream << "%var_isStruct_004" << globalNumSub << "_ = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.userKeyWord_isStruct, i32 0, i32 0)) " << "\n";
                    //         output_printf_fstream << "%temp_structName_004" << globalNumSub << "_" << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << tempVarName.size() + 2 << " x i8], [" << tempVarName.size() + 2 << " x i8]* @__const_culry." << tempVarName << ", i64 0, i64 0))\n";
                    //         output_printf_fstream << "%temp_ValTYpe_004" << globalNumSub << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << classNamea.size() + 2 << " x i8], [" << classNamea.size() + 2 << " x i8]* @__const_culry." << classNamea << ", i64 0, i64 0))\n";

                    //         for (int j = 0; j < classValue.size(); j++)
                    //         { 
                    //             string currentType = classValue[j];

                    //             // output_printf_fstream << "%temp_ValName_" << globalNum << "_" << templocalNum++ << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentFunc.size() + compareVarName.size() + 2 << " x i8], [" << currentFunc.size() + compareVarName.size() + 2 << " x i8]* @__const_culry." << currentFunc + compareVarName << ", i64 0, i64 0))\n";
                    //             output_printf_fstream << "%tempstructPtr_004" << globalNumSub << "_" << j << " = getelementptr inbounds %class." << classNamea << ", %class." << classNamea << "* " << tempv[2] << " , i32 0, i32 " << j << "\n";

                    //             if (currentType == "i8" || currentType == "i16" ||
                    //                 currentType == "i32" || currentType == "i64")
                    //             {
                    //                 output_printf_fstream << "%temp_ValTYpe_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentType.size() + 2 << " x i8], [" << currentType.size() + 2 << " x i8]* @__const_culry." << currentType << ", i64 0, i64 0))\n";
                    //                 output_printf_fstream << "%tempstructValue_004" << globalNumSub << "_" << j << " = load " << currentType << ", " << currentType << "* %tempstructPtr_004" << globalNumSub << "_" << j << ", align 8 \n";

                    //                 {
                    //                     output_printf_fstream << "%temp_varVal_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << 4 << " x i8], [" << 4 << " x i8]* @.str.print_i32, i32 0, i32 0), " << currentType << " %tempstructValue_004" << globalNumSub << "_" << j << ")\n";

                    //                 }



                    //             }

                    //             else if (currentType == "string")
                    //             {
                    //                 output_printf_fstream << "%var_type_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.string, i64 0, i64 0))\n";
                    //                 // output_printf_fstream << 
                    //                 // i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str
                    //                 // %var_value = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_string, i64 0, i64 0), i8* %__s) 

                    //             }

                    //             else
                    //             {
                    //                 // if user struct 
                    //                 // => rec??
                    //                 currentType = ifDontWriteVarNameThanWrite(currentType , false);
                    //                 output_printf_fstream << "%var_isStruct_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.userKeyWord_isStruct, i32 0, i32 0)) " << "\n";
                    //                 output_printf_fstream << "%temp_ValTYpe_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([" << currentType.size() + 2 << " x i8], [" << currentType.size() + 2 << " x i8]* @__const_culry." << currentType << ", i64 0, i64 0))\n";
                    //             }
                    //         }

                    //         output_printf_fstream << "%temp_varPtr_004" << globalNumSub << "_" << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), %class." << classNamea << "* %" << "loadStruct_" << globalNumSub << " )\n";
                    //         // output_printf_fstream << "%temp_varLine_004" << globalNumSub << "_" << j << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 " << 888 << ")\n";
                    //         output_printf_fstream << "%temp_varColnum_004" << globalNumSub << " = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int_space, i64 0, i64 0), i32 999)\n";
                    //         output_printf_fstream << "%closeFile_004" << globalNumSub << " = call i32 @fclose(%struct.__sFILE* %loadfile) \n";

                    //         break;
                    //     }


                    //     //%call = call %class.AAAAA* @_ZN5AAAAAC1Ev(%class.AAAAA* %x11111), !dbg !1824

                    // }


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
