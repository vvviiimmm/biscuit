// ===========================================================================
// The MOS Technology 6502 (pronounced "sixty-five-oh-two") is an 8-bit 
// microprocessor that was designed by Chuck Peddle and Bill Mensch for 
// MOS Technology in 1975.

// (c) Alex, 2013
// ===========================================================================

#ifndef _CPU_H
#define _CPU_H

#include <map> // deprecate
#include "types.h"
#include "memory.h"

namespace unit_tests
{
	class CPUTest;
}

namespace Emulation
{
	class Debugger;
	class NES;
	class Interrupts;
	
	class CPU
	{
	public:
		CPU();
		~CPU();
		
		// executes instruction from memory pointed by PC
		void execute_instruction();

		// runs one cpu tick
		void tick();

		// resets cpu, back to initial state
		void reset();		

		// temp functions, should be callbacks on mem access
		void load_prgrom(u8* program); // deprecate this
		void load_prgrom_low(u8* program);
		void load_prgrom_high(u8* program);

		// status register functions
		void set_carry() 					{ P |= 1; }
		void clear_carry()					{ P &= ~1; }
		bool is_carry_set()					{ return (P & 1) != 0; }

		void set_zero()						{ P |= 1 << 1; }
		void clear_zero()					{ P &= ~(1 << 1); }
		bool is_zero_set()					{ return (P & (1 << 1)) != 0; }

		void set_interupt_disable()			{ P |= 1 << 2; }
		void clear_interupt_disable()		{ P &= ~(1 << 2); }
		bool is_interupt_disable_set()		{ return (P & (1 << 2)) != 0; }

		void set_decimal_mode()				{ P |= 1 << 3; }
		void clear_decimal_mode()			{ P &= ~(1 << 3); }
		bool is_decimal_mode_set()			{ return (P & (1 << 3)) != 0; }

		void set_break()					{ P |= 1 << 4; }
		void clear_break()					{ P &= ~(1 << 4); }
		bool is_break_set()					{ return (P & (1 << 4)) != 0; }

		void set_overflow()					{ P |= 1 << 6; }
		void clear_overflow()				{ P &= ~(1 << 6); }
		bool is_overflow_set()				{ return (P & (1 << 6)) != 0; }

		void set_negative()					{ P |= 1 << 7; }
		void clear_negative()				{ P &= ~(1 << 7); }
		bool is_negative_set()				{ return (P & (1 << 7)) != 0; }

		friend class NES;
		friend class Debugger;
		friend class unit_tests::CPUTest;

	private:
		u16 PC; // program counter
		u8 	SP; // stack pointer
		u8 	A;  // accumulator
		u8 	X;	// x register
		u8 	Y;  // y register
		u8 	P; 	// processor status
				//  7 6 5 4 3 2 1 0
				// |N|V| |B|D|I|Z|C|

		std::map<u8, void(CPU::*)()> opcodes; // change to vector
		Memory memory;
		Interrupts* interrupts;
		u8 op_cycles_counter;
		u64 ticks_counter;

		// callbacks for handling every instruction
		void set_opcodes_callbacks();

		// checks if value is zero or less and sets flags in status register 
		void set_status_flags(u8 value);

		// recognizes interrupt and jumps to corresponding int handler code
		void handle_interrupts();

		// reads memory at given vector and assignes that value to PC
		void set_pc_from_vector(u16 vector);

		// ADC
		void adc(u8 value);
		void adc_immidiate();
		void adc_zero_page();
		void adc_zero_page_x();
		void adc_abs();
		void adc_abs_x();
		void adc_abs_y();
		void adc_ind_x();
		void adc_ind_y();

		// AND
		void and_immidiate();
		void and_zero_page();
		void and_zero_page_x();
		void and_abs();
		void and_abs_x();
		void and_abs_y();
		void and_ind_x();
		void and_ind_y();

		// ASL
		void asl_memory(u16 addr, u8 value);
		void asl_accum();
		void asl_zero_page();
		void asl_zero_page_x();
		void asl_abs();
		void asl_abs_x();

