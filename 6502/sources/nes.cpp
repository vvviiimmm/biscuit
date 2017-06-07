// ===========================================================================
// nes.cpp
// (c) Alex, 2013
// ===========================================================================

#include <iostream>
#include <assert.h>
#include "nes.h"
#include "cpu.h"
#include "cartridge.h"
#include "debugger.h"
#include "constants.h"

using namespace std;

namespace Emulation
{
	// =======================================================================
	/**
	*/
	NES::NES() : 
		cartridge(NULL), 
		running(false),
		rom_loaded(false)
	{
	}

	// =======================================================================
	/**
	*/
	NES::~NES()
	{
		delete cartridge;
	}

	// =======================================================================
	/**
	*/
	bool NES::init(u8* file_image)
	{
		if (cartridge)
			delete cartridge;

		cpu.reset();
		ppu.reset();

		cartridge = new Cartridge();
		if (!cartridge->init(file_image))
			return false;

		cpu.memory.set_nes(this);
		ppu.memory.set_nes(this);
		set_memory_access_callbacks();

		interrupts.clear_irq();
		interrupts.clear_nmi();
		interrupts.clear_reset(); // not sure about this

		cpu.interrupts = &interrupts;
		ppu.interrupts = &interrupts;

		init_cpu_memory();
		init_ppu_memory();

		cartridge->print_info();

		rom_loaded = true;

		return true;
	}

	// =======================================================================
	/**
	*/
	void NES::start()
	{
		running = true;
		while (running)
			step();
	}

	// =======================================================================
	/**
	*/
	void NES::step()
	{
		cpu.tick();

		ppu.tick();
		ppu.tick();
		ppu.tick();
	}

	// =======================================================================
	/**
		Temporary implementation
	*/
	void NES::init_cpu_memory()
	{
		if (cartridge->get_mapper_type() == 0) // no mapper, simplest case
		{
			if (cartridge->get_num_prgrom_banks() == 1)
			{
				// same bank into low and high segments
				cpu.load_prgrom_low(cartridge->get_prgrom_bank(0));
				cpu.load_prgrom_high(cartridge->get_prgrom_bank(0));
			}
			else
			{
				// first bank into low, last bank into high
				cpu.load_prgrom_low(cartridge->get_prgrom_bank(0));
				cpu.load_prgrom_high(cartridge->get_prgrom_bank(cartridge->get_num_prgrom_banks() - 1));
			}
		}
		else
		{
			std::cout << "Mapper " << cartridge->get_mapper_type() << " is not implemented." << std::endl;
			assert(false);
		}
	}

	// =======================================================================
	/**
		Temporary implementation
	*/
	void NES::init_ppu_memory()
	{
		ppu.load_pattern_table(cartridge->get_vrom_bank(0));
	}

