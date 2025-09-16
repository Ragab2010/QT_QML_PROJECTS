#include "cppworker.h"
#include <QDebug>
CppWorker::CppWorker(QObject *parent)
    : QObject{parent}
{}

QString CppWorker::concateString(int id, QString name)
{
    return QString::number(id) + " " + name;
}

void CppWorker::cpp_backSlot()
{
    qDebug()<< "Please write the ID and Name";
}
