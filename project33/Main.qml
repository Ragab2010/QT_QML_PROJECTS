import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SpringAnimation")

    // Rectangle{
    //     id : rectId
    //     anchors.fill: parent
    //     color: "beige"
    //     Rectangle{
    //         id : containedRectId
    //         width: 100
    //         height: 100
    //         x:50;y:50
    //         color: "blue"

    //         Behavior on x {
    //             SpringAnimation{
    //                 spring: 5
    //                 damping: 0.2
    //                 duration: 3000
    //                 //velocity:200
    //             }
    //         }
    //         Behavior on y {
    //             SpringAnimation{
    //                 spring: 5
    //                 damping: 0.2
    //                 duration: 3000
    //                 //velocity:200
    //             }
    //         }
    //     }
    //     MouseArea{
    //         anchors.fill: parent
    //         hoverEnabled: true
    //         onClicked: function(mouse){
    //             containedRectId.x = mouse.x
    //             containedRectId.y = mouse.y
    //         }
    //     }
    // }

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

            SpringAnimation{
                id:xSpringAnimationId
                target: containedRectId
                property: "x"
                spring: 5
                damping: 0.2
                duration: 3000
                //velocity:200
            }
            SpringAnimation{
                id:ySpringAnimationId
                target: containedRectId
                property: "y"
                spring: 5
                damping: 0.2
                duration: 3000
                //velocity:200
            }
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: function(mouse){
                //stop the SpringAnimation
                xSpringAnimationId.stop()
                ySpringAnimationId.stop()

                //from  (from current location)
                xSpringAnimationId.from = containedRectId.x
                ySpringAnimationId.from = containedRectId.y

                //to (to  mouse location)
                xSpringAnimationId.to = mouse.x
                ySpringAnimationId.to = mouse.y

                //start the SpringAnimation
                xSpringAnimationId.start()
                ySpringAnimationId.start()


            }
        }
    }


}
