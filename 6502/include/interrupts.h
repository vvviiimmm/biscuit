// ===========================================================================
// Simple class storing information about interrupts happening in NES 
// (c) Alex, 2013
// ===========================================================================

#ifndef _INTERRUPTS_H
#define _INTERRUPTS_H

namespace Emulation
{
	class Interrupts
	{
	public:
		Interrupts() : irq(false), nmi(false), reset(false) {};

		bool is_irq_set() 	{ return irq; };
		bool is_nmi_set() 	{ return nmi; };
		bool is_reset_set() { return reset; };

		void set_irq()		{ irq = true; };
		void set_nmi()		{ nmi = true; };
		void set_reset()	{ reset = true; };

		void clear_irq()	{ irq = false; };
		void clear_nmi()	{ nmi = false; };
		void clear_reset()	{ reset = false; };

		bool has_interrupt()	{ return (reset || nmi || irq); };

	private:
		bool irq;
		bool nmi;
		bool reset;
	};
}

#endif