	// =======================================================================
	/**
	*/
	void NES::set_memory_access_callbacks()
	{
		// mirroring four times
		for (u16 addr_offset = k_zero_page_location; addr_offset < k_ram_mirror_size; addr_offset += k_zsr_size)
		{
			// zero page callbacks
			for (u16 addr = addr_offset + k_zero_page_location; addr < k_zero_page_size; ++addr)
			{
				cpu.memory.set_mem_read_callback(addr, &NES::cpu_ram_read_callback);
				cpu.memory.set_mem_write_callback(addr, &NES::cpu_ram_write_callback);
			}

			// stack callbacks
			for (u16 addr = addr_offset + k_stack_location; addr < k_stack_size; ++addr)
			{
				cpu.memory.set_mem_read_callback(addr, &NES::cpu_ram_read_callback);
				cpu.memory.set_mem_write_callback(addr, &NES::cpu_ram_write_callback);
			}

			// ram callbacks
			for (u16 addr = addr_offset + k_ram_location; addr < k_ram_size; ++addr)
			{
				cpu.memory.set_mem_read_callback(addr, &NES::cpu_ram_read_callback);
				cpu.memory.set_mem_write_callback(addr, &NES::cpu_ram_write_callback);
			}
		}

		// ppu registers
		for (u16 offset = 0; offset < k_ppu_reg_mirror_size; offset += 8)
		{
			cpu.memory.set_mem_write_callback(	k_ppu_control_reg + offset, 	&NES::ppu_controller_write);
			cpu.memory.set_mem_write_callback(	k_ppu_mask_reg + offset, 		&NES::ppu_mask_write);
			cpu.memory.set_mem_read_callback(	k_ppu_status_reg + offset, 		&NES::ppu_status_read);
			cpu.memory.set_mem_write_callback(	k_ppu_oam_addr_reg + offset, 	&NES::ppu_oam_address_write);
			cpu.memory.set_mem_read_callback(	k_ppu_oam_data_reg + offset, 	&NES::ppu_oam_data_read);
			cpu.memory.set_mem_write_callback(	k_ppu_oam_data_reg + offset, 	&NES::ppu_oam_data_write);
			cpu.memory.set_mem_write_callback(	k_ppu_scroll_reg + offset, 		&NES::ppu_scroll_write);
			cpu.memory.set_mem_write_callback(	k_ppu_addr_reg + offset, 		&NES::ppu_address_write);
			cpu.memory.set_mem_read_callback(	k_ppu_data_reg + offset, 		&NES::ppu_data_read);
			cpu.memory.set_mem_write_callback(	k_ppu_data_reg + offset, 		&NES::ppu_data_write);
		}

		// sound registers
		for (u16 sound_register = k_sound_registers; sound_register <= 0x4013; ++sound_register)
		{
			cpu.memory.set_mem_write_callback(sound_register, &NES::sound_registers_write);
			cpu.memory.set_mem_read_callback(sound_register, &NES::sound_registers_read);
		}

		cpu.memory.set_mem_write_callback(k_spr_dma, &NES::spr_dma_write);
		cpu.memory.set_mem_write_callback(k_sound_channel_switch, &NES::sound_channel_write);
		cpu.memory.set_mem_write_callback(k_joystick_1, &NES::joystick_1_write);
		cpu.memory.set_mem_read_callback(k_joystick_1, &NES::joystick_1_read);
		cpu.memory.set_mem_write_callback(k_joystick_2, &NES::joystick_2_write);
		cpu.memory.set_mem_read_callback(k_joystick_2, &NES::joystick_2_read);

		for (u16 addr = k_expansion_rom; addr < k_expansion_rom_size; ++addr)
		{
			cpu.memory.set_mem_write_callback(addr, &NES::expansion_rom_write);
			cpu.memory.set_mem_read_callback(addr, &NES::expansion_rom_read);
		}

		for (u16 addr = k_sram; addr < k_sram_size; ++addr)
		{
			cpu.memory.set_mem_write_callback(addr, &NES::sram_write);
			cpu.memory.set_mem_read_callback(addr, &NES::sram_read);
		}

		// prg low
		for (u16 addr = k_prg_rom_low; addr < k_prg_rom_low_size; ++addr)
		{
			cpu.memory.set_mem_write_callback(addr, &NES::prg_rom_low_write);
			cpu.memory.set_mem_read_callback(addr, &NES::prg_rom_low_read);	
		}

		// prg high
		for (u16 addr = k_prg_rom_high; addr < k_prg_rom_high_size; ++addr)
		{
			cpu.memory.set_mem_write_callback(addr, &NES::prg_rom_high_write);
			cpu.memory.set_mem_read_callback(addr, &NES::prg_rom_high_read);	
		}	

		// ppu vram memory space =============================================
		// pattern table 0
		for (u16 addr = 0; addr < 0x1000; ++addr)
		{
			ppu.memory.set_mem_write_callback(addr, &NES::ppu_pattern_table_0_write);
			ppu.memory.set_mem_read_callback(addr, &NES::ppu_pattern_table_0_read);
		}

		// pattern table 1
		for (u16 addr = 0x1000; addr < 0x2000; ++addr)
		{
			ppu.memory.set_mem_write_callback(addr, &NES::ppu_pattern_table_1_write);
			ppu.memory.set_mem_read_callback(addr, &NES::ppu_pattern_table_1_read);
		}

		// nametables mirroring
		u8 mirroring = cartridge->get_mirroring();
		if (mirroring == 1) // vertical mirroring
		{
			for (u16 addr = 0x2000; addr < 0x2400; ++addr)
			{
				ppu.memory.set_mem_write_callback(addr, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr, &NES::ppu_nametable_0_read);

				ppu.memory.set_mem_write_callback(addr + 0x800, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr  + 0x800, &NES::ppu_nametable_0_read);

				ppu.memory.set_mem_write_callback(addr + 0x1000, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1000, &NES::ppu_nametable_0_read);

				ppu.memory.set_mem_write_callback(addr + 0x1800, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1800, &NES::ppu_nametable_0_read);
			}

			for (u16 addr = 0x2400; addr < 0x2800; ++addr)
			{
				ppu.memory.set_mem_write_callback(addr, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr, &NES::ppu_nametable_1_read);

				ppu.memory.set_mem_write_callback(addr + 0x800, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr  + 0x800, &NES::ppu_nametable_1_read);

				ppu.memory.set_mem_write_callback(addr + 0x1000, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1000, &NES::ppu_nametable_1_read);

				ppu.memory.set_mem_write_callback(addr + 0x1800, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1800, &NES::ppu_nametable_1_read);
			}
		} 
		else if (mirroring == 0) // horizontal mirroring
		{
			for (u16 addr = 0x2000; addr < 0x2400; ++addr)
			{
				ppu.memory.set_mem_write_callback(addr, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr, &NES::ppu_nametable_0_read);

				ppu.memory.set_mem_write_callback(addr + 0x400, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr  + 0x400, &NES::ppu_nametable_0_read);

				ppu.memory.set_mem_write_callback(addr + 0x1000, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1000, &NES::ppu_nametable_0_read);

				ppu.memory.set_mem_write_callback(addr + 0x1400, &NES::ppu_nametable_0_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1400, &NES::ppu_nametable_0_read);				
			}

			for (u16 addr = 0x2800; addr < 0x2c00; ++addr)
			{
				ppu.memory.set_mem_write_callback(addr, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr, &NES::ppu_nametable_1_read);

				ppu.memory.set_mem_write_callback(addr + 0x400, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr  + 0x400, &NES::ppu_nametable_1_read);				

				ppu.memory.set_mem_write_callback(addr + 0x1000, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1000, &NES::ppu_nametable_1_read);

				ppu.memory.set_mem_write_callback(addr + 0x1400, &NES::ppu_nametable_1_write);
				ppu.memory.set_mem_read_callback(addr  + 0x1400, &NES::ppu_nametable_1_read);
			}
		}
		else // four screen mirroring
		{

		}

		// palette with mirroring, 8 times
		for (u16 addr = k_palettes_addr; addr < 0x4000; ++addr)
		{
			ppu.memory.set_mem_write_callback(addr, &NES::ppu_palette_write);
			ppu.memory.set_mem_read_callback(addr, &NES::ppu_palette_read);
		}
	}

