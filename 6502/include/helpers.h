// =======================================================================
//	Helper bit manipulation functions

//	(c) Alex, 2013
// =======================================================================

#ifndef _HELPERS_H
#define _HELPERS_H

namespace Emulation
{
	inline
	bool test_bit(u8 value, u8 bit)
	{
		return (value & (1 << bit)) != 0;
	}

	inline
	u8 get_bit(u8 value, u8 bit)
	{
		return (value & (1 << bit)) > 0 ? 1 : 0;	
	}

	inline
	void set_bit(u8& value, u8 bit)
	{
		value |= 1 << bit;
	}

	inline
	void clear_bit(u8& value, u8 bit)
	{
		value &= ~(1 << bit);
	}
}

#endif