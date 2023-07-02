#include "record_data.h"

RecordData::RecordData() 
: name(""), type(""), value(""), ptr(""), line(""), col("") {
    std::cout << "Initialize record data class" << std::endl;
}

RecordData::~RecordData() {
    std::cout << "Destory record data class" << std::endl;
}