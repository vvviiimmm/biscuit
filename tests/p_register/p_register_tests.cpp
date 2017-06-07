#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, CLC)
	{
		u8 program[4] = { 0xa9, 0xff, 0x0a, 0x18 };
		Program(program, 4);
		TestCarryClear();
	}

	TEST_F(CPUTest, CLV)
	{
		u8 program[4] = { 0x69, 0x42, 0xb8 };
		SetA(0x42);
		Program(program, 4);
		TestOverflowClear();
	}
}