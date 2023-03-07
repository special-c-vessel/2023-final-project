#include <iostream>
#include <string>
#include <map>

using namespace std;

class Object 
{
public:
    enum Type 
    {
        Value, Function, Undefine, Empty
    };
public:
    Object() {}
    ~Object() {}
public:
    void SetType(Type _type) { type = _type; }
    Type GetType() { return type; }
    void SetUniqueID(int _uniId) { uniId = _uniId; }
    int GetUniqueID() {return uniId;}
    void SetValue(int _value) { value = _value; }
    int GetValue() { return value; }
    bool IsInstrumented() { return isInstrumented; }
private:
    Type type = Type::Empty;
    int value = 0;
    int uniId = 0;
    bool isInstrumented = false;
};

class App
{
public:
    App() {}
    ~App() {}

public:
    Object GetRecord(Object _obj, int _uniId)
    {
        if(_obj.GetType() != Object::Type::Empty && (_obj.GetType() == Object::Type::Value || _obj.GetType() == Object::Type::Function))
        {
            if (_obj.GetUniqueID() == 0) {
                _obj.SetUniqueID(_uniId);
                return _obj;
            }
        } else 
        {
            return _obj;
        }
    }

    Object SyncReocrd(Object _rec, Object _v)
    {
        // var result = rec.val
        Object _result = Object();
        _result.SetUniqueID(_rec.GetUniqueID());

        // if (rec.val !== null && (rec.type === ‘object’ || rec.type === ‘function’))
        if (_rec.GetValue() != 0 && (_rec.GetType() == Object::Type::Value || _rec.GetType() == Object::Type::Function ))
        {
            // if ( objectMap[rec.val] )
            auto _findValue = objectMap.find(_rec.GetUniqueID());
            if ( _findValue != objectMap.end )
            {
                // result = objectMap[rec.val];
                _result.SetValue((int)_findValue);
            }
            else
            {
                // if(typeof v !== rec.type || v[“*id*”])
                if (_v.GetType() != _rec.GetType() || _v.GetUniqueID() != 0)
                {
                    // v = (rec.type === ‘object’) ? {} : function() {}
                    if (_rec.GetType() == Object::Type::Value) 
                    {
                        
                    }
                    else 
                    {

                    }

                    // v[“*id*”] = rec.val;
                    _v.SetUniqueID(_rec.GetUniqueID());

                    // objectMap [rec.val] = v;
                    objectMap.insert({_rec.GetUniqueID(), _v.GetValue()});

                    // result = v;
                    _result = _v;

                }
            }
        }

        return _result;
    }

    Object Sync (Object _obj1, Object _obj2)
    {
        // i = i + 1
        globalIndex++;

        // if (recoding) 
        if(IsRecoding())
        {
            // if (v1 !== v2)
            if (_obj1.GetUniqueID() != _obj2.GetUniqueID()) 
            {
                trace[globalIndex] = GetRecord(_obj1);
            }
            return _obj1;
        }
        else
        {
            // if (trace[i]) return syncRecord( trace[i], v1);
            if(trace[globalIndex] != NULL) 
            {
                return SyncReocrd(trace[globalIndex], _obj1);
            }
            // else return v1;
            else
            {
                return _obj1;
            }
        }
    }
public:
    bool IsRecoding() { return isRecoding; }
private:
    map<int, int> objectMap;
    bool isRecoding = false;
    int globalIndex = 0;
    Object trace[100] = { NULL };
};


int main() 
{
    App app = App();
    Object obj = Object();
    
    return 0;
}