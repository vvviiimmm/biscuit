#ifndef _BISCUIT_MAIN_WINDOW_H
#define _BISCUIT_MAIN_WINDOW_H

/**
	\class biscuit::MainWindow
*/

#include <QMainWindow>
#include "graphics/qt_graphics.h"
#include "ui/debug_controls.h"

namespace Ui 
{
	class MainWindow;
}

namespace biscuit
{
	class SharedMessageQueue;

	class MainWindow : 	public QMainWindow
	{
		Q_OBJECT

	public:
		MainWindow(QWidget* parent = 0);
		~MainWindow();

		bool init(SharedMessageQueue* amessage_queue);
		QtGraphics* get_graphics();

	protected:
		Ui::MainWindow* ui_main_window;

		SharedMessageQueue* message_queue;

		DebugControls debug_controls;
		QtGraphics graphics;

		QPoint canvas_size;
		QImage present_buffer;

		void paintEvent(QPaintEvent *event);
		void mouseMoveEvent(QMouseEvent * event );
		void keyPressEvent(QKeyEvent * event);
		void keyReleaseEvent(QKeyEvent * event);

		// debug
		QImage original_image;

	public slots:
		void Update();
		void on_actionOpen_File_triggered();
	};

	inline
	QtGraphics* MainWindow::get_graphics()
	{
		return &graphics;
	}
}

#endif