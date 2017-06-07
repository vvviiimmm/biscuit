#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, ADCImmidiateTrivial)
	{
		u8 program[2] = { 0x69, 0x42 };
		SetA(0x0);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x42);
	}

	TEST_F(CPUTest, ADCImmidiateOverflow)
	{
		u8 program[2] = { 0x69, 0x42 };
		SetA(0x42);
		Program(program, 2);
		CheckNotAffectedP(0x3f); // negative set, overflow set
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCImmidiateOverflowCarry)
	{
		u8 program[2] = { 0x69, 0x80 };
		SetA(0x81);
		Program(program, 2);
		CheckNotAffectedP(0xbe); // overflow set, carry set
		TestA(0x01);
	}

	TEST_F(CPUTest, ADCImmidiateCarry)
	{
		u8 program[2] = { 0x69, 0xff };
		SetA(0xff);
		Program(program, 2);
		CheckNotAffectedP(0x7e); // negaive set, carry set
		TestA(0xfe);
	}

	TEST_F(CPUTest, ADCZeroPage)
	{
		u8 program[2] = { 0x65, 0x1f };
		SetA(0x42);
		WriteMemory(0x1f, 0x42);
		Program(program, 2);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCZeroPageX)
	{
		u8 program[2] = { 0x75, 0x1d };
		SetA(0x42);
		SetX(0x2);
		WriteMemory(0x1f, 0x42);
		Program(program, 2);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCAbsolute)
	{
		u8 program[3] = { 0x6d, 0xad, 0xde };
		SetA(0x42);
		WriteMemory(0xdead, 0x42);
		Program(program, 3);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCAbsoluteX)
	{
		u8 program[3] = { 0x7d, 0xab, 0xde };
		SetA(0x42);
		SetX(0x2);
		WriteMemory(0xdead, 0x42);
		Program(program, 3);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCAbsoluteY)
	{
		u8 program[3] = { 0x79, 0xab, 0xde };
		SetA(0x42);
		SetY(0x2);
		WriteMemory(0xdead, 0x42);
		Program(program, 3);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCIndX)
	{
		u8 program[2] = { 0x61, 0x0 };
		SetA(0x42);
		SetX(0x4);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4443, 0x42);
		Program(program, 2);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}

	TEST_F(CPUTest, ADCIndY)
	{
		u8 program[2] = { 0x71, 0x4 };
		SetA(0x42);
		SetY(0x6);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4449, 0x42);
		Program(program, 2);
		CheckNotAffectedP(0x3f); // NV
		TestA(0x84);
	}
}