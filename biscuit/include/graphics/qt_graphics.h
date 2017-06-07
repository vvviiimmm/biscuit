// ===========================================================================
// qt_graphics.h
// (c) AA, 2013
// ===========================================================================

#ifndef _QT_GRAPHICS_H
#define _QT_GRAPHICS_H

#include "types.h"
#include "graphics.h"
#include <QImage>

namespace biscuit
{
	class QtGraphics : public Emulation::Graphics
	{
	public:
		QtGraphics();

		void put_pixel(u16 x, u16 y, u8 r, u8 g, u8 b);
		void on_frame_end();

		QImage* get_frame_buffer();

		void take_screenshot(const std::string& file_name);

	private:
		QImage pixel_buffer;
		QImage present_buffer;
	};

	inline QImage* QtGraphics::get_frame_buffer()
	{
		return &pixel_buffer;
	}

}

#endif