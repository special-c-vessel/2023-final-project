#include <string>
#include <vector>
#include <iostream>

class RecordData {
public: // class constructor, destructor
    RecordData();
    ~RecordData();
public: // variable getter setter
    void SetName(std::string);
    std::string GetName();
    void SetType(std::string);
    std::string GetType();
    void SetValue(std::string);
    std::string GetValue();
    void SetPtr(std::string);
    std::string GetPtr();
    void SetLine(std::string);
    std::string GetLine();
    void SetCol(std::string);
    std::string GetCol();
public:
	std::string name;
	std::string type;
	std::string value;
	std::string ptr;
	std::string line;
	std::string col;
};