#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Person.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //Person person; // create the object
    //engine.rootContext()->setContextProperty("person", &person);
    qmlRegisterType<Person>("MyApp", 1, 0, "Person");

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("cpp_integration_example", "Main");

    return app.exec();
}
