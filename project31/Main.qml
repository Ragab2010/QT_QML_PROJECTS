import QtQuick

Window {
    id : rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Animations Target")
    //property  bool  running: false

    Rectangle{
        id : rectId
        anchors.fill: parent
        color: "beige"
        Rectangle{
            id : containedRectId
            width: 100
            height: 100
            x:50;y:50
            color: "blue"

            PropertyAnimation{
                id:xAnimationId
                target: containedRectId
                property: "x"
                to:530
                duration: 2000
                //running: rootId.running
            }
            PropertyAnimation {
                id:yAnimationId
                target: containedRectId
                property: "y"
                to:300
                duration: 2000
                //running: rootId.running
            }
            PropertyAnimation{
                id:rotationAnimationId
                target: containedRectId
                property: "rotation"
                to:600
                duration: 2000
                //running: rootId.running
            }
            MouseArea{
                anchors.fill: parent
                onClicked: function(){
                    // rootId.running=true
                    xAnimationId.start()
                    yAnimationId.start()
                    rotationAnimationId.start()
                }
                onReleased: function(){
                    // rootId.running=false
                    xAnimationId.stop()
                    yAnimationId.stop()
                    rotationAnimationId.stop()
                }
            }
        }

    }
}
