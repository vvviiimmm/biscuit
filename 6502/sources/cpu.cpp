// ===========================================================================
// cpu.cpp
// (c) Alex, 2013
// ===========================================================================

#include <assert.h>
#include <iostream>
#include "cpu.h"
#include "constants.h"
#include "helpers.h"
#include "interrupts.h"

namespace Emulation
{
	// include additional cycles for branch success
	// and pages crossing
	u8 cpu_op_cycles[256] = 
	{ 
	//	0,1,2,3,  4,5,6,7,  8,9,a,b,  c,d,e,f,
		7,6,0,0,  0,3,5,0,  3,2,2,0,  0,4,6,0, // 0
		2,6,0,0,  0,4,6,0,  2,4,0,0,  0,4,7,0, // 1
		6,6,0,0,  3,3,5,0,  4,2,2,0,  4,4,6,0, // 2
		2,5,0,0,  0,4,6,0,  2,4,0,0,  0,4,7,0, // 3

		6,6,0,0,  0,3,5,0,  3,2,2,0,  3,4,6,0, // 4
		2,5,0,0,  0,4,6,0,  2,4,0,0,  0,4,7,0, // 5
		6,6,0,0,  0,3,5,0,  4,2,2,0,  5,4,6,0, // 6
		2,5,0,0,  0,4,6,0,  2,4,0,0,  0,4,7,0, // 7

		0,6,0,0,  3,3,3,0,  2,0,2,0,  4,4,4,0, // 8
		2,6,0,0,  4,4,4,0,  2,5,2,0,  0,5,0,0, // 9
		2,6,2,0,  3,3,3,0,  2,2,2,0,  4,4,4,0, // a
		2,5,0,0,  4,4,4,0,  2,4,2,0,  4,4,4,0, // b

		2,6,0,0,  3,3,5,0,  2,2,2,0,  4,4,6,0, // c
		2,5,0,0,  0,4,6,0,  2,4,0,0,  0,4,7,0, // d
		2,6,0,0,  3,3,5,0,  2,2,2,0,  4,4,6,0, // e
		2,5,0,0,  0,4,6,0,  2,4,0,0,  0,4,7,0, // f
	};
	
	// =======================================================================
	/**
	*/
	CPU::CPU() : PC(k_reset_vector_location), SP(0xff), A(0x0), X(0x0), Y(0x0), 
	P(0x20), op_cycles_counter(0), ticks_counter(0), memory(k_cpu_memory_size),
	interrupts(nullptr)
	{
		set_opcodes_callbacks();
	}

	// =======================================================================
	/**
	*/
	CPU::~CPU()
	{
	}

	// =======================================================================
	/**
	*/
	void CPU::load_prgrom_low(u8* program)
	{
		memory.load(program, 0x4000, k_rom_location);
	}

	// =======================================================================
	/**
	*/
	void CPU::load_prgrom_high(u8* program)
	{
		memory.load(program, 0x4000, 0xC000);
		set_pc_from_vector(k_reset_vector_location);
	}

	// =======================================================================
	/**
	*/
	void CPU::execute_instruction()
	{
		// assert(this->*opcodes[ memory.read(PC) ] ) != NULL);
		(this->*opcodes[ memory.read(PC) ] ) ();
	}

	// =======================================================================
	/**
	*/
	static u64 num_instructions_executed = 1;
	static u8  cycles_offset = 6;
	void CPU::tick()
	{
		++ticks_counter;
		// std::cout << ticks_counter << std::endl;
		if (op_cycles_counter != 0) 
		{
			--op_cycles_counter;
			return;
		}
		if (interrupts->has_interrupt())
			handle_interrupts();

		u8 mem_value = memory.read(PC);
		op_cycles_counter = cpu_op_cycles[ mem_value ] - 1;
		if (opcodes.find(mem_value) != opcodes.end())
		{
			// std::cout << "Next op " << std::hex << PC << ":" << (short)mem_value << std::dec << ", Instuctions: " << num_instructions_executed << ", Cycles: " << ticks_counter + cycles_offset << std::endl;
			(this->*opcodes[ mem_value ] ) ();
			++num_instructions_executed;
		}
	}

	// =======================================================================
	/**
	*/
	void CPU::handle_interrupts()
	{
		if (interrupts->is_reset_set())
		{
			stack_push(PC >> 8);
			stack_push(PC & 0x00ff);
			stack_push(P);

			set_pc_from_vector(k_reset_vector_location);

			interrupts->clear_reset();
		}
		else if (interrupts->is_nmi_set())
		{
			stack_push(PC >> 8);
			stack_push(PC & 0x00ff);
			stack_push(P);

			set_pc_from_vector(k_nmi_vector_location);

			interrupts->clear_nmi();
		}
		else if (!is_interupt_disable_set() && interrupts->is_irq_set())
		{
			stack_push(PC >> 8);
			stack_push(PC & 0x00ff);
			stack_push(P);

			set_pc_from_vector(k_irq_vector_location);

			interrupts->clear_irq();
		}
	}

	// =======================================================================
	/**
	*/
	void CPU::set_pc_from_vector(u16 vector)
	{
		PC = (u16)(memory.read(vector) | (u16)(memory.read(vector + 1)) << 8);
	}

	// =======================================================================
	/**
	*/
	void CPU::reset()
	{
		PC = k_reset_vector_location;
		SP = 0xff;
		A  = 0;
		X  = 0;
		Y  = 0;
		P  = 0x20;
		op_cycles_counter = 0;
		ticks_counter = 0;

		if (interrupts != nullptr)
		{
			interrupts->clear_irq();
			interrupts->clear_reset();
			interrupts->clear_nmi();
		}
		memory.clear();
	}

	// =======================================================================
	/**
	*/
	void CPU::set_status_flags(u8 value)
	{
		if ((value & 0xff) == 0)
			set_zero();
		else
			clear_zero();

		if (value & (1 << 7))
			set_negative();
		else
			clear_negative();
	}

