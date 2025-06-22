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
        RotationAnimation {
            id: rotaionAnimationId
            target: rectId
            loops: Animation.Infinite
            direction: RotationAnimation.Clockwise
            to: 360
            running: true
            duration: 2000
        }

        Text {
            id: textId
            text: Math.round(rectId.rotation)
            font.pixelSize: 60
            font.bold: true
            color: "darkgreen"
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent

            onClicked: {
                if (rotaionAnimationId.paused) {
                   rotaionAnimationId.resume()
                } else {
                    rotaionAnimationId.pause()
                }
            }
        }

    }

}
