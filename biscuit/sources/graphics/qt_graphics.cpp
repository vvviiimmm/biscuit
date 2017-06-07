// ===========================================================================
// qt_graphics.cpp
// (c) AA, 2013
// ===========================================================================

#include "graphics/qt_graphics.h"
#include <iostream>

namespace biscuit
{
	// =======================================================================
	/**
	*/
	QtGraphics::QtGraphics() : pixel_buffer(257, 241, QImage::Format_RGB32)
	{

	}	

	// =======================================================================
	/**
	*/
	void QtGraphics::put_pixel(u16 x, u16 y, u8 r, u8 g, u8 b)
	{
		pixel_buffer.setPixel(x, y, qRgb(r, g, b));
	}

	// =======================================================================
	/**
	*/
	void QtGraphics::on_frame_end()
	{
	}

	// =======================================================================
	/**
	*/
	void QtGraphics::take_screenshot(const std::string& file_name)
	{
		pixel_buffer.save(file_name.c_str());
	}
}