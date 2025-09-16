import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColorAnimation")
    Rectangle{
        id : rectId
        anchors.fill: parent
        color: "beige"
        Rectangle{
            id : containedRectId
            width: 100
            height: 100
            x:50
            y:50
            radius: width/2
            color: "blue"
            ColorAnimation{
                id :colorAnimationId
                target: containedRectId
                property: "color"
                duration: 2000

                from:containedRectId.color
                to:"red"
            }

        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: function(mouse){
                /*here we set color for from & to  of colorAnimationId*/
                // colorAnimationId.stop()

                // colorAnimationId.from=containedRectId.color
                // colorAnimationId.to="red"

                // colorAnimationId.start()


                colorAnimationId.start()

            }
        }
    }
}
