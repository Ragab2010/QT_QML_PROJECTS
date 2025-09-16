#ifndef CPPWORKER_H
#define CPPWORKER_H

#include <QObject>

class CppWorker : public QObject
{
    Q_OBJECT
public:
    explicit CppWorker(QObject *parent = nullptr);
    Q_INVOKABLE QString concateString(int id , QString name );

public slots :
    void cpp_backSlot();
};

#endif // CPPWORKER_H
