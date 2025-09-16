import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Button {
            id: buttonId
            text: "Start"
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                if (dialAnim.running) dialAnim.stop()
                dialAnim.to = Math.min(dialId.value + 100, dialId.to)
                dialAnim.start()
            }
        }

        Dial {
            id: dialId
            Layout.alignment: Qt.AlignHCenter
            from: 0
            to: 100
            value: 0
        }

        ProgressBar {
            id: progressBarId
            Layout.alignment: Qt.AlignHCenter
            from: 0
            to: 100
            value: dialId.value
        }

        ProgressBar {
            id: progressBarIndirId
            Layout.alignment: Qt.AlignHCenter
            indeterminate: true
            from: 0
            to: 100
            value: dialId.value
        }
        // Animation applied to the 'value' of Dial
        NumberAnimation {
            id: dialAnim
            target: dialId
            property: "value"
            duration: 1000 // in milliseconds
            easing.type: Easing.InOutQuad
        }
    }
}
