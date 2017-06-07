// ===========================================================================
// cartridge.cpp
// (c) Alex, 2013
// ===========================================================================

#include <iostream>
#include <cstring>
#include "cartridge.h"
#include "constants.h"

using namespace std;

namespace Emulation
{
	// =======================================================================
	/**
	*/
	Cartridge::Cartridge() : num_prgrom_banks(0), num_vrom_banks(0), mapper_type(0)
	{

	}

	// =======================================================================
	/**
	*/
	Cartridge::~Cartridge()
	{
		for (u8 i = 0; i < num_prgrom_banks; ++i)
			delete prgrom_banks[i];

		for (u8 i = 0; i < num_vrom_banks; ++i)
			delete vrom_banks[i];
	}

	// =======================================================================
	/**
	*/
	bool Cartridge::init(u8* image)
	{
		if (!(image[0] == 'N' && image[1] == 'E' && image[2] == 'S' && image[3] == 0x1a))
			return false;

		num_prgrom_banks = image[4];
		num_vrom_banks = image[5];
		mirroring = (image[6] & 1);
		mapper_type = (image[7] & 0xf0) | ((image[6] & 0xf0) >> 4);

		u32 prg_rom_offset = 0x10;
		for (u8 i = 0; i < num_prgrom_banks; ++i)
		{
			prgrom_banks[i] = new u8[k_prgrom_bank_size];
			memcpy(prgrom_banks[i], image + prg_rom_offset + k_prgrom_bank_size * i, k_prgrom_bank_size);
		}

		u32 vrom_offset = prg_rom_offset + k_prgrom_bank_size * num_prgrom_banks;
		for (u8 i = 0; i < num_vrom_banks; ++i)
		{
			vrom_banks[i] = new u8[k_vrom_bank_size];
			memcpy(vrom_banks[i], image + vrom_offset + k_vrom_bank_size * i, k_vrom_bank_size);
		}
		
		return true;
	}

	// =======================================================================
	/**
	*/
	u8* Cartridge::get_prgrom_bank(u8 bank_number)
	{
		return prgrom_banks[bank_number];
	}

	// =======================================================================
	/**
	*/
	u8* Cartridge::get_vrom_bank(u8 bank_number)
	{
		return vrom_banks[bank_number];
	}

	// =======================================================================
	/**
	*/
	void Cartridge::print_info()
	{
		cout << "Cartridge info:" << endl;
		cout << "    Number of PRGROM banks: " 		<< (short)num_prgrom_banks << endl;
		cout << "    Number of VROM banks: "	 	<< (short)num_vrom_banks << endl;
		cout << "    Mapper type: "					<< (short)mapper_type << endl;
		cout << "    Mirroring: "					<< (short)mirroring << endl;
	}
}