// ===========================================================================
// cpu_tests.cpp
// (c) Alex, 2013
// ===========================================================================

#include "cpu_tests.h"

using namespace std;

namespace unit_tests
{
	// =======================================================================
	/**
	*/
	CPUTest::CPUTest() 
	{
	};

	// =======================================================================
	/**
	*/
	CPUTest::~CPUTest() 
	{

	};

	// =======================================================================
	/**
	*/
	void CPUTest::SetUp()
	{
		init_P 		= cpu.P;
		init_SP 	= cpu.SP;
		init_A		= cpu.A;
		init_X		= cpu.X;
		init_Y		= cpu.Y;
		init_PC		= cpu.PC;

		cpu.interrupts = &interrupts;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TearDown()
	{
	}

	// =======================================================================
	/**
	*/
	void CPUTest::Program(u8* program, size_t size)
	{
		u8* prg = new u8[0x10000];
		memset(prg, 0, 0x10000);
		memcpy(prg + 0x8000, program, size);
		for (map<u16, u8>::iterator it = memory_writes.begin(); it != memory_writes.end(); ++it)
			prg[it->first] = it->second;
		memcpy(cpu.memory.buffer, prg, 0x10000);
		delete[] prg;

		cpu.PC = 0x8000;

		/* It doesn't really matter

		// setup interrupts code, endless loop
		cpu.memory.buffer[0xff00] = 0x4c;
		cpu.memory.buffer[0xff00] = 0x00;
		cpu.memory.buffer[0xff00] = 0xff;

		// reset vector
		cpu.memory.buffer[0xfffc] = 0x00;
		cpu.memory.buffer[0xfffd] = 0xff;

		// nmi vector
		cpu.memory.buffer[0xfffa] = 0x00;
		cpu.memory.buffer[0xfffb] = 0xff;

		// irq vector
		cpu.memory.buffer[0xfffe] = 0x00;
		cpu.memory.buffer[0xffff] = 0xff;
		*/

		for (;;)
		{
			// kinda hack, if the next op is BRK instruction — we're done
			if (cpu.memory.read(cpu.PC) == 0)
				break;
			cpu.tick();
		}

	}

	// =======================================================================
	/**
	*/
	void CPUTest::CheckNotAffectedP(u8 mask)
	{
		ASSERT_EQ((init_P ^ cpu.P), (u8)~mask);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::CheckNotAffectedA()
	{
		ASSERT_EQ(init_A, cpu.A);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::CheckNotAffectedX()
	{
		ASSERT_EQ(init_X, cpu.X);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::CheckNotAffectedY()
	{
		ASSERT_EQ(init_Y, cpu.Y);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::CheckNotAffectedPC()
	{
		ASSERT_EQ(init_PC, cpu.PC);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestA(u8 value)
	{
		ASSERT_EQ(cpu.A, value);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestX(u8 value)
	{
		ASSERT_EQ(cpu.X, value);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestY(u8 value)
	{
		ASSERT_EQ(cpu.Y, value);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestP(u8 value)
	{
		ASSERT_EQ(cpu.P, value);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestPC(u16 value)
	{
		ASSERT_EQ(cpu.PC, value);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestSP(u8 value)
	{
		ASSERT_EQ(cpu.SP, value);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestZeroSet()
	{
		ASSERT_NE(cpu.P & (1 << 1), 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestOverflowSet()
	{
		ASSERT_NE(cpu.P & (1 << 6), 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestCarrySet()
	{
		ASSERT_NE(cpu.P & 1, 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestNegativeSet()
	{
		ASSERT_NE(cpu.P & (1 << 7), 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestZeroClear()
	{
		ASSERT_EQ(cpu.P & (1 << 1), 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestOverflowClear()
	{
		ASSERT_EQ(cpu.P & (1 << 6), 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestCarryClear()
	{
		ASSERT_EQ(cpu.P & 1, 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestNegativeClear()
	{
		ASSERT_EQ(cpu.P & (1 << 7), 0);
	}

	// =======================================================================
	/**
	*/
	void CPUTest::WriteMemory(u16 addr, u8 value)
	{
		// cpu.memory.write(addr, value);
		memory_writes[addr] = value;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::SetA(u8 value)
	{
		cpu.A = value;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::SetX(u8 value)
	{
		cpu.X = value;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::SetY(u8 value)
	{
		cpu.Y = value;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::SetP(u8 value)
	{
		cpu.P = value;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::SetSP(u8 value)
	{
		cpu.SP = value;
	}

	// =======================================================================
	/**
	*/
	void CPUTest::TestMemory(u16 addr, u8 value)
	{
		ASSERT_EQ(cpu.memory.buffer[addr], value);
	}
}