import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SequentialAnimation")

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

            SequentialAnimation{
                id:seqAnimGroupId
                NumberAnimation{
                    id:xAnimId
                    target: containedRectId
                    property: "x"
                    duration: 3000
                }
                NumberAnimation{
                    id:yAnimId
                    target: containedRectId
                    property: "y"
                    duration: 3000
                }
            }
        }
        MouseArea{
            anchors.fill: parent
            onClicked: function(mouse){

                //stop seq animation
                seqAnimGroupId.stop()

                //set the xAnimId from , to
                xAnimId.from=containedRectId.x
                xAnimId.to=mouse.x

                //set the yAnimId from , to
                yAnimId.from=containedRectId.y
                yAnimId.to=mouse.y
                //start seq animation
                seqAnimGroupId.start()



            }
        }
    }
}

