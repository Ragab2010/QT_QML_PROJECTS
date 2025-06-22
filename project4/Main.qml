import QtQuick

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id:rectId
        width: 200; height: 200
        color: "red"
        anchors.centerIn:  parent
        clip:true
        Text {
            id: textId
            text: "SCALE"
            font.bold: true
            font.pointSize: 66
            anchors.centerIn: parent
            rotation: -45
        }
        SequentialAnimation{
            id :seqAnimId
            loops: Animation.Infinite
            running: true
            ScaleAnimator{
                target: rectId
                from:1.0
                to:0.5
                duration: 1000
            }
            ScaleAnimator{
                target: rectId
                from:0.5
                to:1.0
                duration: 1000
            }

        }
    }
}
