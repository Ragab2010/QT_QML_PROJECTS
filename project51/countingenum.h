#ifndef COUNTINGENUM_H
#define COUNTINGENUM_H

#include <QObject>
#include <QQmlEngine>
class CountingEnum : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_UNCREATABLE("THIS IS ENUM SO CAN N'T CREATED")
public:
    explicit CountingEnum(QObject *parent = nullptr)=delete;
    enum CountDirection {
        UP,
        DOWN
    };
    Q_ENUM(CountDirection)

};

#endif // COUNTINGENUM_H
