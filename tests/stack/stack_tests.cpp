#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	const int k_stack_location = 0x0100;

	TEST_F(CPUTest, PLP)
	{
		u8 program[6] = { 0x38, 0x08, 0x18, 0x28 };
		Program(program, 6);
		TestCarrySet();
	}

	TEST_F(CPUTest, PLA)
	{
		u8 program[6] = { 0xa9, 0x42, 0x48, 0xa9, 0x1f, 0x68 };
		Program(program, 6);
		TestA(0x42);
		TestSP(0xff);
	}

	TEST_F(CPUTest, PHP)
	{
		u8 program[3] = { 0xa9, 0xde, 0x08 };
		Program(program, 3);
		TestMemory(k_stack_location + 0xff, 0xa0);
		TestSP(0xfe);
	}

	TEST_F(CPUTest, PHA)
	{
		u8 program[3] = {  0xa9, 0x42, 0x48 };
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(k_stack_location + 0xff, 0x42);
		TestSP(0xfe);
	}
}