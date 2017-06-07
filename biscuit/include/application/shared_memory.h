#ifndef _SHARED_MEMORY_H
#define _SHARED_MEMORY_H

#include <list>
#include <thread>
#include <mutex>
#include "application/message.h"

namespace biscuit
{
	class SharedMessageQueue
	{
	public:
		SharedMessageQueue();
		~SharedMessageQueue();

		void send_to_nes(Message* amessage);
		void send_to_app(Message* amessage);

		bool has_messages_to_nes();
		bool has_messages_to_app();

		Message* get_next_nes_message();
		Message* get_next_app_message();

		void lock_nes_messages();
		void unlock_nes_messages();

		void lock_app_messages();
		void unlock_app_messages();

	protected:
		std::list<Message*> to_nes_messages; // messages sent to nes
		std::list<Message*> to_app_messages; // messages sent to application

		std::mutex nes_messages_mutex;
		std::mutex app_messages_mutex;
	};
}

#endif