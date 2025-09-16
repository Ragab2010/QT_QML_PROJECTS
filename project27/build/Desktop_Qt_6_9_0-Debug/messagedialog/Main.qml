import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MessageDialog")
    Column{
        spacing: 10
        // anchors.centerIn: parent
        width: parent.width
        height: parent.height
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"open the dialog"
            onClicked: {
                messageDialogId.open()
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
        MessageDialog{
            id : messageDialogId
            title: "message"
            informativeText:"hello  , we are testing the messageDialog"
            buttons: MessageDialog.Ok |MessageDialog.Cancel
            onAccepted: {
                fontTextId.text= "Dialog accepted "
            }
            onRejected: {
                fontTextId.text= "Dialog rejected "
            }
        }

    }


}
