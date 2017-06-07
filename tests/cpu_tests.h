#include "gtest/gtest.h"
#include <map>
#include "cpu.h"
#include "interrupts.h"

using namespace std;

namespace unit_tests
{
	class CPUTest : public testing::Test
	{
	public:
		CPUTest();
		virtual ~CPUTest();

		virtual void SetUp();
		virtual void TearDown();

		void Program(u8* program, size_t size);

		// checks status registers for changes in bits specified
		// by mask.
		void CheckNotAffectedP(u8 mask);

		// registers unaffected test
		void CheckNotAffectedA();
		void CheckNotAffectedX();
		void CheckNotAffectedY();
		void CheckNotAffectedPC();

		// registers test
		void TestA(u8 value);
		void TestX(u8 value);
		void TestY(u8 value);
		void TestP(u8 value);
		void TestPC(u16 value);
		void TestSP(u8 value);

		void TestZeroSet();
		void TestOverflowSet();
		void TestCarrySet();
		void TestNegativeSet();

		void TestZeroClear();
		void TestOverflowClear();
		void TestCarryClear();
		void TestNegativeClear();

		// registers set
		void SetA(u8 value);
		void SetX(u8 value);
		void SetY(u8 value);
		void SetP(u8 value);
		void SetSP(u8 value);

		void WriteMemory(u16 addr, u8 value);
		void TestMemory(u16 addr, u8 value);

	private:
		Emulation::CPU cpu;
		Emulation::Interrupts interrupts;

		u16 init_PC;	// program counter
		u8 	init_SP;	// stack pointer
		u8 	init_A; 	// accumulator
		u8 	init_X;		// x register
		u8 	init_Y; 	// y register
		u8 	init_P; 	// processor status

		// I've written a lot of test that changed memory before
		// the program was loaded, so creating another buffer overrides
		// those changes. This map stores all memory writes.
		// Consider deprecating this.
		map<u16, u8> memory_writes;
	};
}