import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Easing Curves")

    Rectangle {
        id: rectId
        anchors.fill: parent
        color: "beige"

        Rectangle {
            id: containedRectId
            width: 100
            height: 100
            x: 50
            y: 50
            radius: width / 2
            color: "blue"
        }

        // Parallel animation for x and y
        ParallelAnimation {
            id: moveAnimation
            PropertyAnimation {
                id: xAnim
                target: containedRectId
                property: "x"
                duration: 1000
                easing.type: Easing.InOutQuad
            }
            PropertyAnimation {
                id: yAnim
                target: containedRectId
                property: "y"
                duration: 1000
                easing.type: Easing.InOutQuad
            }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onClicked: function(mouse) {
                xAnim.from = containedRectId.x
                xAnim.to = mouse.x
                yAnim.from = containedRectId.y
                yAnim.to = mouse.y

                moveAnimation.start()
            }
        }
    }
}
