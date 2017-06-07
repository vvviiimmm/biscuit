// ===========================================================================
// debug_controls.cpp
// (c) Alex, 2013
// ===========================================================================

#include <iostream>
#include <QPainter>
#include <QTimer>
#include <QLineEdit>

#include "ui/debug_controls.h"
#include "ui/generated/ui_debug_controls.h"
#include "application/shared_memory.h"

#include "application/messages.h"

namespace biscuit
{
	// =======================================================================
	/**
	*/
	DebugControls::DebugControls(QWidget* parent) : 
		QWidget(parent),
    	mUi(new Ui::DebugControls),
		bshow_original(false)
	{
		mUi->setupUi(this);

		QObject::connect(mUi->load_zelda_button, SIGNAL(clicked()), this, SLOT(load_zelda()));
		QObject::connect(mUi->sprite_pattern_offset_spinbox, SIGNAL(valueChanged(int)), this, SLOT(set_sprite_pattern_offset(int)));
		QObject::connect(mUi->take_shot_button, SIGNAL(clicked()), this, SLOT(take_screenshot()));
		QObject::connect(mUi->render_sprite_spinbox, SIGNAL(valueChanged(int)), this, SLOT(render_sprite(int)));
		QObject::connect(mUi->show_original_checkbox, SIGNAL(toggled(bool)), this, SLOT(show_original(bool)));
		QObject::connect(mUi->run_command_button, SIGNAL(clicked()), this, SLOT(run_command()));
	}

	// =======================================================================
	/**
	*/
	DebugControls::~DebugControls()
	{
		delete mUi;
	}

	// =======================================================================
	/**
	*/
	bool DebugControls::init(SharedMessageQueue* amessage_queue)
	{
		message_queue = amessage_queue;
		return true;
	}

	// =======================================================================
	/**
	*/
	void DebugControls::load_zelda()
	{
		LoadRomFile* message = new LoadRomFile();
		message->set_rom_file_name("zelda.nes");
		message_queue->send_to_nes(message);
	}

	// =======================================================================
	/**
	*/
	void DebugControls::set_sprite_pattern_offset(int offset)
	{
		SpritePatternOffset* message = new SpritePatternOffset(offset);
		message_queue->send_to_nes(message);
	}

	// =======================================================================
	/**
	*/
	void DebugControls::render_sprite(int sprite_no)
	{
		RenderSpriteByNumber* message = new RenderSpriteByNumber(sprite_no);
		message_queue->send_to_nes(message);
	}

	// =======================================================================
	/**
	*/
	void DebugControls::take_screenshot()
	{
		TakeScreenshot* message = new TakeScreenshot("screenshot.png");
		message_queue->send_to_nes(message);		
	}

	// =======================================================================
	/**
	*/
	void DebugControls::show_original(bool show)
	{
		bshow_original = show;
	}

	// =======================================================================
	/**
	*/
	bool DebugControls::is_show_original_set()
	{
		return bshow_original;
	}

	// =======================================================================
	/**
	*/
	void DebugControls::run_command()
	{
		QString command = mUi->command_line->text();
		ConsoleCommand* message = new ConsoleCommand(command.toUtf8().constData());
		message_queue->send_to_nes(message);
	}
}