#ifndef MOVIE_H
#define MOVIE_H

#include <QObject>

class Movie : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString mainCharacter READ getMainCharacter WRITE setMainCharacter NOTIFY mainCharacterChanged FINAL)
    Q_PROPERTY(QString  title READ getTitle WRITE setTitle NOTIFY titleChanged FINAL)
public:
    explicit Movie(QObject *parent = nullptr);

    QString getTitle() const;
    void setTitle(const QString &newTitle);

    QString getMainCharacter() const;
    void setMainCharacter(const QString &newMainCharacter);

signals:
    void titleChanged();
    void mainCharacterChanged();

private:
    QString m_title;
    QString m_mainCharacter;
};

#endif // MOVIE_H
