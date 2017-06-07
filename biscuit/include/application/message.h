#ifndef _MESSAGE_H
#define _MESSAGE_H

/**
	biscuit::Message
	Message interface, base class for all messages
	AA 2013
*/

#include <string>
using namespace std;

namespace biscuit
{
	class Message
	{
	public:
		Message(const string& the_id) : id (the_id) {};
		virtual ~Message() {};

		void set_id(const string& the_id);
		string get_id() const;

		// template<class T>
		// T* cast_to(Message*);

	protected:
		string id;
	};

	inline
	void Message::set_id(const string& the_id)
	{
		id = the_id;
	}

	inline
	string Message::get_id() const
	{
		return id;
	}

	// template<class T>
	// T* Message::cast_to(Message* message)
	// {
	// 	return static_cast<T>(message);
	// }
}

#endif // _MESSAGE_H