	// =======================================================================
	/**
		Opcodes implementation
	*/
	// =======================================================================

	// =======================================================================
	/**
		ADC - Add with Carry
		A,Z,C,N = A+M+C
		This instruction adds the contents of a memory location to the 
		accumulator together with the carry bit. If overflow occurs the carry 
		bit is set, this enables multiple byte addition to be performed.
	*/
	void CPU::adc(u8 value)
	{
		u8 addend_1 = value;
		u8 addend_2 = A;
		A = addend_1 + addend_2;
		u8 carry_out = (addend_2 > (0xff - addend_1)) ? 1 : 0;
		u8 carry_ins = A ^ addend_1 ^ addend_2;
		carry_ins = (carry_ins >> 7) ^ carry_out;
		set_status_flags(A);
		if (carry_out == 1) set_carry();
		if (carry_ins == 1) set_overflow();	
		++PC;
	}

	void CPU::adc_immidiate()
	{
		adc(memory.read(++PC));
	}

	void CPU::adc_zero_page()
	{
		adc(memory.read( memory.read(++PC) ));
	}

	void CPU::adc_zero_page_x()
	{
		adc(memory.read( memory.read(++PC) + X ));
	}

	void CPU::adc_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		adc(memory.read((u16)high << 8 | (u16)low));
	}

	void CPU::adc_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		adc(memory.read(((u16)high << 8 | (u16)low) + X));
	}

	void CPU::adc_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		adc(memory.read(((u16)high << 8 | (u16)low) + Y));
	}

	void CPU::adc_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		adc(memory.read(((u16)high << 8 | (u16)low)));
	}

	void CPU::adc_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		adc(memory.read(((u16)high << 8 | (u16)low) + Y));
	}
	// =======================================================================

	// =======================================================================
	/**
		AND - Logical AND
		A,Z,N = A&M
		A logical AND is performed, bit by bit, on the accumulator contents 
		using the contents of a byte of memory.
	*/
	void CPU::and_immidiate()
	{
		A &= memory.read(++PC);
		set_status_flags(A);
		++PC;	
	}

	void CPU::and_zero_page()
	{
		A &= memory.read( memory.read(++PC) );
		set_status_flags(A);
		++PC;
	}

	void CPU::and_zero_page_x()
	{
		A &= memory.read( memory.read(++PC) + X );
		set_status_flags(A);
		++PC;
	}

	void CPU::and_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		A &= memory.read((u16)high << 8 | (u16)low);
		set_status_flags(A);
		++PC;
	}

	void CPU::and_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		A &= memory.read(((u16)high << 8 | (u16)low) + X);
		set_status_flags(A);
		++PC;
	}

	void CPU::and_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		A &= memory.read(((u16)high << 8 | (u16)low) + Y);
		set_status_flags(A);
		++PC;
	}

	void CPU::and_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		A &= memory.read(((u16)high << 8 | (u16)low));
		set_status_flags(A);
		++PC;
	}

	void CPU::and_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		A &= memory.read(((u16)high << 8 | (u16)low) + Y);
		set_status_flags(A);
		++PC;
	}
	// =======================================================================

	// =======================================================================
	/**
		ASL - Arithmetic Shift Left
		A,Z,C,N = M*2 or M,Z,C,N = M*2
		This operation shifts all the bits of the accumulator or memory 
		contents one bit left. Bit 0 is set to 0 and bit 7 is placed in the 
		carry flag. The effect of this operation is to multiply the memory 
		contents by 2 (ignoring 2's complement considerations), setting the 
		carry if the result will not fit in 8 bits.
	*/
	void CPU::asl_memory(u16 addr, u8 value)
	{
		if (test_bit(value, 7)) set_carry();
		memory.write(addr, value << 1);
		if (test_bit(value << 1, 7)) set_negative();
		++PC;
	}

	void CPU::asl_accum()
	{
		if ((A & (1 << 7)) != 0) set_carry();
		A <<= 1;
		set_status_flags(A);
		++PC;
	}

	void CPU::asl_zero_page()
	{
		++PC;
		u8 addr = memory.read(PC);
		u8 value = memory.read(addr);
		asl_memory(addr, value);
	}

	void CPU::asl_zero_page_x()
	{
		++PC;
		u8 addr = memory.read(PC) + X;
		u8 value = memory.read(addr);
		asl_memory(addr, value);
	}

	void CPU::asl_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low;
		u8 value = memory.read(addr);
		asl_memory(addr, value);
	}

	void CPU::asl_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low + X;
		u8 value = memory.read(addr);
		asl_memory(addr, value);
	}
	// =======================================================================

	// =======================================================================
	/**
		BCC - Branch if Carry Clear
		If the carry flag is clear then add the relative displacement to the 
		program counter to cause a branch to a new location.
	*/
	void CPU::do_branch()
	{
		int8 addr = memory.read(++PC) + 1;
		if ( (PC & 0xff) + addr > 0xff)
			++op_cycles_counter; // +1 on page crossing	
		PC += addr;
		++op_cycles_counter; // +1 on branch success
	}

	void CPU::bcc_rel()
	{
		if (!is_carry_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BCS - Branch if Carry Set
		If the carry flag is set then add the relative displacement to the
		program counter to cause a branch to a new location.
	*/
	void CPU::bcs_rel()
	{
		if (is_carry_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BEQ - Branch if Equal
		If the zero flag is set then add the relative displacement to the 
		program counter to cause a branch to a new location.
	*/
	void CPU::beq_rel()
	{
		if (is_zero_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BMI - Branch if Minus
		If the negative flag is set then add the relative displacement to the 
		program counter to cause a branch to a new location.
	*/
	void CPU::bmi_rel()
	{
		if (is_negative_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BNE - Branch if Not Equal
		If the zero flag is clear then add the relative displacement to the 
		program counter to cause a branch to a new location.
	*/
	void CPU::bne_rel()
	{
		if (!is_zero_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BPL - Branch if Positive
		If the negative flag is clear then add the relative displacement to 
		the program counter to cause a branch to a new location.
	*/
	void CPU::bpl_rel()
	{		
		if (!is_negative_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BVC - Branch if Overflow Clear
		If the overflow flag is clear then add the relative displacement to 
		the program counter to cause a branch to a new location.
	*/
	void CPU::bvc_rel()
	{
		if (!is_overflow_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BVS - Branch if Overflow Set
		If the overflow flag is set then add the relative displacement to the 
		program counter to cause a branch to a new location.
	*/
	void CPU::bvs_rel()
	{
		if (is_overflow_set())
			do_branch();
		else
			PC += 2;
	}
	// =======================================================================

	// =======================================================================
	/**
		BIT - Bit Test
		A & M, N = M7, V = M6
		This instructions is used to test if one or more bits are set in a 
		target memory location. The mask pattern in A is ANDed with the value 
		in memory to set or clear the zero flag, but the result is not kept. 
		Bits 7 and 6 of the value from memory are copied into the N and V flags.
	*/
	void CPU::bit(u8 value)
	{
		if ((A & value) == 0) set_zero();
		if (test_bit(value, 6)) set_overflow(); else clear_overflow();
		if (test_bit(value, 7)) set_negative(); else clear_negative();
	}

	void CPU::bit_zero_page()
	{
		bit(memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::bit_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		bit(memory.read((u16)high << 8 | (u16)low));
		++PC;
	}

	// =======================================================================
	/**
		CLC - Clear Carry Flag
		Set the carry flag to zero.
	*/
	void CPU::clc()
	{
		clear_carry();
		++PC;
	}

	// =======================================================================
	/**
		CLD - Clear Decimal Mode
		Sets the decimal mode flag to zero.
	*/
	void CPU::cld()
	{
		clear_decimal_mode();
		++PC;
	}

	// =======================================================================
	/**
		CLI - Clear Interrupt Disable
		Clears the interrupt disable flag allowing normal interrupt requests 
		to be serviced.
	*/
	void CPU::cli()
	{
		clear_interupt_disable();
		++PC;
	}

	// =======================================================================
	/**
		CLV - Clear Overflow Flag
		Clears the overflow flag.
	*/
	void CPU::clv()
	{
		clear_overflow();
		++PC;
	}

	// =======================================================================
	/**
		SEC - Set Carry Flag
		Set the carry flag to one.
	*/
	void CPU::sec()
	{
		set_carry();
		++PC;
	}

	// =======================================================================
	/**
		SED - Set Decimal Flag
		Set the decimal mode flag to one.
	*/
	void CPU::sed()
	{
		set_decimal_mode();
		++PC;
	}

	// =======================================================================
	/**
		SEI - Set Interrupt Disable
		Set the interrupt disable flag to one.
	*/
	void CPU::sei()
	{
		set_interupt_disable();
		++PC;
	}

	// =======================================================================
	/**
		CMP - Compare
		Z,C,N = A-M
		This instruction compares the contents of the accumulator with another memory held value and sets the zero and carry flags as appropriate.
	*/
	void CPU::cmp(u8 a, u8 b)
	{
		if (a >= b) set_carry();
		if (a == b) set_zero();
		if (test_bit(a - b, 7)) set_negative();	
	}

	void CPU::cmp_immidiate()
	{
		cmp(A, memory.read(++PC));
		++PC;
	}

	void CPU::cmp_zero_page()
	{
		cmp(A, memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::cmp_zero_page_x()
	{
		cmp(A, memory.read( memory.read(++PC) + X ));
		++PC;
	}

	void CPU::cmp_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		cmp(A, memory.read((u16)high << 8 | (u16)low));
		++PC;
	}

	void CPU::cmp_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		cmp(A, memory.read(((u16)high << 8 | (u16)low) + X));
		++PC;
	}

	void CPU::cmp_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		cmp(A, memory.read(((u16)high << 8 | (u16)low) + Y));
		++PC;
	}

	void CPU::cmp_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		cmp(A, memory.read(((u16)high << 8 | (u16)low)));
		++PC;
	}

	void CPU::cmp_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		cmp(A, memory.read(((u16)high << 8 | (u16)low) + Y));
		++PC;
	}
	// =======================================================================

	// =======================================================================
	/**
		CPX - Compare X Register
		Z,C,N = X-M
		This instruction compares the contents of the X register with another
		memory held value and sets the zero and carry flags as appropriate.
	*/
	// =======================================================================
	void CPU::cpx_immidiate()
	{
		cmp(X, memory.read(++PC));
		++PC;
	}

	void CPU::cpx_zero_page()
	{
		cmp(X, memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::cpx_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		cmp(X, memory.read((u16)high << 8 | (u16)low));
		++PC;
	}

	// =======================================================================
	/**
		CPY - Compare Y Register
		Z,C,N = Y-M
		This instruction compares the contents of the Y register with another 
		memory held value and sets the zero and carry flags as appropriate.
	*/
	// =======================================================================
	void CPU::cpy_immidiate()
	{
		cmp(Y, memory.read(++PC));
		++PC;
	}

	void CPU::cpy_zero_page()
	{
		cmp(Y, memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::cpy_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		cmp(Y, memory.read((u16)high << 8 | (u16)low));
		++PC;
	}

	// =======================================================================
	/**
		DEC - Decrement Memory
		M,Z,N = M-1
		Subtracts one from the value held at a specified memory location 
		setting the zero and negative flags as appropriate.
	*/
	void CPU::dec_memory(u16 addr)
	{
		u8 value = memory.read(addr);
		memory.write(addr, value - 1);
		set_status_flags(value - 1);
		++PC;
	}

	void CPU::dec_zero_page()
	{
		dec_memory(memory.read(++PC));
	}

	void CPU::dec_zero_page_x()
	{
		dec_memory(memory.read(++PC) + X);
	}

	void CPU::dec_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low;
		dec_memory(addr);
	}

	void CPU::dec_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = ((u16)high << 8 | (u16)low) + X;
		dec_memory(addr);
	}

	// =======================================================================
	/**
		DEX/DEY- Decrement X/Y Register
		Subtracts one from the X/Y register setting the zero and negative flags 
		as appropriate.
	*/
	void CPU::dex()
	{
		X -= 1;
		set_status_flags(X);
		++PC;
	}

	void CPU::dey()
	{
		Y -= 1;
		set_status_flags(Y);
		++PC;
	}

	// =======================================================================
	/**
		INC - Increment Memory
		M,Z,N = M+1
		Adds one to the value held at a specified memory location setting the 
		zero and negative flags as appropriate.
	*/
	void CPU::inc_memory(u16 addr)
	{
		u8 value = memory.read(addr);
		memory.write(addr, value + 1);
		set_status_flags(value + 1);
		++PC;
	}

	void CPU::inc_zero_page()
	{
		inc_memory(memory.read(++PC));
	}

	void CPU::inc_zero_page_x()
	{
		inc_memory(memory.read(++PC) + X);
	}

	void CPU::inc_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low;
		inc_memory(addr);
	}

	void CPU::inc_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = ((u16)high << 8 | (u16)low) + X;
		inc_memory(addr);
	}

	// =======================================================================
	/**
		INX/INY - Increment X/Y Register
		Adds one to the X/Y register setting the zero and negative flags as appropriate.
	*/
	void CPU::inx()
	{
		X += 1;
		set_status_flags(X);
		++PC;
	}

	void CPU::iny()
	{
		Y += 1;
		set_status_flags(Y);
		++PC;
	}

	// =======================================================================
	/**
		EOR - Exclusive OR
		A,Z,N = A^M
		An exclusive OR is performed, bit by bit, on the accumulator contents 
		using the contents of a byte of memory.
	*/
	void CPU::eor(u8 value)
	{
		A ^= value;
		set_status_flags(A);
	}

	void CPU::eor_immidiate()
	{
		eor(memory.read(++PC));
		++PC;
	}

	void CPU::eor_zero_page()
	{
		eor(memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::eor_zero_page_x()
	{
		eor(memory.read( memory.read(++PC) + X ));
		++PC;
	}

	void CPU::eor_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		eor(memory.read((u16)high << 8 | (u16)low));
		++PC;
	}

	void CPU::eor_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		eor(memory.read(((u16)high << 8 | (u16)low) + X));
		++PC;
	}

	void CPU::eor_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		eor(memory.read(((u16)high << 8 | (u16)low) + Y));
		++PC;
	}

	void CPU::eor_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		eor(memory.read(((u16)high << 8 | (u16)low)));
		++PC;
	}

	void CPU::eor_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		eor(memory.read(((u16)high << 8 | (u16)low) + Y));
		++PC;
	}

	// =======================================================================
	/**
		ORA - Logical Inclusive OR
		A,Z,N = A|M
		An inclusive OR is performed, bit by bit, on the accumulator contents
		using the contents of a byte of memory.
	*/
	void CPU::ora(u8 value)
	{
		A |= value;
		set_status_flags(A);
	}

	void CPU::ora_immidiate()
	{
		ora(memory.read(++PC));
		++PC;
	}

	void CPU::ora_zero_page()
	{
		ora(memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::ora_zero_page_x()
	{
		ora(memory.read( memory.read(++PC) + X ));
		++PC;
	}

	void CPU::ora_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		ora(memory.read((u16)high << 8 | (u16)low));
		++PC;
	}

	void CPU::ora_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		ora(memory.read(((u16)high << 8 | (u16)low) + X));
		++PC;
	}

	void CPU::ora_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		ora(memory.read(((u16)high << 8 | (u16)low) + Y));
		++PC;
	}

	void CPU::ora_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		ora(memory.read(((u16)high << 8 | (u16)low)));
		++PC;
	}

	void CPU::ora_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		ora(memory.read(((u16)high << 8 | (u16)low) + Y));
		++PC;
	}

	// =======================================================================
	/**
		JMP - Jump
		Sets the program counter to the address specified by the operand.
	*/
	void CPU::jmp_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low;
		PC = addr;
	}

	void CPU::jmp_ind()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low;
		PC = (u16)memory.read(addr + 1) << 8 | (u16)memory.read(addr);
	}

	// =======================================================================
	/**
		JSR - Jump to Subroutine
		The JSR instruction pushes the address (minus one) of the return point 
		on to the stack and then sets the program counter to the target memory 
		address.
	*/
	void CPU::jsr()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		u16 addr = (u16)high << 8 | (u16)low;

		++PC;		
		stack_push(PC >> 8);
		stack_push(PC & 0x00ff);
		PC = addr;
	}

	void CPU::rts()
	{
		u8 low = stack_pop();
		u8 high = stack_pop();
		PC = (u16)high << 8 | (u16)low;
	}

	// =======================================================================
	/**
		LDA
		A,Z,N = M
		Loads a byte of memory into the accumulator setting the zero and 
		negative flags as appropriate.
	*/
	void CPU::lda_immidiate()
	{
		A = memory.read(++PC);
		set_status_flags(A);
		++PC;
	}

	void CPU::lda_zero_page()
	{
		A = memory.read( memory.read(++PC) );
		set_status_flags(A);
		++PC;		
	}

	void CPU::lda_zero_page_x()
	{
		A = memory.read( memory.read(++PC) + X );
		set_status_flags(A);
		++PC;
	}

	void CPU::lda_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		A = memory.read((u16)high << 8 | (u16)low);
		set_status_flags(A);
		++PC;
	}

	void CPU::lda_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		A = memory.read(((u16)high << 8 | (u16)low) + X);
		set_status_flags(A);
		++PC;
	}

	void CPU::lda_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		A = memory.read(((u16)high << 8 | (u16)low) + Y);
		set_status_flags(A);
		++PC;	
	}

	void CPU::lda_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		A = memory.read(((u16)high << 8 | (u16)low));
		set_status_flags(A);
		++PC;
	}

	void CPU::lda_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		A = memory.read(((u16)high << 8 | (u16)low) + Y);
		set_status_flags(A);
		++PC;
	}

	// =======================================================================
	/**
		LDX - Load X Register
		X,Z,N = M
		Loads a byte of memory into the X register setting the zero and negative flags as appropriate.
	*/
	void CPU::ldx_immidiate()
	{
		X = memory.read(++PC);
		set_status_flags(X);
		++PC;
	}

	void CPU::ldx_zero_page()
	{
		X = memory.read( memory.read(++PC) );
		set_status_flags(X);
		++PC;	
	}

	void CPU::ldx_zero_page_y()
	{
		X = memory.read( memory.read(++PC) + Y );
		set_status_flags(X);
		++PC;	
	}

	void CPU::ldx_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		X = memory.read((u16)high << 8 | (u16)low);
		set_status_flags(X);
		++PC;
	}

	void CPU::ldx_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		X = memory.read(((u16)high << 8 | (u16)low) + Y);
		set_status_flags(X);
		++PC;
	}

	// =======================================================================
	/**
		LDY - Load Y Register
		Y,Z,N = M
		Loads a byte of memory into the Y register setting the zero and 
		negative flags as appropriate.
	*/
	void CPU::ldy_immidiate()
	{
		Y = memory.read(++PC);
		set_status_flags(Y);
		++PC;
	}

	void CPU::ldy_zero_page()
	{
		Y = memory.read( memory.read(++PC) );
		set_status_flags(Y);
		++PC;	
	}

	void CPU::ldy_zero_page_x()
	{
		Y = memory.read( memory.read(++PC) + X );
		set_status_flags(Y);
		++PC;	
	}

	void CPU::ldy_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		Y = memory.read((u16)high << 8 | (u16)low);
		set_status_flags(Y);
		++PC;
	}

	void CPU::ldy_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		Y = memory.read(((u16)high << 8 | (u16)low) + X);
		set_status_flags(Y);
		++PC;
	}	

	// =======================================================================
	/**
		LSR - Logical Shift Right
		A,C,Z,N = A/2 or M,C,Z,N = M/2
		Each of the bits in A or M is shift one place to the right. 
		The bit that was in bit 0 is shifted into the carry flag. Bit 7 is 
		set to zero.
	*/
	void CPU::lsr_memory(u16 addr)
	{
		u8 value = memory.read(addr);
		if (test_bit(value, 0)) set_carry();
		memory.write(addr, value >> 1);
		if ( (value >> 1) == 0) set_zero();
		++PC;
	}

	void CPU::lsr_accum()
	{
		if (test_bit(A, 0)) set_carry();
		A >>= 1;
		if (A == 0) set_zero();
		++PC;
	}

	void CPU::lsr_zero_page()
	{
		lsr_memory(memory.read(++PC));
	}

	void CPU::lsr_zero_page_x()
	{
		lsr_memory(memory.read(++PC) + X );
	}

	void CPU::lsr_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		lsr_memory((u16)high << 8 | (u16)low);
	}

	void CPU::lsr_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		lsr_memory(((u16)high << 8 | (u16)low) + X);
	}

	// =======================================================================
	/**
		PHA - Push Accumulator
		Pushes a copy of the accumulator on to the stack.
	*/
	void CPU::pha()
	{
		stack_push(A);
		++PC;
	}

	// =======================================================================
	/**
		PHP - Push Processor Status
		Pushes a copy of the status flags on to the stack.
	*/
	void CPU::php()
	{
		stack_push(P);
		++PC;
	}

	// =======================================================================
	/**
		PLA - Pull Accumulator
		Pulls an 8 bit value from the stack and into the accumulator. 
		The zero and negative flags are set as appropriate.
	*/
	void CPU::pla()
	{
		A = stack_pop();
		set_status_flags(A);
		++PC;
	}

	// =======================================================================
	/**
		PLP - Pull Processor Status
		Pulls an 8 bit value from the stack and into the processor flags. 
		The flags will take on new states as determined by the value pulled.
	*/
	void CPU::plp()
	{
		P = stack_pop();
		++PC;
	}

	// =======================================================================
	/**
		ROL - Rotate Left
		Move each of the bits in either A or M one place to the left. Bit 0 
		is filled with the current value of the carry flag whilst the old bit 
		7 becomes the new carry flag value.
	*/
	void CPU::rol(u16 addr)
	{
		u8 value = memory.read(addr);
		bool carry_set = test_bit(value, 7);
		u8 shifted = value << 1;
		memory.write(addr, shifted);
		if (is_carry_set())
			memory.write(addr, shifted | 1);
		if (carry_set)
			set_carry();
		if (value == 0) set_zero();
		++PC;
	}

	void CPU::rol_accum()
	{
		bool carry_set = test_bit(A, 7);
		A <<= 1;
		if (is_carry_set())
			A |= 1;
		if (carry_set)
			set_carry();
		if (A == 0) set_zero();
		++PC;
	}

	void CPU::rol_zero_page()
	{
		rol(memory.read(++PC));
	}

	void CPU::rol_zero_page_x()
	{
		rol(memory.read(++PC) + X );
	}

	void CPU::rol_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		rol((u16)high << 8 | (u16)low);
	}

	void CPU::rol_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		rol(((u16)high << 8 | (u16)low) + X);
	}

	// =======================================================================
	/**
		ROR - Rotate Right
		Move each of the bits in either A or M one place to the right. Bit 7 
		is filled with the current value of the carry flag whilst the old 
		bit 0 becomes the new carry flag value.
	*/
	void CPU::ror(u16 addr)
	{
		u8 value = memory.read(addr);
		bool carry_set = test_bit(value, 7);
		u8 shifted = value << 1;
		memory.write(addr, shifted);
		if (is_carry_set())
			memory.write(addr, shifted | 0x80);
		if (carry_set)
			set_carry();
		if (value == 0) set_zero();
		++PC;
	}

	void CPU::ror_accum()
	{
		bool carry_set = test_bit(A, 0);
		A >>= 1;
		if (is_carry_set())
			A |= 0x80;
		if (carry_set)
			set_carry();
		if (A == 0) set_zero();
		++PC;
	}

	void CPU::ror_zero_page()
	{
		ror(memory.read(++PC) );
	}

	void CPU::ror_zero_page_x()
	{
		ror(memory.read(++PC) + X );
	}

	void CPU::ror_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		ror((u16)high << 8 | (u16)low);
	}

	void CPU::ror_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		ror(((u16)high << 8 | (u16)low) + X);
	}

	// =======================================================================
	/**
		STA - Store Accumulator
		M = A
		Stores the contents of the accumulator into memory.
	*/
	void CPU::sta_zero_page()
	{
		memory.write(memory.read(++PC) , A);
		++PC;
	}

	void CPU::sta_zero_page_x()
	{
		memory.write(memory.read(++PC) + X, A);
		++PC;
	}

	void CPU::sta_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		memory.write((u16)high << 8 | (u16)low, A);
		++PC;
	}

	void CPU::sta_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		memory.write((u16)high << 8 | (u16)low + X, A);
		++PC;	
	}

	void CPU::sta_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		memory.write((u16)high << 8 | (u16)low + Y, A);
		++PC;		
	}

	void CPU::sta_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		memory.write(((u16)high << 8 | (u16)low), A);
		++PC;
	}

	void CPU::sta_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		memory.write(((u16)high << 8 | (u16)low) + Y, A);
		++PC;
	}

	// =======================================================================
	/**
		STX - Store X Register
		M = X
		Stores the contents of the X register into memory.
	*/
	void CPU::stx_zero_page()
	{
		memory.write(memory.read(++PC), X);
		++PC;
	}

	void CPU::stx_zero_page_y()
	{
		memory.write(memory.read(++PC) + Y, X);
		++PC;
	}

	void CPU::stx_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		memory.write((u16)high << 8 | (u16)low, X);
		++PC;
	}

	// =======================================================================
	/**
		STY - Store Y Register
		M = Y
		Stores the contents of the Y register into memory.
	*/
	void CPU::sty_zero_page()
	{
		memory.write(memory.read(++PC), Y);
		++PC;
	}

	void CPU::sty_zero_page_x()
	{
		memory.write(memory.read(++PC) + X, Y);
		++PC;
	}

	void CPU::sty_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		memory.write((u16)high << 8 | (u16)low, Y);
		++PC;
	}

	// =======================================================================
	/**
		SBC - Subtract with Carry
		A,Z,C,N = A-M-(1-C)
		This instruction subtracts the contents of a memory location to the 
		accumulator together with the not of the carry bit. If overflow occurs 
		the carry bit is clear, this enables multiple byte subtraction to be 
		performed.
	*/
	void CPU::sbc_immidiate()
	{
		adc(~memory.read(++PC));
		++PC;
	}

	void CPU::sbc_zero_page()
	{
		adc(~memory.read( memory.read(++PC) ));
		++PC;
	}

	void CPU::sbc_zero_page_x()
	{
		adc(~(memory.read( memory.read(++PC) + X )));
		++PC;
	}

	void CPU::sbc_abs()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		adc(~(memory.read((u16)high << 8 | (u16)low)));
		++PC;
	}

	void CPU::sbc_abs_x()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		adc(~(memory.read(((u16)high << 8 | (u16)low) + X)));
		++PC;
	}

	void CPU::sbc_abs_y()
	{
		u8 low = memory.read(++PC);
		u8 high = memory.read(++PC);
		adc(~(memory.read(((u16)high << 8 | (u16)low) + Y)));
		++PC;
	}

	void CPU::sbc_ind_x()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset + X);
		u8 high = memory.read(offset + X + 1);
		adc(~(memory.read(((u16)high << 8 | (u16)low))));
		++PC;
	}

	void CPU::sbc_ind_y()
	{
		u8 offset = memory.read(++PC); 
		u8 low = memory.read(offset);
		u8 high = memory.read(offset + 1);
		adc(~(memory.read(((u16)high << 8 | (u16)low) + Y)));
		++PC;
	}

	// =======================================================================
	/**
		TAX - Transfer Accumulator to X
		X = A
		Copies the current contents of the accumulator into the X register 
		and sets the zero and negative flags as appropriate.
	*/
	void CPU::tax()
	{
		X = A;
		set_status_flags(X);
		++PC;
	}

	// =======================================================================
	/**
		TAY - Transfer Accumulator to Y
		Y = A
		Copies the current contents of the accumulator into the Y register 
		and sets the zero and negative flags as appropriate.
	*/
	void CPU::tay()
	{
		Y = A;
		set_status_flags(Y);
		++PC;
	}

	// =======================================================================
	/**
		TSX - Transfer Stack Pointer to X
		X = S
		Copies the current contents of the stack register into the X register 
		and sets the zero and negative flags as appropriate.
	*/
	void CPU::tsx()
	{
		X = SP;
		set_status_flags(X);
		++PC;
	}

	// =======================================================================
	/**
		TXA - Transfer X to Accumulator
		A = X
		Copies the current contents of the X register into the accumulator 
		and sets the zero and negative flags as appropriate.
	*/
	void CPU::txa()
	{
		A = X;
		set_status_flags(A);
		++PC;
	}

	// =======================================================================
	/**
		TXS - Transfer X to Stack Pointer
		S = X
		Copies the current contents of the X register into the stack register.
	*/
	void CPU::txs()
	{
		SP = X;
		++PC;
	}

	// =======================================================================
	/**
		TYA - Transfer Y to Accumulator
		A = Y
		Copies the current contents of the Y register into the accumulator 
		and sets the zero and negative flags as appropriate.
	*/
	void CPU::tya()
	{
		A = Y;
		set_status_flags(A);
		++PC;
	}

	// =======================================================================
	/**
		BRK - Force Interrupt
		The BRK instruction forces the generation of an interrupt request. 
		The program counter and processor status are pushed on the stack then 
		the IRQ interrupt vector at $FFFE/F is loaded into the PC and the break 
		flag in the status set to one.
	*/
	void CPU::brk()
	{
		set_break();
		set_interupt_disable();
		interrupts->set_irq();
	}

	// =======================================================================
	/**
		NOP - No Operation
		The NOP instruction causes no changes to the processor other than 
		the normal incrementing of the program counter to the next instruction.
	*/
	void CPU::nop()
	{
		++PC;
	}

	// =======================================================================
	/**
		RTI - Return from Interrupt
		The RTI instruction is used at the end of an interrupt processing 
		routine. It pulls the processor flags from the stack followed by the 
		program counter.
	*/
	void CPU::rti()
	{
		P = stack_pop();
		u8 low = stack_pop();
		u8 high = stack_pop();
		PC = (u16)high << 8 | (u16)low;
		clear_interupt_disable();
		clear_break(); // might be wrong
	}

	// =======================================================================
	/**
		Basic stack operations 
	*/
	void CPU::stack_push(u8 value)
	{
		memory.write(k_stack_location + SP, value);
		--SP;
	}

	u8 CPU::stack_pop()
	{
		++SP;
		return memory.read(k_stack_location + SP);
	}

	// =======================================================================
	/**
	*/
	void CPU::set_opcodes_callbacks()
	{
		// ADC
		opcodes[0x69] = &CPU::adc_immidiate;
		opcodes[0x65] = &CPU::adc_zero_page;
		opcodes[0x75] = &CPU::adc_zero_page_x;
		opcodes[0x6d] = &CPU::adc_abs;
		opcodes[0x7d] = &CPU::adc_abs_x;
		opcodes[0x79] = &CPU::adc_abs_y;
		opcodes[0x61] = &CPU::adc_ind_x;
		opcodes[0x71] = &CPU::adc_ind_y;

		// AND
		opcodes[0x29] = &CPU::and_immidiate;
		opcodes[0x25] = &CPU::and_zero_page;
		opcodes[0x35] = &CPU::and_zero_page_x;
		opcodes[0x2d] = &CPU::and_abs;
		opcodes[0x3d] = &CPU::and_abs_x;
		opcodes[0x39] = &CPU::and_abs_y;
		opcodes[0x21] = &CPU::and_ind_x;
		opcodes[0x31] = &CPU::and_ind_y;

		// ASL
		opcodes[0x0a] = &CPU::asl_accum;
		opcodes[0x06] = &CPU::asl_zero_page;
		opcodes[0x16] = &CPU::asl_zero_page_x;
		opcodes[0x0e] = &CPU::asl_abs;
		opcodes[0x1e] = &CPU::asl_abs_x;

		// Branch
		opcodes[0x90] = &CPU::bcc_rel;
		opcodes[0xb0] = &CPU::bcs_rel;
		opcodes[0xf0] = &CPU::beq_rel;
		opcodes[0x30] = &CPU::bmi_rel;
		opcodes[0xd0] = &CPU::bne_rel;
		opcodes[0x10] = &CPU::bpl_rel;
		opcodes[0x50] = &CPU::bvc_rel;
		opcodes[0x70] = &CPU::bvs_rel;

		// BIT
		opcodes[0x24] = &CPU::bit_zero_page;		
		opcodes[0x2c] = &CPU::bit_abs;

		// P register
		opcodes[0x18] = &CPU::clc;
		opcodes[0xd8] = &CPU::cld;
		opcodes[0x58] = &CPU::cli;
		opcodes[0xb8] = &CPU::clv;

		opcodes[0x38] = &CPU::sec;
		opcodes[0xf8] = &CPU::sed;
		opcodes[0x78] = &CPU::sei;

		// compare
		opcodes[0xc9] = &CPU::cmp_immidiate;		
		opcodes[0xc5] = &CPU::cmp_zero_page;	
		opcodes[0xd5] = &CPU::cmp_zero_page_x;		
		opcodes[0xcd] = &CPU::cmp_abs;		
		opcodes[0xdd] = &CPU::cmp_abs_x;		
		opcodes[0xd9] = &CPU::cmp_abs_y;		
		opcodes[0xc1] = &CPU::cmp_ind_x;		
		opcodes[0xd1] = &CPU::cmp_ind_y;		

		opcodes[0xe0] = &CPU::cpx_immidiate;		
		opcodes[0xe4] = &CPU::cpx_zero_page;		
		opcodes[0xec] = &CPU::cpx_abs;		

		opcodes[0xc0] = &CPU::cpy_immidiate;		
		opcodes[0xc4] = &CPU::cpy_zero_page;		
		opcodes[0xcc] = &CPU::cpy_abs;	

		// dec
		opcodes[0xc6] = &CPU::dec_zero_page;	
		opcodes[0xd6] = &CPU::dec_zero_page_x;	
		opcodes[0xce] = &CPU::dec_abs;	
		opcodes[0xde] = &CPU::dec_abs_x;	

		opcodes[0xca] = &CPU::dex;	
		opcodes[0x88] = &CPU::dey;	

		// inc
		opcodes[0xe6] = &CPU::inc_zero_page;
		opcodes[0xf6] = &CPU::inc_zero_page_x;
		opcodes[0xee] = &CPU::inc_abs;
		opcodes[0xfe] = &CPU::inc_abs_x;

		opcodes[0xe8] = &CPU::inx;
		opcodes[0xc8] = &CPU::iny;

		// EOR
		opcodes[0x49] = &CPU::eor_immidiate;
		opcodes[0x45] = &CPU::eor_zero_page;
		opcodes[0x55] = &CPU::eor_zero_page_x;
		opcodes[0x4d] = &CPU::eor_abs;
		opcodes[0x5d] = &CPU::eor_abs_x;
		opcodes[0x59] = &CPU::eor_abs_y;
		opcodes[0x41] = &CPU::eor_ind_x;
		opcodes[0x51] = &CPU::eor_ind_y;

		// ORA
		opcodes[0x09] = &CPU::ora_immidiate;
		opcodes[0x05] = &CPU::ora_zero_page;
		opcodes[0x15] = &CPU::ora_zero_page_x;
		opcodes[0x0d] = &CPU::ora_abs;
		opcodes[0x1d] = &CPU::ora_abs_x;
		opcodes[0x19] = &CPU::ora_abs_y;
		opcodes[0x01] = &CPU::ora_ind_x;
		opcodes[0x11] = &CPU::ora_ind_y;

		// JMP
		opcodes[0x4c] = &CPU::jmp_abs;
		opcodes[0x6c] = &CPU::jmp_ind;

		opcodes[0x20] = &CPU::jsr;
		opcodes[0x60] = &CPU::rts;

		// LDA
		opcodes[0xa9] = &CPU::lda_immidiate;
		opcodes[0xa5] = &CPU::lda_zero_page;
		opcodes[0xb5] = &CPU::lda_zero_page_x;
		opcodes[0xad] = &CPU::lda_abs;
		opcodes[0xbd] = &CPU::lda_abs_x;
		opcodes[0xb9] = &CPU::lda_abs_y;
		opcodes[0xa1] = &CPU::lda_ind_x;
		opcodes[0xb1] = &CPU::lda_ind_y;

		// LDX
		opcodes[0xa2] = &CPU::ldx_immidiate;		
		opcodes[0xa6] = &CPU::ldx_zero_page;		
		opcodes[0xb6] = &CPU::ldx_zero_page_y;		
		opcodes[0xae] = &CPU::ldx_abs;		
		opcodes[0xbe] = &CPU::ldx_abs_y;		

		// LDY
		opcodes[0xa0] = &CPU::ldy_immidiate;		
		opcodes[0xa4] = &CPU::ldy_zero_page;		
		opcodes[0xb4] = &CPU::ldy_zero_page_x;		
		opcodes[0xac] = &CPU::ldy_abs;		
		opcodes[0xbc] = &CPU::ldy_abs_x;

		// LSR
		opcodes[0x4a] = &CPU::lsr_accum;		
		opcodes[0x46] = &CPU::lsr_zero_page;		
		opcodes[0x56] = &CPU::lsr_zero_page_x;		
		opcodes[0x4e] = &CPU::lsr_abs;		
		opcodes[0x5e] = &CPU::lsr_abs_x;	

		// stack
		opcodes[0x48] = &CPU::pha;
		opcodes[0x08] = &CPU::php;
		opcodes[0x68] = &CPU::pla;
		opcodes[0x28] = &CPU::plp;

		// rotate
		opcodes[0x2a] = &CPU::rol_accum;		
		opcodes[0x26] = &CPU::rol_zero_page;		
		opcodes[0x36] = &CPU::rol_zero_page_x;		
		opcodes[0x2e] = &CPU::rol_abs;		
		opcodes[0x3e] = &CPU::rol_abs_x;	

		opcodes[0x6a] = &CPU::ror_accum;		
		opcodes[0x66] = &CPU::ror_zero_page;		
		opcodes[0x76] = &CPU::ror_zero_page_x;		
		opcodes[0x6e] = &CPU::ror_abs;		
		opcodes[0x7e] = &CPU::ror_abs_x;	

		// store
		opcodes[0x85] = &CPU::sta_zero_page;
		opcodes[0x95] = &CPU::sta_zero_page_x;
		opcodes[0x8d] = &CPU::sta_abs;
		opcodes[0x9d] = &CPU::sta_abs_x;
		opcodes[0x99] = &CPU::sta_abs_y;
		opcodes[0x81] = &CPU::sta_ind_x;
		opcodes[0x91] = &CPU::sta_ind_y;

		opcodes[0x86] = &CPU::stx_zero_page;
		opcodes[0x96] = &CPU::stx_zero_page_y;
		opcodes[0x8e] = &CPU::stx_abs;

		opcodes[0x84] = &CPU::sty_zero_page;
		opcodes[0x94] = &CPU::sty_zero_page_x;
		opcodes[0x8c] = &CPU::sty_abs;

		// SBC
		opcodes[0xe9] = &CPU::sbc_immidiate;
		opcodes[0xe5] = &CPU::sbc_zero_page;
		opcodes[0xf5] = &CPU::sbc_zero_page_x;
		opcodes[0xed] = &CPU::sbc_abs;
		opcodes[0xfd] = &CPU::sbc_abs_x;
		opcodes[0xf9] = &CPU::sbc_abs_y;
		opcodes[0xe1] = &CPU::sbc_ind_x;
		opcodes[0xf1] = &CPU::sbc_ind_y;

		// transfer
		opcodes[0xaa] = &CPU::tax;
		opcodes[0xa8] = &CPU::tay;
		opcodes[0xba] = &CPU::tsx;
		opcodes[0x8a] = &CPU::txa;
		opcodes[0x9a] = &CPU::txs;
		opcodes[0x98] = &CPU::tya;
		
		opcodes[0x00] = &CPU::brk;
		opcodes[0xea] = &CPU::nop;
		opcodes[0x40] = &CPU::rti;
	}
}
