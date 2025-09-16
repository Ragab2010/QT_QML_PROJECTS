// LoginForm.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: loginForm
    signal login(string username, string password)

    width: 300
    height: 150 // Fixed height, can adjust based on your design

    Column {
        id: formLayout
        anchors.centerIn: parent
        spacing: 12
        width: parent.width

        Label {
            text: "Username"
        }

        TextField {
            id: usernameField
            width: parent.width
            placeholderText: "Enter your username"
            focus: true
        }

        Label {
            text: "Password"
        }

        TextField {
            id: passwordField
            width: parent.width
            placeholderText: "Enter your password"
            echoMode: TextInput.Password
            Keys.onReturnPressed: loginForm.login(usernameField.text, passwordField.text)
        }

        Button {
            text: "Login"
            width: parent.width
            onClicked: loginForm.login(usernameField.text, passwordField.text)
        }
    }
}
