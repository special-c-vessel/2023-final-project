#include "replay_header.h"

class DeclareData {
public:// Generator
	DeclareData() = default;
public:// Nomal function
	void LinkDecData(DeclareData* _decData);
public:// Getter Setter function
	DeclareData GetParentData();
	void SetParentData(DeclareData _decData);
private:
	DeclareData* parentData;
	DeclareData* childData;
public:
	string name;
	string ctype;
	string type;
	string value;
	string ptr;
	string line;
	string col;
	int repeat = 1;
};
