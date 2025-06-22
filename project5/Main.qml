import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: blackRectId
        color: "dimgrey"
        anchors.fill: parent
        focus: true
        Rectangle {
            id:outerId
            width: 60; height:60
            color: "royalblue"
            radius: width/2

            x:innerId.x - 5
            y:innerId.y - 5
            Behavior on x {
                SmoothedAnimation{velocity:100}
            }
            Behavior on y {
                SmoothedAnimation{velocity:100}
            }

        }

        Rectangle {
            id:innerId
            width: 50; height:50
            color: "darkgreen"
            radius: width/2
            //anchors.centerIn:  parent
            x:parent.width/2 - width/2
            y:parent.height/2 - height/2
        }
        // Keys.onRightPressed: innerId.x = innerId.x +100
        // Keys.onLeftPressed: innerId.x = innerId.x - 100
        // Keys.onUpPressed:   innerId.y = innerId.y - 100
        // Keys.onDownPressed:   innerId.y = innerId.y + 100
        Keys.onRightPressed: {
            if (innerId.x + 100 <= blackRectId.width )
                innerId.x += 100
        }
        Keys.onLeftPressed: {
            if (innerId.x - 100 >= 0)
                innerId.x -= 100
        }
        Keys.onUpPressed: {
            if (innerId.y - 100 >= 0)
                innerId.y -= 100
        }
        Keys.onDownPressed: {
            if (innerId.y + 100 <= blackRectId.height )
                innerId.y += 100
        }

    }
}
