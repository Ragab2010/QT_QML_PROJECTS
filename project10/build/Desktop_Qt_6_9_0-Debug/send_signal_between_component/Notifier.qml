import QtQuick

Item {

    width: notifierId.width
    height:notifierId.height

    property alias rectColot: notifierId.color
    property int count: 0

    //set up the signal
    signal notify(string counter)

    required property Receiver target
    onTargetChanged: {
        notify.connect(target.receiveInfo)
    }

    Rectangle{
        id:notifierId
        width: 200 ; height:200
        color: "green"



        Text {
            id: counterId
            anchors.centerIn: parent
            text: count
            font.pixelSize: 30
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                count++
                notify(count)
            }
        }
    }
}
