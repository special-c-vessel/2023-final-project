#include "app.h"

App::App() {
    std::cout << "Initialize app class" << std::endl;
}

App::App(char* _srcFile, char* _recordFile) 
: srcFile(_srcFile), recordFile(_recordFile) {
    std::cout << "Initialize app class" << std::endl;
}

App::~App() {
    std::cout << "Destory app class" << std::endl;
}

void App::Run() {
    Init();

    while(!programOver) {
        Render();
        Input();
        Update();
    }
}

void App::Init() {
    programOver = false;
    currentLine = 0;

    // 소스 파일이 제대로 열렸는지 검사
    std::ifstream srcStream(srcFile);
    if (!srcStream) {
        std::cerr << "Unable to open source file: " << srcFile << std::endl;
        exit(0);
    }

    // 기록 파일이 제대로 열렸는지 검사
    std::ifstream recordStream(recordFile);
    if (!recordStream) {
        std::cerr << "Unable to open record file: " << recordFile << std::endl;
        exit(0);
    }
    
    std::string _line;
    while (getline(recordStream, _line)) {
        if(_line == "declare") { // declare일 경우 변수 기록 객체를 생성 후 벡터에 푸시
            RecordData* _data = new RecordData(); // 동적 할당

            getline(recordStream, _data->name);
            getline(recordStream, _data->type);
            getline(recordStream, _data->value);
            getline(recordStream, _data->ptr);
            getline(recordStream, _data->line);
            getline(recordStream, _data->col);

            records.push_back(_data);
            
            _data->~RecordData(); // 동적 해제
        }
    }
    
    while (std::getline(srcStream, _line)) {
        codes.push_back(_line);
        if(_line.find("main") != std::string::npos) {
            currentLine = codes.size() - 1;
        }
    }
}

// 사용자로부터 입력을 받는 함수
void App::Input() {
    std::string input;
    std::cin >> input;
    if(!IsNumber(input)) { // 사용자 입력 값이 숫자가 아닐 경우
        if(input == "s") {
            if(currentLine < codes.size() - 1) currentLine++;
        }
        else if(input == "w") {
            if(currentLine > 0) currentLine--;
        }
        else {
            std::cout << "undefined command" << std::endl;
        }

    }
    else { // 사용자 입력 값이 숫자일 경우

    }
}

void App::Update() {
    std::string _eraseStr = codes[currentLine];
    _eraseStr.erase(remove(_eraseStr.begin(), _eraseStr.end(), ' '), _eraseStr.end());
    while(_eraseStr.size() < 2) {
        currentLine++;
        _eraseStr = codes[currentLine];
        _eraseStr.erase(remove(_eraseStr.begin(), _eraseStr.end(), ' '), _eraseStr.end());
    }
}

void App::Render() {
    std::cout << "\033[2J\033[1;1H"; // 화면에 출력된 정보들을 지운다.

    int _startLine = (currentLine < CODE_SHOW_RANGE) 
    ? 0 : currentLine - CODE_SHOW_RANGE; //코드 시작 줄 번호
    int _endLine = ((currentLine + CODE_SHOW_RANGE) > codes.size() - 1) 
    ? _endLine = codes.size() - 1 : _endLine = currentLine + CODE_SHOW_RANGE; // 코드 마지막 줄 번호

    for(int i = _startLine; i <= _endLine; i++) {
        if(i == currentLine) std::cout << "\033[1m" << ">>>>   " << codes[i] << "\033[0m" <<std::endl;
        else std::cout << codes[i] << std::endl;
    }
}

void App::PrintRecData(RecordData* _recordData) {
    std::cout << "\033[1m" << "\t\t\tval name : " << _recordData->name << "\033[0m" << std::endl;
    std::cout << "\033[1m" << "\t\t\tval type : " << _recordData->type << "\033[0m" << std::endl;
    std::cout << "\033[1m" << "\t\t\tval ptr : " << _recordData->value << "\033[0m" << std::endl;
    std::cout << "\033[1m" << "\t\t\tval value : " << _recordData->ptr << "\033[0m" << std::endl;
    std::cout << "\033[1m" << "\t\t\tval line : " << _recordData->line << "\033[0m" << std::endl;
    std::cout << std::endl;
}

bool App::IsNumber(std::string const &_str) {
    auto it = _str.begin();
    while(it != _str.end() && std::isdigit(*it)) {
        it++;
    }
    return !_str.empty() && it == _str.end();
}