#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, INCZeroPage)
	{
		u8 program[6] = { 0xe6, 0x1f };
		WriteMemory(0x1f, 0xe);
		Program(program, 6);
		CheckNotAffectedP(0xff);
		TestMemory(0x1f, 0xf);		
	}

	TEST_F(CPUTest, INCZeroPageZero)
	{
		u8 program[6] = { 0xe6, 0x1f };
		WriteMemory(0x1f, 0xff);
		Program(program, 6);
		CheckNotAffectedP(0xfd);
		TestMemory(0x1f, 0x0);
		TestZeroSet();
	}

	TEST_F(CPUTest, INCZeroPageNegative)
	{
		u8 program[6] = { 0xe6, 0x1f };
		WriteMemory(0x1f, 0x80);
		Program(program, 6);
		CheckNotAffectedP(0x7f);
		TestMemory(0x1f, 0x81);
		TestNegativeSet();
	}

	TEST_F(CPUTest, INXTrivial)
	{
		u8 program[1] = { 0xe8 };
		SetX(0xa);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestX(0xb);
	}

	TEST_F(CPUTest, INXNegative)
	{
		u8 program[1] = { 0xe8 };
		SetX(0x80);
		Program(program, 1);
		CheckNotAffectedP(0x7f);
		TestX(0x81);
	}

	TEST_F(CPUTest, INYTrivial)
	{
		u8 program[1] = { 0xc8 };
		SetY(0xa);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestY(0xb);
	}

	TEST_F(CPUTest, INXNegativeToZero)
	{
		u8 program[1] = { 0xe8 };
		SetX(0xff);
		Program(program, 1);
		// CheckNotAffectedP(0xff);
		TestZeroSet();
		TestX(0x0);
	}
}