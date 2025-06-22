import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Item{
        id:rootId
        anchors.fill: parent
        rotation: 0
        ////////the three Rectangle
        Rectangle{
            id:redId
            color:"red"
            width:300 ; height:300
            radius: width
            opacity:0.5
            border.width: 1; border.color: "black"; anchors.centerIn: parent
            transform: Translate{x:100;y:-100}
        }
        Rectangle{
            id:yellowId
            color:"yellow"
            width:300 ; height:300
            radius: width
            opacity:0.5
            border.width: 1; border.color: "black"; anchors.centerIn: parent
            transform: Translate{x:-100;y:100}
        }
        Rectangle{
            id:oneRectId
            color:"green"
            width:300 ; height:300
            radius: width
            opacity:0.5
            border.width: 1; border.color: "black"; anchors.centerIn: parent
            transform: Translate{x:-100;y:-100}
        }
        Rectangle{
            id:smallestInnerId
            color:"white"
            width:50 ; height:50
            radius: width
            opacity: 1
            border.width: 1; border.color: "black"; anchors.centerIn: parent

            Rectangle{
                id:innerId
                color:"gray"
                width:5 ; height:5
                radius: width
                opacity: 1
                border.width: 1; border.color: "black"; anchors.centerIn: parent
            }
        }
        RotationAnimation{
            id : rotaAnimId
            target: rootId
            loops:Animation.Infinite
            from: 360
            to: 0
            duration: 5000
            direction:RotationAnimation.Counterclockwise
            running: true
        }

    }
}
6
