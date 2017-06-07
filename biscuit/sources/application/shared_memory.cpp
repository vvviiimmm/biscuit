// ===========================================================================
// shared_memory.cpp
// (c) AA, 2013
// ===========================================================================

#include "application/shared_memory.h"

namespace biscuit
{
	// =======================================================================
	/**
	*/
	SharedMessageQueue::SharedMessageQueue()
	{

	}

	// =======================================================================
	/**
	*/
	SharedMessageQueue::~SharedMessageQueue()
	{

	}

	// =======================================================================
	/**
	*/
	void SharedMessageQueue::send_to_nes(Message* amessage)
	{
		nes_messages_mutex.lock();
		to_nes_messages.push_back(amessage);
		nes_messages_mutex.unlock();
	}

	// =======================================================================
	/**
	*/
	void SharedMessageQueue::send_to_app(Message* amessage)
	{
		app_messages_mutex.lock();
		to_app_messages.push_back(amessage);
		app_messages_mutex.unlock();
	}

	// =======================================================================
	/**
	*/
	bool SharedMessageQueue::has_messages_to_nes()
	{
		return !to_nes_messages.empty();
	}

	// =======================================================================
	/**
	*/
	bool SharedMessageQueue::has_messages_to_app()
	{
		return !to_app_messages.empty();
	}

	// =======================================================================
	/**
	*/
	Message* SharedMessageQueue::get_next_nes_message()
	{
		Message* message = to_nes_messages.front();
		to_nes_messages.pop_front();
		return message;
	}
	
	// =======================================================================
	/**
	*/
	Message* SharedMessageQueue::get_next_app_message()
	{
		Message* message = to_app_messages.front();
		to_app_messages.pop_front();
		return message;
	}

	// =======================================================================
	/**
	*/
	void SharedMessageQueue::lock_nes_messages()
	{
		nes_messages_mutex.lock();
	}

	// =======================================================================
	/**
	*/
	void SharedMessageQueue::unlock_nes_messages()
	{
		nes_messages_mutex.unlock();
	}

	// =======================================================================
	/**
	*/
	void SharedMessageQueue::lock_app_messages()
	{
		app_messages_mutex.lock();
	}

	// =======================================================================
	/**
	*/
	void SharedMessageQueue::unlock_app_messages()
	{
		app_messages_mutex.unlock();
	}
}