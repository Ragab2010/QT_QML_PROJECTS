import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FolderDialog")
    Column{
        spacing: 10
        // anchors.centerIn: parent
        width: parent.width
        height: parent.height
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"open the dialog"
            onClicked: {
                folderDialogId.open()
            }
        }
        Text {
            id: pathId
            wrapMode: Text.Wrap
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            text: "User hasn't chosen yet."
        }

        FolderDialog{
            id: folderDialogId
            title: "Select a Folder"
            currentFolder: folderDialogId.currentFolder
            onAccepted: {
                pathId.text = "Selected folder: " + selectedFolder
            }
            onRejected: {
                pathId.text = "Folder selection canceled."
            }
        }
    }


}
