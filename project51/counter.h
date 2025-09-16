#ifndef Counter_H
#define Counter_H

#include <QObject>
#include <QQmlEngine>
#include <QTimer>
#include "countingenum.h"

class Counter : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(int count READ setCount WRITE setCount NOTIFY countChanged FINAL)
    //Q_PROPERTY(bool up READ setUp WRITE setUp NOTIFY upChanged FINAL)
    Q_PROPERTY(CountingEnum::CountDirection counting READ getCounting WRITE setCounting NOTIFY countingChanged FINAL)


public:
    explicit Counter(QObject *parent = nullptr);

    int setCount() const;
    void setCount(int newCount);

    // bool setUp() const;
    // void setUp(bool newUp);

    CountingEnum::CountDirection getCounting() const;
    void setCounting(const CountingEnum::CountDirection &newCounting);


    //Helper methods
    Q_INVOKABLE void start();
    Q_INVOKABLE void stop();



signals:
    void countChanged(int );
    void upChanged(bool );

    void countingChanged(const CountingEnum::CountDirection);

private:
    int m_count;
    //bool m_up;
    QTimer *m_timer;
    CountingEnum::CountDirection m_counting;
};

#endif // Counter_H
