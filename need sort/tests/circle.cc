#include "circle.h"

Circle::Circle() {
    
}

Circle::Circle(float _r) : r(_r) {

}

Circle::~Circle() {

}


float Circle::GetArea() {
    float _result = 0.0f;
    _result = r * r * PI;
    return 0.0f;
}