#include "App.h"
#include "Object.h"

V App::GetReord(V _v)
{
    if( _v !== nullptr && ( _v.GetType() !== Type::Object || _v.GetType() != Type::Function))
    {
        if (!_v.uniqueId != 0) _v.uniqueId = ++id;
        return _v;
    }
    return _v;
}

V App::syncRecord(V _rec, V _v)
{
    
}