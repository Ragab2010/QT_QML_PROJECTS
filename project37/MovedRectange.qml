import QtQuick
import QtQuick.Layouts

Rectangle {
    id: rectId
    Layout.fillWidth: true
    Layout.preferredHeight: 100
    color: "red"

    property bool isRight: false  // Start on the left

    Rectangle {
        id: containedRectId
        width: 100
        height: 100
        x: 0  // Start on the left
        y: 0
        radius: width / 2
        color: "blue"
    }

    ParallelAnimation {
        id: moveAnimation
        PropertyAnimation {
            id: xAnim
            target: containedRectId
            property: "x"
            duration: 1000
            easing.type: Easing.InOutQuad
        }

        ColorAnimation {
            id: colorAnim
            target: containedRectId
            property: "color"
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onClicked: {
            const leftX = 0
            const rightX = rectId.width - containedRectId.width

            // Animate x position
            xAnim.from = containedRectId.x
            xAnim.to = isRight ? leftX : rightX

            // Animate color
            colorAnim.from = containedRectId.color
            colorAnim.to = isRight ? "blue" : "green"

            moveAnimation.start()

            isRight = !isRight // Toggle direction
        }
    }
}
