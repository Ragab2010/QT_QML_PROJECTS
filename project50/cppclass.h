#ifndef CPPCLASS_H
#define CPPCLASS_H

#include <QObject>
#include <QQmlEngine>
#include <QDebug>
#include <QTime>
#include <QDateTime>

class CppClass : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit CppClass(QObject *parent = nullptr);

signals:
    void sendTime(QTime time);
    void sendDateTime(QDateTime dateTime);
public slots:
    void cppSlot()
    {
        emit sendTime(QTime::currentTime());
        emit sendDateTime(QDateTime::currentDateTime());
    }
    void timeSlot(QTime time)
    {
        qDebug() << "Time from QML is :" << time;
    }

    void dateTimeSlot(QDateTime datetime)
    {
        qDebug() << "DateTime from QML is :" << datetime ;
    }
};

#endif // CPPCLASS_H
