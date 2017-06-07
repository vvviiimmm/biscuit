// ===========================================================================
// ppu.cpp
// (c) Alex, 2012
// ===========================================================================

#include <iostream>
#include "ppu.h"
#include "constants.h"
#include "helpers.h"
#include "interrupts.h"
#include "graphics.h"
#include "palette.h"

namespace Emulation
{
	// =======================================================================
	/**
	*/
	PPU::PPU() : memory(k_ppu_memory_size), spr_ram(k_spr_ram_size),
				 nametable_0(k_nametable_size), nametable_1(k_nametable_size),
				 palette(k_palette_size),
				 ppuctrl(0x80), ppumask(0), ppustatus(0), oamaddr(0), // TEMP STATUS!
				 oamdata(0), ppuscroll(0), ppuaddr(0), ppudata(0),
				 vram_addr(0), vram_addr_latch(0), fine_x_scroll(0), 
				 second_write_toggle(false), spr_addr(0),
				 current_cycle(0), current_scanline(0), current_scanline_cycle(0),
				 current_frame(0),
				 interrupts(NULL), graphics(NULL),

				 //debug
				 sprite_pattern_offset(0),
				 render_sprite_number(-1)
	{
	}

	// =======================================================================
	/**
	*/
	PPU::~PPU()
	{
	}

	// =======================================================================
	/**
	*/
	u8 PPU::mem_read(u16 addr)
	{
		// nametables mirrorong
		// todo: ignore particular bits instead of this check
		// if (addr >= 0x3000 && addr < 0x3f00)
		// 	addr -= 0x1000;

		// // palette mirroring
		// if (addr >= 0x3f20 && addr < 0x4000)
		// 	addr -= 
		return memory.read(addr);
	}

	// =======================================================================
	/**
	*/
	void PPU::mem_write(u16 addr, u8 value)
	{
		// u16 address = addr & 0x3fff;
		// if (test_bit(address, 13)) 
		// 	address &= 0xe00f; // ignore 5-12 bits
		memory.write(addr, value);
	}

	// =======================================================================
	/**
	*/
	void PPU::load_pattern_table(u8* chr_data)
	{
		//memcpy(memory.buffer, chr_data, k_vrom_bank_size);
		memory.load(chr_data, k_vrom_bank_size);
	}

	// =======================================================================
	/**
	*/
	void PPU::tick()
	{
		// if (current_cycle == 0)
		// 	ppustatus = 0;

		if (current_scanline >= 0 && current_scanline <= 19)
		{
			// vblank, do nothing
		}
		else if (current_scanline == 20)
			ppustatus = 0;
			// start rendering, the first line is a dummy one.
			// operations on this scanline is identical to any other,
			// except no pixels are drawn.
		else if (current_scanline >= 21 && current_scanline <= 260)
		{
			// start actual rendering
			if (current_scanline_cycle <= 256)
				render_current_pixel();
		}		
		else if (current_scanline == 261)
		{
			// after the last rendered scanline ppu does nothing for 1 scanline.
			// when this scanline finished, the VINT flag is set
		}

		++current_cycle;
		++current_scanline_cycle;

		if (current_cycle % k_ppu_cycles_per_scanline == 0)
		{
			// end of scanline
			++current_scanline;
			current_scanline_cycle = 0;

			if (current_scanline == 20)
				// VBL flag is cleared 6820 clocks, or exactly 20 scanlines,
				// after it is set.
				clear_in_vblank();
			else if (current_scanline % k_ppu_scanlines_per_frame  == 0)
			{
				set_in_vblank();

				current_cycle = 0;
				current_scanline = 0;
				++current_frame;

				if (get_generate_nmi_flag())
					interrupts->set_nmi();

				if (graphics)
					graphics->on_frame_end();
			}
		}
	}

