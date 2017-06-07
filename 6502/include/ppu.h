// ===========================================================================
// The PPU (Picture Processing Unit), more specifically known as Ricoh RP2C02 
// (NTSC version) / RP2C07 (PAL version), is the microprocessor in the 
// Nintendo Entertainment System responsible for generating video signals 
// from graphic data stored in memory.

// (c) Alex, 2013
// ===========================================================================

#ifndef _PPU_H
#define _PPU_H

#include "types.h"
#include "memory.h"

namespace biscuit
{
	class NesWrapper;
}

namespace Emulation
{
	class Interrupts;
	class Graphics;

	class PPU
	{
	public:
		PPU();
		~PPU();

		// read/write wrappers, handles mirroring
		u8 mem_read(u16 addr);
		void mem_write(u16 addr, u8 value);

		// executes one ppu cycle
		void tick();

		// graphics context
		void set_graphics(Graphics* graphics_interface);

		// load patterns from chr_data to vram memory
		void load_pattern_table(u8* chr_data);

		// PPUCTRL, 0x2000
		// Various flags controlling PPU operation
		// 0 = $2000; 1 = $2400; 2 = $2800; 3 = $2C00
		u16 get_base_nametable_address();
		// 1 if clear, 32 if set
		u8  get_vram_address_inc();
		// 0: $0000; 1: $1000; ignored in 8x16 mode
		u16 get_sprite_pattern_table_address();
		// 0: $0000; 1: $1000
		u16 get_bg_pattern_table_adress();
		// 0: 8x8, 1:8x16
		u8  get_sprite_size();
		// 0: master, 1: slave
		u8 get_master_slave_select();
		// 0: off, 1: on
		u8 get_generate_nmi_flag();

		// PPUMASK, 0x2001
		// This register controls screen enable, masking, and intensity. Write
		// $00 here if you want to turn rendering off so that you can update 
		// the pattern tables or nametables outside of vertical blanking. 
		// Write $1E when you're done to turn rendering back on. The other bits 
		// do special effects with the colors.
		// 0: normal color, 1: monochrome display
		u8 get_grayscale_flag();
		// 1: show, 0: hide
		u8 get_show_bg_leftmost_8_px();
		// 1: show, 0: hide
		u8 get_show_sprites_leftmost_8_px();
		// 1: show, 0: hide
		u8 get_show_bg();
		// 1: show, 0: hide
		u8 get_show_sprites();

		u8 get_intensify_reds();
		u8 get_intensify_greens();
		u8 get_intensify_blues();

		// PPUSTATUS, 0x2002
		// This register reflects the state of various functions inside the 
		// PPU. It is often used for determining timing. To determine when 
		// the PPU has reached a given pixel of the screen, put an opaque 
		// pixel of sprite 0 there.

		// least significant bits previously written into a PPU register
		u16 get_lsb_written_ppu_reg();
		// sprite overflow
		u8 get_sprite_overflow();
		// sprite 0 hit, used for raster timing.
		u8 get_sprite_0_hit();
		// vertical blank has started (0: not in VBLANK, 1: VBLANK)
		u8 get_in_vblank();
		void set_in_vblank();
		void clear_in_vblank();

		// OAMDATA, 0x2004
		// Write OAM data here. Writes will increment OAMADDR after the write; 
		// reads during vertical or forced blanking return the value from OAM 
		// at that address but do not increment.

		// memory access callbacks calling this functions
		void ppuctrl_write(u8 value);
		void ppumask_write(u8 value);
		void ppustatus_read();
		void ppuoamaddr_write(u8 value);
		void ppuoamdata_read();
		void ppuoamdata_write(u8 value);
		void ppuscroll_write(u8 value);
		void ppuaddr_write(u8 value);
		void ppudata_read();
		void ppudata_write(u8 value);

		// pattern tables read/write callbacks
		void pattern_table_0_write(u16 addr, u8 value);
		u8 pattern_table_0_read(u16 addr);
		void pattern_table_1_write(u16 addr, u8 value);
		u8 pattern_table_1_read(u16 addr);

		// name tables read/write callbacks
		void nametable_0_write(u16 addr, u8 value);
		u8 nametable_0_read(u16 addr);
		void nametable_1_write(u16 addr, u8 value);
		u8 nametable_1_read(u16 addr);

		// palette
		void palette_write(u16 addr, u8 value);
		u8 palette_read(u16 addr);

		// reset ppu after reset
		void reset();

		friend class NES;
		friend class Debugger;
		friend class biscuit::NesWrapper;

	private:
		Memory memory;
		Memory spr_ram;
		Memory nametable_0;
		Memory nametable_1;
		Memory palette;

		Interrupts* interrupts;
		Graphics* graphics;

		u8 ppuctrl;
		u8 ppumask;
		u8 ppustatus;
		u8 oamaddr;
		u8 oamdata;
		u8 ppuscroll;
		u8 ppuaddr;
		u8 ppudata;

		u16 vram_addr;		 		// 15 bits
		u16 vram_addr_latch; 		// 15 bit
		u8 fine_x_scroll; 			// 3 bit
		bool second_write_toggle; 	// 1 bit

		u8 spr_addr;

		u32 current_cycle;
		u32 current_scanline;
		u32 current_scanline_cycle;
		u64 current_frame;

		void render_current_pixel();
		u16 get_current_x();
		u16 get_current_y();

		// debug variables
		u32 sprite_pattern_offset;
		int render_sprite_number;
	};
}

#endif