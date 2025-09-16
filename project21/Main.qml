import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColorDialog")
    Column{
        spacing: 10
        anchors.centerIn: parent
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"open the dialog"
            onClicked: {
                colorDialogId.open()
            }
        }
        Rectangle{
            id : rectId
            width: 200
            height: 200
            border.color: "black"
            border.width: 8
        }

        ColorDialog{
            id: colorDialogId
            onAccepted:{
                rectId.color = selectedColor
            }
        }
    }


}