	// =======================================================================
	/**
	*/
	void PPU::render_current_pixel()
	{
		u16 current_x = get_current_x();
		u16 current_y = get_current_y();
		
		u16 base_nametable_address = get_base_nametable_address();
		u16 name_table_index = (current_x / k_tile_width) + (current_y / k_tile_height) * k_tiles_per_scanline;
		u16 pattern_table_index = memory.read(base_nametable_address + name_table_index);

		u16 bg_pattern_table_address = get_bg_pattern_table_adress();

		u16 tile_addr = bg_pattern_table_address + pattern_table_index * 16; // 16 bytes per tile
		u8 pattern_line_0 = memory.read(tile_addr + current_y % k_tile_height);
		u8 pattern_line_1 = memory.read(tile_addr + current_y % k_tile_height + 8);

		u8 pixel_color_index = get_bit(pattern_line_0, 7 - current_x % 8) | get_bit(pattern_line_1, 7 - current_x % 8) << 1;

		u16 base_nametable_attr_address = base_nametable_address + k_attr_table_offset;
		u8 attr_table_index = (current_x / k_attr_area_width) + (current_y / k_attr_area_height) * k_attr_areas_per_scanline;

		u8 attr_table_value = memory.read(base_nametable_attr_address + attr_table_index);

		u8 clamp_x = current_x % 32;
		u8 clamp_y = current_y % 32;

		if (clamp_x < 16 && clamp_y < 16)
			pixel_color_index |= (attr_table_value & 0x3) << 2;			// quadrant 0
		else if (clamp_x >= 16 && clamp_y < 16)
			pixel_color_index |= (attr_table_value & 0xc);				// quadrant 1
		else if (clamp_x < 16 && clamp_y >= 16)
			pixel_color_index |= (attr_table_value & 0x30) >> 2;		// quadrant 2
		else if (clamp_x >= 16 && clamp_y >= 16)
			pixel_color_index |= (attr_table_value & 0xc0) >> 4;		// quadrant 3

		u8 global_palette_index = memory.read(k_palettes_addr + pixel_color_index);

		u8 red = system_palette[global_palette_index][0];
		u8 green = system_palette[global_palette_index][1];
		u8 blue = system_palette[global_palette_index][2];

 		if (graphics)
 			graphics->put_pixel(current_x, current_y, red, green, blue);

		// render sprites
		u16 sprite_pattern_table_address = get_sprite_pattern_table_address();
		//for (int i = 0; i < k_num_max_sprites; ++i)
		for (u8 i = k_num_max_sprites; i > 0; --i)
		{
			if (render_sprite_number != -1 && i != render_sprite_number) continue;
			u8 y_position = spr_ram.read(k_bytes_per_sprite * i + 0) + 1;
			u8 tile_index = spr_ram.read(k_bytes_per_sprite * i + 1);
			u8 attributes = spr_ram.read(k_bytes_per_sprite * i + 2);
			u8 x_position = spr_ram.read(k_bytes_per_sprite * i + 3);

			if (y_position != 0 && x_position !=0 &&
				current_x >= x_position && current_x < (x_position + k_tile_width) && 
				current_y >= y_position && current_y < (y_position + k_tile_height))
			{
				// TODO: sprite priority handling
				u16 tile_addr = sprite_pattern_table_address + tile_index * 16 + sprite_pattern_offset; // 16 bytes per tile

				u8 pattern_line_0, pattern_line_1 = 0;
				if (test_bit(attributes, 7)) // flip sprite vertically
				{
					pattern_line_0 = memory.read(tile_addr + 7 - (current_y - y_position));
					pattern_line_1 = memory.read(tile_addr + 7 - (current_y - y_position) + 8);
				}
				else
				{
					pattern_line_0 = memory.read(tile_addr + current_y - y_position);
					pattern_line_1 = memory.read(tile_addr + current_y - y_position + 8);
				}

				u8 pixel_color_index = 0;
				if (test_bit(attributes, 6)) // flip sprite horizontally
					pixel_color_index = get_bit(pattern_line_0, current_x - x_position) | (get_bit(pattern_line_1, current_x - x_position) << 1);
				else
					pixel_color_index = get_bit(pattern_line_0, 7 - (current_x - x_position)) | (get_bit(pattern_line_1, 7 - (current_x - x_position)) << 1);

				pixel_color_index |= (attributes & 0x3) << 2;

 				if ((pixel_color_index % 4) != 0)
 				{
					u8 global_palette_index = memory.read(k_palettes_addr + pixel_color_index + 0x10);

 					u8 red = system_palette[global_palette_index][0];
 					u8 green = system_palette[global_palette_index][1];
 					u8 blue = system_palette[global_palette_index][2];

// 					u8 red = 0xff;
// 					u8 green = 0;
// 					u8 blue = 0;

 					if (graphics)
 						graphics->put_pixel(current_x, current_y, red, green, blue);
				}
			}
		}
	}

