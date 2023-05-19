#include "TestClass.h"

TestClass::TestClass() {
	testValue = 0;
}

int TestClass::TestFunc(int _testValue) {
	testValue = _testValue;
	return testValue;
}
