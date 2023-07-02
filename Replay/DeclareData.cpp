#include "DeclareData.h"

DeclareData::DeclareData() {
    name = "";
    type = "";
    value = "";
    ptr = "";
    line = "";

    parentData = NULL;
    childData = NULL;
}

void DeclareData::LinkDecData(DeclareData* _decData) {
    if(childData == NULL) {
        childData = _decData;
    }
    else {
        childData->LinkDecData(_decData);
    }
}