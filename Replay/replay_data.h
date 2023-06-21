#include "replay_header.h"

class ReplayData {
public:
enum DataType
{
    declare,
    operation
};
public:
    ReplayData();
    ~ReplayData();
public:

private:
    string val_name; // 변수 이름
    string val_type; // 변수 타입
    string val_value; // 변수 값
    string val_ptr; // 변수 주소
    string val_line; // 기록이 발생한 줄 번호

    // 오퍼레이션 기록 고조체
    string op; // 오퍼레이션 타입
    string result_name; // 결과 변수 이름
    string result_val; // 결과 변수 값
    string result_ptr; // 결과 변수 주소
    string val1; 
    string val2;
    string val_line; // 기록이 발생한 줄 번호
};