#include <iostream>
#include <string>

using namespace std;

class Object
{
public:
    enum Type
    {
        Value, Function
    };
public:
    Type GetType() { return type; }
private:
    Type type;
};

class App
{
public:
    App()
    {

    }

public:
    string GetRecord(Object _obj)
    {
        if((_obj.GetType() == Object::Type::Value || _obj.GetType() == Object::Type::Function))
        {
            
        }
        return "";
    }

    string syncRecord() {return "";}
    string sync() {return "";}
    
    string undefind() {return "";}
    
    string call(Object f, Object o, Object a1) { return "";}

    
    //    function instrCall(f, o, a1, ..., an)
    string instrCall(Object f, Object o, Object a1)
    {
        if(f.IsInstrumented())
        {
            return call(<#Object f#>, <#Object o#>, <#Object a1#>);
        }
        else
        {
            return replay();
        }
        
        return "";
    }
    
    string enter()
    {
        i ++;

        if(v.IsRecording())
        {
            trace[i] = GetRecord(v);
            trace[i].isFunCall = true;
        }
        return "";
    }
    
    string replay()
    {
        while(trace[i + 1].IsFunCall)
        {
            Object f = syncRecord(trace[i + 1], undefind());
            //f() llvm 함수?
        }
        
        return undefind();
    }
    
};


int main()
{
    App app = App();
    Object obj = Object();

    cout << app.GetRecord(obj) << endl;
    
    return 0;
}