		// Branch
		void do_branch();
		void bcc_rel();
		void bcs_rel();
		void beq_rel();
		void bmi_rel();
		void bne_rel();
		void bpl_rel();
		void bvc_rel();
		void bvs_rel();

		// BIT
		void bit(u8 value);
		void bit_zero_page();
		void bit_abs();

		// P register
		void clc();
		void cld();
		void cli();
		void clv();

		void sec();
		void sed();
		void sei();

		// compare
		void cmp(u8 a, u8 b);
		void cmp_immidiate();
		void cmp_zero_page();
		void cmp_zero_page_x();
		void cmp_abs();
		void cmp_abs_x();
		void cmp_abs_y();
		void cmp_ind_x();
		void cmp_ind_y();

		void cpx_immidiate();
		void cpx_zero_page();
		void cpx_abs();

		void cpy_immidiate();
		void cpy_zero_page();
		void cpy_abs();

		// dec
		void dec_memory(u16 addr);
		void dec_zero_page();
		void dec_zero_page_x();
		void dec_abs();
		void dec_abs_x();

		void dex();
		void dey();

		// inc
		void inc_memory(u16 addr);
		void inc_zero_page();
		void inc_zero_page_x();
		void inc_abs();
		void inc_abs_x();

		void inx();
		void iny();

		// EOR
		void eor(u8 value);
		void eor_immidiate();
		void eor_zero_page();
		void eor_zero_page_x();
		void eor_abs();
		void eor_abs_x();
		void eor_abs_y();
		void eor_ind_x();
		void eor_ind_y();

		// ORA
		void ora(u8 value);
		void ora_immidiate();
		void ora_zero_page();
		void ora_zero_page_x();
		void ora_abs();
		void ora_abs_x();
		void ora_abs_y();
		void ora_ind_x();
		void ora_ind_y();

		// JMP
		void jmp_abs();
		void jmp_ind();

		void jsr();
		void rts();

		// LDA
		void lda_immidiate();
		void lda_zero_page();
		void lda_zero_page_x();
		void lda_abs();
		void lda_abs_x();
		void lda_abs_y();
		void lda_ind_x();
		void lda_ind_y();

		// LDX
		void ldx_immidiate();
		void ldx_zero_page();
		void ldx_zero_page_y();
		void ldx_abs();
		void ldx_abs_y();

		// LDY
		void ldy_immidiate();
		void ldy_zero_page();
		void ldy_zero_page_x();
		void ldy_abs();
		void ldy_abs_x();

		// LSR
		void lsr_memory(u16 addr);
		void lsr_accum();
		void lsr_zero_page();
		void lsr_zero_page_x();
		void lsr_abs();
		void lsr_abs_x();

		// stack
		void pha();
		void php();
		void pla();
		void plp();

		// rotate
		void rol(u16 addr);
		void rol_accum();
		void rol_zero_page();
		void rol_zero_page_x();
		void rol_abs();
		void rol_abs_x();

		void ror(u16 addr);
		void ror_accum();
		void ror_zero_page();
		void ror_zero_page_x();
		void ror_abs();
		void ror_abs_x();

		// store
		void sta_zero_page();
		void sta_zero_page_x();
		void sta_abs();
		void sta_abs_x();
		void sta_abs_y();
		void sta_ind_x();
		void sta_ind_y();

		void stx_zero_page();
		void stx_zero_page_y();
		void stx_abs();

		void sty_zero_page();
		void sty_zero_page_x();
		void sty_abs();

		// SBC -- TEST THIS
		void sbc_immidiate();
		void sbc_zero_page();
		void sbc_zero_page_x();
		void sbc_abs();
		void sbc_abs_x();
		void sbc_abs_y();
		void sbc_ind_x();
		void sbc_ind_y();

		// transfer
		void tax();
		void tay();
		void tsx();
		void txa();
		void txs();
		void tya();

		void brk();
		void nop();
		void rti(); // test this

		void stack_push(u8 value);
		u8 stack_pop();
	};
}

#endif