/**
	class biscuit::NesWrapper
	Wraps NES module adding functionality of handling messages from
	message queue in shared memory. Allows communication with host
	GUI module, wich has to be in separate thread.

	AA (c) 2013
*/

#ifndef _NES_WRAPPER_H
#define _NES_WRAPPER_H

#include <string>
#include "nes.h"
#include "debugger.h"
#include "application/message.h"

namespace biscuit
{
	class QtGraphics;
	class SharedMessageQueue;

	class NesWrapper
	{
	public:
		NesWrapper();
		~NesWrapper();
	
		void set_graphics(QtGraphics* graphics);
		void set_message_queue(SharedMessageQueue* ashared_message_queue);
		void enable_debugger(bool enable);

		void start();

	protected:
		SharedMessageQueue* shared_message_queue;
		Emulation::Debugger debugger;
		Emulation::NES nes;

		std::map<std::string, void(NesWrapper::*)(Message* message)> message_handlers;

		bool running;
		bool debugging;

		void load_rom_file(Message* message);
		void set_sprite_pattern_offset(Message* message);
		void take_screenshot(Message* message);
		void render_sprite_by_nuber(Message* message);
		void input_event(Message* message);
		void console_command(Message* message);

		// returns a buffer with rom file content, caller responsible for deleting it
		unsigned char* get_file_image(const std::string& filename);
	};
}

#endif