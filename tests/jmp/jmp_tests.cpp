#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, JMPAbs)
	{
		u8 program[3] = { 0x4c, 0xad, 0xde };
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestPC(0xdead);
	}

	TEST_F(CPUTest, JMPInd)
	{
		u8 program[3] = { 0x6c, 0xad, 0xde };
		WriteMemory(0xdead, 0xef);
		WriteMemory(0xdeae, 0xbe);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestPC(0xbeef);
	}

	TEST_F(CPUTest, JSRRTS)
	{
		u8 program[10] = { 0x20, 0x05, 0x80, 0x0, 0x0, 0xa9, 0x42, 0x60, 0xa2, 0x55 };
		Program(program, 10);
		CheckNotAffectedP(0xff);
		TestA(0x42);
		CheckNotAffectedX();
	}

}