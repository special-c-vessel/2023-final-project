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
    Render();
    //while(!programOver) {
        //Update();
        //Render();
        //Input();
    //}
}

void App::Init() {
    programOver = false;
    codeMaxLine = 0;

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
    }
}

void App::Input() {
    std::string input;
    std::cin >> input;
}

void App::Update() {
    for(int i = 0; i < records.size(); i++) {
        PrintRecData(records[i]);
    }
    programOver = true;
}

void App::Render() {
    //std::cout << "\033[2J\033[1;1H"; // 화면에 출력된 정보들을 지운다.
    for(int i = 0; i < codes.size(); i++) {
        std::cout << codes[i] << std::endl;
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