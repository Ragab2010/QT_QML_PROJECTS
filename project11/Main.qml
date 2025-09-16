import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ColumnLayout{
        width: parent.width
        // height: parent.height
        spacing: 5
        anchors.margins: 10

        Label{
            text: "DelayButton:"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }
        DelayButton{
            Layout.fillWidth: true
            text: "DelayButton"
            delay: 1000
            onActivated: {
                console.log("onActivated")
            }
            onProgressChanged: {
                console.log(progress)
            }
        }
    }
}
