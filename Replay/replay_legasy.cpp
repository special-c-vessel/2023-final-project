#include "replay_header.h"
#include "DeclareData.h"

// 오퍼레이션 기록 고조체
struct OpData {
    string op; // 오퍼레이션 타입
    string result_name; // 결과 변수 이름
    string result_val; // 결과 변수 값
    string result_ptr; // 결과 변수 주소
    string val1; 
    string val2;
    string val_line; // 기록이 발생한 줄 번호
};

// 전역 함수 선언
void FindRecData(int _line);
void PrintRecData(DeclareData _data);
void FindOpData(int _line);
void PrintOpData(OpData _data);
void PrintCode(int _codesIndex);
string FindValueName(int _lineNum, string _valName);
string FindValuePtr(int _lineNum, string _valName);
string TrimStr(const string& str);

// 전역 변수 선언
std::vector<DeclareData> recData;
std::vector<OpData> opData;
std::string line;
std::string codes[1000];
int lineNum = 1;
int codesIndex = 1;
int maxCodesIndex = 1;

int main(int argc, char* argv[]) {

    // 인자가 전달되었는지 검사
    if (argc < 3) {
        std::cerr << "Usage: " << argv[0] << " [source file] [record file]" << std::endl;
        return 1;
    }

    // 소스 파일이 제대로 열렸는지 검사
    std::ifstream srcFile(argv[1]);
    if (!srcFile) {
        std::cerr << "Unable to open source file: " << argv[1] << std::endl;
        return 1;
    }

    // 기록 파일이 제대로 열렸는지 검사
    std::ifstream recFile(argv[2]);
    if (!recFile) {
        std::cerr << "Unable to open record file: " << argv[2] << std::endl;
        return 1;
    }

    // 기록 파일을 반복문으로 한줄씩 확인
    while (getline(recFile, line)) {
        if(line == "declare") { // declare일 경우 변수 기록 객체를 생성 후 벡터에 푸시
            DeclareData data = DeclareData();
            getline(recFile, data.name);
            getline(recFile, data.type);
            getline(recFile, data.ptr);
            getline(recFile, data.value);
            getline(recFile, data.line);
            recData.push_back(data);
        }
        else if(line == "operation") { // operation일 경우 op 기록 객체를 생성 후 벡터에 푸시
            OpData data;
            getline(recFile, data.op);
            getline(recFile, data.val1);
            getline(recFile, data.val2);
            getline(recFile, data.result_name);
            getline(recFile, data.result_val);
            getline(recFile, data.result_ptr);
            getline(recFile, data.val_line);
            opData.push_back(data);
        }
    }

    while (std::getline(srcFile, line)) {

        std::cout << "\033[2J\033[2;2H";
        std::cout << line << std::flush << std::endl; // 소스 코드를 한 줄 읽어온다

        codes[maxCodesIndex++] = line;
    }
    
    char input;

    while (true) {

        std::cout << "\033[2J\033[1;1H";
        std::cout << "Culry : replay module\n\n\n";
        std::cout << "origin src\n\n";
        
        PrintCode(codesIndex);
        
        std::cout << "\n\nw : line up\ns : line down\ndigit : move line number\n\ninput keyboard : ";
        std::cin >> input;

        if(input == 's') codesIndex++; // 줄번호를 1을 추가
        else if(input == 'w') codesIndex--;
        else if (input >= '0' && input <= '9') codesIndex = input - '0';
    }

    return 0;
}

// 줄 번호로 RecData 객체를 찾는 함수
void FindRecData(int _line) {
    // 벡터 안에서 전달받은 줄 번호에 해당하는 기록이 있는지 검사
    for(int i = 0; i < recData.size(); i++) {
        // 줄 번호가 string으로 저장되있으므로 조건문 검사를 위해 int로 변환
        int recDataLine = std::stoi(recData[i].line);
        // vector 안에 줄 번호에 해당하는 객체가 있다면 출력
        if (recDataLine == _line) {
            std::cout << "\n------------------------------------------------------------------\n";
            std::cout << "\n\n" << "\033[1m" << "\tAnalysis information" << "\033[0m" << "\n\n";
            PrintRecData(recData[i]);
            std::cout << "\n------------------------------------------------------------------\n";
        }
    }
}

// 인자로 받은 RecData의 값을 출력해주는 함수
void PrintRecData(DeclareData _data) {
    std::cout << "\tval type : " << _data.type << std::endl;
    std::cout << "\tval name : " << _data.name << std::endl;
    std::cout << "\tval ptr : " << _data.ptr << std::endl;
    std::cout << "\tval value : " << _data.value << std::endl;
    std::cout << std::endl;
}

// 줄 번호로 OpData 객체를 찾는 함수
void FindOpData(int _line) {
    // 벡터 안에서 전달받은 줄 번호에 해당하는 기록이 있는지 검사
    for(int i = 0; i < opData.size(); i++) {
         // 줄 번호가 string으로 저장되있으므로 조건문 검사를 위해 int로 변환
        int opDataLine = std::stoi(opData[i].val_line);
        if (opDataLine == _line) {
            std::cout << "\n------------------------------------------------------------------\n";
            std::cout << "\n\n" << "\033[1m" << "\tAnalysis information" << "\033[0m" << "\n\n";
            PrintOpData(opData[i]);
            std::cout << "\n------------------------------------------------------------------\n";
        }
    }
}

// 인자로 받은 OpData 값을 출력해주는 함수
void PrintOpData(OpData _data) {
    std::cout << "\toperation : " << _data.op << std::endl;
    std::cout << "\tfirst val : " << _data.val1;
    std::cout << " , value : " << FindValueName(std::stoi(_data.val_line), _data.val1);
    std::cout << " , ptr : " << FindValuePtr(std::stoi(_data.val_line), _data.val1) << std::endl;
    std::cout << "\tsecond val : " << _data.val2;
    std::cout << " , value : " << FindValueName(std::stoi(_data.val_line), _data.val2);
    std::cout << " , ptr : " << FindValuePtr(std::stoi(_data.val_line), _data.val2) << std::endl;
    std::cout << "\tresult val : " << _data.result_name;
    std::cout << " , value : " << _data.result_val;
    std::cout << " , ptr : " << _data.result_ptr << std::endl;
    std::cout << std::endl;
}

string FindValueName(int _lineNum, string _valName) {
    for(int i = _lineNum; i >= 0; i--) {
        if (recData[i].name == _valName) {
            return recData[i].value;
        }
    }
    return "";
}

string FindValuePtr(int _lineNum, string _valName) {
    for(int i = _lineNum; i >= 0; i--) {
        if (recData[i].name == _valName) {
            return recData[i].ptr;
        }
    }
    return "";
}

string TrimStr(const std::string& str) {
    size_t start = str.find_first_not_of(" \t\n\r\f\v");
    if (start != std::string::npos)
    {
        return str.substr(start);
    }
    return str;
}

void PrintCode(int _codesIndex) {
    for(int i = 1; i <= maxCodesIndex; i++) {
        if(i == _codesIndex) {
            printf("\033[1C");
            std::cout << "\033[1m"  << codes[i] << "\033[0m" << std::endl; // 소스 코드를 한 줄 읽어온다
            
            FindRecData(i); // 현재 줄번호에 해당하는 변수 기록이 있는지 확인
            FindOpData(i); // 현재 줄번호에 해당하는 op 기록이 있는지 확인
        }
        else {
            std::cout << codes[i] << std::endl;
        }
    }
}