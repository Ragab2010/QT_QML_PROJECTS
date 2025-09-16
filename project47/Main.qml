import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import MyApp 1.0
Window {
    width: 640
    height: 480
    visible: true
    title: "Q_PROPERTY Example"


    Person {
        id: person
        name: "Alice"
    }

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Name: " + person.name
            font.pointSize: 16
        }

        TextField {
            text: person.name
            onTextChanged: person.name = text
        }

        Button {
            text: "Log Name"
            onClicked: console.log("Current name:", person.name)
        }
    }
}

/*

🔁 Full App Flow (from start to runtime)
Here’s a simplified step-by-step of what happens when you run the app:

🟩 1. App Starts (main.cpp)

QGuiApplication app(argc, argv);
QQmlApplicationEngine engine;
Qt initializes the app.

🟩 2. C++ Backend Created

Person person;
You create an instance of your Person class in C++.

🟩 3. Register or Inject the Object into QML
You choose either:

setContextProperty("person", &person); (app owns it)

or qmlRegisterType<Person>() (QML owns it)

🟩 4. QML Loads

engine.load(QUrl(QStringLiteral("qrc:/Main.qml")));
This loads and parses your QML file.

🟩 5. QML Evaluates Bindings
In QML:

text: "Name: " + person.name
QML reads person.name via the C++ name() method.

It remembers that this property has a NOTIFY nameChanged — so it sets up a connection.

🟩 6. User Changes Data in QML

TextField {
    onTextChanged: person.name = text
}
This calls setName() in C++.

🟩 7. C++ setName() Fires Signal

if (m_name != name) {
    m_name = name;
    emit nameChanged(); // 🔥 this triggers UI update
}

🟩 8. QML Reacts to Signal
Any bindings to person.name are re-evaluated.

UI updates with the new value — automatically.

🔚 Summary
Part	Role
Q_PROPERTY	Makes the C++ property available to QML
READ/WRITE	Enables get/set from QML
NOTIFY	Links the property to a signal
signals:	Declares signal (like nameChanged)
emit nameChanged()	Notifies QML to update

Without nameChanged() — your UI wouldn't update when the value changes unless you manually forced it (which defeats the purpose of declarative QML).


*/

/*
    ColumnLayout{
        anchors.centerIn: parent
        spacing: 10
        Column{
            spacing: 10
            Label{
                text: "Status"
            }

            ProgressBar{
                id: progressBarId
                width:  buttonRowId.implicitWidth
                from: 0
                to :100
                value: 50
            }
        }
        Row{
            id: buttonRowId
            spacing: 10
            Button{
                id: startId
                text: "Start"
                onClicked: {

                }
            }
            Button{
                id: pauseId
                text: "Pause"
                onClicked: {

                }
            }
            Button{
                id: resumeId
                text: "Resume"
                onClicked: {

                }
            }
            Button{
                id: stopid
                text: "Stop"
                onClicked: {

                }
            }
        }
    }
*/
