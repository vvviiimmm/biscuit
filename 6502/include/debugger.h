// ===========================================================================
// Simple debugger for 6502
// (c) Alex, 2013
// ===========================================================================

#ifndef _DEBUGGER_H
#define _DEBUGGER_H

#include <map>
#include <string>
#include <vector>
#include <set>
#include "types.h"

namespace Emulation
{
	class NES;
	class Debugger
	{
	public:
		Debugger();
		~Debugger();

		// executes a number of instructions (provided by callback_args)
		void step();

		// executes a number of cycles (provided by callback_args)
		void tick();

		// dumps cpu memory image into a file
		void cpu_dump();

		// dumps ppu memory image into a file
		void ppu_dump();

		// dumps ppu sprite memory image into a file
		void ppu_spr_dump();

		// debug info
		void print_registers();

		// break at certain address
		void brk();

		// set nes to work with
		void set_nes(NES* anes);

		void set_running(bool arunning) { running = arunning;};
		bool is_running() const { return running; };

		// parses command an executes it
		void handle_command(const std::string& command);

	private:
		NES* nes;
		std::map<std::string, void(Debugger::*)()> 	commands;
		std::vector<std::string> 					callback_args;
		std::set<u16> 								breakpoints;
		bool running;
	};

	// =======================================================================
	/**
	*/
	inline
	void Debugger::set_nes(NES* anes)
	{
		nes = anes;
	}
}

#endif