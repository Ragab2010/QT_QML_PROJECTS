import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string thekey: "spcial key here"
    property color goalon: "green"
    property color goaloff: "red"
    property color ballon: "yellow"
    property color balloff: "orange"

    DropArea{
        id:dropZoneId
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: 300
        Drag.keys: [thekey]
        onDropped: {
            goalId.color =goalon
        }
        Rectangle{
            id:goalId
            color: goaloff
            anchors.fill: parent
            border.color: "black";border.width: 5
        }

    }
    Rectangle{
        id : ballId
        width: 100 ; height:100
        radius: width
        x :25 ; y: parent.height/2 - height/2
        color: balloff
        border.color: "black";border.width: 5

        Drag.active: mouseAreaId.drag.active

        Text {
            id: titleId
            anchors.centerIn: parent
            text: Math.round(parent.x)+ " * " +Math.round(parent.y)
        }
        MouseArea{
            id:mouseAreaId
            anchors.fill: parent
            drag.target: parent
            onPressed:{parent.color=ballon; goalId.color = goaloff}
            onReleased: {parent.color=balloff; parent.Drag.drop()}


        }
    }

}
