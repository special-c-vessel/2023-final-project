#ifndef CULRY_APP_H_
#define CULRY_APP_H_

#include <iostream>
#include <string>
#include <map>

#include "culry_object.h"

using namespace std;

/**
 * CulryApp class
 * Culry의 메인 기능을 담당하는 클래스
*/
class CulryApp
{
public:
    /**
     * 생성자/소멸자 선언 부분
     * 인자로 클래스 객체를 생성하거나 operator 를 사용해서 = 연산자로 할당 가능
    */
    CulryApp() = default;
	CulryApp(const CulryApp&) = delete;
	CulryApp& operator=(const CulryApp&) = delete;
    ~CulryApp();

public:
    /**
     * GetRecord(CulryObject, int)
     * 함수의 첫번째 인자로 전달된 객체의 고유 ID를 반환
    */
    CulryObject GetRecord(CulryObject _obj, int _uniId);
    /**
     * SyncRecord(CulryObject, CulryObject)
     * objectMap 로부터 고유ID에 해당하는 변수를 반환
    */
    CulryObject SyncReocrd(CulryObject _rec, CulryObject _v);
    /**
     * Sync(CulryObject, CulryObject)
     * 인자로 전달된 두 개의 CulryObject 의 싱크를 비교
    */
    CulryObject Sync (CulryObject _obj1, CulryObject _obj2);
    
    void InstrCall(CulryObject _f, CulryObject _o, CulryObject _a1);
    void Enter();
    void Replay();

public:
    bool IsRecoding() { return isRecoding; }
private:
    map<int, int> objectMap;
    bool isRecoding = false;
    int globalIndex = 0;
    CulryObject trace[100];
};

#endif  // CULRY_APP_H_