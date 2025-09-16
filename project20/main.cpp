#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "test.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;

    Test tt;
    engine.rootContext()->setContextProperty("testing" , &tt);


    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("callingslotcpp", "Main");

    return app.exec();
}
