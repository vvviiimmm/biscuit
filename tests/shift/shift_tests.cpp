#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, ASLAccumTrivial)
	{
		u8 program[1] = { 0x0a };
		SetA(0x1d);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestA(0x3a);
	}

	TEST_F(CPUTest, ASLAccumNegative)
	{
		u8 program[1] = { 0x0a };
		SetA(0x40);
		Program(program, 1);
		CheckNotAffectedP(0x7f);
		TestA(0x80);
	}

	TEST_F(CPUTest, ASLAccumCarry)
	{
		u8 program[1] = { 0x0a };
		SetA(0x81);
		Program(program, 1);
		CheckNotAffectedP(0xfe);
		TestA(0x2);
	}

	TEST_F(CPUTest, ASLZeroPage)
	{
		u8 program[2] = { 0x06, 0x1f };
		WriteMemory(0x1f, 0x1d);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1f, 0x3a);
	}

	TEST_F(CPUTest, ASLZeroPageNegativeCarry)
	{
		u8 program[2] = { 0x06, 0x1f };
		WriteMemory(0x1f, 0xff);
		Program(program, 2);
		CheckNotAffectedP(0x7e);
		TestNegativeSet();
		TestCarrySet();
		TestMemory(0x1f, 0xfe);
	}

	TEST_F(CPUTest, ASLZeroPageX)
	{
		u8 program[2] = { 0x16, 0x1d };
		SetX(0x2);
		WriteMemory(0x1f, 0x2c);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1f, 0x58);
	}

	TEST_F(CPUTest, ASLAbsolute)
	{
		u8 program[3] = { 0x0e, 0xad, 0xde };
		WriteMemory(0xdead, 0x2c);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0x58);
	}

	TEST_F(CPUTest, ASLAbsoluteX)
	{
		u8 program[3] = { 0x1e, 0xab, 0xde };
		SetX(0x2);
		WriteMemory(0xdead, 0x2c);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0x58);
	}

	// LSR
	TEST_F(CPUTest, LSRAccumTrivial)
	{
		u8 program[1] = { 0x4a };
		SetA(0x1c);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestA(0xe);
	}

	TEST_F(CPUTest, LSRAccumCarry)
	{
		u8 program[1] = { 0x4a };
		SetA(0x1d);
		Program(program, 1);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
		TestA(0xe);
	}

	TEST_F(CPUTest, LSRZeroPage)
	{
		u8 program[2] = { 0x46, 0x1f };
		WriteMemory(0x1f, 0x1c);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1f, 0xe);
	}

	TEST_F(CPUTest, LSRZeroPageX)
	{
		u8 program[2] = { 0x56, 0x1e };
		WriteMemory(0x1f, 0x1c);
		SetX(0x1);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1f, 0xe);
	}

	TEST_F(CPUTest, LSRAbsolute)
	{
		u8 program[3] = { 0x4e, 0xad, 0xde };
		WriteMemory(0xdead, 0x1c);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0xe);
	}

	TEST_F(CPUTest, LSRAbsoluteX)
	{
		u8 program[3] = { 0x5e, 0xab, 0xde };
		SetX(0x2);
		WriteMemory(0xdead, 0x1c);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0xe);
	}

	// ROL
	TEST_F(CPUTest, ROLAccumTrivial)
	{
		u8 program[1] = { 0x2a };
		SetA(0x18);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestA(0x30);
	}

	TEST_F(CPUTest, ROLAccumCarry)
	{
		u8 program[1] = { 0x2a };
		SetA(0xfe);
		Program(program, 1);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
		TestA(0xfc);
	}

	TEST_F(CPUTest, ROLAccumCarrySet)
	{
		u8 program[1] = { 0x2a };
		SetA(0xfe);
		SetP(0x21);
		Program(program, 1);
		TestCarrySet();
		TestA(0xfd);
	}

	TEST_F(CPUTest, ROLAccumZero)
	{
		u8 program[1] = { 0x2a };
		SetA(0x80);
		Program(program, 1);
		CheckNotAffectedP(0xfc);
		TestCarrySet();
		TestZeroSet();
		TestA(0x00);
	}

	// ROR
	TEST_F(CPUTest, RORAccumTrivial)
	{
		u8 program[1] = { 0x6a };
		SetA(0x18);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestA(0x0c);
	}

	TEST_F(CPUTest, RORAccumCarry)
	{
		u8 program[1] = { 0x6a };
		SetA(0x3);
		Program(program, 1);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
		TestA(0x1);
	}

	TEST_F(CPUTest, RORAccumCarrySet)
	{
		u8 program[1] = { 0x6a };
		SetA(0x2);
		SetP(0x21);
		Program(program, 1);
		TestA(0x81);
	}

	TEST_F(CPUTest, RORAccumZero)
	{
		u8 program[1] = { 0x6a };
		SetA(0x1);
		Program(program, 1);
		CheckNotAffectedP(0xfc);
		TestCarrySet();
		TestZeroSet();
		TestA(0x00);
	}
}