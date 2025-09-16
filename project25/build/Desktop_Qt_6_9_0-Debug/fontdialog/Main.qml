import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FontDialog")
    Column{
        spacing: 10
        // anchors.centerIn: parent
        width: parent.width
        height: parent.height
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"open the dialog"
            onClicked: {
                fontDialogId.open()
            }
        }
        Text {
            id: fontTextId
            wrapMode: Text.Wrap
            anchors.horizontalCenter: parent.horizontalCenter
            width: implicitWidth
            font.pointSize: 40
            text: "Hello World"
        }
        FontDialog{
            id : fontDialogId
            title: "Choose Font"
            onAccepted: {
                fontTextId.font= fontDialogId.selectedFont
            }
            onRejected: {
                console.log( "font selection canceled.")
            }
        }

    }


}
