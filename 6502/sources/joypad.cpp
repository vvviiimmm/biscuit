// ===========================================================================
// joypad.cpp
// AA (c) 2013
// ===========================================================================

#include "joypad.h"
#include "helpers.h"

namespace Emulation
{
	// =======================================================================
	/**
	*/
	Joypad::Joypad() : button_states(0), read_counter(0)
	{

	}

	// =======================================================================
	/**
	*/
	Joypad::~Joypad()
	{

	}

	// =======================================================================
	/**
	*/
	u8 Joypad::read_next_button()
	{
		if (read_counter > 7)
			read_counter = 0;

		return get_bit(button_states, read_counter++);
	}

	// =======================================================================
	/**
	*/
	void Joypad::set_button_state(JoypadButtons button, bool pressed)
	{
		if (pressed)
			set_bit(button_states, button);
		else
			clear_bit(button_states, button);
	}
}
