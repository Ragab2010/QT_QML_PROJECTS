#include "counter.h"

Counter::Counter(QObject *parent)
    : QObject{parent},m_count{0},m_timer{new QTimer(this)}, m_counting{CountingEnum::UP}
{
    qDebug() << "Created Counter instance";
    m_timer->setInterval(1000);
    connect(m_timer, &QTimer::timeout, [&](){
        if(m_counting==CountingEnum::UP){
            m_count++;
        }else{
            m_count--;
        }
        emit countChanged(m_count);
    });

}

int Counter::setCount() const
{
    return m_count;
}

void Counter::setCount(int newCount)
{
    if (m_count == newCount)
        return;
    m_count = newCount;
    emit countChanged(m_count);
}

void Counter::start()
{
    m_timer->start();
}

void Counter::stop()
{
    m_timer->stop();
}


CountingEnum::CountDirection Counter::getCounting() const
{
    return m_counting;
}

void Counter::setCounting(const CountingEnum::CountDirection &newCounting)
{
    if (m_counting == newCounting)
        return;
    m_counting = newCounting;
    emit countingChanged(m_counting);
}

