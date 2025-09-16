import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SmoothedAnimation2")
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
            //Behavior triggers or emits  the animation  in side as NumberAnimation
            //when the x changed
            Behavior on x {
                SmoothedAnimation{
                    duration: 3000
                    velocity:200
                }
            }
            Behavior on y {
                SmoothedAnimation{
                    duration: 3000
                    velocity:200
                }
            }
            Behavior on rotation {
                SmoothedAnimation{
                    duration: 3000
                    velocity:200
                }
            }
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPositionChanged:function(mouse){
                containedRectId.x = mouse.x
                containedRectId.y = mouse.y
                containedRectId.rotation += 10
            }
        }
    }


}