	// =======================================================================
	/**
	*/
	void PPU::reset()
	{
		memory.clear();
		spr_ram.clear();
		nametable_0.clear();
		nametable_1.clear();
		palette.clear();
		ppuctrl = 0x80;
		ppumask = 0;
		ppustatus = 0;
		oamaddr = 0;
		oamdata = 0;
		ppuscroll = 0;
		ppuaddr = 0;
		ppudata = 0;
		vram_addr = 0;
		vram_addr_latch = 0;
		fine_x_scroll = 0; 
		second_write_toggle = false;
		spr_addr = 0;
		current_cycle = 0;
		current_scanline = 0;
		current_scanline_cycle = 0;
		current_frame = 0;
	}

	// =======================================================================
	/**
		vram_addr_latch: ...BA.. ........ = d: ......BA
	*/
	void PPU::ppuctrl_write(u8 value)
	{
		vram_addr_latch &= 0xf3ff;
		vram_addr_latch |= ((u16)value & 0x3) << 10;
		ppuctrl = value;
	}

	// =======================================================================
	/**
	*/
	void PPU::ppumask_write(u8 value)
	{
		ppumask = value;
	}

	// =======================================================================
	/**
	*/
	void PPU::ppustatus_read()
	{
		second_write_toggle = false;
	}

	// =======================================================================
	/**
	*/
	void PPU::ppuoamaddr_write(u8 value)
	{
		spr_addr = value;
	}

	// =======================================================================
	/**
	*/
	void PPU::ppuoamdata_read()
	{

	}

	// =======================================================================
	/**
	*/
	void PPU::ppuoamdata_write(u8 value)
	{
		spr_ram.write(spr_addr, value);
		++spr_addr;
	}

	// =======================================================================
	/**
	*/
	void PPU::ppuscroll_write(u8 value)
	{
		second_write_toggle = !second_write_toggle;
	}

	// =======================================================================
	/**
		t: .FEDCBA ........ = d: ..FEDCBA
		t: X...... ........ = 0
		w:                  = 1
	*/
	void PPU::ppuaddr_write(u8 value)
	{
		if (!second_write_toggle)
		{
			vram_addr_latch &= 0x80ff;
			vram_addr_latch |= ((u16)value & 0x3f) << 8;
		}
		else
		{
			vram_addr_latch &= 0xff00;
			vram_addr_latch |= (u16)value;
			vram_addr = vram_addr_latch;
		}
		second_write_toggle = !second_write_toggle;
	}

	// =======================================================================
	/**
	*/
	void PPU::ppudata_read()
	{

	}

	// =======================================================================
	/**
	*/
	void PPU::ppudata_write(u8 value)
	{
		memory.write(vram_addr, value);
		vram_addr += get_vram_address_inc();
	}

	// =======================================================================
	/**
	*/
	void PPU::pattern_table_0_write(u16 addr, u8 value)
	{
		memory.buffer[addr] = value;
	}

	// =======================================================================
	/**
	*/
	u8 PPU::pattern_table_0_read(u16 addr)
	{
		return memory.buffer[addr];
	}

	// =======================================================================
	/**
	*/
	void PPU::pattern_table_1_write(u16 addr, u8 value)
	{
		memory.buffer[addr] = value;
	}

	// =======================================================================
	/**
	*/
	u8 PPU::pattern_table_1_read(u16 addr)
	{
		return memory.buffer[addr];
	}

