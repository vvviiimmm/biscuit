#ifndef _MESSAGES_H
#define _MESSAGES_H

#include <string>
#include "application/message.h"
#include "joypad.h"
using namespace std;

namespace biscuit
{
	// =======================================================================
	/**
	*/
	class InputEvent : public Message
	{
	public:
		InputEvent(Emulation::JoypadButtons abutton, bool apressed) : 
			Message("input_event"), button(abutton), pressed(apressed) {};

		InputEvent() : Message("input_event") {};

		void set_key(Emulation::JoypadButtons abutton) { button = abutton;};
		Emulation::JoypadButtons get_key() const { return button; };

		void set_pressed(bool apressed) { pressed = apressed; };
		bool is_pressed() const { return pressed; };

	protected:
		Emulation::JoypadButtons button;
		bool pressed;
	};

	// =======================================================================
	/**
	*/
	class LoadRomFile : public Message
	{
	public:
		LoadRomFile() : Message("load_rom_file") {};

		void set_rom_file_name(const string& arom_file_name) {rom_file_name = arom_file_name;};
		string get_rom_file_name() const { return rom_file_name; };

	protected:
		string rom_file_name;
	};

	// =======================================================================
	/**
	*/
	class SpritePatternOffset : public Message
	{
	public:
		SpritePatternOffset() : Message("sprite_pattern_offset") {};
		SpritePatternOffset(int aoffset) : Message("sprite_pattern_offset"), 
											offset(aoffset) {};

		void set_offset(int aoffset) {offset = aoffset;} ;
		int get_offset() const {return offset;};

	protected:
		int offset;
	};

	// =======================================================================
	/**
	*/
	class TakeScreenshot : public Message
	{
	public:
		TakeScreenshot() : Message("take_screenshot") {};
		TakeScreenshot(const string& afilename) : Message("take_screenshot"), 
													file_name(afilename) {};

		void set_file_name(const string& afile_name) {file_name = afile_name;};
		string get_file_name() const { return file_name; };

	protected:
		string file_name;
	};

	// =======================================================================
	/**
	*/
	class RenderSpriteByNumber : public Message
	{
	public:
		RenderSpriteByNumber() : Message("render_sprite_by_nuber") {};
		RenderSpriteByNumber(int aoffset) : Message("render_sprite_by_nuber"), 
											sprite_number(aoffset) {};

		void set_sprite_number(int asprite_number) {sprite_number = asprite_number;} ;
		int get_sprite_number() const {return sprite_number;};

	protected:
		int sprite_number;
	};

	// =======================================================================
	/**
	*/
	class ConsoleCommand : public Message
	{
	public:
		ConsoleCommand() : Message("console_command") {};
		ConsoleCommand(const std::string& acommand) : Message("console_command"), 
											command(acommand) {};

		void set_command(const std::string& acommand) {command = acommand;} ;
		std::string get_command() const {return command;};

	protected:
		std::string command;
	};
}

#endif // _MESSAGES_H