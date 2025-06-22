import QtQuick

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Rectangle {
    //     width: 100; height: 100
    //     color: "red"
    //     NumberAnimation on x {
    //         running: myMouse.pressed
    //         from: 0; to: 100
    //     }
    //     MouseArea { id: myMouse }
    // }
    Rectangle {
        id:rectId
        width: 100; height: 100
        color: "red"
        anchors.verticalCenter: parent.verticalCenter
        rotation: 0

        // SequentialAnimation on radius {
        //     loops: Animation.Infinite
        //     PropertyAnimation { to: 50 ; duration: 1000}
        //     PropertyAnimation { to: 0  ; duration: 1000}
        // }
        // SequentialAnimation on x{
        //     loops: Animation.Infinite
        //     PropertyAnimation{to:root.width-rectId.width ; duration: 1000 }
        //     PropertyAnimation{to:0        ; duration: 1000 }
        // }
        PropertyAnimation{
            id :goFromLeftToRightId
            target: rectId
            property: 'x'
            to: root.width-rectId.width
            duration: 1000
            //running: mouseAreaId.clicked
        }
        PropertyAnimation{
            id :goFromRightToLeftId
            target: rectId
            property: 'x'
            to: 0
            duration: 1000
            //running: mouseAreaId.clicked
        }
        RotationAnimation{
            id :rotationfromLeftToRightId
            target: rectId
            property: 'rotation'
            from: rectId.rotation
            to: root.width-rectId.width
            duration: 1000
            //running: mouseAreaId.clicked
        }
        PropertyAnimation{
            id :rotationfromRightToLeftId
            target: rectId
            property: 'rotation'
            to: 0
            duration: 1000
            //running: mouseAreaId.clicked
        }
        Text {
            id: textId
            text: Math.round(parent.rotation)
            anchors.centerIn: parent
            font.bold: true

        }

        MouseArea{
            anchors.fill: parent
            id : mouseAreaId
            onClicked:{
                if(rectId.x === 0){
                    goFromLeftToRightId.start()
                    rotationfromLeftToRightId.start()
                }else{
                    goFromRightToLeftId.start()
                    rotationfromRightToLeftId.start()
                }
            }


        }

    }

}
