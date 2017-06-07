// ===========================================================================
// Memory access incapsulation
// (c) Alex, 2013
// ===========================================================================

#ifndef _MEMORY_H
#define _MEMORY_H

#include "types.h"

namespace Emulation
{
	class NES;

	typedef u8 (NES::*t_read_callback)(u16);
	typedef void (NES::*t_write_callback)(u16,u8);

	class Memory
	{
	public:
		Memory(u32 asize);
		~Memory();

		// set callbacks for memory access
		void set_mem_read_callback(u16 addr, u8(NES::*callback)(u16));
		void set_mem_write_callback(u16 start_addr, void(NES::*callback)(u16,u8));

		// to call NES function pointers
		void set_nes(NES* nes_ptr);
		
		// actual access with callbacks lookup
		u8 read(u16 addr);
		void write(u16 addr, u8 value);

		// load data to buffer
		void load(u8* data, u32 size, u32 offset = 0);

		// clear memory after reset
		void clear();

		// raw access to memory buffer
		u8* buffer;

	private:
		NES* nes;
		u32  size;

		t_read_callback* read_callbacks;
		t_write_callback* write_callbacks;
	};
}

#endif