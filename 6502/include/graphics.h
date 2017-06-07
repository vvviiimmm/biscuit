// ===========================================================================
// graphics.h
// Simple graphics interface, drawing pixels, primitives, etc.
// (c) AA, 2013
// ===========================================================================

#ifndef _GRAPHICS_H
#define _GRAPHICS_H

#include <string>

namespace Emulation
{
	class Graphics
	{
	public:
		Graphics() {};
		
		// puts a single pixel on the screen
		virtual void put_pixel(u16 x, u16 y, u8 r, u8 g, u8 b) = 0;

		// called on the end of each frame
		virtual void on_frame_end() = 0;

		// saves backbuffer to file
		virtual void take_screenshot(const std::string& file_name) = 0;

	};
}

#endif
