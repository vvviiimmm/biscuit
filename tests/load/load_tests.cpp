#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	TEST_F(CPUTest, LDAImmidiateTrivial)
	{
		u8 program[2] = { 0xa9, 0x42 };
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x42);
	}

	TEST_F(CPUTest, LDAImmidiateZero)
	{
		u8 program[2] = { 0xa9, 0x0 };
		Program(program, 2);
		CheckNotAffectedP(0xfd); // 11111101, zero is set
		TestA(0x0);
	}

	TEST_F(CPUTest, LDAImmidiateNegative)
	{
		u8 program[2] = { 0xa9, 0xde };
		Program(program, 2);
		CheckNotAffectedP(0x7f); // 01111111, negative is set
		TestA(0xde);
	}

	TEST_F(CPUTest, LDAZeroPageTrivial)
	{
		u8 program[2] = { 0xa5, 0x42 };
		WriteMemory(0x42, 0x43);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x43);
	}

	TEST_F(CPUTest, LDAZeroPageZero)
	{
		u8 program[2] = { 0xa5, 0x42 };
		WriteMemory(0x42, 0x0);
		Program(program, 2);
		CheckNotAffectedP(0xfd);
		TestA(0x0);
	}

	TEST_F(CPUTest, LDAZeroPageXTrivial)
	{
		u8 program[2] = { 0xb5, 0xf };
		SetX(0xf);
		WriteMemory(0xf + 0xf, 0x43);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x43);
	}

	TEST_F(CPUTest, LDAAbsoluteTrivial)
	{
		u8 program[3] = { 0xad, 0x42, 0xaa };
		WriteMemory(0xaa42, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x43);
	}

	TEST_F(CPUTest, LDAAbsoluteXTrivial)
	{
		u8 program[3] = { 0xbd, 0xf, 0xaa };
		SetX(0xf);
		WriteMemory(0xaa1e, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x43);
	}

	TEST_F(CPUTest, LDAAbsoluteYTrivial)
	{
		u8 program[3] = { 0xb9, 0xf, 0xaa };
		SetY(0xf);
		WriteMemory(0xaa1e, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestA(0x43);
	}

	TEST_F(CPUTest, LDAIndXTrivial)
	{
		u8 program[2] = { 0xa1, 0x0 };
		SetX(0x4);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4443, 0x3c);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x3c);
	}

	TEST_F(CPUTest, LDAIndYTrivial)
	{
		u8 program[2] = { 0xb1, 0x4 };
		SetY(0x6);
		WriteMemory(0x4, 0x43);
		WriteMemory(0x5, 0x44);
		WriteMemory(0x4449, 0x3c);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestA(0x3c);
	}

	TEST_F(CPUTest, LDXImmidiateTrivial)
	{
		u8 program[2] = { 0xa2, 0x42 };
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestX(0x42);
	}

	TEST_F(CPUTest, LDXZeroPageTrivial)
	{
		u8 program[2] = { 0xa6, 0x42 };
		WriteMemory(0x42, 0x43);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestX(0x43);
	}

	TEST_F(CPUTest, LDXZeroPageYTrivial)
	{
		u8 program[2] = { 0xb6, 0xf };
		SetY(0xf);
		WriteMemory(0xf + 0xf, 0x43);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestX(0x43);
	}	

	TEST_F(CPUTest, LDXAbsoluteTrivial)
	{
		u8 program[3] = { 0xae, 0x42, 0xaa };
		WriteMemory(0xaa42, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestX(0x43);
	}

	TEST_F(CPUTest, LDXAbsoluteYTrivial)
	{
		u8 program[3] = { 0xbe, 0xf, 0xaa };
		SetY(0xf);
		WriteMemory(0xaa1e, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestX(0x43);
	}

	TEST_F(CPUTest, LDYImmidiateTrivial)
	{
		u8 program[2] = { 0xa0, 0x42 };
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestY(0x42);
	}

	TEST_F(CPUTest, LDYZeroPageTrivial)
	{
		u8 program[2] = { 0xa4, 0x42 };
		WriteMemory(0x42, 0x43);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestY(0x43);
	}

	TEST_F(CPUTest, LDYZeroPageXTrivial)
	{
		u8 program[2] = { 0xb4, 0xf };
		SetX(0xf);
		WriteMemory(0xf + 0xf, 0x43);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestY(0x43);
	}	

	TEST_F(CPUTest, LDYAbsoluteTrivial)
	{
		u8 program[3] = { 0xac, 0x42, 0xaa };
		WriteMemory(0xaa42, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestY(0x43);
	}

	TEST_F(CPUTest, LDYAbsoluteXTrivial)
	{
		u8 program[3] = { 0xbc, 0xf, 0xaa };
		SetX(0xf);
		WriteMemory(0xaa1e, 0x43);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestY(0x43);
	}

	// STORE =========================================
	TEST_F(CPUTest, STAZeroPage)
	{
		u8 program[2] = { 0x85, 0x1a };
		SetA(0x42);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1a, 0x42);
	}

	TEST_F(CPUTest, STAZeroPageX)
	{
		u8 program[2] = { 0x95, 0x1a };
		SetA(0x42);
		SetX(0x1);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1b, 0x42);
	}

	TEST_F(CPUTest, STAAbsolute)
	{
		u8 program[3] = { 0x8d, 0xad, 0xde };
		SetA(0x42);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0x42);
	}

	TEST_F(CPUTest, STAAbsoluteX)
	{
		u8 program[3] = { 0x9d, 0xad, 0xde };
		SetX(0x1);
		SetA(0x42);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdeae, 0x42);
	}

	TEST_F(CPUTest, STXZeroPage)
	{
		u8 program[2] = { 0x86, 0x1a };
		SetX(0x42);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1a, 0x42);
	}

	TEST_F(CPUTest, STXZeroPageY)
	{
		u8 program[2] = { 0x96, 0x1a };
		SetX(0x42);
		SetY(0x1);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1b, 0x42);
	}

	TEST_F(CPUTest, STXAbsolute)
	{
		u8 program[3] = { 0x8e, 0xad, 0xde };
		SetX(0x42);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0x42);
	}

	TEST_F(CPUTest, STYZeroPage)
	{
		u8 program[2] = { 0x84, 0x1a };
		SetY(0x42);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1a, 0x42);
	}

	TEST_F(CPUTest, STYZeroPageX)
	{
		u8 program[2] = { 0x94, 0x1a };
		SetY(0x42);
		SetX(0x1);
		Program(program, 2);
		CheckNotAffectedP(0xff);
		TestMemory(0x1b, 0x42);
	}

	TEST_F(CPUTest, STYAbsolute)
	{
		u8 program[3] = { 0x8c, 0xad, 0xde };
		SetY(0x42);
		Program(program, 3);
		CheckNotAffectedP(0xff);
		TestMemory(0xdead, 0x42);
	}

	// TAX
	TEST_F(CPUTest, TAX)
	{
		u8 program[1] = { 0xaa };
		SetX(0x42);
		SetA(0x24);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestX(0x24);
	}

	TEST_F(CPUTest, TAXZero)
	{
		u8 program[1] = { 0xaa };
		SetX(0x42);
		SetA(0x0);
		Program(program, 1);
		CheckNotAffectedP(0xfd);
		TestX(0x0);
		TestZeroSet();
	}

	TEST_F(CPUTest, TAY)
	{
		u8 program[1] = { 0xa8 };
		SetY(0x42);
		SetA(0x24);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestY(0x24);
	}

	TEST_F(CPUTest, TSX)
	{
		u8 program[1] = { 0xba };
		SetSP(0x42);
		SetX(0x24);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestX(0x42);
	}

	TEST_F(CPUTest, TXA)
	{
		u8 program[1] = { 0x8a };
		SetA(0x42);
		SetX(0x24);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestA(0x24);
	}

	TEST_F(CPUTest, TXS)
	{
		u8 program[1] = { 0x9a };
		SetSP(0x42);
		SetX(0x24);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestSP(0x24);
	}

	TEST_F(CPUTest, TYA)
	{
		u8 program[1] = { 0x98 };
		SetY(0x42);
		SetA(0x24);
		Program(program, 1);
		CheckNotAffectedP(0xff);
		TestA(0x42);
	}
	
}