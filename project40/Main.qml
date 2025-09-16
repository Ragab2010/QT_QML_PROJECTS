import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Pendulum Swing")
    readonly property int  pendulumAngle: 30
    readonly property int  animDuration: 1000
    Rectangle{
        id:pendulumId
        width: 20
        height: 200
        color: "black"
        x:(parent.width - width)/2
        y:50
        transformOrigin: Item.Top
        // rotation:30
        Rectangle{
            id:bobId
            width: 50
            height: 50
            color: "red"
            x:(pendulumId.width - width)/2
            y:pendulumId.height
            radius: width/2
            transformOrigin: Item.Center
            rotation: pendulumId.rotation
        }
        SequentialAnimation{
            loops:Animation.Infinite
            running: true
            NumberAnimation {
                id:rightToLeftAnimId
                target: pendulumId
                property: "rotation"
                from : -pendulumAngle
                to   : pendulumAngle
                duration: animDuration
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                id:leftToRightAnimId
                target: pendulumId
                property: "rotation"
                from : pendulumAngle
                to   : -pendulumAngle
                duration: animDuration
                easing.type: Easing.InOutQuad
            }
        }

    }
}
