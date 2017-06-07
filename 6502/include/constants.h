// ===========================================================================
// Constants declaration for memory mappings
// (c) Alex, 2013
// ===========================================================================

namespace Emulation
{
	const u16 k_zero_page_location =    0x0000;
	const u16 k_zero_page_size =    	0x0100;

	const u16 k_stack_location = 		0x0100;
	const u16 k_stack_size = 			0x0100;

	const u16 k_ram_location = 			0x0200;
	const u16 k_ram_size = 				0x0400;
	const u32 k_cpu_memory_size =		0x10000;

	const u16 k_ppu_control_reg = 		0x2000;
	const u16 k_ppu_mask_reg =	 		0x2001;
	const u16 k_ppu_status_reg = 		0x2002;
	const u16 k_ppu_oam_addr_reg = 		0x2003;
	const u16 k_ppu_oam_data_reg = 		0x2004;
	const u16 k_ppu_scroll_reg = 		0x2005;
	const u16 k_ppu_addr_reg =	 		0x2006;
	const u16 k_ppu_data_reg =	 		0x2007;

	const u16 k_sound_registers =		0x4000;
	const u16 k_spr_dma = 				0x4014;
	const u16 k_sound_channel_switch =	0x4015;
	const u16 k_joystick_1 = 			0x4016;
	const u16 k_joystick_2 = 			0x4017;

	const u16 k_expansion_rom = 		0x4020;
	const u16 k_expansion_rom_size = 	0x1fe0;

	const u16 k_sram =			 		0x6000;
	const u16 k_sram_size =			 	0x2000;

	const u16 k_prg_rom_low =			0x8000;
	const u16 k_prg_rom_low_size =		0x4000; 

	const u16 k_prg_rom_high =			0xc000;
	const u16 k_prg_rom_high_size =		0x4000;

	const u16 k_ppu_reg_mirror_size	=	0x2000;
	const u32 k_ppu_memory_size =		0x10000;
	const u32 k_spr_ram_size = 			0x100;
	const u32 k_ci_ram_size = 			0x800;
	const u32 k_nametable_size = 		0x400;
	const u32 k_palette_size = 			0x20;
	const u32 k_palettes_addr =			0x3f00;
	const u16 k_sprite_pattern_table_addr = 0x0000;
	const u16 k_bg_pattern_table_addr = 0x1000;
	const u16 k_attr_table_offset =		0x3c0;
	const u8 k_num_max_sprites = 		0x3f;
	const u8 k_bytes_per_sprite = 		0x4;

	// zero page size + stack size + ram size
	const u16 k_zsr_size =				0x0800;

	const u16 k_rom_location = 			0x8000;

	const u16 k_irq_vector_location = 	0xfffe;
	const u16 k_reset_vector_location = 0xfffc;
	const u16 k_nmi_vector_location = 	0xfffa;

	// whole ram segment with mirroring
	const u16 k_ram_mirror_size	= 		k_zsr_size * 4;

	const u32 k_prgrom_bank_size = 		0x4000;
	const u32 k_vrom_bank_size = 		0x2000;

	const u16 k_ppu_cycles_per_scanline = 341;
	const u16 k_ppu_scanlines_per_frame = 262;
	const u16 k_tiles_per_scanline		= 32;
	const u16 k_attr_areas_per_scanline = 8;

	const u16 k_screen_width_px			= 256;
	const u16 k_screen_height_px		= 240;
	const u16 k_tile_width				= 8;
	const u16 k_tile_height				= 8;
	const u16 k_attr_area_width			= 32;
	const u16 k_attr_area_height		= 32;
}