#include <stdio.h>
#include <iostream>

#include "circle.h"

int add (int _a, int _b) {
	return _a + _b;	
}

int sub (int _a, int _b) {
	return _a - _b;
}

int mul (int _a, int _b) {
	return _a * _b;
}

int main() {
	int x = 13;
	int y = 3;

	int add_result = add(x, y);
	int sub_result = sub(x, y);
	int mul_result = mul(x, y);

	Circle* circle = new Circle(3.0f);

	float circle_area = circle->GetArea();

	printf("add : %d", add_result);
	printf("sub : %d", sub_result);
	printf("mul : %d", mul_result);	
	printf("circle area : %f", circle_area);
	
	return 0;
}



