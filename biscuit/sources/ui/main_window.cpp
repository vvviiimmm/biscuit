// ===========================================================================
// main_window.cpp
// (c) Alex, 2013
// ===========================================================================

#include "ui/main_window.h"
#include "ui/generated/ui_main_window.h"
#include <iostream>
#include <QPainter>
#include <QTimer>
#include <QMouseEvent>
#include <QFileDialog>
#include <QDebug>

#include "application/messages.h"
#include "application/shared_memory.h"

namespace biscuit
{
	// msec
	const float kTimeDelta = 0.01f;

	// =======================================================================
	/**
	*/
	Emulation::JoypadButtons GetButtonByKey(int key)
	{
		switch (key)
		{
			case Qt::Key_A: 
				return Emulation::JoypadButtons::LEFT;
			case Qt::Key_S: 
				return Emulation::JoypadButtons::DOWN;
			case Qt::Key_D: 
				return Emulation::JoypadButtons::RIGHT;
			case Qt::Key_W: 
				return Emulation::JoypadButtons::UP;
			case Qt::Key_J: 
				return Emulation::JoypadButtons::A;
			case Qt::Key_K: 
				return Emulation::JoypadButtons::B;
			case Qt::Key_P: 
				return Emulation::JoypadButtons::SELECT;
			case Qt::Key_Enter: 
				return Emulation::JoypadButtons::START;
		}
		return Emulation::JoypadButtons::INVALID_BUTTON;
	}

	// =======================================================================
	/**
	*/
	MainWindow::MainWindow(QWidget* parent) : 
		QMainWindow(parent),
    	ui_main_window(new Ui::MainWindow),
		canvas_size(256.0, 240.0)
	{
		ui_main_window->setupUi(this);

		debug_controls.setWindowFlags(Qt::Window);
		debug_controls.show();
		debug_controls.move(this->pos() + QPoint(256, 400));
	}

	// =======================================================================
	/**
	*/
	MainWindow::~MainWindow()
	{
		delete ui_main_window;
	}
	
	// =======================================================================
	/**
	*/
	bool MainWindow::init(SharedMessageQueue* amessage_queue)
	{
		message_queue = amessage_queue;
		debug_controls.init(message_queue);
		
		QTimer *timer = new QTimer(this);
		connect(timer, SIGNAL(timeout()), this, SLOT(Update()));
		timer->start(kTimeDelta);

		setMouseTracking(true);
		centralWidget()->setAttribute(Qt::WA_TransparentForMouseEvents);

		original_image.load("zelda_snapshot.bmp");

		return true;
	}

	// =======================================================================
	/**
	*/
	void MainWindow::Update()
	{
		repaint();
	}

	// =======================================================================
	/**
	*/
	void MainWindow::paintEvent(QPaintEvent *event)
	{
		QRectF source(0.0, 0.0, canvas_size.x(), canvas_size.y());
		QRectF target(0.0, 0.0, canvas_size.x() * 4, canvas_size.y() * 4);
		QPainter painter(this);

		if (debug_controls.is_show_original_set())
		{
			QRectF source(0.0, 0.0, canvas_size.x(), canvas_size.y());
			QRectF target(0.0, 32.0, canvas_size.x() * 4, canvas_size.y() * 4);
			painter.drawImage(target, original_image, source);
		}
		else
			painter.drawImage(target, *graphics.get_frame_buffer(), source);
	}

	// =======================================================================
	/**
	*/
	void MainWindow::mouseMoveEvent(QMouseEvent * event )
	{
		QString status_bar_text;
		status_bar_text.sprintf("Mouse position: [%d, %d]", event->pos().x() / 4, event->pos().y() / 4);
		statusBar()->showMessage(status_bar_text);
	}

	// =======================================================================
	/**
	*/
	void MainWindow::keyPressEvent(QKeyEvent * event)
	{
		InputEvent* input_event = new InputEvent();
		Emulation::JoypadButtons button = GetButtonByKey(event->key());

		if (button != Emulation::JoypadButtons::INVALID_BUTTON)
		{
			input_event->set_key(button);
			input_event->set_pressed(true);
			message_queue->send_to_nes(input_event);
		}
	}

	// =======================================================================
	/**
	*/
	void MainWindow::keyReleaseEvent(QKeyEvent * event)
	{
		InputEvent* input_event = new InputEvent();
		Emulation::JoypadButtons button = GetButtonByKey(event->key());

		if (button != Emulation::JoypadButtons::INVALID_BUTTON)
		{
			input_event->set_key(button);
			input_event->set_pressed(false);
			message_queue->send_to_nes(input_event);
		}
	}

	// =======================================================================
	/**
	*/
	void MainWindow::on_actionOpen_File_triggered()
	{
		QString fileName = QFileDialog::getOpenFileName(this, tr("Open File"), "", tr("Files (*.*)"));
		LoadRomFile* message = new LoadRomFile();
		std::string fname(fileName.toUtf8().constData());
		if (!fname.empty())
		{
			message->set_rom_file_name(fname);
			message_queue->send_to_nes(message);
		}
	}
}