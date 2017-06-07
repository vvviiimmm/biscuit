// ===========================================================================
// nes_wrapper.cpp
// AA (c) 2013
// ===========================================================================

#include <iostream>
#include <fstream> 
#include "application/nes_wrapper.h"
#include "application/shared_memory.h"
#include "graphics/qt_graphics.h"

#include "application/messages.h"

namespace biscuit
{
	// =======================================================================
	/**
	*/
	NesWrapper::NesWrapper() : 
		shared_message_queue(NULL),
		running(false), 
		debugging(false)
	{
		message_handlers["load_rom_file"] = &NesWrapper::load_rom_file;
		message_handlers["sprite_pattern_offset"] = &NesWrapper::set_sprite_pattern_offset;
		message_handlers["take_screenshot"] = &NesWrapper::take_screenshot;
		message_handlers["render_sprite_by_nuber"] = &NesWrapper::render_sprite_by_nuber;
		message_handlers["input_event"] = &NesWrapper::input_event;
		message_handlers["console_command"] = &NesWrapper::console_command;

		debugger.set_nes(&nes);
	}

	// =======================================================================
	/**
	*/
	NesWrapper::~NesWrapper()
	{

	}

	// =======================================================================
	/**
	*/
	void NesWrapper::set_graphics(QtGraphics* graphics)
	{
		nes.ppu.set_graphics(graphics);
	}

	// =======================================================================
	/**
	*/
	void NesWrapper::enable_debugger(bool enable)
	{
		debugging = enable;
		debugger.set_running(debugging);
	}

	// =======================================================================
	/**
	*/
	void NesWrapper::set_message_queue(SharedMessageQueue* ashared_message_queue)
	{
		shared_message_queue = ashared_message_queue;
	}

	// =======================================================================
	/**
	*/
	void NesWrapper::start()
	{
		running = true;
		while(running)
		{
			shared_message_queue->lock_nes_messages();
			while (shared_message_queue->has_messages_to_nes())
			{
				Message* message = shared_message_queue->get_next_nes_message();
				std::cout << "NesWrapper handling " << message->get_id() << " message" << std::endl; 

				auto message_handler_it = message_handlers.find(message->get_id());
				if (message_handler_it != message_handlers.end())
					(this->*message_handlers[message->get_id()] ) (message);

				delete message;
			}
			shared_message_queue->unlock_nes_messages();

			if (nes.is_rom_loaded())
				if (debugging)
					debugger.step();
				else 
					nes.step();
		}
	}

	// =======================================================================
	/**
		Message handlers
	*/
	void NesWrapper::load_rom_file(Message* message)
	{
		LoadRomFile* load_rom_file_message = static_cast<LoadRomFile*>(message);
		unsigned char* file_image = get_file_image(load_rom_file_message->get_rom_file_name());

		nes.init(file_image);
		nes.set_running(true);

		delete file_image;
	}

	void NesWrapper::set_sprite_pattern_offset(Message* message)
	{
		SpritePatternOffset* sprite_pattern_offset_msg = static_cast<SpritePatternOffset*>(message);
		nes.ppu.sprite_pattern_offset = sprite_pattern_offset_msg->get_offset();
	}

	void NesWrapper::render_sprite_by_nuber(Message* message)
	{
		RenderSpriteByNumber* render_sprite_by_nuber_msg = static_cast<RenderSpriteByNumber*>(message);
		nes.ppu.render_sprite_number = render_sprite_by_nuber_msg->get_sprite_number();
	}

	void NesWrapper::take_screenshot(Message* message)
	{
		TakeScreenshot* take_screenshot_msg = static_cast<TakeScreenshot*>(message);
		nes.ppu.graphics->take_screenshot(take_screenshot_msg->get_file_name());
	}

	unsigned char* NesWrapper::get_file_image(const std::string& filename)
	{
		char* buffer = NULL;
		ifstream ifs (filename, ifstream::binary);
		if (ifs.good())
		{
			// get pointer to associated buffer object
			filebuf* pbuf = ifs.rdbuf();

			// get file size using buffer's members
			size_t size = pbuf->pubseekoff (0,ifs.end,ifs.in);
			pbuf->pubseekpos (0,ifs.in);

			// allocate memory to contain file data
			buffer=new char[size];

			// get file data
			pbuf->sgetn (buffer,size);

			ifs.close();
		}
		return (unsigned char*)buffer;
	}

	// =======================================================================
	/**
	*/
	void NesWrapper::input_event(Message* message)
	{
		InputEvent* input_event = static_cast<InputEvent*>(message);
		std::string pressed(input_event->is_pressed() ? " pressed" : " unpressed" );
		std::cout << "Input event " << input_event->get_key() << pressed << std::endl;
		nes.first_joypad.set_button_state(input_event->get_key(), input_event->is_pressed());
	}

	// =======================================================================
	/**
	*/
	void NesWrapper::console_command(Message* message)
	{
		ConsoleCommand* command_message = static_cast<ConsoleCommand*>(message);
		debugger.handle_command(command_message->get_command());
	}
}