	// =======================================================================
	/**
	*/
	u8 NES::cpu_ram_read_callback(u16 addr)
	{
		// std::cout << "ram read callback: " << std::hex << addr << std::endl;
		return cpu.memory.buffer[(u16)(addr & 0x7ff)];
	}

	// =======================================================================
	/**
	*/
	void NES::cpu_ram_write_callback(u16 addr, u8 value)
	{
		// std::cout << "ram write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		cpu.memory.buffer[(u16)(addr & 0x7ff)] = value;
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_controller_write(u16 addr, u8 value)
	{
		std::cout << "ppu controller write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppuctrl_write(value);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_mask_write(u16 addr, u8 value)
	{
		std::cout << "ppu mask write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppumask_write(value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_status_read(u16 addr)
	{
		//std::cout << "status read callback: " << std::hex << addr << std::endl;
		ppu.ppustatus_read();
		return ppu.ppustatus;
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_oam_address_write(u16 addr, u8 value)
	{
		std::cout << "ppu oam address callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppuoamaddr_write(value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_oam_data_read(u16 addr)
	{
		std::cout << "oam read callback: " << std::hex << addr << std::endl;
		ppu.ppuoamdata_read();
		return ppu.oamdata;
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_oam_data_write(u16 addr, u8 value)
	{
		//std::cout << "ppu oam data write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppuoamdata_write(value);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_scroll_write(u16 addr, u8 value)
	{
		// std::cout << "ppu scrol write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppuscroll_write(value);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_address_write(u16 addr, u8 value)
	{
		// std::cout << "ppu address write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppuaddr_write(value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_data_read(u16 addr)
	{
		//std::cout << "data read callback: " << std::hex << addr << std::endl;
		ppu.ppudata_read();
		return ppu.ppudata;
	} 

	// =======================================================================
	/**
	*/
	void NES::ppu_data_write(u16 addr, u8 value)
	{
		//std::cout << "ppu data write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.ppudata_write(value);
	}

	// =======================================================================
	/**
	*/
	void NES::sound_registers_write(u16 addr, u8 value)
	{
		std::cout << "sound registers write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::sound_registers_read(u16 addr)
	{
		std::cout << "data read callback: " << std::hex << addr << std::endl;
		return 42;
	}

	// =======================================================================
	/**
	*/
	void NES::spr_dma_write(u16 addr, u8 value)
	{
		std::cout << "spr dma write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
		u16 start_addr = (u16)value << 8;
		for (u8 i = 0; i < 0xff; ++i)
			ppu.ppudata_write(cpu.memory.read(start_addr + i));
	}

	// =======================================================================
	/**
	*/
	void NES::sound_channel_write(u16 addr, u8 value)
	{
		std::cout << "sound channel write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	void NES::joystick_1_write(u16 addr, u8 value)
	{
		std::cout << "joystick 1 write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::joystick_1_read(u16 addr)
	{
		//std::cout << "joystick 1 read callback: " << std::hex << addr << std::endl;
		return first_joypad.read_next_button();
	}

	// =======================================================================
	/**
	*/
	void NES::joystick_2_write(u16 addr, u8 value)
	{
		std::cout << "joystick 2 write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::joystick_2_read(u16 addr)
	{
		std::cout << "joystick 2 read callback: " << std::hex << addr << std::endl;
		return 0;
	}

	// =======================================================================
	/**
	*/
	void NES::expansion_rom_write(u16 addr, u8 value)
	{
		std::cout << "expansion_rom write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::expansion_rom_read(u16 addr)
	{
		std::cout << "expansion rom read callback: " << std::hex << addr << std::endl;
		return 42;
	}

	// =======================================================================
	/**
	*/
	void NES::sram_write(u16 addr, u8 value)
	{
		std::cout << "sram write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::sram_read(u16 addr)
	{
		std::cout << "sram read callback: " << std::hex << addr << std::endl;
		return 42;
	}

	// =======================================================================
	/**
	*/
	void NES::prg_rom_low_write(u16 addr, u8 value)
	{
		std::cout << "prg_rom_low write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::prg_rom_low_read(u16 addr)
	{
		std::cout << "prg_rom_low read callback: " << std::hex << addr << std::endl;
		return 42;
	}

	// =======================================================================
	/**
	*/
	void NES::prg_rom_high_write(u16 addr, u8 value)
	{
		std::cout << "prg_rom_high write callback: " << std::hex << addr << " value: " << (short)value << std::endl;
	}

	// =======================================================================
	/**
	*/
	u8 NES::prg_rom_high_read(u16 addr)
	{
		std::cout << "prg_rom_high read callback: " << std::hex << addr << std::endl;
		return 42;
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_pattern_table_0_write(u16 addr, u8 value)
	{
		// std::cout << "pattern table 0 write: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.pattern_table_0_write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_pattern_table_0_read(u16 addr)
	{
		// std::cout << "pattern table 0 read callback: " << std::hex << addr << std::endl;
		return ppu.pattern_table_0_read(addr);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_pattern_table_1_write(u16 addr, u8 value)
	{
		//std::cout << "pattern table 1 write: " << std::hex << addr << " value: " << (short)value << std::endl;
		ppu.pattern_table_1_write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_pattern_table_1_read(u16 addr)
	{
		//std::cout << "pattern table 1 read callback: " << std::hex << addr << std::endl;
		return ppu.pattern_table_1_read(addr);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_nametable_0_write(u16 addr, u8 value)
	{
		ppu.nametable_0_write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_nametable_0_read(u16 addr)
	{
		return ppu.nametable_0_read(addr);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_nametable_1_write(u16 addr, u8 value)
	{
		ppu.nametable_1_write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_nametable_1_read(u16 addr)
	{
		return ppu.nametable_1_read(addr);
	}

	// =======================================================================
	/**
	*/
	void NES::ppu_palette_write(u16 addr, u8 value)
	{
		ppu.palette_write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 NES::ppu_palette_read(u16 addr)
	{
		return ppu.palette_read(addr);
	}
}