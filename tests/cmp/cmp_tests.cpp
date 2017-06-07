#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, CMPImmidiateTrivial)
	{
		u8 program[6] = { 0xc9, 0x01 };
		SetA(0x42);
		Program(program, 6);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CMPImmidiateZero)
	{
		u8 program[6] = { 0xc9, 0x42 };
		SetA(0x42);
		Program(program, 6);
		CheckNotAffectedP(0xfc);
		TestCarrySet();
		TestZeroSet();
	}

	TEST_F(CPUTest, CMPZeroPage)
	{
		u8 program[2] = { 0xc5, 0x1f };
		SetA(0x42);
		WriteMemory(0x1f, 0x01);
		Program(program, 2);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CPXImmidiateTrivial)
	{
		u8 program[6] = { 0xe0, 0x01 };
		SetX(0x42);
		Program(program, 6);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CPXZeroPage)
	{
		u8 program[2] = { 0xe4, 0x1f };
		SetX(0x42);
		WriteMemory(0x1f, 0x01);
		Program(program, 2);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CPXAbs)
	{
		u8 program[3] = { 0xec, 0xad, 0xde };
		SetX(0x42);
		WriteMemory(0xdead, 0x01);
		Program(program, 3);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CPYImmidiateTrivial)
	{
		u8 program[6] = { 0xc0, 0x01 };
		SetY(0x42);
		Program(program, 6);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CPYZeroPage)
	{
		u8 program[2] = { 0xc4, 0x1f };
		SetY(0x42);
		WriteMemory(0x1f, 0x01);
		Program(program, 2);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, CPYAbs)
	{
		u8 program[3] = { 0xcc, 0xad, 0xde };
		SetY(0x42);
		WriteMemory(0xdead, 0x01);
		Program(program, 3);
		CheckNotAffectedP(0xfe);
		TestCarrySet();
	}

	TEST_F(CPUTest, BITZeroPage)
	{
		u8 program[2] = { 0x24, 0x1d };
		SetA(0x59);
		WriteMemory(0x1d, 0x35);
		Program(program, 2);
		CheckNotAffectedP(0xff);
	}

	TEST_F(CPUTest, BITZeroPageZero)
	{
		u8 program[2] = { 0x24, 0x1d };
		SetA(0x0f);
		WriteMemory(0x1d, 0xf0);
		Program(program, 2);
		CheckNotAffectedP(0x3d);
		TestZeroSet();
		TestNegativeSet();
	}

	TEST_F(CPUTest, BITAbs)
	{
		u8 program[3] = { 0x2c, 0xad, 0xde };
		SetA(0x59);
		WriteMemory(0xdead, 0x35);
		Program(program, 3);
		CheckNotAffectedP(0xff);
	}
}