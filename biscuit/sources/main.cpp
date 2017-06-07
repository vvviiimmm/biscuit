// ===========================================================================
// main.cpp
// (c) Alex, 2013
// ===========================================================================

#include "application/application.h"

#include <QtCore>
#include <QtGui>

int main(int argc, char **argv)
{
	QApplication app(argc, argv);
	biscuit::Application biscuit_app;
	if (biscuit_app.Init(argc, argv))
		biscuit_app.Run();

	app.exec();
	biscuit_app.Quit();
	return 0;
}