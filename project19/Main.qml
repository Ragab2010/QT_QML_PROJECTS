import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column{
        width: parent.width
        //anchors.fill: parent
        //anchors.horizontalCenter: parent.horizontalCenter
        // anchors.centerIn: parent
        spacing: 20
        Slider{
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            from: 0
            to:100
            value:20
            onValueChanged:function() {
                progressBarId.value=value
            }
        }
        ProgressBar{
            anchors.horizontalCenter: parent.horizontalCenter
            id : progressBarId
            width: parent.width
            from:0
            to :100
            value:20
        }
    }
}
