// ===========================================================================
// application.cpp
// (c) Alex, 2013
// ===========================================================================

#include "application/application.h"
#include "ui/main_window.h"

#include <iostream>
#include <fstream> 
#include <string>
#include <vector>

#include "nes.h"
#include "debugger.h"
#include "graphics/qt_graphics.h"
#include "application/nes_wrapper.h"

using namespace std;

namespace biscuit
{
	// TEMP, move this to separate file
	bool has_argument(int argc, char** argv, char* arg_to_find)
	{
		for (int i = 1; i < argc; ++i)
			if (strcmp(argv[i], arg_to_find) == 0)
				return true;
		return false;
	};

	// =======================================================================
	/**
	*/
	void start_nes_thread(	SharedMessageQueue* message_queue, 
							QtGraphics* graphics, 
							bool enable_debugger)
	{
		NesWrapper nes_wrapper;

		nes_wrapper.set_graphics(graphics);
		nes_wrapper.set_message_queue(message_queue);
		nes_wrapper.enable_debugger(enable_debugger);
		
		nes_wrapper.start();
	}

	// =======================================================================
	/**
	*/
	Application::Application()
	{
	}

	// =======================================================================
	/**
	*/
	Application::~Application()
	{
		nes_thread.join();
		delete main_window;
	}

	// =======================================================================
	/**
	*/
	bool Application::Init(int argc, char **argv)
	{
		bool result = true;

		main_window = new MainWindow;
		main_window->init(&shared_message_queue);
		main_window->show();

		nes_thread = std::thread(start_nes_thread, &shared_message_queue, main_window->get_graphics(), has_argument(argc, argv, "-debug"));

		return result;
	}

	// =======================================================================
	/**
	*/
	void Application::Quit()
	{
	}

	// =======================================================================
	/**
	*/
	void Application::Run()
	{
	}
}