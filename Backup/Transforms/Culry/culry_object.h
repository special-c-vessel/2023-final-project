#ifndef CULRY_OBJECT_H_
#define CULRY_OBJECT_H_

/**
 * CulryObject
 * Culry에서 사용되는 오브젝트 클래스
 * trace 배열이나 GetRecord, Sync 같은 함수에서 해당 클래스 객체를 이용해서 정보를 전달하고 반환
 * 정보를 저장하는 객체이므로 타입, 값, 계측 유무, 유추 값 등을 포함
*/
class CulryObject
{
public:
    /**
     * CulryObjec 의 타입을 지정한 열거형 타입
    */
    enum Type 
    {
        Value, Function, Undefine, Empty
    };
public:
    /**
     * 생성자/소멸자 구현부
    */
	CulryObject() = default;
	CulryObject(const CulryObject&) = delete;
	CulryObject& operator=(const CulryObject&) = delete;
    ~CulryObject();
public:
    /**
     * Getter/Setter
    */
    void SetType(Type _type) { type = _type; }
    Type GetType() { return type; }
    void SetUniqueID(int _uniId) { uniId = _uniId; }
    int GetUniqueID() {return uniId;}
    void SetValue(int _value) { value = _value; }
    int GetValue() { return value; }
    bool IsInstrumented() { return isInstrumented; }
private:
    /**
     * 객체가 전달해야할 정보
    */
    Type type = Type::Empty;
    int value = 0;
    int uniId = 0;
    bool isInstrumented = false;
};

#endif  // CULRY_OBJECT_H_