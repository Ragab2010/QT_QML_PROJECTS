import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Busy indicator")

    ColumnLayout{
        //anchors.fill: parent
        // anchors.top: parent.top
        // anchors.left: parent.left
        // anchors.right: parent.right
        // anchors.margins: 10
        width: parent.width

        BusyIndicator{
            id:busyIndicatorId
            running:true
            visible: true
            //anchors.horizontalCenter: parent.horizontalCenter
            Layout.alignment: Qt.AlignHCenter
        }
        ColumnLayout{
            Button{
                id:buttonId1
                text: "Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running=true
                    //busyIndicatorId.visible= true
                }
            }
            Button{
                id:buttonId2
                text:  "Not Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running=false
                    //busyIndicatorId.visible= false
                }
            }
        }
    }

}
