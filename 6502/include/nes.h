// ===========================================================================
// NES itself, manages cpu, ppu, apu ticks 

// (c) Alex, 2013
// ===========================================================================

#ifndef _NES_H
#define _NES_H

#include "cpu.h"
#include "ppu.h"
#include "cartridge.h"
#include "interrupts.h"
#include "joypad.h"

namespace Emulation
{
	class CPU;
	class Cartridge;
	class Debugger;

	class NES
	{
	public:
		NES();
		~NES();

		// initialize all subsystems, rom file as file_image
		bool init(u8* file_image);

		// starts the nes
		void start();

		// performs a single "step"
		void step();

		bool is_running() { return running; };
		void set_running(bool set_running) { running = set_running; };

		bool is_rom_loaded() { return rom_loaded; };

		CPU cpu;
		PPU ppu;
		Interrupts interrupts;

		Joypad first_joypad;
		Joypad second_joypad;

		friend class Debugger;
	private:
		Cartridge* cartridge;
		bool running;
		bool rom_loaded;
		
		// copy cartridge data to memory
		void init_cpu_memory();
		void init_ppu_memory();

		// different callbacks for different memory access addresses
		void set_memory_access_callbacks();

		// cpu ram access callbacks
		u8 cpu_ram_read_callback(u16);
		void cpu_ram_write_callback(u16 addr, u8 value);

		// ppu memory space ==================================================
		// ppu registers access callbacks
		void ppu_controller_write(u16 addr, u8 value);		// 0x2000
		void ppu_mask_write(u16 addr, u8 value);			// 0x2001
		u8 ppu_status_read(u16 addr);						// 0x2002
		void ppu_oam_address_write(u16 addr, u8 value);		// 0x2003
		u8 ppu_oam_data_read(u16 addr);						// 0x2004
		void ppu_oam_data_write(u16 addr, u8 value);		// 0x2004
		void ppu_scroll_write(u16 addr, u8 value);			// 0x2005
		void ppu_address_write(u16 addr, u8 value);			// 0x2006
		u8 ppu_data_read(u16 addr);							// 0x2007
		void ppu_data_write(u16 addr, u8 value);			// 0x2007

		// input/output registers
		void sound_registers_write(u16 addr, u8 value);		// 0x4000 - 0x4013
		u8 sound_registers_read(u16 addr);					// 0x4000 - 0x4013
		void spr_dma_write(u16 addr, u8 value);				// 0x4014
		void sound_channel_write(u16 addr, u8 value);		// 0x4015
		void joystick_1_write(u16 addr, u8 value);			// 0x4016
		u8 joystick_1_read(u16 addr);						// 0x4016
		void joystick_2_write(u16 addr, u8 value);			// 0x4017
		u8 joystick_2_read(u16 addr);						// 0x4017

		// expansion ROM — used with Nintendo's MMC5 to expand the capabilities of VRAM.
		void expansion_rom_write(u16 addr, u8 value);		// 0x4020 - 0x5fff
		u8 expansion_rom_read(u16 addr);					// 0x4020 - 0x5fff

		// SRAM — Save Ram used to save data between game plays.
		void sram_write(u16 addr, u8 value);				// 0x6000 - 0x7fff
		u8 sram_read(u16 addr);								// 0x6000 - 0x7fff

		// program rom
		void prg_rom_low_write(u16 addr, u8 value);			// 0x8000 - 0xbfff
		u8 prg_rom_low_read(u16 addr);						// 0x8000 - 0xbfff

		void prg_rom_high_write(u16 addr, u8 value);		// 0xc000 - 0xffff
		u8 prg_rom_high_read(u16 addr);						// 0xc000 - 0xffff
		// ===================================================================

		// ppu's vram address space ==========================================
		void ppu_pattern_table_0_write(u16 addr, u8 value); // 0x0000 - 0x1000
		u8 ppu_pattern_table_0_read(u16 addr);				// 0x0000 - 0x1000

		void ppu_pattern_table_1_write(u16 addr, u8 value); // 0x1000 - 0x2000
		u8 ppu_pattern_table_1_read(u16 addr);				// 0x1000 - 0x2000

		void ppu_nametable_0_write(u16 addr, u8 value);		// 0x2000 - 0x2400
		u8 ppu_nametable_0_read(u16 addr);					// 0x2000 - 0x2400

		void ppu_nametable_1_write(u16 addr, u8 value);		// 0x2400 - 0x2800
		u8 ppu_nametable_1_read(u16 addr);					// 0x2400 - 0x2800

		void ppu_palette_write(u16 addr, u8 value);
		u8 ppu_palette_read(u16 addr);
	};
}

#endif