	// =======================================================================
	/**
		addr - absolute address in ppu vram address space, we're ingnoring
		11-16 bits of the addr so we dont have to deal with mirroring
	*/
	void PPU::nametable_0_write(u16 addr, u8 value)
	{
		addr &= 0x3ff;
		nametable_0.write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 PPU::nametable_0_read(u16 addr)
	{
		addr &= 0x3ff;
		u8 result = nametable_0.read(addr);
		return result;
	}

	// =======================================================================
	/**
	*/
	void PPU::nametable_1_write(u16 addr, u8 value)
	{
		addr &= 0x3ff;
		nametable_1.write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 PPU::nametable_1_read(u16 addr)
	{
		addr &= 0x3ff;
		return nametable_1.read(addr);
	}

	// =======================================================================
	/**
	*/
	void PPU::palette_write(u16 addr, u8 value)
	{
		addr &= 0x1f;
		palette.write(addr, value);
	}

	// =======================================================================
	/**
	*/
	u8 PPU::palette_read(u16 addr)
	{
		addr &= 0x1f;
		return palette.read(addr);
	}
	
	// =======================================================================
	/**
		ppu_control_reg, 0x2000
	*/
	u16 PPU::get_base_nametable_address()
	{
		u8 value = ppuctrl & 0x3;
		return 0x2000 + 0x400 * value;
	}

	u8 PPU::get_vram_address_inc()
	{
		return test_bit(ppuctrl, 2) ? 32 : 1;
	}

	u16 PPU::get_sprite_pattern_table_address()
	{
		return 0x1000 * get_bit(ppuctrl, 3);
	}

	u16 PPU::get_bg_pattern_table_adress()
	{
		return 0x1000 * get_bit(ppuctrl, 4);	
	}

	u8 PPU::get_sprite_size()
	{
		return get_bit(ppuctrl, 5);
	}

	u8 PPU::get_master_slave_select()
	{
		return get_bit(ppuctrl, 6);	
	}

	u8 PPU::get_generate_nmi_flag()
	{
		return get_bit(ppuctrl, 7);
	}
	// =======================================================================

	// =======================================================================
	/**
		ppu_mask_reg, 0x2001
	*/
	u8 PPU::get_grayscale_flag()
	{
		return get_bit(ppumask, 0);
	}
	
	u8 PPU::get_show_bg_leftmost_8_px()
	{
		return get_bit(ppumask, 1);
	}

	u8 PPU::get_show_sprites_leftmost_8_px()
	{
		return get_bit(ppumask, 2);
	}

	u8 PPU::get_show_bg()
	{
		return get_bit(ppumask, 3);
	}

	u8 PPU::get_show_sprites()
	{
		return get_bit(ppumask, 4);
	}	
	
	u8 PPU::get_intensify_reds()
	{
		return get_bit(ppumask, 5);
	}

	u8 PPU::get_intensify_greens()
	{
		return get_bit(ppumask, 6);
	}

	u8 PPU::get_intensify_blues()
	{
		return get_bit(ppumask, 7);
	}

	// =======================================================================
	/**
		ppu_status_reg, 0x2002
	*/
	u16 PPU::get_lsb_written_ppu_reg()
	{
		return ppustatus & 0x01ff;
	}

	u8 PPU::get_sprite_overflow()
	{
		return get_bit(ppustatus, 5);	
	}

	u8 PPU::get_sprite_0_hit()
	{
		return get_bit(ppustatus, 6);
	}

	u8 PPU::get_in_vblank()
	{
		return get_bit(ppustatus, 7);
	}

	void PPU::set_in_vblank()
	{
		set_bit(ppustatus, 7);
	}

	void PPU::clear_in_vblank()
	{
		clear_bit(ppustatus, 7);
	}

	// =======================================================================
	/**
	*/
	u16 PPU::get_current_x()
	{
		return current_scanline_cycle;
	}

	u16 PPU::get_current_y()
	{
		return current_scanline - 21; // 20 wasted vblank scanlines + 1 prefetch
	}

	// =======================================================================
	/**
	*/
	void PPU::set_graphics(Graphics* graphics_interface)
	{
		graphics = graphics_interface;
	}
	
}