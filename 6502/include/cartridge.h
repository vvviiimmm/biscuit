// ===========================================================================
// Cartidge incapsulation, parses rom files and stores them is Cartridge
// module (ROM/CHAR banks, mirroring, number of banks etc.)

// (c) Alex, 2013
// ===========================================================================

#ifndef _CARTRIDGE_H
#define _CARTRIDGE_H

#include "types.h"

namespace Emulation
{
	class Cartridge
	{
	public:
		Cartridge();
		~Cartridge();

		// initialize cartridge from memory image
		bool init(u8* image);

		// temp functions
		u8* get_prgrom_bank(u8 bank_number);
		u8* get_vrom_bank(u8 bank_number);

		u8 get_num_prgrom_banks();
		u8 get_num_vrom_banks();
		u8 get_mapper_type();
		u8 get_mirroring();

		// debug info to std out
		void print_info();

	private:
		u8 num_prgrom_banks;
		u8 num_vrom_banks;
		u8 mapper_type;
		u8 mirroring;

		u8* prgrom_banks[0xff];
		u8* vrom_banks[0xff];
	};

	// =======================================================================
	/**
	*/
	inline
	u8 Cartridge::get_num_prgrom_banks()
	{
		return num_prgrom_banks;
	}	

	// =======================================================================
	/**
	*/
	inline
	u8 Cartridge::get_num_vrom_banks()
	{
		return num_vrom_banks;
	}

	// =======================================================================
	/**
	*/
	inline
	u8 Cartridge::get_mapper_type()
	{
		return mapper_type;
	}

	// =======================================================================
	/**
	*/
	inline
	u8 Cartridge::get_mirroring()
	{
		return mirroring;
	}
}

#endif