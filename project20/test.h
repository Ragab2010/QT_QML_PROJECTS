#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QVariant>
#include <QTimer>
#include <QDateTime>

class Test: public QObject{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

signals:
    //we have to implemt notice slot at connection section at qml (onNotice:function(data){})
    void notice(QString data);

public slots:
    //we call this slot from qml by testing.captureTime()
    void captureTime();
private:
    QString mDisplay;
};
#endif // TEST_H
