#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <unistd.h>
#include <ncurses.h>

#include "record_data.h"

#define CODE_SHOW_RANGE 10

class App {
public: // class constructor, destructor
    App();
    App(char*, char*);
    ~App();
public: // main framework function
    void Run();
    void Init(); // 초기화 함수
    void Input(); // 사용자로부터 입력값을 받는 함수
    void Update(); // 사용자로부터 받은 입력값에 따라 내부 데이터를 업데이트하는 함수
    void Render(); // 업데이트된 내부 데이터를 토대로 콘솔에 그리는 함수
private: // app class function
    void PrintRecData(RecordData*);
    bool IsNumber(std::string const&);
public: // main framework variable
    char* srcFile;
    char* recordFile;
    bool programOver;  
    int currentLine;

    std::vector<RecordData*> records;
    std::vector<std::string> codes;
};