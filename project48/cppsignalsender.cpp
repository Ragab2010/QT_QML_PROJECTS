#include "cppsignalsender.h"



Cppsignalsender::Cppsignalsender(QObject *parent)
    : QObject{parent} , mTimer{new QTimer(this)} , mValue{0}
{
    //mTimer(new QTimer(this));
    connect(&mTimer, &QTimer::timeout,[=](){
        ++mValue;
        emit cppTimer(QString::number(mValue));
    });
    mTimer.start(1000);

}

void Cppsignalsender::cppSlot()
{
    emit callQml("info from Cpp");
}
