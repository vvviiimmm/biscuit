#ifndef _BISCUIT_DEBUG_CONTROLS
#define _BISCUIT_DEBUG_CONTROLS

/**
	\class biscuit::DebugControls
	Simple window with controls for tweaking NES behavior
*/

#include <QWidget>
#include "graphics/qt_graphics.h"

namespace Ui 
{
	class DebugControls;
}

namespace biscuit
{
	class SharedMessageQueue;

	class DebugControls : 	public QWidget
	{
		Q_OBJECT

	public:
		DebugControls(QWidget* parent = 0);
		~DebugControls();

		bool init(SharedMessageQueue* amessage_queue);
		
		// debug
		bool is_show_original_set();
	protected:
		Ui::DebugControls* mUi;
		SharedMessageQueue* message_queue;

		bool bshow_original;

	public slots:
		void load_zelda();
		void set_sprite_pattern_offset(int offset);
		void take_screenshot();
		void render_sprite(int sprite_no);
		void show_original(bool show);
		void run_command();
	};
}

#endif