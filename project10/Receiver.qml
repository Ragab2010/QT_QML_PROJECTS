import QtQuick


Item {
    width: receiverId.width
    height:receiverId.height

    property alias rectColot: receiverId.color
    property int recCount: 0

    function receiveInfo(count){
        recCount=count
    }

    Rectangle{
        id:receiverId
        width: 200 ; height:200
        color: "blue"


        Text {
            id: recCounterId
            anchors.centerIn: parent
            text: recCount
            font.pixelSize: 30
        }
    }

}
