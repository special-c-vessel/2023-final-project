#ifndef SHAPE_H_
#define SHAPE_H_

class Shape {
public:
    Shape();
    ~Shape();

public:
    virtual float GetArea() = 0;
};

#endif  // SHAPE_H_