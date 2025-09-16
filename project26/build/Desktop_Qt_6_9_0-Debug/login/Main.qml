import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Login{
        anchors.centerIn: parent
        onLogin: {
            console.log("username:" + username);
            console.log("password:" + password);
        }
    }
}
