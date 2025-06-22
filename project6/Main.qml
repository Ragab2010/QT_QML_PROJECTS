import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color:"black"
    Image {
        id: ghostId
        anchors.fill: parent
        source: "qrc:/ghost.jpg"
        opacity: 0
    }
    SequentialAnimation{
        id:seqAnimId
        loops: Animation.Infinite
        running : true
        OpacityAnimator{
            id:goToBalckId
            target:ghostId
            from:1
            to:0
            duration:5000
        }
        OpacityAnimator{
            id:goToWhiteId
            target:ghostId
            from:0
            to:1
            duration:1000
        }
    }
}
