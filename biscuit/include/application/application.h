#ifndef _BISCUIT_APPLICATION_H
#define _BISCUIT_APPLICATION_H

/**
	class biscuit::Application
*/

#include <thread>
#include "application/shared_memory.h"

namespace biscuit
{
	class MainWindow;

	class Application
	{
	public:
		Application();
		~Application();

		bool Init(int argc, char **argv);
		void Run();
		void Quit();

	protected:
		MainWindow* main_window;
		std::thread nes_thread;
		SharedMessageQueue shared_message_queue;
	};
}

#endif