#include "movie.h"

Movie::Movie(QObject *parent)
    : QObject{parent}
{}

QString Movie::getTitle() const
{
    return m_title;
}

void Movie::setTitle(const QString &newTitle)
{
    if (m_title == newTitle)
        return;
    m_title = newTitle;
    emit titleChanged();
}

QString Movie::getMainCharacter() const
{
    return m_mainCharacter;
}

void Movie::setMainCharacter(const QString &newMainCharacter)
{
    if (m_mainCharacter == newMainCharacter)
        return;
    m_mainCharacter = newMainCharacter;
    emit mainCharacterChanged();
}
