// ===========================================================================
// debugger.cpp
// (c) Alex, 2013
// ===========================================================================

#include "debugger.h"
#include "nes.h"
#include "constants.h"

#include <iostream>
#include <iterator>
#include <sstream>
#include <iomanip>
#include <fstream>

using namespace std;

namespace Emulation
{
	extern u8 cpu_op_cycles[256];

	// =======================================================================
	/**
	*/
	Debugger::Debugger() : running(false)
	{
		commands["step"] = 				&Debugger::step;
		commands["brk"] = 				&Debugger::brk;
		commands["reg"] = 				&Debugger::print_registers;
		commands["tick"] = 				&Debugger::tick;
		commands["cpu_dump"] =			&Debugger::cpu_dump;
		commands["ppu_dump"] =			&Debugger::ppu_dump;
		commands["ppu_spr_dump"] =		&Debugger::ppu_spr_dump;
	}

	// =======================================================================
	/**
	*/
	Debugger::~Debugger()
	{
	}

	// =======================================================================
	/**
	*/
	void Debugger::handle_command(const std::string& command)
	{
		if (!command.empty())
		{
			callback_args.clear();
			stringstream ss;
			ss << std::hex << command;
			istream_iterator<string> begin(ss);
			istream_iterator<string> end;
			vector<string> tokens(begin, end);

			if (commands.find(tokens[0]) != commands.end())
			{
				callback_args = tokens;
				(this->*commands[tokens[0]])();
				// print executed command info
			}
			else
				cout << "No such command: " << command << endl;
		}
	}

	// =======================================================================
	/**
	*/
	void Debugger::step()
	{	
		if (breakpoints.find(nes->cpu.PC) != breakpoints.end())
			return;

		u32 num_instructions = 0;
		if (callback_args.size() > 1)
			stringstream(callback_args[1]) >> num_instructions;

		for (u32 i = 0; i < num_instructions; ++i)
		{
			u8 mem_value = nes->cpu.memory.read(nes->cpu.PC);
			//cout << "Executing: " << hex << (short)mem_value << endl;
			u8 num_cycles = cpu_op_cycles[mem_value];
			while (num_cycles > 0)
			{
				nes->cpu.tick();

				nes->ppu.tick();
				nes->ppu.tick();
				nes->ppu.tick();

				--num_cycles;
			}
		}
	}

	// =======================================================================
	/**
	*/
	void Debugger::tick()
	{	
		u32 num_ticks = 1;
		if (callback_args.size() > 1)
			stringstream(callback_args[1]) >> num_ticks;

		for (u32 i = 0; i < num_ticks; ++i)
		{
			nes->cpu.tick();

			nes->ppu.tick();
			nes->ppu.tick();
			nes->ppu.tick();
		}
	}

	// =======================================================================
	/**
	*/
	void Debugger::cpu_dump()
	{
		string dump_file_name = "cpu_dump";
		if (callback_args.size() > 1)
			dump_file_name = callback_args[1];

		ofstream fs(dump_file_name.c_str(), ios::out | ios::binary | ios::app);
		fs.write((const char*)nes->cpu.memory.buffer, 0x10000);
		fs.close();
		cout << "cpu memory dumped" << endl;
	}

	// =======================================================================
	/**
	*/
	void Debugger::ppu_dump()
	{
		string dump_file_name = "ppu_dump";
		if (callback_args.size() > 1)
			dump_file_name = callback_args[1];

		ofstream fs(dump_file_name.c_str(), ios::out | ios::binary);
		for (u16 addr = 0; addr < k_ppu_memory_size-1; ++addr)
			// fs.write((const char*)nes->ppu.mem_read(addr), sizeof(u8));
			fs << nes->ppu.mem_read(addr);
		// fs.write((const char*)nes->ppu.memory.buffer, k_ppu_memory_size);
		fs.close();
		cout << "ppu memory dumped" << endl;
	}

	// =======================================================================
	/**
	*/
	void Debugger::ppu_spr_dump()
	{
		string dump_file_name = "ppu_spr_dump";
		if (callback_args.size() > 1)
			dump_file_name = callback_args[1];

		ofstream fs(dump_file_name.c_str(), ios::out | ios::binary | ios::app);
		fs.write((const char*)nes->ppu.spr_ram.buffer, k_spr_ram_size);
		fs.close();
	}

	// =======================================================================
	/**
	*/
	void Debugger::print_registers()
	{
		cout << "Registers:" 					<< endl;
		cout << "     A: " << (short)nes->cpu.A	<< endl;
		cout << "     X: " << (short)nes->cpu.X	<< endl;
		cout << "     Y: " << (short)nes->cpu.Y	<< endl;
		cout << "    PC: " << (short)nes->cpu.PC<< endl;
		cout << "    SP: " << (short)nes->cpu.SP<< endl;
		cout << "     P:"  << "NV-BDIZC"		<< endl;
		cout << "       ";
		for (short i = 7; i >= 0; --i)
			cout << !!(nes->cpu.P & (1 << i));
		cout << endl;
	}

	// =======================================================================
	/**
	*/
	void Debugger::brk()
	{
		if (callback_args.size() > 1)
		{
			u16 addr = 0x0;
			stringstream(callback_args[1]) >> std::hex >> addr;
			breakpoints.insert(addr);
		}
	}
}