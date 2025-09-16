#include "test.h"

Test::Test(QObject *parent) : QObject(parent) {

}


void Test::captureTime(){
    mDisplay = QDateTime::currentDateTime().toString();
    qInfo() << mDisplay;
    //emit use to fire/ send the signal
    emit notice(mDisplay);
}

