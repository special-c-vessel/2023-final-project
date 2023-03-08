#inlcude "culry_app.h"

CulryObject CulryApp::GetRecord(CulryObject _obj, int _uniId) noexcept
{
    if(_obj.GetType() != CulryObject::Type::Empty && (_obj.GetType() == CulryObject::Type::Value || _obj.GetType() == CulryObject::Type::Function))
    {
        if (_obj.GetUniqueID() == 0) {
            _obj.SetUniqueID(_uniId);
            return _obj;
        }
    } 
    else 
    {
        return _obj;
    }
}


CulryObject CulryApp::SyncReocrd(CulryObject _rec, CulryObject _v) noexcept
{
    // var result = rec.val
    CulryObject _result = CulryObject();
    _result.SetUniqueID(_rec.GetUniqueID());

    // if (rec.val !== null && (rec.type === ‘object’ || rec.type === ‘function’))
    if (_rec.GetValue() != 0 && (_rec.GetType() == CulryObject::Type::Value || _rec.GetType() == CulryObject::Type::Function ))
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
                if (_rec.GetType() == CulryObject::Type::Value) 
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

CulryObject CulryApp::Sync(CulryObject _obj1, CulryObject _obj2) noexcept
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

// function instrCall(f, o, a1, ..., an)
void CulryApp::InstrCall(CulryObject _f, CulryObject _o, CulryObject _a1) noexcept
{
    if(f.IsInstrumented())
    {
        // return call(_f, _o, _a1);
    }
    else
    {
        // return Replay();
    }
}

void CulryApp::Enter() noexcept
{
    globalIndex++;

    if(v.IsRecording())
    {
        trace[i] = GetRecord(v);
        trace[i].isFunCall = true;
    }
    return "";
}

void CulryApp::Replay() noexcept
{
    while(trace[i + 1].IsFunCall)
    {
        Object f = syncRecord(trace[i + 1], undefind());
        //f() llvm 함수?
    }
}