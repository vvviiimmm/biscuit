#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, ANDImmidiate)
	{
		u8 program[2] = { 0x29, 0x35 };
		SetA(0x55);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x15);
	}

	TEST_F(CPUTest, ANDImmidiateZero)
	{
		u8 program[2] = { 0x29, 0xf0 };
		SetA(0xf);
		Program(program, 2);
		CheckNotAffectedP(0xfd); // Z
		TestZeroSet();
		TestA(0x0);
	}

	TEST_F(CPUTest, ANDImmidiateNegative)
	{
		u8 program[2] = { 0x29, 0xff };
		SetA(0xff);
		Program(program, 2);
		CheckNotAffectedP(0x7f); // Z
		TestNegativeSet();
		TestA(0xff);
	}

	TEST_F(CPUTest, ANDZeroPage)
	{
		u8 program[2] = { 0x25, 0x1f };
		SetA(0x7a);
		WriteMemory(0x1f, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	TEST_F(CPUTest, ANDZeroPageX)
	{
		u8 program[2] = { 0x35, 0x1d };
		SetA(0x7a);
		SetX(0x2);
		WriteMemory(0x1f, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	TEST_F(CPUTest, ANDAbsolute)
	{
		u8 program[3] = { 0x2d, 0xad, 0xde };
		SetA(0x7a);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	TEST_F(CPUTest, ANDAbsoluteX)
	{
		u8 program[3] = { 0x3d, 0xab, 0xde };
		SetA(0x7a);
		SetX(0x2);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	TEST_F(CPUTest, ANDAbsoluteY)
	{
		u8 program[3] = { 0x39, 0xab, 0xde };
		SetA(0x7a);
		SetY(0x2);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	TEST_F(CPUTest, ANDIndX)
	{
		u8 program[2] = { 0x21, 0x0 };
		SetA(0x7a);
		SetX(0x4);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4443, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	TEST_F(CPUTest, ANDIndY)
	{
		u8 program[2] = { 0x31, 0x4 };
		SetA(0x7a);
		SetY(0x6);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4449, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x2a);
	}

	// EOR
	TEST_F(CPUTest, EORImmidiate)
	{
		u8 program[2] = { 0x49, 0x35 };
		SetA(0x55);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x60);
	}

	TEST_F(CPUTest, EORImmidiateZero)
	{
		u8 program[2] = { 0x49, 0x1f };
		SetA(0x1f);
		Program(program, 2);
		CheckNotAffectedP(0xfd); // Z
		TestZeroSet();
		TestA(0x0);
	}

	TEST_F(CPUTest, EORImmidiateNegative)
	{
		u8 program[2] = { 0x49, 0x7f };
		SetA(0xff);
		Program(program, 2);
		CheckNotAffectedP(0x7f); // Z
		TestNegativeSet();
		TestA(0x80);
	}

	TEST_F(CPUTest, EORZeroPage)
	{
		u8 program[2] = { 0x45, 0x1f };
		SetA(0x7a);
		WriteMemory(0x1f, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	TEST_F(CPUTest, EORZeroPageX)
	{
		u8 program[2] = { 0x55, 0x1d };
		SetA(0x7a);
		SetX(0x2);
		WriteMemory(0x1f, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	TEST_F(CPUTest, EORAbsolute)
	{
		u8 program[3] = { 0x4d, 0xad, 0xde };
		SetA(0x7a);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	TEST_F(CPUTest, EORAbsoluteX)
	{
		u8 program[3] = { 0x5d, 0xab, 0xde };
		SetA(0x7a);
		SetX(0x2);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	TEST_F(CPUTest, EORAbsoluteY)
	{
		u8 program[3] = { 0x59, 0xab, 0xde };
		SetA(0x7a);
		SetY(0x2);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	TEST_F(CPUTest, EORIndX)
	{
		u8 program[2] = { 0x41, 0x0 };
		SetA(0x7a);
		SetX(0x4);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4443, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	TEST_F(CPUTest, EORIndY)
	{
		u8 program[2] = { 0x51, 0x4 };
		SetA(0x7a);
		SetY(0x6);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4449, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x55);
	}

	// ORA
	TEST_F(CPUTest, ORAImmidiate)
	{
		u8 program[2] = { 0x09, 0x35 };
		SetA(0x55);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x75);
	}

	TEST_F(CPUTest, ORAImmidiateZero)
	{
		u8 program[2] = { 0x09, 0x00 };
		SetA(0x00);
		Program(program, 2);
		CheckNotAffectedP(0xfd); // Z
		TestZeroSet();
		TestA(0x0);
	}

	TEST_F(CPUTest, ORAImmidiateNegative)
	{
		u8 program[2] = { 0x09, 0x80 };
		SetA(0x0);
		Program(program, 2);
		CheckNotAffectedP(0x7f); // Z
		TestNegativeSet();
		TestA(0x80);
	}

	TEST_F(CPUTest, ORAZeroPage)
	{
		u8 program[2] = { 0x05, 0x1f };
		SetA(0x7a);
		WriteMemory(0x1f, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}

	TEST_F(CPUTest, ORAZeroPageX)
	{
		u8 program[2] = { 0x15, 0x1d };
		SetA(0x7a);
		SetX(0x2);
		WriteMemory(0x1f, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}

	TEST_F(CPUTest, ORAAbsolute)
	{
		u8 program[3] = { 0x0d, 0xad, 0xde };
		SetA(0x7a);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}

	TEST_F(CPUTest, ORAAbsoluteX)
	{
		u8 program[3] = { 0x1d, 0xab, 0xde };
		SetA(0x7a);
		SetX(0x2);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}

	TEST_F(CPUTest, ORAAbsoluteY)
	{
		u8 program[3] = { 0x19, 0xab, 0xde };
		SetA(0x7a);
		SetY(0x2);
		WriteMemory(0xdead, 0x2f);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}

	TEST_F(CPUTest, ORAIndX)
	{
		u8 program[2] = { 0x01, 0x0 };
		SetA(0x7a);
		SetX(0x4);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4443, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}

	TEST_F(CPUTest, ORAIndY)
	{
		u8 program[2] = { 0x11, 0x4 };
		SetA(0x7a);
		SetY(0x6);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4449, 0x2f);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x7f);
	}
}