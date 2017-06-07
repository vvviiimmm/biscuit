/**
	class Emulation::Joypad
	Incapsulates NES joypad state

	AA (c) 2013
*/

#ifndef _JOYPAD_H
#define _JOYPAD_H

#include "types.h"

namespace Emulation
{
	enum JoypadButtons
	{
		A = 0,
		B,
		SELECT,
		START,
		UP,
		DOWN,
		LEFT,
		RIGHT,
		INVALID_BUTTON = -1,
	};

	class Joypad
	{
	public:
		Joypad();
		~Joypad();

		// Each of the first eight reads indicates the status 
		// of one button on the standard controller in the order:
		// A, B, Select, Start, Up, Down, Left, Right
		u8 read_next_button();

		void set_button_state(JoypadButtons button, bool pressed);
	
	protected:
		u8 button_states; // 1 bit for button
		u8 read_counter;
	};
}

#endif