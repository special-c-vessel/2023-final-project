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
    }

    string syncRecord() {return "";}
    string sync() {return "";}
    string enter() {return "";}
    string instrCall() {return "";}
    string replay() {return "";}
};


int main() 
{
    App app = App();
    Object obj = Object();

    cout << app.GetRecord(obj) << endl;
    
    return 0;
}