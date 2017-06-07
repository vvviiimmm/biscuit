#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, DECZeroPage)
	{
		u8 program[6] = { 0xc6, 0x1f };
		WriteMemory(0x1f, 0xf);
		Program(program, 6);
		CheckNotAffectedP(0xff);
		TestMemory(0x1f, 0xe);		
	}

	TEST_F(CPUTest, DECZeroPageZero)
	{
		u8 program[6] = { 0xc6, 0x1f };
		WriteMemory(0x1f, 0x1);
		Program(program, 6);
		CheckNotAffectedP(0xfd);
		TestMemory(0x1f, 0x0);
		TestZeroSet();
	}

	TEST_F(CPUTest, DECZeroPageNegative)
	{
		u8 program[6] = { 0xc6, 0x1f };
		WriteMemory(0x1f, 0x0);
		Program(program, 6);
		CheckNotAffectedP(0x7f);
		TestMemory(0x1f, 0xff);
		TestNegativeSet();
	}

	TEST_F(CPUTest, DEXTrivial)
	{
		u8 program[1] = { 0xca };
		SetX(0xa);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestX(0x9);
	}

	TEST_F(CPUTest, DEXNegative)
	{
		u8 program[1] = { 0xca };
		SetX(0x0);
		Program(program, 1);
		CheckNotAffectedP(0x7f);
		TestX(0xff);
	}

	TEST_F(CPUTest, DEYTrivial)
	{
		u8 program[1] = { 0x88 };
		SetY(0xa);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestY(0x9);
	}

	TEST_F(CPUTest, DEYOne)
	{
		u8 program[1] = { 0x88 };
		SetY(0x1);
		Program(program, 1);
		// CheckNotAffectedP(0xff);
		TestY(0x0);
		TestZeroSet();
	}
}