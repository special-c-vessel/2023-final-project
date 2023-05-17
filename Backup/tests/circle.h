#ifndef CIRCLE_H_
#define CIRCLE_H_

#include "shape.h"

#define PI 3.141592

class Circle : public Shape {
public:
    Circle();
    Circle(float _r);

    ~Circle();

public:
    virtual float GetArea() override;

private:
    float r = 0.0f;
};

#endif  // CIRCLE_H_
