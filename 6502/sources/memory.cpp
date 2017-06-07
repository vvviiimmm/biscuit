// ===========================================================================
// memory.cpp
// (c) Alex, 2013
// ===========================================================================

#include "memory.h"
#include "nes.h"

#include <iostream>

namespace Emulation
{
	// =======================================================================
	/**
	*/
	Memory::Memory(u32 asize) : size(asize)
	{
		read_callbacks = new t_read_callback[size];
		write_callbacks = new t_write_callback[size];
		buffer = new u8[size];

		memset(read_callbacks, NULL, size * sizeof(t_read_callback));
		memset(write_callbacks, NULL, size * sizeof(t_write_callback));
		memset(buffer, 0, size);
	}

	// =======================================================================
	/**
	*/
	Memory::~Memory()
	{
		delete[] read_callbacks;
		delete[] write_callbacks;
		delete[] buffer;
	}

	// =======================================================================
	/**
	*/
	void Memory::set_nes(NES* nes_ptr)
	{
		nes = nes_ptr;
	}

	// =======================================================================
	/**
	*/
	void Memory::set_mem_read_callback(u16 addr, u8(NES::*callback)(u16))
	{
		read_callbacks[addr] = callback;
	}

	// =======================================================================
	/**
	*/
	void Memory::set_mem_write_callback(u16 addr, void(NES::*callback)(u16,u8))
	{
		write_callbacks[addr] = callback;
	}	

	// =======================================================================
	/**
	*/
	u8 Memory::read(u16 addr)
	{
		if (nullptr != read_callbacks[addr])
			return (nes->*read_callbacks[addr])(addr);

		// std::cout << "reading memory at: " << std::hex << addr << std::endl;
		return buffer[addr];
	}

	// =======================================================================
	/**
	*/
	void Memory::write(u16 addr, u8 value)
	{
		if (nullptr != write_callbacks[addr])
			(nes->*write_callbacks[addr])(addr, value);
		else
		{
			// std::cout << "write memory at: " << std::hex << addr << " value " << (short)value << std::endl;
			buffer[addr] = value;
		}
	}

	// =======================================================================
	/**
	*/
	void Memory::load(u8* data, u32 size, u32 offset)
	{
		memcpy(buffer + offset, data, size);
	}

	// =======================================================================
	/**
	*/
	void Memory::clear()
	{
		memset(buffer, 0, size);
		for (u32 i = 0; i < size; ++i)
		{
			read_callbacks[i] = nullptr;
			write_callbacks[i] = nullptr;
		}
	}
}