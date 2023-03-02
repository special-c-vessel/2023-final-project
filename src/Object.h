#include "App.h"

class Object {
public:
    enum Type {
        function = 0,
        object = 1
    };
public:
    Object();

public:
    Type GetType() { return type; }
private:
    Type type;
};