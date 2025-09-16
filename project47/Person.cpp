#include "Person.h"

Person::Person(QObject *parent) : QObject(parent), m_name("John Doe") {}

QString Person::name() const {
    return m_name;
}

void Person::setName(const QString &name) {
    if (name != m_name) {
        m_name = name;
        emit nameChanged();
    }
}
